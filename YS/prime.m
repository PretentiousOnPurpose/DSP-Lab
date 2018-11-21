a = input('Enter a num: ');
cnt = 0;
for i = 2:a-1
    if (mod(a, i) == 0)
        cnt = cnt + 1;
    end
end

if (cnt == 0) 
    disp('Prime');
else
    disp('Not Prime');
end