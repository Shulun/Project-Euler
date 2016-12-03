close all; clear; clc;

tic
% Brute force method
lst = genPerm(1234567);
n = length(lst);
prm_lst = [];

for i = 1:n
    num = lst(i);
    if isprime(num)
        prm_lst = [prm_lst num];
    end
end
max(prm_lst)
toc