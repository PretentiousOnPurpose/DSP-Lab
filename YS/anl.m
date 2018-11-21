clc;
clear all;
close all;
x1=input('enter the value of x1:')
x2=input('enter the value of x2:')
a=input('enter the value of a')
b=input('enter the value of b:')
x=a*x1+b*x2;
xk1=fft(x1);
xk2=fft(x2);
xka=a*xk1+b*xk2;
xkb=fft(x);
disp(xka);
disp(xkb);
if xka=xkb
    disp('linearity is proved');
end
 