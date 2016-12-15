close all; clear; clc;

tic
upper = 9999;
lower = 1489;
indicator = 0;
primeNum = PrimeNum3(lower,upper);
n = length(primeNum);
for i = 1:n
    for j = i+1:n
        prime_i = primeNum(i);
        prime_j = primeNum(j);
        prime_k = 2*prime_j-prime_i;
        if prime_k < upper && ismember(prime_k,primeNum)
            if isPerm(prime_i, prime_k) && isPerm(prime_j, prime_k)
                rtn = strcat(num2str(prime_i),num2str(prime_j),num2str(prime_k));
                indicator = 1;
                break
            end
        end
    end
    if indicator==1
        break
    end
end
rtn
toc