%function that reads all four of the Logistic Regression csv files and outputs
%them as such

%Input
%filepath : The path where all the four csv files are stored.

%output 
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%yTrain : Nx1 vector containing the actual output for the training features
%XTest  : nxK+1 matrix containing n number of K+1 dimensional testing features
%yTest  : nx1 vector containing the actual output for the testing features

function [XTrain,yTrain,XTest,yTest] = LogReg_ReadInputs (filepath)

XTrain=csvread([filepath,filesep(),'LogReg_XTrain.csv']);
yTrain=csvread([filepath,filesep(),'LogReg_yTrain.csv']);
XTest=csvread([filepath,filesep(),'LogReg_XTest.csv']);
yTest=csvread([filepath,filesep(),'LogReg_yTest.csv']);

XTrain=[ones(size(XTrain,1),1) XTrain];
XTest=[ones(size(XTest,1),1) XTest];

endfunction
