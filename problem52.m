close all; clear; clc;

tic
num = 1;
bool = 1;

while bool
    temp1 = num;
    temp2 = num*2;
    temp3 = num*3;
    temp4 = num*4;
    temp5 = num*5;
    temp6 = num*6;
    if isPerm(temp1,temp2) && isPerm(temp2,temp3) && isPerm(temp3,temp4) && ...
       isPerm(temp4,temp5) && isPerm(temp5,temp6)
        bool = 0;
    end
    num = num + 1;
end
num-1
toc
