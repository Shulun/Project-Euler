function bool = isPalindromeBase(num, b)

rev = 0;
n = num;
bool = 0;

while n > 0
    rev = b*rev+mod(n,b);
    n = floor(n/b);
end
if num == rev
    bool = 1;
end