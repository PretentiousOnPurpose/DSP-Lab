clc;
clear all;
close all;

N = 4;
i = 0:1:N-1;
X = zeros(1, N);
x = [1 2 3 4];

for k=1:N
  for n=1:N
    X(k) = X(k) + x(n) * exp(-j * 2 * pi / N * (k -1) * (n - 1));  
  endfor
endfor

disp(X);

subplot(3, 1, 1);
stem(i, abs(X));
ylabel("Amplitude");
xlabel("K");
title("Magnitude Spectrum");

subplot(3, 1, 2);
stem(i, abs(X) .^ 2);
ylabel("Amplitude");
xlabel("K");
title("Power Spectrum");

subplot(3, 1, 3);
stem(i, angle(X));
ylabel("Amplitude");
xlabel("K");
title("Phase Spectrum");