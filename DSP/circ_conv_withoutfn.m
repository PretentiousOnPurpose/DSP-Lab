clc;
close all;
clear all;
x1=input('enter the first sequence');
n1=length(x1);
x2=input('enter second sequence');
n2=length(x2);
N=max(n1,n2);
x1=[x1,zeros(1,N-n1)];
x2=[x2,zeros(1,N-n2)];
y = zeros(1,N);
for n = 1:N
    for m = 1:N
        y = circshift(x2, -m+1);
        y(n) = y(n) + x1(m) * y(n);
    end
end

disp(y);
