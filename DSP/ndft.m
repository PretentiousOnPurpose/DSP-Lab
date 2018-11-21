clc;
clear all;
close all;
figure('name','ndft/matlab/pratyush');
X=zeros(1,4);
N=4
x=[0,1,2,3];
for k=0:N-1
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-i*2*(pi/N)*k*n)
    end
end
disp(X)
disp(abs(X))
r=abs(X)

subplot(3,1,1)
stem(X)
title('magnitude spectra')
subplot(3,1,2)
stem(angle(X)*180/pi)
title('phase spectra')
subplot(3,1,3)
stem(abs(X).^2)
title('power spectrum')