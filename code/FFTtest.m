even_odd = zeros(8,8);
for r = 1:8
    if r <= 4
        P(r,2*r-1) = 1;
    else
        P(r,2*r - 8) = 1;
    end
end

%Construct F_(N/2) matrix.

f = 4;
DFT_halfN_matrix = ones(f,f);
for n = 0:f-1
    for m = 0:f-1
       DFT_matrix(n+1,m+1) = exp(-2i*pi*n*m/f);
    end
end
halfN_matrix = zeros(8,8);
for j = 1:8;
    for k = 1:8;
        if (j < 5) && (k < 5) 
            halfN_matrix(j,k) = DFT_matrix(j,k);
        elseif (j > 4) && (k > 4) 
            halfN_matrix(j,k) = DFT_matrix( j-4 , k-4 );
        end
    end
end

%Construct the Identity and diagonal w matrix.
eye4 = eye(4);
Q = zeros(8,8);
halfN_diagTop = zeros(4,4);
halfN_diagBot = zeros(4,4);
for p = 1:4
    halfN_diagTop(p,p) = exp(-2i*pi*(p-1)/4);
end

for q = 1:4
    halfN_diagBot(q,q) = exp((-2i*pi*(q-1)/4));
end
halfN_diagTop;
halfN_diagBot;
Q = [eye4 halfN_diagTop ; eye4 halfN_diagTop];
F = Q * halfN_matrix 