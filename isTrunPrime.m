function bool = isTrunPrime(num, primes)

% num: number to check 
% primes: a list of primes to 
%         look up from

bool = 0;
numLen = 0;

n = num;
n1 = num;
n2 = num;

% empty list to store all the 
% truncated primes
lst = [];

% find number of digits
% also construct a reversed
% number
while n > 0
    n = floor(n/10);
    numLen = numLen + 1;
end

% remove single digit prime
if numLen == 1
    return
end

% remove digits
len = numLen;
while len > 0
    rem = floor(mod(n1,10^len));
    lst = [lst rem n2];
    %{
    if ~ismember(rem,primes) || ~ismember(n2,primes)
        return
    end
    %}
    n2 = floor(n2/10);
    len = len - 1;
end

% if any prime in the list is not truncatable
% return false
if ~all(ismember(lst,primes))
    return
end

bool = 1;













