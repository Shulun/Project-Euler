function rtnNum = reverseNum(num)

temp = num;
rtnNum = 0;
while temp > 0
    dig = mod(temp,10);
    rtnNum = 10*rtnNum + dig;
    temp = floor(temp/10);
end