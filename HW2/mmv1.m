% compute (AB)x

function out = mmv1(n)
% define matrices and vector
A = rand(n);
B = rand(n);
x = rand(n,1);
AB = NaN(n,n);
ABx = NaN(n,1);
% check sizes
if size(A,1)~=n;disp('A needs n rows');end
if size(A,2)~=n;disp('A needs n columns');end
if size(B,1)~=n;disp('B needs n rows');end
if size(B,2)~=n;disp('B needs n columns');
if size(x,1)~-n;disp('x needs dimension n');end

f=0;
for i=1:n % each row of A
    for j=1:n % each col of B 
        tmp = 0; % resets for each inner product
        for k=1:n % sum up inner product 
            tmp = tmp + A(i,k)*B(k,j);
            f=f+2; 
        end
        AB(i,j) = tmp;
    end
end

for i=1:n % for each row of A
    tmp=0;
    for j=1:n
        tmp = tmp + AB(i,j)*x(j,1);
        f = f+2;
    end
    ABx(i,1) = tmp;
end
out.f = f;
out.n = n;
% out.A = A;
% out.B = B;
% out.x = x;
% out.AB = AB;
% out.ABx = ABx;
end