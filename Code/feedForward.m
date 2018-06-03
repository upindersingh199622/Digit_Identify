function output = feedForward(input,biasMatrix,weightMatrix)
%num_of_rows in weight matrix = num of neurons in output layer
%num_of_cols in weight matrix = num of neurons in input layer + 1
% + 1 above is for the biases
    output = weightMatrix*input + biasMatrix;
%SO our o/p comes within range
    output = sigmf(output,[1,0]);
end