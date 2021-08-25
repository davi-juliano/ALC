function [t2,e2] = temperrolumod(c, n, A, B) 
[Qa,Ra] = qr(A);
[Qb,Rb] = qr(B);
d = [c randi([1 c-1], 1, n-2) 1];
M = Qa*diag(d)*Qb;
X = Qb(1,1:n)'+Qb(n,1:n)';
b= M*X;
tic; 
[L,U,P] = lu(M); 
y = L\P*b; 
x = U\y; 
t2 = toc;
e2 = norm(X-x);
endfunction