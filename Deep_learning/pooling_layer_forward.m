% #############################################################################################
% #########  YOU SHOULD MAINTAIN THE RETURN TYPE AND SHAPE AS PROVIDED IN STARTER CODE   ######
% #############################################################################################


function [output] = pooling_layer_forward(input, layer)
% Pooling forward

% Args:
% input: a cell array contains output data and shape information
% layer: one cnn layer, defined in testLeNet.m

% Returns:
% output: a cell array contains output data and shape information

h_in = input.height;
w_in = input.width;
c = input.channel;
batch_size = input.batch_size;
k = layer.k;
pad = layer.pad;
stride = layer.stride;

h_out = (h_in + 2*pad - k) / stride + 1;
w_out = (w_in + 2*pad - k) / stride + 1;

output.height = h_out;
output.width = w_out;
output.channel = c;
output.batch_size = batch_size;

output.data = zeros([h_out * w_out * c, batch_size]);

% TODO: your implementation goes below this comment
% implementation begins
input_n.height=h_in;
input_n.width=w_in;
input_n.channel=c;
for n = 1:batch_size
    input_n.data = input.data(:, n);
    % reshape the input feature to [k*k*c, h_out*w_out]
    % for ease of processing
    col = im2col_conv(input_n, layer, h_out, w_out);
    col = reshape(col, k*k*c, h_out*w_out)
    maxarray=max(col);
    output.data(:,n)=maxarray;
    clear maxarray;
end
% implementation ends

assert(all(size(output.data) == [h_out * w_out * c, batch_size]), 'output.data does not have the right length');

end

