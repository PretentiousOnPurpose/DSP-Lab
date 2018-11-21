clc;
clear all;

Fm=50;
t=0:0.001:1;

x=cos(2*pi*Fm*t);

subplot(411);
plot(t,x);
title('Message Signal');
xlabel('t');
ylabel('Amplitude');

% Under Damped

Fs1=1.5*Fm;
Ts1=1/Fs1;
t1= 0:Ts1:1;

c=cos(2*pi*Fm*t1);

subplot(412);
plot(t1,c);
title('Under Damped');
xlabel('t');
ylabel('Amplitude');

% Critically damped

Fs2=2*Fm;
Ts2=1/Fs2;
t2=0:Ts2:1;

b=cos(2*pi*Fm*t2);

subplot(413);
plot(t2,b);
title('Crtically Damped');
xlabel('t');
ylabel('Amplitude');

% Over damped

Fs3=10*Fm;
Ts3=1/Fs3;
t3=0:Ts3:1;

c=cos(2*pi*Fm*t3);

subplot(414);
plot(t3,c);
title('Over Damped');
xlabel('t');
ylabel('Amplitude');

