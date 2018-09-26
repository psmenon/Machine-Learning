% The NB_Classify function takes a matrix of MAP estimates for theta_yw,
% the prior probability for class 0, and uses these estimates to classify
% a test set.
function [yHat] = NB_Classify(D, p, XTest)
    %% Inputs %% 
    % D - (2 by V) matrix
    % p - scalar
    % XTest - (m by V) matrix
    
    %% Outputs %%
    % yHat - 1D vector of length m

    yHat = ones(size(XTest,1),1);
    siz=size(XTest,1);
    for i=1:siz;
    EconVector=D(1,:).*XTest(i,:)+(1-D(1,:)).*(1-XTest(i,:));
    OnionVector=D(2,:).*XTest(i,:)+(1-D(2,:)).*(1-XTest(i,:));
    
    Economist=[log(EconVector),log(p)];
    Onion=[log(OnionVector),log(1-p)];
    
    probEconomist=sum(Economist);
    probOnion=sum(Onion);
    
    if(probEconomist>probOnion);
    yHat(i)=0;
    else
    yHat(i)=1;
    end
    end
    yHat
    
    
end
