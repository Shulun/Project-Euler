close all; clear; clc;

tic
%numerVal = [];
%denomVal = [];
numVal = 1;
denVal = 1;
for numer = 10:99
    for denom = numer+1:99
        numDig2 = floor(mod(numer,10));
        numDig1 = floor(mod(numer/10,10));
        denDig2 = floor(mod(denom,10));
        denDig1 = floor(mod(denom/10,10));
        
        % cases
        if (numDig1 == denDig2 && numer/denom == numDig2/denDig1) ...
        || (numDig2 == denDig1 && numer/denom == numDig1/denDig2)
            %numerVal = [numerVal numer];
            %denomVal = [denomVal denom];
            numVal = numVal*numer;
            denVal = denVal*denom;
        end
    end
end
%numerVal
%denomVal
%{
n = length(denomVal);
denomCom = denomVal(1);
for i = 2:n
    val = denomVal(i);
    denomCom = lcm(denomCom,val);
end
denomCom
%}
val = denVal/gcd(numVal,denVal)
toc
