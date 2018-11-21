clc;
clear all;
close all;
 
pkg load signal; 
 
x1 = [1 2 3 4];
x2 = [1 2 3];

l1 = length(x1);
l2 = length(x2);
N = max(l1, l2);

x1 = [x1, zeros(1, (N - l1))];
x2 = [x2, zeros(1, (N - l2))];

disp(x1);
disp(x2);

y = zeros(1, N);

for n=1:N
  for m=1:N
    y(n) = y(n) + x1(m) * x2(mod((n-m), N) + 1);
  endfor
endfor

disp(y);