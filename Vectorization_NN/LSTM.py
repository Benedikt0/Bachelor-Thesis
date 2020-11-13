#pylint: disable = protected-access, broad-except, line-too-long, too-many-lines, no-name-in-module, import-error, multiple-imports, pointless-string-statement, wrong-import-order
from tensorflow import keras
from keras.models import Model
from keras.layers import Input, LSTM, Dense
import numpy as np
import torch
from torch import empty
import torch.nn as nn

batch_size = 64  # Batch size for training.
epochs = 50  # Number of epochs to train for.
latent_dim = 512  # Latent dimensionality of the encoding space.
#num_samples = 10000  # Number of samples to train on.

vocab_size = {"aa"}
class Network(torch.nn.Module):
    def __init__(self, dim_in, dim_hidden,embedding_dim = 20,num_layers = 2):
        """
        In the constructor we instantiate two nn.Linear modules and assign them as
        member variables.
        """
        super(Network, self).__init__()
        self.dim_in = dim_in
        self.dim_hidden = dim_hidden
        self.embedding_dim = embedding_dim
        self.rnn = [nn.GRU(self.embedding_dim, dim_hidden,num_layers=num_layers) for i in range(2)]
        self.lin1 = nn.Linear(3*dim_hidden,3*dim_hidden)
        self.relu = nn.ReLU()
        self.lin2 = nn.Linear(3*dim_hidden,2)
        self.word_embeddings = nn.Embedding(dim_in, embedding_dim)
        self.num_layers = num_layers

    def predict(self, x):
        logits = torch.Tensor()
        with torch.no_grad():
            for tensor in x:
                logits = torch.cat((logits,self.forward(tensor)))
                #logits.append(self.forward(tensor))
            return logits


    def forward(self, x,y,z):
        """
        In the forward function we accept a Tensor of input data and we must return
        a Tensor of output data. We can use Modules defined in the constructor as
        well as arbitrary operators on Tensors.
        """
        #print("Test")

        tensor_x = self.word_embeddings(x).view(-1, len(x[0]), self.embedding_dim)
        tensor_y = self.word_embeddings(y).view(-1, len(x[0]), self.embedding_dim)
        tensor_z = self.word_embeddings(z).view(-1, len(x[0]), self.embedding_dim)
        hidden = torch.zeros((self.num_layers,len(x[0]),self.dim_hidden)) #//RNN and GRU
        outx, _ = self.rnn[0](tensor_x, hidden)
        outy, _ = self.rnn[1](tensor_y, hidden)
        outz, _ = self.rnn[1](tensor_z, hidden)
        tens = torch.cat((outx[-1],outy[-1],outz[-1]),axis = 1)
        tens = self.lin1(tens)
        tens = self.relu(tens)
        tens = self.lin2(tens)
        return tens

#rnn = nn.LSTM(10, 20)
#network = Network(3,2)
#input = torch.Tensor([[1,2,3],[3,4,5]])
#h0 = torch.randn(1,3, 20)
#c0 = torch.randn(1,3, 20)
#print(input)
#print(network.forward(input))


