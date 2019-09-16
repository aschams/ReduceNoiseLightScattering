function[DHT_matrix] = myDHT(dimension, iter)
% Produces the matrix of the iter-th level Haar Transform. When calling this
% function, the index must start at 1 and go to n, where n is the level
% of transform desired. 

%% Build the non-identity section of the iter-th Haar Transform
f = dimension / 2^(iter-1); 

A = zeros(0.5*f,f);
B = zeros(0.5 * f, f);

for p = 1:0.5*f
    for q = 1:f
        %Places the 1 and -1 in the appropriate positions in the even
        %columns
       if q == 2*p 
           A(p,q) = 1 / sqrt(2);
           B(p,q) = -1 /sqrt(2);
        %Places the 1 's in the appropriate positions in the odd columns
       elseif q == 2*p -1
           A(p,q) = 1 /sqrt(2);
           B(p,q) = 1 /sqrt(2);
       end           
    end
end
non_id_DHT_matrix = [A ; B];

%% Assemble the complete dimension x dimension Haar Transform Matrix.
% non_id_DHT_matrix is placed in the upper left corner, and the rest of the
% matrix is the identity matrix. 

DHT_matrix = eye(dimension);
for p2 = 1:f
    for q2 = 1:f
       DHT_matrix(p2,q2) = non_id_DHT_matrix(p2,q2);
    end
end
DHT_matrix;
