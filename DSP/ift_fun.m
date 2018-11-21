clc;
clear all;
close all;
figure('name','ift/matlab/pratyush');
X=[6,2+2j,2,2-2j];
N=4;
for k=0:N-1
    for n=0:N-1
        w=conj(dftmtx(N)/N);
        x=w'*X';    
    end
end
disp(x)
stem(x)
title('idft')