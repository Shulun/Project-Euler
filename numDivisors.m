function div = numDivisors(num)

if mod(num,2) == 0
    num = num/2;
end
div = 1;
count = 0;
while mod(num,2) == 0
    count = count + 1;
    num = num/2;
end
div = div*(count + 1);
p = 3;
while num ~= 1
    count = 0;
    while mod(num,p) == 0
        count = count + 1;
        num = num/p;
    end
    div = div*(count + 1);
    p = p + 2;
end