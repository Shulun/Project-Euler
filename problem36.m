close all; clear; clc;

tic
sumNum = 0;
% can also create palindromes in base 10 and 
% check if they are in base 2 to improve efficiency

num = 1000000;
while num > 0    
    num = num - 1;
    if isPalindromeBase(num,10) && isPalindromeBase(num,2)
        sumNum = sumNum + num;
    end
end
sumNum
toc