function num = concatNum(a, b)

% concatenate two int numbers into 
% one without using strings
c = b;

while c > 0
    a = a*10;
    c = floor(c/10);
end

num = a + b;
