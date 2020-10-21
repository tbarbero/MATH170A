% solve an upper triangular system using back substitution ux = b.
function x = upper_triangular_solve(u,b)
% inputs:
% u: upper triangular matrix (nxn)
% b: column vector of dimension n

% define variables
n = length(b);
x = b; % use x = b; so we can easily subtract each b element and then overwrite x(i)

for i=n:-1:1 % # columns, count backward from n (e.g., n=5 [5 4 3 ...])
    for j=i+1:n
        x(i) = x(i) - u(i,j)*x(j);
    end
    if u(i,i)==0;error('matrix is singular');end
    x(i) = x(i)/u(i,i);
end

end