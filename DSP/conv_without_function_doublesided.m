clc;
clear all;
close all;
x=input('First sequence ');
l1=input('enter the lower limit of sequence 1  ');
u1=input('enter the upper limit of sequence 1  ');
y=input('Second sequence');
l2=input('enter the lower limit of sequence 2');
u2=input('enter the upper limit of sequence 2');
m=length(x);
n=length(y);
t1=l1:1:u1
t2=l2:1:u2
a=m+n-1;
l=l1+l2;
u=u1+u2;
t3=l:1:u
X1=[x,zeros(1,n)];
X2=[y,zeros(1,m)];
for i=1:a
    Y(i)=0;
    for j=1:i
        Y(i)=Y(i)+X1(j)*X2(i-j+1);
        
    end;
    
end;
figure('name','MATLAB\Pratyush\conv_without_function_doublesided');
subplot(3,1,1);
stem(t1,x);
title('first signal');
subplot(3,1,2);
stem(t2,y);
title('second signal');
subplot(3,1,3);
stem(t3,Y);
title('convolved signal');