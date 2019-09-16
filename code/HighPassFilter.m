function[filtered, trunc] = HighPassFilter(vector, threshold)

[dimension, col] = size(vector);

trunc = sum( abs(vector(:)) < threshold ) % Returns number of truncated terms.

filtered = vector;
for p = 1:dimension
    for q = 1: col
        if abs(vector(p,q)) < threshold
            filtered(p,q) = 0;
        end
    end
end
