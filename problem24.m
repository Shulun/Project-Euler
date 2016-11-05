close all; clear; clc;

% use the counting method to iterate each digit
% to get the number list at the millionth lexicogrphic
% permutation
tic
list  = [0 1 2 3 4 5 6 7 8 9];

n = 9;

limit = 1e6;
answer = zeros(1,10);
% only need to keep track of middle eight digits' permutation
% count, since permutation count from first digit is tracked by 
% i*factorial(n) and the last digit is just what number left for 
% it
total = zeros(1,8);

for j=1:10
    % iterate through each digit of the answer
    for i = 1:10;
        % use i to track the number chosen from
        % list of numbers above
        % calculate the total count of permutations
        % using factorial and associated that with 
        % each digit chosen form the list of numbers
        % above
        total(i+1) = total(1) + i*factorial(n);
        % if at that specifc digit chosen, the count of
        % permutations exceeds the one million limit, restore 
        % the digit to previously chosen number (record the former  
        % perm count in total(1)), break out and move on to the 
        % next digit by getting out of the if loop
        if total(i+1)>=limit
            total(1) = total(i);
            break
        end
    end
    % record the number chosen from the number list in 
    % each digit of the answer
    answer(j) = list(i);
    % reset specific number to none since that number is already
    % chosen
    list(i) = [];
    % reduce the count of numbers since one number is taken away
    n = n-1;
end

A = strrep(num2str(answer),'  ','')
toc



