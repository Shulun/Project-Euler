close all; clear; clc;

tic
array = [];
for a = 2:100
    for b = 2:100
        array = [array a^b b^a];
    end   
end
array = unique(array);
length(array)
toc