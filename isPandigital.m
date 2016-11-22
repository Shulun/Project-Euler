function bool = isPandigital(n)
% using bitwise method to check
% if a number is pandigital
digits = 0;
count = 0;
bool = 0;

while n > 0
    tmp = digits;
    digits = bitor(digits, bitshift(1,floor(mod(n,10))-1));
    if tmp == digits
        return
    end
    count = count + 1;
    n = floor(n/10);
end
if digits == (bitshift(1,count)-1)
    bool = 1;
end