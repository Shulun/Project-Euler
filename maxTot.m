function maxVal = maxTot(mat)
% Calculate the max sum of a path
% using a recursive function and 
% dynamic programming technique
[m, n] = size(mat);

if m == 1
    maxVal = max(mat);
elseif m == 2
    maxVal = max(mat(1,:))+max(mat(2,:));
elseif m >= 3
    for i = 1:n-1
        mat(m-1,i) = mat(m-1,i)+max(mat(m,i:i+1));
    end
    mat = mat(1:m-1,:);
    maxVal = maxTot(mat);
end
