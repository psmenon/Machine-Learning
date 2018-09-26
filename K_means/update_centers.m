%########################################################################
%#######  you should maintain the  return type in starter codes   #######
%########################################################################

function C = update_centers(X, C, a)
  % Input:
  %   X is the data matrix (n * d)
  %   C is the cluster centers (k * d)
  %   a is the cluster assignments (n * 1)
  % Output:
  %   C is the new cluster centers (k * d)
 
c=0;
sum1=zeros(1,size(X,2));
for j=1:size(C,1);
for i=1:size(X,1);
if a(i)==j;
c=c+1;
sum1(1,:)=X(i,:)+sum1(1,:);
end
end
C(j,:)=sum1(1,:)/c;
c=0;
sum1=zeros(1,size(X,2));
end 
end
