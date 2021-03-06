function sumD = sumDivisors(divisor)
% calculate the sum of all divisors
sumD = 1;
for i = 2:sqrt(divisor)
    if mod(divisor,i)==0 && i*i~=divisor
        sumD = sumD + i +(divisor/i);    
    elseif mod(divisor,i)==0 && i*i==divisor
        sumD = sumD + i;
    end
end