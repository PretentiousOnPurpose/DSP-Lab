clc;
clear all;
close all;
x=input('enter the numerator coeffecient');
y=input('enter the denominator coefficient');
z=input(' enter the number of samples');
h=impz(x,y,z);
disp(h);
figure('name','MATLAB\impulse_diffeqn\pratyush');
n=0:z-1
stem(n,h);
xlabel('sample');
ylabel('amplitude');
title('IMPULSE RESPONSE');
