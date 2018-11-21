clc;
clear all;
close all;
x = input('Enter sequence 1:');
y = input('Enter sequence 2:');
k = max(length(x),length(y));
c = cconv(x,y,k);
disp(c)
b = x;
for n = 1:length(y)-1
    x = [x;circshift(b,length(x)-n)];
end
if (length(x)>length(y))
    y = [y,zeros(1,k-length(y))];
else
    x = x.';
    x = [x,zeros(1,k-length(x))];
    x = x.';
end
Y = y.';
disp(x);disp(Y);
Z = x*Y;
disp(Z)