% #############################################################################################
% #########  YOU SHOULD MAINTAIN THE RETURN TYPE AND SHAPE AS PROVIDED IN STARTER CODE   ######
% #############################################################################################

function [param_grad, input_od] = inner_product_backward(output, input, layer, param)
% Fully connected layer backward

% Args:
% output: a cell array contains output data and shape information
% input: a cell array contains input data and shape information
% layer: one cnn layer, defined in testLeNet.m
% param: parameters, a cell array

% Returns:
% para_grad: a cell array stores gradients of parameters
% input_od: gradients w.r.t input data

param_grad.b = zeros(size(param.b));
param_grad.w = zeros(size(param.w));
input_od = zeros(size(input.data));

% TODO: your implementation goes below this comment
% implementation begins
%for i=1:size(output.diff,2);
%param_grad.b(i,:)=output.diff'(i,:);
%end
param_grad.b=output.diff';
param_grad.w=input.data*(output.diff');
input_od=param.w*output.diff;
% implementation ends

assert(all(size(input.data) == size(input_od)), 'input_od does not have the right length');

end
