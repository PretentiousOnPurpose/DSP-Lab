clc;
clear all;
close all;

Fm = 5;
t = -1:0.005:1;
y = cos(2 * pi * Fm * t);
subplot(4, 1, 1);
plot(t, y);
xlabel("Time");
ylabel("Amplitude");
title("Message Signal");

Fs1 = 1.5 * Fm;
Ts1 = 1/Fs1;
t1 = -1:Ts1:1;

y1 = cos(2 * pi * Fm * t1);
subplot(4, 1, 2);
plot(t1, y1);
xlabel("Time");
ylabel("Amplitude");
title("Under Sampling");

Fs2 = 2 * Fm;
Ts2 = 1/Fs2;
t2 = -1:Ts2:1;

y2 = cos(2 * pi * Fm * t2);
subplot(4, 1, 3);
plot(t2, y2);
xlabel("Time");
ylabel("Amplitude");
title("Critical Sampling");

Fs3 = 10 * Fm;
Ts3 = 1/Fs3;
t3 = -1:Ts3:1;

y3 = cos(2 * pi * Fm * t3);
subplot(4, 1, 4);
plot(t3, y3);
xlabel("Time");
ylabel("Amplitude");
title("Over Sampling");

