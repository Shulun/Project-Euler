close all; clear; clc;

tic
sumA = 0;

for i = 2:9999
    val1 = sumDivisors(i);
    % remove perfect numbers next
    % to eliminate duplicates in 
    % summation calculation
    if i==val1 || i==1
        val1 = 0;
    end
    val2 = sumDivisors(val1);
    if i == val2
        sumA = sumA + val1;
    end
end

sumA
toc










