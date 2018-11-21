clc;
clear all;
close all;

pkg load signal;

x1 = input("Numerator: ");
x2 = input("Denominator: ");

h = impz(x1, x2);

disp(h);
stem(h);