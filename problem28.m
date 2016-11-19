close all; clear; clc;

tic
x = 1001;
y = 1001;

interval = 0;
n = x*y;
tot = 1;

for i=3:2:x
    interval = interval + 2;
    tot = tot + i^2 + ...
         + i^2-interval + i^2-interval*2 + i^2-interval*3;
end
tot
toc