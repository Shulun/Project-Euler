close all; clear; clc;

tic
x = 2;
limit = 2000000;
lst = PrimeNum3(x,limit);

sum(lst)+2
toc

