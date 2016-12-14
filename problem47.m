close all; clear; clc;

tic
num = 646;
count = 0;
while count < 4
    num = num + 1;
    primeNum = findPrmDivisors(num);
    if length(primeNum) >= 4
        count = count + 1;
    else
        count = 0;
    end
end
num-3
toc
