import random
from pathlib import Path
from torch.utils import data
from typing_extensions import TypedDict
import torch
from docopt import docopt
from dpu_utils.utils import RichPath, run_and_debug
from ptgnn.neuralmodels.gnn import GnnOutput, GraphData
import networkx as nx
from ptgnn.baseneuralmodel.trainer import AbstractScheduler
import tqdm
from ptgnn.baseneuralmodel import ModelTrainer
from ptgnn.baseneuralmodel.utils.amlutils import configure_logging, log_run
from ptgnn.baseneuralmodel.utils.data import LazyDataIterable
from ptgnn.neuralmodels.embeddings.linearmapembedding import (
    FeatureRepresentationModel,
)
from ptgnn.neuralmodels.gnn import GraphNeuralNetworkModel
from ptgnn.neuralmodels.gnn.messagepassing import GatedMessagePassingLayer, MlpMessagePassingLayer
from ptgnn.neuralmodels.gnn.messagepassing.residuallayers import ConcatResidualLayer

from typing import Any, Counter, Dict, Iterator, List, NamedTuple, Optional, Tuple, Union
from typing_extensions import TypedDict

import numpy as np
import torch
from dpu_utils.mlutils import Vocabulary
from torch import nn

from ptgnn.baseneuralmodel import AbstractNeuralModel, ModuleWithMetrics
from ptgnn.baseneuralmodel.utils.data import enforce_not_None
from ptgnn.neuralmodels.gnn import GnnOutput, GraphData, TensorizedGraphData
from ptgnn.neuralmodels.gnn.graphneuralnetwork import GraphNeuralNetwork, GraphNeuralNetworkModel
import networkx as nx


def create_graph2class_gnn_model(hidden_state_size: int = 2, embedding_size = 2,dropout_rate: float = 0.1):
    def create_ggnn_mp_layers(num_edges: int):
        ggnn_mp = GatedMessagePassingLayer(
            state_dimension=hidden_state_size,
            message_dimension=hidden_state_size,
            num_edge_types=num_edges,
            message_aggregation_function="max",
            dropout_rate=dropout_rate,
        )
        r1 = ConcatResidualLayer(hidden_state_size)
        return [
            r1.pass_through_dummy_layer(),
            ggnn_mp,
            ggnn_mp,
            ggnn_mp,
            ggnn_mp,
            ggnn_mp,
            ggnn_mp,
            ggnn_mp,
            r1,
            GatedMessagePassingLayer(
                state_dimension=2 * hidden_state_size,
                message_dimension=hidden_state_size,
                num_edge_types=num_edges,
                message_aggregation_function="max",
                dropout_rate=dropout_rate,
            ),
        ]

    def create_mlp_mp_layers(num_edges: int):
        mlp_mp_constructor = lambda: MlpMessagePassingLayer(
            input_state_dimension=hidden_state_size,
            message_dimension=hidden_state_size,
            output_state_dimension=hidden_state_size,
            num_edge_types=num_edges,
            message_aggregation_function="max",
            use_layer_norm = False,
            message_activation = None,
            dropout_rate=0,
            dense_activation = None,
        )
        mlp_mp_after_res_constructor = lambda: MlpMessagePassingLayer(
            input_state_dimension=2 * hidden_state_size,
            message_dimension=2 * hidden_state_size,
            output_state_dimension=hidden_state_size,
            num_edge_types=num_edges,
            message_aggregation_function="max",
            use_layer_norm = False,
            message_activation = None,
            dropout_rate=0,
        )
        r1 = ConcatResidualLayer(hidden_state_size)
        r2 = ConcatResidualLayer(hidden_state_size)
        return [
            # r1.pass_through_dummy_layer(),
            mlp_mp_constructor(),
            #mlp_mp_constructor(),
            #mlp_mp_constructor(),
            # r1,
            # mlp_mp_after_res_constructor(),
            # r2.pass_through_dummy_layer(),
            # mlp_mp_constructor(),
            # mlp_mp_constructor(),
            # mlp_mp_constructor(),
            # r2,
            # mlp_mp_after_res_constructor(),
        ]

    return GraphNeuralNetworkModel(
            node_representation_model=FeatureRepresentationModel(embedding_size=embedding_size),
            message_passing_layer_creator=create_mlp_mp_layers,
            max_nodes_per_graph=100000,
            max_graph_edges=500000,
            introduce_backwards_edges=True,
            add_self_edges=True,
            stop_extending_minibatch_after_num_nodes=120000,
        )

