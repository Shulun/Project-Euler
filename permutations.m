function permList = permutations(lst)

% Input an array of numbers

str = strcat(num2str(lst));
lstStr = strrep(str,' ','');
len = length(lstStr);
if len == 1
    permList = lstStr;
end

prevList = permutations(lstStr());

