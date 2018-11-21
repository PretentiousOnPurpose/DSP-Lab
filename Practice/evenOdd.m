clc;
clear all;
close all;

n = input("Enter a number: ");
if (mod(n, 2) == 0)
  disp("Even Number");
else
  disp("Odd Number");
end
