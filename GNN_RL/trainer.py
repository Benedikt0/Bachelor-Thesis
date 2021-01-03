#
#This file takes the training/test data and trains our model defined in Vect_GNN.py
#
from os import terminal_size
import torch
import math
import networkx as nx
import torch.nn as nn
import numpy as np
import torch
from torch.utils.data import DataLoader
from torch import Tensor, optim
import pickle
from tqdm import tqdm
import pandas as pd
from GNN import GNN

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
if torch.cuda.is_available():
  torch.set_default_tensor_type('torch.cuda.FloatTensor')
else:
  torch.set_default_tensor_type('torch.FloatTensor')
with open("/Users/benediktschesch/MyEnv/temp/train_data.pkl", "rb") as fp:   # Unpickling
    raw_data = pickle.load(fp)


max_vocab = raw_data["dim_in"]
training_infos = []
X_train = raw_data["X_train"][:16]
X_test = raw_data["X_test"][:16]
max_num_param = raw_data["max_num_param"]
print("Device: ",device)
print("Number of training graphs: {}".format(len(X_train)))
print("Number of validation graphs: {}".format(len(X_test)))
print("Average Training Maximal Speedup: ",raw_data["Average Training Maximal Speedup"])
print("Average Validation Maximal Speedup: ",raw_data["Average Validation Maximal Speedup"])


def predictions(loader,model):
    num_elem = 0
    correct = 0
    speedup = 0
    with torch.no_grad():
        for x in loader:
            #GPU support
            for i in range(len(x["G"]["adjacency_lists"])):
              x["G"]["adjacency_lists"][i] = x["G"]["adjacency_lists"][i].to(device)
            for i in x["G"]["node_data"]:
              if "data" in i:
                i["data"] = i["data"].to(device)
              i["Type"]  = i["Type"].to(device)
            x["G"]["node_to_graph_idx"] = x["G"]["node_to_graph_idx"].to(device)
            for i in range(len(x["results"])):
                x["results"][i] = x["results"][i].to(device)
            for i in range(len(x["map_entry_idx"])):
                x["map_entry_idx"][i]  = x["map_entry_idx"][i].to(device)
            x["speedup"] = x["speedup"].to(device)
            #GPU support
            
            graph = x["G"]
            result = model(graph,x["map_entry_idx"])
            num_elem += 1
            if torch.argmax(result) == (x["results"][0][0]):
                correct += 1
            speedup += x["speedup_dic"][torch.argmax(result).item()].item()
    return correct*1.0/num_elem,speedup/num_elem

trainloader = DataLoader(X_train,batch_size=1)
testloader = DataLoader(X_test,batch_size=1)

device = torch.device('cpu')
torch.set_default_tensor_type('torch.FloatTensor')
model = GNN(vocab_size = max_vocab,dim_hidden = 150,embedding_dim = max_vocab,num_layers = 3,\
    max_num_param = 1,size = 6)
model.compute_metada(trainloader,device)
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
if torch.cuda.is_available():
  torch.set_default_tensor_type('torch.cuda.FloatTensor')
else:
  torch.set_default_tensor_type('torch.FloatTensor')
model.to(device)
model.todevice(device)
optimizer = optim.SGD(model.parameters(), lr=0.008)
criterion = nn.CrossEntropyLoss()
epochs = 2
print("Number of Parameters:",sum(p.numel() for p in model.parameters()))

def adjust_optim(optimizer, epoch):
    if epoch < 15:
        optimizer.param_groups[0]['lr'] = 0.005
    elif epoch < 25:
        optimizer.param_groups[0]['lr'] = 0.003
    elif epoch < 35:  
        optimizer.param_groups[0]['lr'] = 0.001
    elif epoch < 50:  
        optimizer.param_groups[0]['lr'] = 0.0005

for e in range(epochs):
    running_loss = 0
    points = 0
    correct_points = 0
    speedup = 0
    for x in trainloader:
        #GPU Support
        for i in range(len(x["G"]["adjacency_lists"])):
          x["G"]["adjacency_lists"][i] = x["G"]["adjacency_lists"][i].to(device)
        for i in x["G"]["node_data"]:
          if "data" in i:
            i["data"] = i["data"].to(device)
          i["Type"]  = i["Type"].to(device)
        x["G"]["node_to_graph_idx"] = x["G"]["node_to_graph_idx"].to(device)
        for i in range(len(x["results"])):
            x["results"][i] = x["results"][i].to(device)
        for i in range(len(x["map_entry_idx"])):
            x["map_entry_idx"][i]  = x["map_entry_idx"][i].to(device)
        x["speedup"] = x["speedup"].to(device)
        #GPU Support
        
        graph = x["G"]
        # setting gradient to zeros
        optimizer.zero_grad()
        #result = model(graph,x["map_entry_idx"],x["map_entry_nparam"])
        result = model(graph,x["map_entry_idx"])
        loss = criterion(result,x["results"][0])
        if loss == 0 or math.isnan(loss.item()):
            continue
        loss.backward()
        optimizer.step()
        running_loss += loss.item()
        points += 1
        if torch.argmax(result) == (x["results"][0][0]):
            correct_points += 1
        speedup += x["speedup_dic"][torch.argmax(result).item()].item()
    train_accuracy = correct_points*1.0/points
    test_accuracy,test_speedup = predictions(testloader,model)
    train_speedup = speedup/points
    print("Epoch: {}/{} Training loss: {} Training accuracy: {} Test accuracy: {} Average Training Speedup: {} Average Testing Speedup: {}"\
        .format(e+1,epochs,"{:.6f}".format(running_loss/points),\
            "{:.6f}".format(train_accuracy),"{:.6f}".format(test_accuracy),\
            "{:.6f}".format(train_speedup),"{:.6f}".format(test_speedup)))
    training_infos.append([e,running_loss/points,train_accuracy,test_accuracy,train_speedup,test_speedup])
    adjust_optim(optimizer,e)
train_accuracy, train_speedup = predictions(trainloader,model)
test_accuracy, test_speedup = predictions(testloader,model)
print("Training accuracy: ",train_accuracy,"Average Training Speedup: ",train_speedup)
print("Validation accuracy: ",test_accuracy,"Average Validation Speedup: ",test_speedup)
df = pd.DataFrame(training_infos,columns=["Epoch","Training Loss","Training Accuracy",\
    "Validation Accuracy","Average Training Speedup","Average Validation Speedup"],)
df.to_csv("/Users/benediktschesch/MyEnv/GNN_RL/training_infos.csv")
torch.save(model.state_dict(),"model.pt")
print("Model has been saved")