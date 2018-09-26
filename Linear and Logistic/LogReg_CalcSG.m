%Function that calculates and returns the stochastic gradient value using a
%particular data point (x, y).

%Input
%x : 1xK+1 dimesnional feature point
%y : Actual output for the input x
%w : weight vector 

%Output
%sg : stochastic gradient of the weight vector

function [sg] = LogReg_CalcSG (x, y, w)

a=exp(-(x*w));
b=1./(1+a);
sg=x'*(y-b);

endfunction
