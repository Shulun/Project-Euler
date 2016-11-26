close all; clear; clc;

tic
primeNums = primes(1000000);
N = length(primeNums);
count = 0;
for i = 1:N
    if circularPrime(primeNums(i),primeNums)
        count = count + 1;
    end
end
% add back the special cases of num = 2 or 5
count = count + 2;
count
toc