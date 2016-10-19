close all; clear; clc;
% need numDivisors

tic
n = 1;
num1 = numDivisors(n);
num2 = numDivisors(n+1);

while num1*num2 < 500
    n = n + 1;
    num1 = num2;
    num2 = numDivisors(n+1);
end
toc

(n*(n+1))/2