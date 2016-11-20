close all; clear; clc;

tic
result = 0;
% 6*9^5 = 354294
for i = 2:355000
    sumDig = 0;
    num = i;
    while num > 0
        d = mod(num,10);
        num = floor(num/10);
        sumDig = sumDig + d^5;        
    end
    if sumDig == i
        result = result + i;
    end
end
result
toc