clc;
clear all;
close all;
x=input('enter the squence 1 ');
h=input('enter the squence 2 ');
r=conv(x,h);
z=conv(h,x);
if z == r
        disp(' commutative ');
end
disp('z=');
disp(z);
disp('r=');
disp(r);