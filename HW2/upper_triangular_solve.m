% solve an upper triangular system using back substitution ux = b.
function x = upper_triangular_solve(u,b)
% inputs:
% u: upper triangular matrix (nxn)
% b: column vector of dimension n

% define variables
n = length(b);
x = zeros(n,1);
c = b; % so we don't rewrite over b

for i=1:n
    for j=i+1:n
        c(i) = c(i) - u(i,j)*x(j);
    end
    x(i) = c(i)/u(i,i);
end

end