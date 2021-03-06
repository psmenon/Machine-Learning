%########################################################################
%#######  you should maintain the  return type in starter codes   #######
%########################################################################

function obj = kmeans_obj(X, C, a)
  % Input:
  %   X is the data matrix (n * d)
  %   C is the cluster centers (k * d)
  %   a is the cluster assignments (n * 1)
  % Output:
  %   obj is the k-means objective of the provided clustering (1 * 1)

obj = 0.0;
for j=1:size(C,1);
for i=1:size(X,1);
if a(i)==j
obj=(norm(X(i,:)-C(j,:))).^2+obj;
end
end
end
end

