% #############################################################################################
% #########  YOU SHOULD MAINTAIN THE RETURN TYPE AND SHAPE AS PROVIDED IN STARTER CODE   ######
% #############################################################################################

function [output] = relu_forward(input, layer)
% RELU foward

% Args:
% input: a cell array contains input data and shape information
% layer: one cnn layer, defined in testLeNet.m

% Returns:
% output: a cell array contains output data and shape information

output.height = input.height;
output.width = input.width;
output.channel = input.channel;
output.batch_size = input.batch_size;

output.data = zeros(size(input.data));

% TODO: your implementation goes below this comment
% implementation begins
input_n.height=input.height;
input_n.width=input.width;
input_n.channel=input.channel;
batch_size=input.batch_size;
for n = 1:batch_size
    input_n.data = input.data(:, n);
    output.data(:,n)=max(0,input_n.data);
end
    
    
% implementation ends

assert(all(size(output.data) == size(input.data)), 'output.data does not have the right length');

end
