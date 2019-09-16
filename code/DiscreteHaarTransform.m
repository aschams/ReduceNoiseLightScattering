function[FinalProduct,DHT_matrices] = DiscreteHaarTransform(vector,n)
%Performs n iterations of the Discrete Haar Transform on a 2^k dimensional
%vector. 
[dimension col] = size(vector);

% Produces the Haar matrices necessary, and saves them in a
% multidimensional array to multiply them out later. 
for j = 1:n
    DHT_matrices{j} = myDHT(dimension,j);
end

HaarProduct = eye(dimension);

% Find the product of multiplying subsequent Haar Matrices on the left.
for k = 1:n
    HaarProduct = DHT_matrices{k}*HaarProduct;
end
FinalProduct = HaarProduct * vector;