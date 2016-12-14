close all; clear; clc;

isTri = @(x) floor(sqrt(8*x+1))==sqrt(8*x+1);
isPen = @(x) floor((sqrt(24*x+1)+1)/6)==(sqrt(24*x+1)+1)/6;

tic
bool = 1;
n = 143; % n of known # 40755

while bool
    n = n + 1;
    num = n*(2*n-1);
    if isTri(num) && isPen(num)
        bool = 0;
    end
end
num2str(num)
toc