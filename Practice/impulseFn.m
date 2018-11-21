clc;
clear all;
close all;

n = -4:1:4;
y = zeros(1, 9);

for i=1:9
  if (i - 5) == 0
    y(i) = 1;
  endif
endfor

stem(n, y);
