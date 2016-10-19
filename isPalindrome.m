function bool = isPalindrome(num)

rev = 0;
n = num;
while num > 0
    dig = mod(num,10);
    rev = rev*10 + dig;
    num = floor(num/10);
end

if n == rev
    bool = 1;
else
    bool = 0;
end

