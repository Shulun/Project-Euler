close all; clear; clc;

tic
maxLen = 0;
maxVal = 0;
for i = 7:1000
    counter = 1;
    val = mod(10,i); % correspond to val = mod(val,i);
    lim = 1000;
    while val ~= 1 && lim > 7
        val = val*10; % complete the circle when val = 1;
        val = mod(val,i);
        counter = counter + 1;
        lim = lim - 1;
    end
    if counter > maxLen && lim > 7
        % when the number has one single cycling 
        % digit, lim goes to less than 7 and this 
        % if loop is not executed, thus maxLen is 0
        % for that i (exp: 1/i, i = 24)
        maxLen = counter;
        maxVal = i;
    end
end
maxVal
toc

% Explanation:
% val = mod(10,i);
% when i = 23, mod(10,23) = 10;
% finally when val = 1, in next loop 
% val = 1*10 = 10; same as the 10 in val = mod(10,i);
% this completes the cycle counting of the number i
% Alternatively one could also use this combo:
% val = mod(20,i) and val ~= 2 in the while loop
% logic to complete the cycle counting of i