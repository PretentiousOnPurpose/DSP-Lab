clc;
clear all;
close all;
x=input('Enter the sequence:  ');
N=input('Enter the length of sequence:  ');
%N=length(x);
z=abs(x).*abs(x);
sum=0;
sum1=0;
for n=0:1:N-1
    sum=sum+z(n+1);
end
disp(sum);
X=fft(x);
h=abs(X).*abs(X);
for k=0:1:N-1
    sum1=sum1+h(k+1);
end
e=sum1/N;
disp(e);
if sum==e
    disp('Parsevals Theorem is verified');
else
    disp('Parsevals Theorem is not verified');
end
