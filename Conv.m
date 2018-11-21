clc;
clear all;
close all;

x1 = [1 2 3 4];
x2 = [1 2 3];
x3 = [2 3 4 5 6];

l1 = length(x1);
l2 = length(x2);

x1 = [x1, zeros(1, l2)];
x2 = [x2, zeros(1, l1)];

for n = 1:l1+l2-1
  y(n) = 0;
  for k=1:n
    y(n) = y(n) + x1(k) * x2(n - k + 1);
  endfor
endfor

x1 = [1 2 3 4];
x2 = [1 2 3];


disp(y);
disp(conv(x1, x2));