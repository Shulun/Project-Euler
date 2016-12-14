close all; clear; clc;

isPen = @(x) floor((sqrt(24*x+1)+1)/6)==(sqrt(24*x+1)+1)/6;

%{
isPen = @(x) floor(sqrt(24*x+1))==sqrt(24*x+1);
i = 1:30;
i(isPen(i))
%}

tic
D_val = 0;
i = 1;
bool = 1;

while bool
    i = i + 1;
    n = round(i*(3*i-1)/2);
    
    for j = i-1:-1:1
        m = round(j*(3*j-1)/2);
        if isPen(abs(n-m)) && isPen(n+m)
            D_val = abs(n-m);
            bool = 0;
        end
    end
end
D_val
toc

