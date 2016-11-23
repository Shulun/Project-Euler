close all; clear; clc;

tic
base = 10^10;
res = 0;
for i = 1:1000
    pow = 1;
    temp = 1;
    
    while pow <= i
        temp = floor(mod(temp*i, base));
        pow = pow + 1;
    end
    res = floor(mod((res + temp), base));
end
num2str(res)
toc
