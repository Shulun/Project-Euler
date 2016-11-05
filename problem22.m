close all; clear; clc;

tic
names = fileread('p022_names.txt');
len = length(names);
names = names(2:len-1);
nameArr = strsplit(names,'","');
nameVec = sort(nameArr);

% Create a mapping between letters and order numbers
keySet = {'A','B','C','D','E','F','G','H','I','J','K',...
          'L','M','N','O','P','Q','R','S','T','U','V',...
          'W','X','Y','Z'};
valueSet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,...
            18,19,20,21,22,23,24,25,26];
dict = containers.Map(keySet,valueSet);

scores = 0;
n = length(nameVec);
for i = 1:n
    name = char(nameVec(i));
    nameScores = 0;
    nameLen = length(name);
    for j = 1:nameLen
        nameScores = nameScores + dict(name(j));
    end
    scores = scores + nameScores*i;
end
scores
toc

