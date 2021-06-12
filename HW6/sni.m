clear;close;clc
[Q,R]= qr(randn(5));
D = diag([3, -1, 0.5, 2, -4]);
A = Q*D*Q';
B = A - 1.9*eye(5); % 1-4 construct random matrix B with prescribed lambdas
C = inv(B); % remainder applies power method to C

q = ones(5,1); s = 1;
%%
for j=1:15
       q_old = q;
       q_new = C*q_old;  
       [m, ind] = max(abs(q_new));
       s = q(ind(1));
       q = q_new/s;
end

eigC = eig(A);
eigC = eigC - 0.25;
