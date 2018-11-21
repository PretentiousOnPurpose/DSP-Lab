clc;
clear all;
close all;
x=input('enter the sequence:');
l=length(x);
N=input('enter the length of sequence:');
%x1=[x,zeros(1,N)];
z= -1i*(2*pi)/N;
Y=fft(x);                  
disp(Y)
for k=1:N
    A(k)=0;
    for n=1:N
        A(k)=A(k)+x(n)*exp(z*(n-1)*((k+N)-1));
    end
 
end
disp(A)
if Y~=A
    disp('the periodicity is verified');
else 
    disp('the periodicity is not verified');
end
