clc;
clear all;
close all;
a=input('enter the number');
x=mod(a,2);
switch x
    case 0
    disp('even')
    case 1
    disp('odd')
end