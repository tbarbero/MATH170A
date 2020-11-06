function x = lsp(A,y)
% solve the least squares problem Ax=b with QR decomposition A = QR
% c = Q'*y = [chat;d]
% Rhat*x = chat
% x = Rhat\chat
% Inputs:
% A matrix (nxm)
% y vector (nx1)
if size(A,1) ~= size(y,1)
    error('Error, incorrect sizes')
end
[m,n] = size(A);
[Q,R] =qr(A);
c = Q'*y;
c_hat = c(1:m);
R_hat = R(1:m,:); % Rhat is square
% want all nonzero entries 1:m and all columns
x = R_hat\c_hat;
end