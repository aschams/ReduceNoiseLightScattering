function[AllTransforms] = FullDHT(vector,Matrices,n)
%Performs the n iterations of the DHT, without calculating/determining the
%set of Matrices.
[dimension col] = size(vector);
HaarProduct = eye(dimension);

% Find the product of multiplying subsequent Haar Matrices on the left.
for k = 1:n
    HaarProduct = Matrices{k}*HaarProduct;
    AllTransforms{k}= HaarProduct * vector;
end
