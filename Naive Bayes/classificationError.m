% The classificationError function takes two 1D vectors of class labels
% and returns the proportion of entries that disagree
function [error] = classificationError(yHat, yTruth)
    %% Inputs %% 
    % yHat - 1D vector of length m
    % yTruth - 1D vector of length m
    
    %% Outputs %%
    % error - scalar
    error = 0;
    c=0;
    m=length(yHat);
    for i=1:m;
        if yHat(i)~=yTruth(i);
            c=c+1;
        end
    end
    error=c/m
end

