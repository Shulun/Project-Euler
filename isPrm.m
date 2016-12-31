function bool = isPrm(n)

bool = 1;
if n <= 1
    bool = 0;
end
if n == 2 
    return
end
if mod(n,2) == 0
    bool = 0;
end
if n < 9 
    return
end
if mod(n,3) == 0
    bool = 0;
end

counter = 5;
while counter*counter <= n
    if mod(n,counter) == 0
        bool = 0;
    end
    if mod(n,counter+2) == 0
        bool = 0;
    end
    counter = counter + 6;
end