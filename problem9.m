close all; clear; clc;

%{
x = linspace(0,1000,100);
y = linspace(0,1000,100);
[X,Y] = meshgrid(x,y);
z = X.^2 + Y.^2 - (1000 - X - Y).^2;
surf(x,y,z)
%}

for a = 1:1000
    for b = a:1000-a
        c = 1000 - a - b;
        %if a*b + 1000*c == 500000
        %    fprintf('%i  %i  %i\n', a, b, c);
        %end
        if a*a + b*b == c*c
            fprintf('%i  %i  %i\n', a, b, c);
            fprintf('%i\n', a*b*c);
        end
    end
end