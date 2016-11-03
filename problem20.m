close all; clear; clc;

% This method yields 683 which is probably 
% due to precision issue
%{
tic
number = sym(factorial(100));
numStr = char(number);

n = length(numStr);
tot = 0;
for i = 1:n
    tot = tot + str2num(numStr(i));
end
tot
toc
%}

% Use Java mehtods to solve this problem
% which gives the correct answer 648
tic
result = java.math.BigDecimal(1);
for i = 1:100
    result = result.multiply(java.math.BigDecimal(i));
end

num = result.toString();
numVal = java.lang.Character('a');

tot = 0;
n = length(num);
for i = 0:n-1
    tot = tot + numVal.getNumericValue(num.charAt(i));
end
tot
toc



