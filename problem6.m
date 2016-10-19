close all; clear; clc;

num = 100;

lst1 = 1:num;
lst2 = lst1.^2;
sum1 = sum(lst1);
sum2 = sum(lst2);

result = abs(sum1^2 - sum2)


