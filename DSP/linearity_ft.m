clc;
clear all;
close all;
x1=input('enter the sequence 1 :');
x2=input('enter the sequence 2:');
a=input('the value of a:');
b=input('the value of b:');
y=(a*x1)+(b*x2);
Y=fft(y);
X1=fft(a*x1);
X2=fft(b*x2);
X=X1+X2;
if X==Y
    disp('the linearity property is verified')
    disp(X)
else
    disp('the linearity property is not verified')
end