%########################################################################
%#######  you should maintain the  return type in starter codes   #######
%########################################################################

function [C, a] = lloyd_iteration(X, C)
  % Input:
  %   X is the data matrix (n * d)
  %   C is the initial cluster centers (k * d)
  % Output:
  %   C is the cluster centers (k * d)
  %   a is the cluster assignments (n * 1)

a = ones(size(X,1), 1);
while true;
aold=a;
% updating assignements
a=update_assignments(X, C);
% updating centers
C=update_centers(X, C, a);
% checking condition
if (isequaln(a,aold)==1);
break
end
end
disp(a)
fprintf('\n')
disp(C)
end

