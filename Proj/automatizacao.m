tempo = 1:50;
erro = 1:50;
tempo1 = 1:50;
erro1 = 1:50;
m = 50;
n = 10;
j = 1;


for i = 1:50;
      
  A = rand(n);
  B = rand(n);
  X = rand(n,1);
  b = rand(n,1);
  
  [tempo(i), erro(i)] = temperroinv(m, n, A, B, X, b);
  [tempo1(j), erro1(j)] = temperrolu(m, n, A, B, X, b);
  
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

disp("Desvio padr�o do tempo do LU:"), disp(devpd_lut)
disp("\nDesvio padr�o do erro do LU:"), disp(devpd_lue)
disp("\nM�dia do tempo do LU:"), disp(med_lut)
disp("\nM�dia do tempo do LU:"), disp(med_lue)
disp("\nDesvio padr�o do tempo do Inv:"), disp(devpd_invt)
disp("\nDesvio padr�o do erro do Inv:"), disp(devpd_inve)
disp("\nM�dia do tempo do Inv:"), disp(med_invt)
disp("\nM�dia do erro do Inv:"), disp(med_inve)


