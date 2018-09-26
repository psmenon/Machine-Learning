%Stochastic Gradient Ascent Algorithm function

%Input
%XTrain : NxK+1 matrix containing N number of K+1 dimensional training features
%yTrain : Nx1 vector containing the actual output for the training features
%XTest  : nxK+1 matrix containing n number of K+1 dimensional testing features
%yTest  : nx1 vector containing the actual output for the testing features


%Output
%w             : final weight vector
%trainPerMiscl : a vector of percentages of misclassifications on your training data at every 200 gradient descent iterations
%testPerMiscl  : a vector of percentages of misclassifications on your testing data at every 200 gradient descent iterations
%yPred         : a vector of your predictions for yTest using your final w
   
function [w, trainPerMiscl, testPerMiscl, yPred] = LogReg_SGA (XTrain, yTrain, XTest, yTest)

a=size(XTrain,1);
a=size(XTrain,1);
b=size(XTrain,2);
k=1;
w=0.5*ones(b,1);
trainPerMiscl=[];
testPerMiscl=[];
yPred=zeros(size(XTest,1),1);

% for each epoch
for i=1:5;
% for each example
for j=1:a;
eta=0.5/sqrt(k);
sgrad=LogReg_CalcSG(XTrain(j,:),yTrain(j),w);
w=LogReg_UpdateParams(w,sgrad,eta);
if mod(k,200)==0;
[y1,p1]=LogReg_PredictLabels(XTrain,yTrain,w);
trainPerMiscl=[trainPerMiscl;(100-p1)]
[y2,p2]=LogReg_PredictLabels(XTest,yTest,w);
testPerMiscl=[testPerMiscl;(100-p2)]
end
k=k+1;
end
[yPred,p3]=LogReg_PredictLabels(XTest,yTest,w);
yPred
w
end


endfunction
