% The NB_XGivenY function takes a training set XTrain and yTrain and
% Beta parameters alpha and beta, then returns a matrix containing
% MAP estimates of theta_yw for all words w and class labels y
function [D] = NB_XGivenY(XTrain, yTrain, alpha, beta)
    %% Inputs %% 
    % XTrain - (n by V) matrix
    % yTrain - 1D vector of length n
    % alpha - scalar
    % beta - scalar

    %% Outputs %%
    % D - (2 by V) matrix

    D = zeros(2, size(XTrain,2));
    Econ=(yTrain==0);
    Onion=(yTrain==1);
    m=length(XTrain);
    n=length(yTrain);
    for i=1:m;    
    D(1,i)=(sum(XTrain(:,i).*Econ)+alpha-1)/(sum(Econ)+alpha+beta-2);
    D(2,i)=(sum(XTrain(:,i).*Onion)+alpha-1)/(sum(Onion)+alpha+beta-2);
    end    
    D
end