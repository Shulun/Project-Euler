close all; clear; clc;

%{
tic
a1 = 100;
b1 = 100;
a2 = 999;
b2 = 999;

n = length(a2:-1:a1);
m = length(b2:-1:b1);
num = zeros(n,m);
numBool = zeros(n,m);

for i = 1:n
    for j = 1:m
        num(i,j) = (i+99)*(j+99);
        numBool(i,j) = isPalindrome((i+99)*(j+99));
    end
end

val = 0;
indX = 1;
indY = 1;
for i = 1:n
    for j = 1:m
        if numBool(i,j)==1 && num(i,j) > val
            val = num(i,j);
            indX = i;
            indY = j;
        end
    end
end
toc

indX
indY
val
%}

% Try to speed up the code a bit
tic
num = 0;
max_num = 0;
a = 999;
while a > 99
    b = 999;
    while b >= a
        num = a*b;
        if num > max_num && isPalindrome(num)
            max_num = num;
        end
        b = b - 1;
    end
    a = a - 1;
end
toc

max_num
















