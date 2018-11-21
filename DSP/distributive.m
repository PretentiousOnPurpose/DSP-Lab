clc;
clear all;
close all;
x=input('enter the squence 1 ');
h1=input('enter the squence 2 ');
h2=input('enter the squence 3 ');
y=h1+h2;
z=conv(x,y);
p=conv(x,h1);
q=conv(x,h2);
r=p+q;
if z == r
        disp(' distrubutive ');
end
disp('z=');
disp(z);
disp('r=');
disp(r);                                                