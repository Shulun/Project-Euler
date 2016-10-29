function res = checkNum(n)
% Recursive function to count number of digits
if n <= 20 || n == 30 || n == 40 || n == 50 || n == 60 || n == 70 || n == 80 || n == 90
    switch n
        case 1
            res = 'one';
        case 2 
            res = 'two';
        case 3 
            res = 'three';
        case 4 
            res = 'four';
        case 5
            res = 'five';
        case 6
            res = 'six';
        case 7 
            res = 'seven';
        case 8 
            res = 'eight';
        case 9 
            res = 'nine';
        case 10
            res = 'ten';
        case 11
            res = 'eleven';
        case 12
            res = 'twelve';
        case 13 
            res = 'thirteen';
        case 14
            res = 'fourteen';
        case 15
            res = 'fifteen';
        case 16 
            res = 'sixteen';
        case 17
            res = 'seventeen';
        case 18
            res = 'eighteen';
        case 19
            res = 'nineteen';
        case 20 
            res = 'twenty';
        case 30
            res = 'thirty';
        case 40
            res = 'forty';
        case 50
            res = 'fifty';
        case 60 
            res = 'sixty';
        case 70
            res = 'seventy';
        case 80
            res = 'eighty';
        case 90
            res = 'ninety';
        otherwise
            res = '';
    end
else
    n = num2str(n);
    if length(n) == 2
        n = num2str(n);
        firDig = n(1);
        secDig = n(2);
        firDig = checkNum(str2double(firDig)*10);
        secDig = checkNum(str2double(secDig));
        res = strcat(firDig, secDig);
    elseif length(n) == 3
        n = num2str(n);
        n1 = n(1);
        n2 = n(2:3);
        n1 = checkNum(str2double(n1));
        n2 = checkNum(str2double(n2));
        res = strcat(n1, 'hundredand', n2);
    elseif length(n) == 4
        res = 'onethousand';
    end   
end





