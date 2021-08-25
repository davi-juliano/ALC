function [t1,e1] = temperroinv1(c, n, A, B, X, b, M);  
b = M*X;
tic; 
N = inv(M); 
x = N*b; 
t1 = toc;
e1 = norm(X-x);
endfunction