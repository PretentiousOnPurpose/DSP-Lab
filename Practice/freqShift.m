clc;
clear all;
close all;

N = 4;
l = 2

x = [1 2 3 4];
W = zeros(1, N);

Y = fft(x);
Z = circshift(Y, [0, l]);

for n=1:N
  w(n) = exp(j * 2 * pi / N * l * (n-1));
endfor

x_ = w .* x;
Y_ = fft(x_);

disp(Z);
disp(Y_);