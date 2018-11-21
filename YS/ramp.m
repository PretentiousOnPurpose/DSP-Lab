x= zeros(1,11);
n=-5:1:5;
for i=1:11
    if(i>=0)
        x(i)=i-3;
    end
end
plot(n,x);
title("Ramp");
xlabel("Time");


ylabel("Amplitude");    
    
        
        