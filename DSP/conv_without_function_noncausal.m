clc;
clear all;
close all;
x=input('First sequence ');
y=input('Second sequence');
m=length(x);
n=length(y);
t1=-m:-1
t2=-n:-1
a=m+n-1;
t3=1-m-n:-1
X1=[x,zeros(1,n)];
X2=[y,zeros(1,m)];
for i=1:a
    Y(i)=0;
    for j=1:i
        Y(i)=Y(i)+X1(j)*X2(i-j+1)
        
    end;
    
end;
figure('name','MATLAB\Pratyush\conv_without_function_noncausal');
subplot(3,1,1);
stem(t1,x);
title('first signal');
subplot(3,1,2);
stem(t2,y);
title('second signal');
subplot(3,1,3);
stem(t3,Y);
title('convolved signal');