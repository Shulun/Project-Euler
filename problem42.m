close all; clear; clc;

isTri = @(x) floor(sqrt(8*x+1))==sqrt(8*x+1);

%{
x = 1:20;
idx = isTri(x)
x(idx)
%}

tic
names = fileread('p042_words.txt');
len = length(names);
names = names(2:len-1);
nameArr = strsplit(names,'","');

% Create a mapping between letters and order numbers
keySet = {'A','B','C','D','E','F','G','H','I','J','K',...
          'L','M','N','O','P','Q','R','S','T','U','V',...
          'W','X','Y','Z'};
valueSet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,...
            18,19,20,21,22,23,24,25,26];
dict = containers.Map(keySet,valueSet);

scores = 0;
count = 0;
n = length(nameArr);
for i = 1:n
    name = char(nameArr(i));
    nameVal = 0;
    nameLen = length(name);
    for j = 1:nameLen
        nameVal = nameVal + dict(name(j));
    end
    if isTri(nameVal)
        count = count + 1;
    end
end
count
toc