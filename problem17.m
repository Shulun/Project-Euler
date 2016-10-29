close all; clear; clc;

tic
count = 0;

for i = 1:1000
    count = count + length(checkNum(i));
end

% subtract the number of extra 'and' added to 
% numbers such as 300, 400 or 500
count = count - 27;

count
toc