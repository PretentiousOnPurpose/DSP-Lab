clc;
clear all;
close all;

N = 4;
l = 2;
x = [1 2 3 4];
x1 = circshift(x, [0, l]);

Y = fft(x);
Z = fft(x1);
W = zeros(1, N);

for n=1:N
  W(n) = exp(-j*2*pi/N*(l) * (n-1));
endfor

Y_ = W .* Y;

if (Y_ ~= Z)
  disp("Time Shift Holds");
else
  disp("Time Shift Doesn't Hold");
endif
