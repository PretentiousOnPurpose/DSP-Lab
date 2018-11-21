clc;
clear all;
close all;

N = 4;
i = 0:1:N-1;

x = zeros(1, N);
X = [10 -2+2j -2 -2-2j];

for n=1:N
  for k=1:N
    x(n) = x(n) + X(k) * exp(j * 2 * pi / N * (k - 1) * (n - 1));
  endfor
  x(n) = x(n) / N;
endfor

disp(x);

stem(i, x);
xlabel("n");
ylabel("Amplitude");
