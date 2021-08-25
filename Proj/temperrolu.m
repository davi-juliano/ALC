function [t2,e2] = temperrolu(c, n, A, B, X, b) 
[Qa,Ra] = qr(A);
[Qb,Rb] = qr(B);
d = [c randi([1 c-1], 1, n-2) 1];
M = Qa*diag(d)*Qb;
b= M*X;
tic; 
[L,U,P] = lu(M); 
y = L\P*b; 
x = U\y; 
t2 = toc;
e2 = norm(X-x);
endfunction