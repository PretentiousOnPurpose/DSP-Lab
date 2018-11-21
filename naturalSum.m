clc;
clear all;
close all;

n = input("Enter n: ");
sum = 0;
for i = 1:n
  sum = sum + i;
endfor

disp(sum);