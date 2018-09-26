%Stochastic Gradient Descent Algorithm function

%Input
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%yTrain : Nx1 vector containing the actual output for the training features

%Output
%w    : Updated Weight vector after completing the stochastic gradient descent
%trainLoss : vector of training loss values at each epoch
%testLoss : vector of test loss values at each epoch

function [w, trainLoss, testLoss] = LinReg_SGD (XTrain, yTrain,XTest,yTest)

trainLoss=zeros(100,1);
testLoss=zeros(100,1);
a=size(XTrain,1);
b=size(XTrain,2);
w=0.5*ones(b,1);
k=1;
% for each epoch
for i=1:100;

% for each training data
for j=1:a;
eta=0.5/sqrt(k);
sgrad=LinReg_CalcSG(XTrain(j,:),yTrain(j),w);
w=LinReg_UpdateParams(w,sgrad,eta);
k=k+1;
end
% computing the test and training loss
testLoss(i)=LinReg_CalcObj(XTest,yTest,w)
trainLoss(i)=LinReg_CalcObj(XTrain,yTrain,w)
end
w
endfunction
