function bool = isPerm(num1, num2)
% check whether two integers are 
% permutations of each other
arr = zeros(1,10);
bool = 1;
temp = num1;
while temp > 0
    ind = mod(temp,10)+1;
    arr(ind) = arr(ind)+1;
    temp = floor(temp/10);
end

temp = num2;
while temp > 0
    ind = mod(temp,10)+1;
    arr(ind) = arr(ind)-1;
    temp = floor(temp/10);
end

for i = 1:10
    if arr(i) ~= 0
        bool = 0;
    end
end
