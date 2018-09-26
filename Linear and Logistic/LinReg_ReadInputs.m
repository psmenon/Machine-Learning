%function that reads all four of the Linear Regression csv files and outputs
%them as such

%Input
%filepath : The path where all the four csv files are stored.

%output 
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%yTrain : Nx1 vector containing the actual output for the training features
%XTest  : nxK+1 matrix containing n number of K+1 dimensional testing features
%yTest  : nx1 vector containing the actual output for the testing features

function [XTrain,yTrain,XTest,yTest] = LinReg_ReadInputs (filepath)

XTrain=csvread([filepath,filesep(),'LinReg_XTrain.csv']);
yTrain=csvread([filepath,filesep(),'LinReg_yTrain.csv']);
XTest=csvread([filepath,filesep(),'LinReg_XTest.csv']);
yTest=csvread([filepath,filesep(),'LinReg_yTest.csv']);

n=size(XTrain,1);
m=size(XTrain,2);
X=[XTrain;XTest];

for i=1:m;
X(:,i)=(X(:,i)-min(X(:,i)))/(max(X(:,i))-min(X(:,i)));
end
XTrain=X(1:n,:);
o=size(X,1);
XTest=X(n+1:o,:);

XTrain=[ones(size(XTrain,1),1) XTrain];
XTest=[ones(size(XTest,1),1) XTest];


endfunction
