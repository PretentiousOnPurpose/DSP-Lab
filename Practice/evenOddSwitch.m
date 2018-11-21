clc;
clear all;
close all;

n = input("Enter a number: ");
r = mod(n, 2);

switch(r)
  case 0
    disp("Even Number");
  otherwise
    disp("Odd Number");
  end  