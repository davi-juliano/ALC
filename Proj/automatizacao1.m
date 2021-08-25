tempo = 1:50;
erro = 1:50;
tempo1 = 1:50;
erro1 = 1:50;
m = 50;
n = 10;
j = 1;
c = m;


for i = 1:50;
      
  A = rand(n);
  B = rand(n);
  b = rand(n,1);
  [Qa,Ra] = qr(A);
  [Qb,Rb] = qr(B);
  d = [c randi([1 c-1], 1, n-2) 1];
  M = Qa*diag(d)*Qb;

  [tempo(i), erro(i)] = temperroinv1(c, n, A, B, X, b, M);
  [tempo1(j), erro1(j)] = temperrolu1(m, n, A, B, X, b, M);
  
  i++;
  j++;
endfor

devpd_lut= std(tempo1);
devpd_lue = std(erro1);
med_lut = mean(tempo1);
med_lue = mean(erro1);
devpd_invt = std(tempo);
devpd_inve = std(erro);
med_invt = mean(tempo);
med_inve = mean(erro);

disp("Desvio padrão do tempo do LU:"), disp(devpd_lut)
disp("\nDesvio padrão do erro do LU:"), disp(devpd_lue)
disp("\nMédia do tempo do LU:"), disp(med_lut)
disp("\nMédia do tempo do LU:"), disp(med_lue)
disp("\nDesvio padrão do tempo do Inv:"), disp(devpd_invt)
disp("\nDesvio padrão do erro do Inv:"), disp(devpd_inve)
disp("\nMédia do tempo do Inv:"), disp(med_invt)
disp("\nMédia do erro do Inv:"), disp(med_inve)
