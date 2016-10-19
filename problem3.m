close all; clear; clc;

%num = 600851475143;

%num = 13195;

%{
n = round(sqrt(num));
A = ones(1,n-1);

for i = 2:n
    if A(i) == 1 
        for j = i^2:i:num
            A(j) = 0;
        end
    end
end

x = [];
for i = 1:n-1
    if A(i) == 1 
        x = [x i];
    end
end

len = length(x);
y = [];
for i = 2:len
   if mod(num,x(i))==0
       y = [y x(i)];
   end
end
y
%}

num = 600851475143;

factor = 1;

while mod(num,2)==0
    factor = 2;
    num = num/2;
end

p = 3;
while num~=1
    while mod(num,p)==0
        factor = p;
        num = num/p;
    end
    p = p+2;
end

factor
























