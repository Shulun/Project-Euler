close all; clear; clc;

tic
products = [];

for i = 2:100
    if i > 9
        jStart = 123;
    else
        jStart = 1234;
    end
    jEnd = 10000/i + 1;
    
    for j = jStart:jEnd
        prod = i*j;
        num = concatNum(concatNum(prod,i),j);
        if (num >= 1e8 && num < 1e9 && isPandigital(num))
            products = [products prod];
        end
    end
end
products = unique(products);
sumP = sum(products)
toc