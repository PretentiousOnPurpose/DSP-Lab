clc;
clear all;
close all;
x=input('enter the squence 1 ');
h1=input('enter the squence 2 ');
h2=input('enter the squence 3 ');
r=conv(h1,h2);
s=conv(x,h1);
t=conv(x,r);
u=conv(s,h2);
if t == u
        disp(' associative ');
end
disp('t=');
disp(t);
disp('u=');
disp(u);         