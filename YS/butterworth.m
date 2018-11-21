clc;
clear all;
close all;

rp = input('Enter the passband ripple');
rs = input('Enter the stopband ripple');
wp = input('Enter the passband edge frequency');
ws = input('Enter the stopband edge frequency');
fs = input('Enter the sampling frequency');

w1 = 2*wp/fs

w2=2*ws/fs

[n,wn]=buttord(w1,w2,rp,rs,'s')

c=input('enter the choice 1=LPF,2=HPF,3=BPF,4=BSF \n')

if(c==1)
    disp('frequency response of IIR LPF');
    [b,a]=butter(n,w1,'low');
end

if(c==2)
    
     disp('frequency response of IIR HPF');
    [b,a]=butter(n,w2,'high');
end

if(c==3)
    
     disp('frequency response of IIR BPF');
    [b,a]=butter(n,[w1,w2],'bandpass');
end
if(c==4)
    
     disp('frequency response of IIR BSF');
    [b,a]=butter(n,[w1,w2],'stop');
end



w=0:0.001:pi;
[h,om]=freqz(b,a)
m=20*log10 (abs(h));
an=angle(h);

subplot(2,1,1);
plot(om/pi,m);
title('magnitude response')
xlabel('normalised frequency')
ylabel('gain in db')

subplot(2,1,2)
title('phase spectrum')
xlabel('normalised frequency')
ylabel('gain in db')

plot(om/pi,an);