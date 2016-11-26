function bool = circularPrime(number,primes)
% input a prime num and primes list to check
% if the entered prime num is a circular prime
% number: prime number to check
% primes: primes' list to look up

bool = 1;
mul = 1;
num = number;
numLen = 0;

while num > 0
    d = floor(mod(num,10));
    if mod(d,2)==0 || mod(d,5)==0
        bool = 0;
        return
    end
    num = floor(num/10);
    mul = mul*10;
    numLen = numLen + 1;
end
mul = mul/10;

num = number;
for i = 1:numLen
    d = floor(mod(num,10));
    num = d*mul+floor(num/10);
    if ~ismember(num,primes)
        bool = 0;
        return
    end
end
