close all; clear; clc;

% Due to that number is converted to double type
% Matlab tries to trim the number for high precision
% therefore the normal method will not work
% need to use symbolic toolbox and vpa or vpi from
% file exchange
%{
tic
maxDigSum = 0;
limit = 100;

for a = limit-1:-1:1
    for b = limit-1:-1:1
        digSum = 0;
        temp = power(a,b);
        %{
        if log10(temp)*9 < maxDigSum
            break
        end
        %}
        while temp > 0
            digSum = digSum + mod(temp,10);
            temp = floor(temp/10);
        end

        if digSum > maxDigSum
            maxDigSum = digSum;
        end
    end
end
maxDigSum
toc
%}


% Use the functions obtained from MATLAB File Exchange
tic
addpath('VariablePrecisionIntegers') 

%vpi(99).^95
[A,B] = ndgrid(1:99);
A = vpi(A);
B = vpi(B);
C = A.^B;
CC = mat2cell(C,ones(1,99),ones(1,99));
sumfun = @(N) sum(digits(N));
dsum = cellfun(sumfun,CC);
%[S,loc] = max2(dsum)
max(max(dsum))
toc