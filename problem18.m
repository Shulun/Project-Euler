close all; clear; clc;

tic
% Get the size of data to construct the data storage matrix
fid = fopen('data_Problem18.txt');
dim = lineCount(fid);
fclose(fid);

% Construct the data storage matrix
fid = fopen('data_Problem18.txt');
datMat = zeros(dim, dim);
%{
count = 0;
tline = fgetl(fid);
while ischar(tline)
    count = count + 1;
    datMat(count,1:count) = strread(tline);
    disp(tline)
    tline = fgetl(fid);
end
fclose(fid);
%}

count = 0;
tline = fgetl(fid);
while ischar(tline)
    count = count + 1;
    cell = textscan(tline, '%d');
    datMat(count,1:count) = cell2mat(cell(1,:));
    %disp(tline)
    tline = fgetl(fid);
end
fclose(fid);

maxVal = maxTot(datMat);
maxVal
toc 


