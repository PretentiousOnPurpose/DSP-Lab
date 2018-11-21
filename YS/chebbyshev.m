clc;
clear all;
close all;
rp=15;
rs=60;
wp=1500;
ws=3000;
fs=7000;
w1=2*wp/fs
w2=2*ws/fs
[n,wn]=cheb1ord(w1,w2,rp,rs,'s')
c=input('enter the choice 1=LPF,2=HPF,3=BPF,4=BSF \n')
if(c==1)
    disp('frequency response of IIR LPF');
    [b,a]=cheby1(n,rp,wn,'low');
end
if(c==2)
    
     disp('frequency response of IIR HPF');
    [b,a]=cheby1(n,rp,wn,'high');
end

if(c==3)
    
     disp('frequency response of IIR BPF');
    [b,a]=cheby1(n,rp,[w1 w2],'bandpass');
end
if(c==4)
    
     disp('frequency response of IIR BSF');
    [b,a]=cheby1(n,rp,[w1 w2],'stop');
end



w=0:0.01:pi;
[h,w]=freqz(b,a)
m=20*log10 (abs(h));
an=angle(h);

subplot(2,1,1);
plot(w/pi,m);
title('magnitude response')
xlabel('normalised frequency')
ylabel('magnitude')

subplot(2,1,2)
title('phase spectrum')
xlabel('normalised frequency')
ylabel('phase angle')

plot(w/pi,an);