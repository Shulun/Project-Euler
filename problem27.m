close all; clear; clc;

tic
aCoef = 0;
bCoef = 0;
numMax = 0;
pCountMax = 0;

row = 1;
b = primes(1000);
n = length(b);
for a = -1000:1000
    val = -40^2+40*a;
    for i = 1:n
        if b(i) > val
            num = 0;
            pCount = 0;
            while isprime(num^2+a*num+b(i))
                num = num + 1;
                pCount = pCount + 1;
                if num^2+a*num+b(i) < 0
                    break;
                end
            end
            if pCount > pCountMax
                pCountMax = pCount;
                aCoef = a;
                bCoef = b(i);
            end
        end
    end
end
aCoef*bCoef
toc