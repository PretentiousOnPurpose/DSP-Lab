x = zeros(1, 11);
n = -5:1:5;

for i = 1:11
  if (i-6 >= 0)
      x(i)=1;
  end
  
end

stem(n, x);
xlabel("Time");
ylabel("Amplitude");
title("Unit Step");