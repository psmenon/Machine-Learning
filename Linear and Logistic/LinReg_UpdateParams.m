%Function which takes in your weight vector w, the stochastic gradient
%value sg and a learning constant eta and returns an updated weight vector w.

%Input
%w  : weight vector before update 
%sg : gradient of the calculated weight vector using stochastic gradient descent
%eta: Learning rate

%Output
%w  : Updated weight vector

function [w] = LinReg_UpdateParams (w, sg, eta)

w=w-eta*sg;
endfunction
