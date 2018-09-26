% #############################################################################################
% #########  YOU SHOULD MAINTAIN THE RETURN TYPE AND SHAPE AS PROVIDED IN STARTER CODE   ######
% #############################################################################################

function [input_od] = pooling_layer_backward(output, input, layer)
% Pooling backward

% Args:
% output: a cell array contains output data and shape information
% input: a cell array contains input data and shape information
% layer: one cnn layer, defined in testLeNet.m

% Returns:
% input_od: gradients w.r.t input data
h_in = input.height;
w_in = input.width;
c = input.channel;
batch_size = input.batch_size;

k = layer.k;
pad = layer.pad;
stride = layer.stride;


h_out=output.height;
w_out=output.width;


input_od = zeros(size(input.data));

% TODO: your implementation goes below this comment
% implementation begins
input_n.height=h_in;
input_n.width=w_in;
input_n.channel=c;
for n = 1:batch_size
    input_n.data = input.data(:, n);
    %reshape the input feature to [k*k*c, h_out*w_out]
    % for ease of processing
    col = im2col_conv(input_n, layer, h_out, w_out);
    col = reshape(col, k*k*c, h_out*w_out)
    temp=zeros(size(col));
    [m,i]=max(col);
    for d=1:size(col,2);
        temp(:,d)=(col(:,d)==m(d));
        temp(:,d)=temp(:,d).*output.diff(d,n);
    end
    temp
    col1=col2im_conv(temp,input,layer,h_out,w_out)
    col1=reshape(col1,h_in*w_in,1)
    input_od(:,n)=col1;
end

input_od


% implementation ends

assert(all(size(input.data) == size(input_od)), 'input_od does not have the right length');

end
