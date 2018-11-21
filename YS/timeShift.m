clc;
clear all;
N=4;
l = 3;
x = [1 2 3 4 ];
X = fft(x,N);
x_ = circshift(x,l);

w = zeros(1, N);
for n = 1:N
    w(n) = exp(-i * 2 * pi / N * l * (n-1));
end

X_ = fft(x_, N);

Y = w.*X;

disp(X_);
disp(Y);

if Y ~= X_
    disp('Time Shift is Correct');
else
    disp('Time Shift is incorrect');
end