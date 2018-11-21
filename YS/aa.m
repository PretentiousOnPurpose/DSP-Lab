clc;
clear all;
N=input('enter the no of samples==')
x=input('enter the inputs==')
X=fft(x,N);

s1=0;
for n=1:N
    s1 = s1 + abs(x(n)).^2;
    disp(s1);
end

s2 = 0;
for n = 1:N
    s2 = s2 + abs(X(n)).^2;
    disp(s2);
end

s2 = s2 / N;

if s1 == s2
    disp('Parseval is Correct');
else
    disp('Parseval is not correct');
end