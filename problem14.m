close all; clear; clc;

tic
startNum = 1000000;
maxTerm = 0;
n = 0;
num = 0;
newNum = 0;

for i = 1:startNum
    num = i;
    numTerm = 0;
    while 1
        if mod(num,2)==0 
            num = num/2;
            numTerm = numTerm + 1;
        elseif mod(num,2)~=0 && num ~= 1
            num = 3*num + 1;
            numTerm = numTerm + 1;
        elseif mod(num,2)~=0 && num == 1
            numTerm = numTerm + 1;
            break;
        end
    end 
    if numTerm > maxTerm
        maxTerm = numTerm;
        newNum = i;
    end
end
toc

newNum
