close all; clear; clc;

tic
num = 0;

% i = 9267, not the largest
for i = 9999:-1:9000
    numOfDig = 0;
    numSec = 2*i;
    while numSec > 0
        numOfDig = numOfDig + 1;
        numSec = floor(numSec/10);
    end
    num = i*10^numOfDig + 2*i;
    if isPandigital(num)
        break
    end
end
num
toc
