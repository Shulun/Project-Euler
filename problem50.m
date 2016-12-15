close all; clear; clc;

% Brute force method, very slow,
% took more than 170 sec to complete
%{
tic
upper = 1000000;
primeNum = primes(upper);
n = length(primeNum);
prevCount = 0;
consecPrm = 0;

for i = 1:n
    sumP = 0;
    count = 0;
    j = 0;
    while sumP < upper && i+j < n
        sumP = sumP + primeNum(i+j);
        j = j + 1;
        count = count + 1;
        if ismember(sumP,primeNum) && count > prevCount
            consecPrm = sumP;
            prevCount = count;
        end
    end
end
consecPrm
toc
%}

% Much more improved approach
% by computing a list of 
% cumulative sums of primes
tic
upper = 1000000;
consecPrm = 0;
count = 0;
primeNum = primes(upper);
n = length(primeNum);
primeSum = zeros(1,n+1);

for i = 1:n
    primeSum(i+1) = primeSum(i) + primeNum(i);
end

for i = count:n+1
    for j = i-count-1:-1:1
        prmNum = primeSum(i) - primeSum(j);
        if prmNum > upper
            break
        end
        if ismember(prmNum,primeNum)
            count = i - j;
            consecPrm = prmNum;
        end
    end
end
consecPrm
toc