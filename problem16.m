close all; clear; clc;

% This solution doesn't really work with  
% MATLAB when the input number is very large
%{
num = 2^1000;
sum = 0;

while mod(num, 10) ~= 0
    rem = mod(num, 10);
    sum = sum + rem;
    num = num/10;
end
sum
%}

% Try to use symbolic toolbox
tic 
num = sym(2^1000); % use sym to perserve precision of the num
num = char(num); % convert num to a string

sum = 0;
for i = 1:length(num)
    sum = sum + str2double(num(i));
end

sum
toc
