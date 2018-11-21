clc;
clear all;
close all;
X=0:0.01:2*pi;
plot(X,cos(X)),grid on
title('cosine waveform');
xlabel('time')
ylabel('amplitude')