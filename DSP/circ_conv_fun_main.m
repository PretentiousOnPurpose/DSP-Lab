clc;
clear all;
close all;
x = input('Enter sequence 1:');
y = input('Enter sequence 2:');
k = max(length(x),length(y));
c = cconv(x,y,k);
disp(c)
