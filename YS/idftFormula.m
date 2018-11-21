X = [10 -2+2i -2 -2-2i];
N = 4;
x=zeros(1, N);
for n=1:N
    for k = 1:N
       x(n) = x(n) + X(k) * exp(i*2*(pi/N)* (n-1) * (k-1));
    end
end

x = x / N;
disp('x(n)=');
disp(x);
n=0:1:N-1;


figure('Name','YS','NumberTitle','off');
stem(n,abs(x));
title('Magnitude Spectrum');
xlabel('n');
ylabel('|x(n)|');
