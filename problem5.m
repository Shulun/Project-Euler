close all; clear; clc;

num = 20;

tic
primeNum = primes(num);

y = primeNum;

val = 1;

len = length(y);
for ind = 1:len
    
    sub = y(ind);
    value = sub;
    while value < num
        y(ind) = value;
        value = value*sub;  
    end
end

prod(y)
toc



