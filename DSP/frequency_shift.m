clc;
close all;
clear all;
x=input('Enter the sequence:  ');
N=input('Enter num of values:  ');
L=input('Enter the number of shifts:   ');
X = fft(x);
z = zeros(1, N);
for n=1:N
    z(n)=exp(-i*2*pi/N*L*(n-1));
end
a= z.*x;
b=fft(a);
Y=circshift(X,L);
disp(a)
disp(b)
disp(Y)
if b~=Y
    disp('Frequency Shift is correct');
else
    disp('Frequency Shift is incorrect');
end
                          