function rtn = genPerm(num)
% num: the input number
% generate perms using Heap's method

[arr,len] = num2dig(num);
c = ones(1,len);
rtn = [];

rtn(1) = num;
i = 1;
while i < len+1
    if c(i) < i
        if mod(i-1,2)==0
            temp = arr(1);
            arr(1) = arr(i);
            arr(i) = temp;
        else
            temp = arr(c(i));
            arr(c(i)) = arr(i);
            arr(i) = temp;
        end
        rtn = [rtn, dig2num(arr,len)];
        c(i) = c(i) + 1;
        i = 1;
    else
        c(i) = 1;
        i = i + 1;
    end
end
end

% convert an int num to digits
function [digs,size] = num2dig(num)
len = 0;
numC = num;
digs = [];
while numC > 0
    digs = [floor(mod(numC,10)) digs];
    numC = floor(numC/10);
    len = len + 1;
end
size = len;
end

% convert digits to an int nums
function num = dig2num(dig,len)
% dig: array of digits
% len: length of the array
num = 0;
for j = 1:len
    num = num + dig(j)*10^(len-j);
end
end

