close all; clear; clc;

tic
numUpper = 28123; % all numbers larger than it can be written as 
                  % the sum of two abundant numbers

% list to store all the abundant numbers
abNum = [];
for i = 1:numUpper
    if sumDivisors(i) > i
        abNum = [abNum i];
    end
end

% create a list to store all possible sums of two 
% abundant numbers, an upper limit of 28123 is also
% applied here (with break;)
count = length(abNum);

abFlag = zeros(1,numUpper);
abSum = 0;
for i = 1:count
    for j = i:count
        abSum = abNum(i) + abNum(j);
        if abSum <= numUpper
            abFlag(abSum) = 1;
        else
            break;
        end
    end
end

% sum all integers that could not be written as the sum 
% of two abundant numbers
sumN = 0;
for i = 1:numUpper
    if ~abFlag(i)
        sumN = sumN + i;
    end
end
sumN
toc








