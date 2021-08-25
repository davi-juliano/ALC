function [t1,e1] = temperroinvmod(c, n, A, B);
[Qa,Ra] = qr(A);
[Qb,Rb] = qr(B);
d = [c randi([1 c-1], 1, n-2) 1];
X = Qb(1,1:n)'+Qb(n,1:n)';
M = Qa*diag(d)*Qb;
b = M*X;
tic; 
N = inv(M); 
x = N*b; 
t1 = toc;
e1 = norm(X-x);
endfunction