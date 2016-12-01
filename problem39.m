close all; clear; clc;

% Brute force method, took more than
% 24 seconds
%{
tic
maxNumSol = 0;
pVal = 0;
limit = 1000;

p = 12;
while p <= limit
    numSol = 0;
    for x = 1:floor(p/2)
        for y = floor((p-2*x)/2:(p-x)/2)
            if x^2+y^2==(p-x-y)^2
                numSol = numSol + 1;
            end
        end
    end
    if numSol > maxNumSol
        maxNumSol = numSol;
        pVal = p;
    end
    p = p + 1;
end
maxNumSol
pVal
toc
%}

% much faster method using number theory
% a + b + c = 1000
% a = m^2 - n^2
% b = 2*m*n
% c = m^2 + n^2
% k = m+n
% m and n are coprime: gcd(m,n)==1
tic
p = 1000;
pMax = 0;
tMax = 0;
m = 0; k = 0; 
mlimit = floor(sqrt(p/2));
for s = 1:p
    t = 0;
    for m = 2:mlimit
        if mod(floor(s/2),m)==0
            if mod(m,2)==0
                k = m + 1;
            else
                k = m + 2;
            end
            while k<2*m && k<=s/(2*m)
                if mod(floor(s/(2*m)),k)==0 && gcd(k,m)==1
                    t = t + 1;
                end
                k = k + 2;
            end
        end
    end
    if t > tMax
        tMax = t;
        pMax = s;
    end
end
tMax
pMax
toc
