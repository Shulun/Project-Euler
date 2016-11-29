close all; clear; clc;

% this script is very time expensive
% since look-up for each prime takes 
% a lot of time to complete
tic
primeNums = primes(1000000);
len = length(primeNums);
i = 1;
count = 0;
sumTP = 0;

while count < 11
    prime = primeNums(i);
    if isTrunPrime(prime,primeNums)
        sumTP = sumTP + prime;
        count = count + 1;
    end
    i = i + 1;
end
sumTP
toc
