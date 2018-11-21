clc;
clear all;

x = [1 2 3 4];
N = 4;
l = 1;
X = fft(x, N);

w = zeros(1, N);
for n = 1:N
    w(n) = exp(i * 2 * pi / N * l * (n-1));
end

x_ = w .* x;
X_ = fft(x_, N);

Y = circshift(X, l);


if X_ ~= Y
    disp('Frequency Shift is correct');
else
    disp('Frequency Shift is incorrect');
end