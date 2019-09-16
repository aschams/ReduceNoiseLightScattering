function [output] = myDFT(vec);

[d,m] = size(vec);
DFT_matrix = ones(d,d);
for n = 0:d-1
    for m = 0:d-1
       DFT_matrix(n+1,m+1) = (1/sqrt(d))* exp(-2i*pi*n*m/d);
    end
end
output = DFT_matrix*vec;