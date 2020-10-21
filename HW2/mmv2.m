% compute A(Bx)
function out = mmv2(n)
% define matrices and vectors
A = rand(n);
B = rand(n);
x = rand(n,1);
Bx = NaN(n,1); 
ABx = NaN(n,1);
% check sizes
if size(A,1)~=n;disp('A needs n rows');end
if size(A,2)~=n;disp('A needs n columns');end
if size(B,1)~=n;disp('B needs n rows');end
if size(B,2)~=n;disp('B needs n columns');
if size(x,1)~-n;disp('x needs dimension n');end

% do Bx
f=0;
for i=1:n
    tmp=0;
    for j=1:n
        tmp = tmp + B(i,j)*x(j,1);
        f = f+2;
    end
    Bx(i,1) = tmp;
end

% do A(Bx)

for i=1:n
    tmp=0;
    for j=1:n
        tmp = tmp + A(i,j)*Bx(j,1);
        f = f+2;
    end
    ABx(i,1) = tmp;
end
out.f = f;
out.n = n;
% out.A = A;
% out.B = B;
% out.x = x;
% out.Bx = Bx;
% out.ABx = ABx;
end