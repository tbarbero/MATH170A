% matrix multiplication function
function [f,prod,A,B] = MMmult(m,n,p)
A = rand(m,n); 
B = rand(n,p);

if size(A,2)~=size(B,1);return;disp('Error, matrix sizes');end
f=0;
for i=1:m
    for k=1:p
        tmp=0;
        for j=1:n
            tmp = tmp + A(i,j)*B(j,k);
            f=f+2;
            % each tmp is a scalar for inner product of each rowxcolumn
        end
            prod(i,k) = tmp;
    end
end