clc;
clear all;
N=4;
x=[1 2 3 4];
X=fft(x,N);

s1=0;
for n=1:N
    s1 = s1 + abs(x(n)).^2;
end

s2 = 0;
for n = 1:N
    s2 = s2 + abs(X(n)).^2;
end

s2 = s2 / N;

if s1 == s2
    disp('Parseval is Correct');
else
    disp('Parseval is Liar');
end