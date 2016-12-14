function divisors = findPrmDivisors(num)
% find the prime divisors of a given number
divisors = [];
for i = 2:sqrt(num)
    if mod(num,i)==0 && i*i~=num
        divisors = [divisors i num/i];
    elseif mod(num,i)==0 && i*i==num
        divisors = [divisors i];
    end
end
divisors = divisors(isprime(divisors));