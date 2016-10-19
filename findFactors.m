function factors = findFactors(num)
% Function finds all the divisible factors of the given integer number
% Also returns the number of factors
if num < 0 || isinteger(num)
    error('Please enter an integer number that is larger than zero');
end
i = 1;
factors = [];
while i <= num
    if mod(num,i) == 0
        factors = [factors i];
    end
    i = i + 1;
end