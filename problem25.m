close all; clear; clc;

% recursion exceeds maximum limit
% also MATLAB cannot really print out 
% 1000 digits, so need a different method
%{
ind = 1;
num = num2str(fib(ind,1,1))
while length(num) < 1000
    num = num2str(fib(ind,1,1));
    ind = ind + 1;
end
ind
%}

% try to use Binet's formula
% solution formula is derived from
% n = log_phi((Fn*sqrt(5) + sqrt(5*Fn +/- 4)/2))
%   = log10((Fn*sqrt(5) + sqrt(5*Fn +/- 4)/2))/log10(phi)
%   = log10(sqrt(5)*Fn)/log10(phi)
%   = (log10(Fn) + log10(5)/2)/log10(phi)
% log10(Fn) represents an estimation of the number of digits
% for the Fibonacci number

tic
format long
phi = (1+sqrt(5))/2;
digits = 1000;

n = ceil((digits-1 + log10(5)/2)/log10(phi));

n
format short
toc