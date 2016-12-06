close all; clear; clc;

tic
mul = 1;
base = 9;
numDig = 1;
num = 0;
limit = 1000000;
count = [];
mulArr = [];
while num < limit
    num = num+base*mul*numDig;
    count = [count num];
    mul = mul*10;
    mulArr = [mulArr mul];
    numDig = numDig+1;
end
%{
numDig-1
mul/10
num
%}
% both d1 and d10 are equal to 1
% calculate the product of the rest
tot = 1;
for i=1:length(count)-1
    digNum = mulArr(i)*10-count(i);
    num = floor(digNum/(i+1)+mulArr(i));
    numStr = num2str(num);
    tot = tot*str2double(numStr(mod(digNum,i+1)));
end
tot
toc