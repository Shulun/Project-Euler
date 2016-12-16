close all; clear; clc;

isTwiSqr = @(x) floor(sqrt(x/2))==sqrt(x/2);

tic
primeNum = primes(10000);
bool = 1;
comNum = 33;

while bool
    comNum = comNum + 2;
    i = 1;
    bool = 0; % used to break out of while if no valid 
              % composite number is found
              
    % another while to try to find a valid composite number 
    % and continue the outer while loop (137==137)
    while comNum >= primeNum(i)
        if isTwiSqr(comNum - primeNum(i))
            bool = 1;
            break
        end
        i = i + 1;
    end
end
comNum
toc