XGraph = TypedDict(
    "XGraph",
    {
        "nodes": nx.classes.reportviews.NodeView,
        "edges": nx.classes.reportviews.EdgeView,
        "result": int,
    },
)

Prediction = Tuple[XGraph, Dict[int,int]]


class TensorizedGraph2ClassSample(NamedTuple):
    graph: XGraph
    supernode_target_classes: int

class GNN(nn.Module):
    def __init__(self,dim_in,embedding_dim = 64,dim_hidden = 64,num_layers = 1):
        super().__init__()
        self.dim_in = dim_in
        self.dim_hidden = dim_hidden
        self.embedding_dim = embedding_dim
        self.num_layers = num_layers
        self.word_embeddings = nn.Embedding(dim_in, embedding_dim)
        self.map = nn.GRU(self.embedding_dim, dim_hidden,num_layers=num_layers)
        self.memlet = nn.GRU(self.embedding_dim, dim_hidden,num_layers=num_layers)
        self.lin1 = nn.Linear(dim_hidden+6,dim_hidden+6,bias = True)
        self.relu = nn.ReLU()
        self.lin2 = nn.Linear(dim_hidden+6, out_features=2,bias = True)
        self.gnn_model = create_graph2class_gnn_model(hidden_state_size=dim_hidden+6,embedding_size = dim_hidden+6)
        nn.init.uniform_(self.lin1.weight)
        nn.init.uniform_(self.lin2.weight)
        nn.init.zeros_(self.lin1.bias)
        nn.init.zeros_(self.lin2.bias)
        self.__loss = nn.CrossEntropyLoss()
    
    def compute_metada(self,data_points):
        data = []
        for data_point in data_points:
            G = data_point["G"]
            node_information = [self.node_representation(i)[0] for i in G["node_data"]]
            edges = []
            for i in range(len(G["adjacency_lists"][0][0])):
                a = G["adjacency_lists"][0][0][i].item()
                b = G["adjacency_lists"][0][1][i].item()
                edges.append([a,b])
            graph_data = GraphData(node_information,{"Type1":edges},{})
            data.append(graph_data)
        self.gnn_model.compute_metadata(data)
        self.gnn = self.gnn_model.build_neural_module()

    def _logits(self,one_hot,graph_mb_data):
        print("wait")
        graph_output: GnnOutput = self.__gnn(**graph_mb_data)
        return self.__node_to_class(graph_output.output_node_representations[:])
    
    def predict(self, graph_mb_data) -> torch.Tensor:
        with torch.no_grad():
            logits = self._logits(graph_mb_data)
            return logits
    def node_representation(self,e):
        type_tensor = e["Type"]
        if e["Type"][0] == 1:
            data = e['data']
            data = self.word_embeddings(data).view(len(data),-1 , self.embedding_dim)
            hidden = torch.zeros((self.num_layers,1,self.dim_hidden))
            data, _ = self.map(data, hidden)
            return torch.cat((type_tensor, data[-1][0])).view(1,-1)
        elif e["Type"][5] == 1:
            data = e['data']
            data = self.word_embeddings(data).view(len(data),-1 , self.embedding_dim)
            hidden = torch.zeros((self.num_layers,1,self.dim_hidden))
            data, _ = self.memlet(data, hidden)
            return torch.cat((type_tensor, data[-1][0])).view(1,-1)
        else:
            return torch.cat((type_tensor, torch.zeros(self.dim_hidden))).view(1,-1)
    
    def compute_node_representations(self,X):
        res = torch.zeros((1,6+self.dim_hidden))
        for e in X:
            res = torch.cat((res,self.node_representation(e)))
        return res[1:]

    def forward(self,X,target_nodes):
        dic = {"node_data":{"features":self.compute_node_representations(X["node_data"])}}
        dic["adjacency_lists"] = X["adjacency_lists"]
        dic["node_to_graph_idx"] = X["node_to_graph_idx"]
        dic["reference_node_graph_idx"] = X["reference_node_graph_idx"]
        dic["reference_node_ids"] = X["reference_node_ids"]
        dic["num_graphs"] = X["num_graphs"]
        result = self.gnn(**dic)
        result = result.output_node_representations[target_nodes]
        result = self.lin1(result)
        result = self.relu(result)
        result = self.lin2(result)
        return result