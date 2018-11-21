clc;
clear all;
close all;

N = 4;
x = [1; 2; 3; 4;];

W = zeros(N, N);

for k = 1:N
  for n = 1:N
    W(k, n) = exp(-j * 2 * pi / N * (n-1) * (k-1));
  endfor
endfor

X = W * x;
disp(X);