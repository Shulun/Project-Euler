close all; clear; clc;

num = 13456;
dig = 0;

dummy = num;
while dummy > 0
   dig = dig + 1;
   dummy = floor(dummy/10);
end
dig