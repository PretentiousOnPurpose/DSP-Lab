clc;
clear all;

N=4;
X = [10 -2+2i -2 -2-2i];
x=ifft(X,N);
disp(x);

 