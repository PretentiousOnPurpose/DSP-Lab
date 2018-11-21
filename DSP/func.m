clc;
clear all;
close all;
n=input('number of samples')
figure('name','signals/matlab/pratyush');
t=ones(1,n)
n=0:n-1
subplot(3,1,1)
stem(n,t)
title('unit step signal')
xlabel('time')
ylabel('amplitude')
m=n
m=0:6
subplot(3,1,2)
plot(m,m)
title('ramp signal')
xlabel('time')
ylabel('amplitude')
a=-4:4
x=[zeros(1,4),1,zeros(1,4)]
subplot(3,1,3)
stem(a,x)
title('unit impulse signal')
xlabel('time')
ylabel('amplitude')
