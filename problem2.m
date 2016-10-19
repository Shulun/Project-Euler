close all; clear; clc;

%{
a = 1; b = 2;

sum = 0;
limit = 4000000;
while 1
    a = a + b;
    if a > limit
        break;
    end
    if mod(a,2)==0;
        sum = sum + a;
    end
    b = a + b;
    if b > limit
        break;
    end
    if mod(b,2)==0;
        sum = sum + b;
    end
end

fprintf('%i\n', sum + 2);
%}

temp1 = 1; temp2 = 1;
num = 0;
i = 0;
limit = 4000000;
while i < limit
    i = temp1 + temp2;
    temp1 = temp2;
    temp2 = i;
    if mod(i,2)==0
        num = num + i;
    end
end
    
fprintf('%i\n', num);    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    