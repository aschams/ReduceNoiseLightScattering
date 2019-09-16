function [invHaarVector] = InverseHaarTransform(vector,Matrices,n)
% Takes a Haar-Transformed vector and performs n iterations of the inverse
% Haar Transform.
[dimension col ] = size(vector);
invHaarMatrix = eye(dimension);
for k = n:-1:1
   invHaarMatrix = Matrices{k}' * invHaarMatrix;
end

invHaarVector = invHaarMatrix *vector;