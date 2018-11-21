clc;
clear all;
close all;
disp("enter the filter specifications");
rp=input('enter the passband ripple(i.e: 0 ~ 5):');
rs=input('enter the stopband ripple(i.e: 6 ~ 20):');
wp=input('enter the passband freq(i.e: 500 ~ 1500):');
ws=input('enter the stopband freq(i.e: 1500 ~ 3000):');
fs=input('enter the sampling freq(i.e: 1000 ~ 20000):');
w1=2*wp/fs;
w2=2*ws/fs;
c=input('enter the choice of filter: 1 for lpf 2 for hpf 3 for bpf\n');
if(c==1)
    disp('frequency response of IIR LPF is');
    [n,wn]= cheb1ord(w1,w2,rp,rs,'s');
    [b,a]= cheby1(n,rp,wn,'low','s');
end
if(c==2)
    disp('frequency response of IIR HPF is');
    [n,wn]= cheb1ord(w1,w2,rp,rs,'s');
    [b,a]= cheby1(n,rp,wn,'high','s');
end
if(c==3)
    disp('frequency response of IIR BPF is');
    [n]= cheb1ord(w1,w2,rp,rs,'s');
    wn=[w1,w2];
    [b,a]= cheby1(n,rp,wn,'bandpass','s');
end
w=0:0.01:pi;
[h,om]=freqs(b,a,w);
m=20*log10(abs(h));
an=angle(h);
figure('name','MATLAB\pratyush\IIR_CHEBYSHEV');
subplot(2,1,1);
plot(om/pi,m);
title('mag response');
xlabel('normalised frequency');
ylabel('gain in db');
subplot(2,1,2);
plot(om/pi,an);
title('phase response');
xlabel('normalised frequency');
ylabel('gain in db');