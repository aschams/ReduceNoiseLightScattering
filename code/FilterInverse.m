function[filterInv,trunc] = FilterInverse(vector,threshold,Matrices,n)

[dimension, col] = size(vector);

filtered = vector;
for p = 1:dimension
    for q = 1: col
        if abs(vector(p)) < threshold
            filtered(p) = 0;
        end
    end
end

filterInv = InverseHaarTransform(filtered,Matrices,n)