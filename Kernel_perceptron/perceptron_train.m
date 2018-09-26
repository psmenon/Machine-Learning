function w = perceptron_train(w0, XTrain, yTrain, num_epoch)
    %   w0 is the initial weight vector (d * 1)
    %   XTrain is feature values of training examples (n * d)
    %   yTrain is labels of training examples (n * 1)
    %   num_epoch is the number of times to go through the data
    %   w is the trained weight vector (d * 1)
%#################################################################################
%####   you should maintain the size of the return value in starter codes  #######
%#################################################################################

w = w0;
for i=1:num_epoch;
for j=1:size(XTrain,1);
yhat=perceptron_predict(w, XTrain(j,:));
if yhat~=yTrain(j);
w=w+(yTrain(j).*XTrain(j,:))';
else
w=w;
end
end
end
end



