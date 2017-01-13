% round() gives 46 counts
% ceil() gives 23 counts
% first method doesn't generate
% the exact solutions
%{
close all; clear; clc;
tic
val = 0;
n = 1;
while val < 10
    val = round(10^((n-1)/n));
    (n-1)/n
    n = n + 1;
end
n
toc
%}


function problem63
close all; clear; clc;
tic
counter = 0;
for i = 1:9
    power = 1;
    while 1
        if power == countLen(i^power)
            counter = counter + 1;
        else
            break
        end
        power = power + 1;
    end
end
counter
toc
end

function cnt = countLen(num)

cnt = 0;
newNum = num;
while newNum > 0
    newNum = floor(newNum/10);
    cnt = cnt + 1;
end
end
