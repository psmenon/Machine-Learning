%function that outputs the conditional log likelihood we want to maximize.

%Input
%w      : weight vector of appropriate dimensions initialized to 0.5
%AND EITHER
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%yTrain : Nx1 vector containing the actual output for the training features
%OR
%XTest  : nxK+1 matrix containing n number of K+1 dimensional testing features
%yTest  : nx1 vector containing the actual output for the testing features

%Output
%obj   : The conditional log likelihood we want to maximize

function [obj] = LogReg_CalcObj (X, y, w)

n=size(y,1);
b=exp(-(X*w));
a=1./(1+b);
obj=(y'*log(a)+(1-y)'*log(1-a));

endfunction
