close all; clear; clc;

tic
x = 2;
n = 10001;
count = 0;

while count < n
    if isprime(x)
        count = count + 1;
    end
    x = x + 1;
end
toc
x-1