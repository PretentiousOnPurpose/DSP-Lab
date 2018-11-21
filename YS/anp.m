clc;
close all;
clear all;

x=input('enter the inputs==');
N=input('enter the no of samples');


y=fft(x,N);
Z=(-J*((2*))
disp('X(k)=')
disp(y);

X=zeros(1:N);

for k=1:N-1
    Y1(k)=0;
    for n=1:N;
        Y1(k)=Y1(k)+x(n)*(exp(z*(n-1)*(k+N)))));
    end
end
disp(X);


if y(k)~=X(k+N)
    disp('periodicity property satisfied')
else 
    disp('not satisfied')
end


