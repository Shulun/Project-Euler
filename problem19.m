close all; clear; clc;

% Number of leap years
%{
count = 0;
for i = 1901:2000
    if mod(i,4) == 0 
        count = count + 1;
    end
    if mod(i,100) == 0 && mod(i,400) ~= 0
        count = count - 1;
    end
end
%}

tic
countS = 0;
for y = 1901:2000
    for m = 1:12
        if dateToDay(m,1,y) == 0 || dateToDay(m,1,y) == 7
            countS = countS + 1;
        end
    end
end
countS
toc