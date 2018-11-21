clc;
clear all;
close all;

x1 = [1 2 3 4];
x2 = [1 2 3 4];

f1 = dfT(x1, 4);
f2 = dfT(x2, 4);

x3 = 0.5 .* x1 + 0.5 .* x2;
f3 = dfT(x3, 4);

f4 = 0.5 .* f1 + 0.5 .* f2;

disp(f4(2));
disp(f4(2));

if (f4 == f3)
    disp('Linearity holds');
else
    disp('Linearity Violated');
end

function X = dfT(x, N)
    X=zeros(1,N);
    for k=1:N
        for n = 1:N
            X(k)= X(k) + x(n) * exp(-i*2*(pi/N)* (n-1) * (k-1));
        end
    end
end
