%Function that returns the value of the predicted y along with the number of
%errors between your predictions and the true yTest values

%Input
%w : weight vector 
%AND EITHER
%XTest : nxK+1 matrix containing n number of K+1 dimensional testing features
%yTest : nx1 vector containing the actual output for the testing features
%OR
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%Train : Nx1 vector containing the actual output for the training features

%Output
%yPred : An nx1 vector of the predicted labels for yTest/yTrain
%perMiscl : The percentage of y's misclassified


function [yPred, perMiscl] = LogReg_PredictLabels (X, y, w)

m=numel(y);
b=exp(-(X*w));
a=1./(1+b);
yPred=zeros(m,1);
for i=1:m;
if a(i)>=0.5;
yPred(i)=1;
else
yPred(i)=0;
end
end
yPred;
p=(yPred==y);
n=sum(p);
perMiscl=(n/m)*100;

endfunction
