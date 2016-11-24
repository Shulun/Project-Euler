close all; clear; clc;

% this program is kinda slow, it took more 
% than 100 sec to execute
%{
tic
sumNum = 0;
for i = 3:900000
    n = i;
    sumD = 0;
    while n > 0
        sumD = sumD + factorial(floor(mod(n,10)));
        n = floor(n/10);
    end
    if sumD == i
        sumNum = sumNum + i;
    end
end
sumNum
toc
%}

% now try to pre-allocate factorial values to 
% avoid repeated calculations, this drastically
% reduces the run-time down to 0.30 sec
tic
facts = zeros(1,10);
for i = 0:9
    facts(i+1) = factorial(i);
end

sumNum = 0;
for i = 3:900000
    n = i;
    sumD = 0;
    while n > 0
        sumD = sumD + facts(floor(mod(n,10))+1);
        n = floor(n/10);
    end
    if sumD == i
        sumNum = sumNum + i;
    end
end
sumNum
toc
