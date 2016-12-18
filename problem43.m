close all; clear; clc;

tic
divisors = [2 3 5 7 11 13 17];
M = length(divisors);
sumVal = 0;

% Dijkstra's method for generating permutations
perm = [0 1 2 3 4 5 6 7 8 9];
N = length(perm);
numPerm = factorial(N);

% container to store all permutations
%permNum = zeros(numPerm,N);
%permNum(1,:) = perm; 

count = 1;

while count < numPerm
    %N = length(perm);
    i = N - 1;
    while perm(i) >= perm(i+1)
        i = i - 1;
    end
    j = N;
    while perm(j) <= perm(i)
        j = j - 1;
    end
    temp = perm(i);
    perm(i) = perm(j);
    perm(j) = temp;
    
    i = i + 1;
    j = N;
    while i < j
        temp = perm(i);
        perm(i) = perm(j);
        perm(j) = temp;
        i = i + 1;
        j = j - 1;
    end
    bool = 1;
    for k = 1:M
        num = perm(k+1)*100 + perm(k+2)*10 + perm(k+3);
        if mod(num,divisors(k))~=0
            bool = 0;
            break
        end
    end
    if bool
        num = 0;
        %{
        for i = 1:N
            num = 10*num + perm(i);
        end
        %}
        for i = 1:N
            num = num + perm(i)*10^(N-i);
        end
        sumVal = sumVal + num;
    end
    count = count + 1;
    %permNum(count,:) = perm;
end
num2str(sumVal)
toc
