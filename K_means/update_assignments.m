%########################################################################
%#######  you should maintain the  return type in starter codes   #######
%########################################################################

function a = update_assignments(X, C)
  % Input:
  %   X is the data matrix (n * d)
  %   C is the cluster centers (k * d)
  % Output:
  %   a is the cluster assignments (n * 1)

a = ones(size(X, 1), 1);

min=inf;
for i=1:size(X,1);
for j=1:size(C,1);
dist=norm(X(i,:)-C(j,:)).^2;
if dist < min;
min=dist;
point=j;
end
end
a(i)=point;
min=inf;
end
  
end
