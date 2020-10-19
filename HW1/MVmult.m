% write a function that does matrix multiplication for a matrix A of size 
% mxn and a vector of size nx1. First check the sizes of the inputs are
% correct then do the multiplication uses two nested for loops.
function [f,prod,A,x] = MVmult(m,n)
A = rand(m,n);
x = rand(n,1);
if size(A,2)~=size(x,1)
    return % stops script
    disp('Matrices are not the same size')
end
f=0;
prod=NaN(m,1);
for i=1:m
    tmp=0; 
    for j=1:n
       tmp = tmp + A(i,j).*x(j); % inner prod for each row of A*x
       f = f + 2;
    end
    prod(i,1) = tmp;
end
clearvars tmp i j m n 
end