close all; clear; clc;

tic
num = 1;
limit = 10000;
count = 0;
for num = 1:limit
    iter = 1;
    numToTest = num + reverseNum(num);
    while ~isPalindrome(numToTest) && iter < 50
        numToTest = numToTest + reverseNum(numToTest);
        iter = iter + 1;
    end
    if iter ~= 50
        count = count + 1;
    end
end
10000-count
toc