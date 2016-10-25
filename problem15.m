close all; clear; clc;

tic
n = 21;

grid = ones(n, n);

for i = 1:n-1
    for j = 1:n-1
        grid(i+1, j+1) = grid(i+1, j) + grid(i, j+1);
    end
end
num2str(grid(n, n))
toc