def LSTM_Encoder(text):
    # Vectorize the data.
    #text = ["HELLO WORLD","TEST","TRICK","TRY","TAYLOR","WORKS"]
    input_texts = []
    target_texts = []
    for txt in text:
        input_texts.append(list(txt))
        target_texts.append(['\t']+list(txt)+['\n'])
    print(input_texts)
    input_characters = set()
    target_characters = set()

    input_characters.add("False")
    input_characters.add("True")
    input_characters.add("**")
    for text in input_texts:
        for char in text:
            if char not in input_characters:
                input_characters.add(char)
    for text in target_texts:
        for char in text:
            if char not in target_characters:
                target_characters.add(char)

    input_characters = sorted(list(input_characters))
    target_characters = sorted(list(target_characters))
    num_encoder_tokens = len(input_characters)
    num_decoder_tokens = len(target_characters)
    max_encoder_seq_length = max([len(txt) for txt in input_texts])
    max_decoder_seq_length = max([len(txt) for txt in target_texts])

    print('Number of samples:', len(input_texts))
    print('Number of unique input tokens:', num_encoder_tokens)
    print('Number of unique output tokens:', num_decoder_tokens)
    print('Max sequence length for inputs:', max_encoder_seq_length)
    print('Max sequence length for outputs:', max_decoder_seq_length)

    input_token_index = dict(
        [(char, i) for i, char in enumerate(input_characters)])
    target_token_index = dict(
        [(char, i) for i, char in enumerate(target_characters)])

    encoder_input_data = np.zeros(
        (len(input_texts), max_encoder_seq_length, num_encoder_tokens),
        dtype='float32')
    decoder_input_data = np.zeros(
        (len(input_texts), max_decoder_seq_length, num_decoder_tokens),
        dtype='float32')
    decoder_target_data = np.zeros(
        (len(input_texts), max_decoder_seq_length, num_decoder_tokens),
        dtype='float32')

    for i, (input_text, target_text) in enumerate(zip(input_texts, target_texts)):
        for t, char in enumerate(input_text):
            encoder_input_data[i, t, input_token_index[char]] = 1.
        encoder_input_data[i, t + 1:, input_token_index[' ']] = 1.
        for t, char in enumerate(target_text):
            # decoder_target_data is ahead of decoder_input_data by one timestep
            decoder_input_data[i, t, target_token_index[char]] = 1.
            if t > 0:
                # decoder_target_data will be ahead by one timestep
                # and will not include the start character.
                decoder_target_data[i, t - 1, target_token_index[char]] = 1.
        decoder_input_data[i, t + 1:, target_token_index[' ']] = 1.
        decoder_target_data[i, t:, target_token_index[' ']] = 1.
    # Define an input sequence and process it.
    encoder_inputs = Input(shape=(None, num_encoder_tokens))
    encoder = LSTM(latent_dim, return_state=True)
    encoder_outputs, state_h, state_c = encoder(encoder_inputs)
    # We discard `encoder_outputs` and only keep the states.
    encoder_states = [state_h, state_c]

    # Set up the decoder, using `encoder_states` as initial state.
    decoder_inputs = Input(shape=(None, num_decoder_tokens))
    # We set up our decoder to return full output sequences,
    # and to return internal states as well. We don't use the
    # return states in the training model, but we will use them in inference.
    decoder_lstm = LSTM(latent_dim, return_sequences=True, return_state=True)
    decoder_outputs, _, _ = decoder_lstm(decoder_inputs,
                                        initial_state=encoder_states)
    decoder_dense = Dense(num_decoder_tokens, activation='softmax')
    decoder_outputs = decoder_dense(decoder_outputs)

    # Define the model that will turn
    # `encoder_input_data` & `decoder_input_data` into `decoder_target_data`
    model = Model([encoder_inputs, decoder_inputs], decoder_outputs)

    # Run training
    opt = keras.optimizers.Adam(learning_rate=0.01)
    model.compile(optimizer=opt, loss='categorical_crossentropy',
                metrics=['accuracy'])
    model.fit([encoder_input_data, decoder_input_data], decoder_target_data,
            batch_size=batch_size,
            epochs=epochs,
            validation_split=0.2)
    # Save model
    model.save('s2s.h5')

    # Next: inference mode (sampling).
    # Here's the drill:
    # 1) encode input and retrieve initial decoder state
    # 2) run one step of decoder with this initial state
    # and a "start of sequence" token as target.
    # Output will be the next target token
    # 3) Repeat with the current target token and current states

    # Define sampling models
    encoder_model = Model(encoder_inputs, encoder_states)

    decoder_state_input_h = Input(shape=(latent_dim,))
    decoder_state_input_c = Input(shape=(latent_dim,))
    decoder_states_inputs = [decoder_state_input_h, decoder_state_input_c]
    decoder_outputs, state_h, state_c = decoder_lstm(
        decoder_inputs, initial_state=decoder_states_inputs)
    decoder_states = [state_h, state_c]
    decoder_outputs = decoder_dense(decoder_outputs)
    decoder_model = Model(
        [decoder_inputs] + decoder_states_inputs,
        [decoder_outputs] + decoder_states)

    # Reverse-lookup token index to decode sequences back to
    # something readable.
    reverse_input_char_index = dict(
        (i, char) for char, i in input_token_index.items())
    reverse_target_char_index = dict(
        (i, char) for char, i in target_token_index.items())


    def decode_sequence(input_seq):
        # Encode the input as state vectors.
        states_value = encoder_model.predict(input_seq)

        # Generate empty target sequence of length 1.
        target_seq = np.zeros((1, 1, num_decoder_tokens))
        # Populate the first character of target sequence with the start character.
        target_seq[0, 0, target_token_index['\t']] = 1.

        # Sampling loop for a batch of sequences
        # (to simplify, here we assume a batch of size 1).
        stop_condition = False
        decoded_sentence = ''
        while not stop_condition:
            output_tokens, h, c = decoder_model.predict(
                [target_seq] + states_value)

            # Sample a token
            sampled_token_index = np.argmax(output_tokens[0, -1, :])
            sampled_char = reverse_target_char_index[sampled_token_index]
            decoded_sentence += sampled_char

            # Exit condition: either hit max length
            # or find stop character.
            if (sampled_char == '\n' or
            len(decoded_sentence) > max_decoder_seq_length):
                stop_condition = True

            # Update the target sequence (of length 1).
            target_seq = np.zeros((1, 1, num_decoder_tokens))
            target_seq[0, 0, sampled_token_index] = 1.

            # Update states
            states_value = [h, c]

        return decoded_sentence


    for seq_index in range(len(input_text)):
        # Take one sequence (part of the training set)
        # for trying out decoding.
        input_seq = encoder_input_data[seq_index: seq_index + 1]
        print('-')
        print('Input sentence:', input_texts[seq_index])
        decoded_sentence = decode_sequence(input_seq)
        print('Decoded sentence:', decoded_sentence)