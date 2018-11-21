t = -1:0.1:1;
close all;
y = sin(2*pi*t);
subplot(2, 2, 1);
plot(t, y);  
xlabel("Time");
ylabel("Sine");
title("Plot");

subplot(2, 2, 2);
stem(t, y);
xlabel("Time");
ylabel("Sine");
title("Stem");

d = cos(2*pi*t);
subplot(2,2,3);
plot(t,d);
xlabel("Time");
ylabel("Cosine");
title("Plot");

subplot(2,2,4);
stem(t,d);
xlabel("Time");
ylabel("Cosine");
title("Stem");
