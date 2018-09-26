% The NB_YPrior function takes a set of training labels yTrain and
% returns the prior probability for class label 0
function [p] = NB_YPrior(yTrain)
    %% Inputs %% 
    % yTrain - 1D vector of length n

    %% Outputs %%
    % p - scalar
    p = 0;
    c=0;
    d=0;
    m=length(yTrain);
    for i=1:m;
        if yTrain(i)==0;
            c=c+1;
        else
            d=d+1;
        end 
    end
    p=c/(c+d)
    
    
end