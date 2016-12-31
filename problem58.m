close all; clear; clc;

tic
count = 4;
countPrm = 3;
i = 3;
interval = 2;
%primeNum = primes(300000000);

while countPrm/count >= 0.1
    i = i + 2;
    interval = interval + 2;
    count = count + 4;
    if isprime(i*i - interval)
        countPrm = countPrm + 1;
    end
    if isprime(i*i - interval*2)
        countPrm = countPrm + 1;
    end
    if isprime(i*i - interval*3)
        countPrm = countPrm + 1;
    end
end
i-2
toc