clc;
clear all;
close all;

t = -1:0.05:1;
y1 = sin(2 * pi * t);
y2 = cos(2 * pi * t);

subplot(4, 1, 1);
plot(t, y1);
xlabel("Time");
ylabel("Amplitude");
title("Sine Wave");

subplot(4, 1, 2);
plot(t, y2);
xlabel("Time");
ylabel("Amplitude");
title("Cos Wave");

subplot(4, 1, 3);
stem(t, y1);
xlabel("Time");
ylabel("Amplitude");
title("Sine Wave");

subplot(4, 1, 4);
stem(t, y2);
xlabel("Time");
ylabel("Amplitude");
title("Cos Wave");
