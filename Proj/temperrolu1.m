function [t2,e2] = temperrolu1(m, n, A, B, X, b, M) 
b = M*X;
tic; 
[L,U,P] = lu(M); 
y = L\P*b; 
x = U\y; 
t2 = toc;
e2 = norm(X-x);
endfunction