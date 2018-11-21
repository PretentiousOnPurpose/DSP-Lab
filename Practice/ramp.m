clc;
clear all;
close all;

n = -6:1:6;
y = zeros(1, 13);

for i=1:13
  if (i - 7) >= 0
    y(i) = i-7;
  endif
endfor

stem(n, y);