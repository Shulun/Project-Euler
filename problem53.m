close all; clear; clc;

% Brute force method that takes 
% around 0.2710 sec
%{
tic
count = 0;
Con = 0;
limit = 1000000;
for n = 23:100
    for r = 1:n
        Con = factorial(n)/factorial(r)/factorial(n-r);
        if Con > limit
            count = count + 1;
        end
    end
end
count
toc
%}

% Cache the factorials
% a more efficient method, takes 
% around 0.003272 sec
%{
tic
count = 0;
Con = 0;
limit = 1000000;
fact = zeros(1,100);

for n = 1:100
    fact(n) = factorial(n);
end

for n = 23:100
    for r = 1:n-1
        Con = fact(n)/fact(r)/fact(n-r);
        if Con > limit
            count = count + 1;
        end
    end
end
count
toc
%}

% Combinatorial approach
% (Pascal triangle)
% an improved approach, takes around
% 0.000277 sec
%{
tic
count = 0;
limit = 1000000;
nlimit = 100;

PascalTri = zeros(nlimit+1,nlimit+1);
for n = 1:nlimit+1
    PascalTri(n,1) = 1;
end

for n = 2:nlimit+1
    for r = 2:n
        PascalTri(n,r) = PascalTri(n-1,r) + PascalTri(n-1,r-1);
        if PascalTri(n,r) > limit
            count = count + 1;
        end
    end
end
count
toc
%}

% Combinatorial approach
% (Pascal triangle + Symmetry exploration)
% compute half of the triangle since it is
% symmetrical
% takes 0.000176 sec
tic
count = 0;
limit = 1000000;
nlimit = 100;

PascalTri = zeros(nlimit+1, floor(nlimit/2) + 1);
for n = 1:nlimit+1
    PascalTri(n,1) = 1;
end

for n = 2:nlimit+2
    for r = 2:floor(n/2)
        PascalTri(n,r) = PascalTri(n-1,r) + PascalTri(n-1,r-1);        
        if r == floor(n/2) && mod(n,2) == 0
            PascalTri(n,r) = PascalTri(n,r) + PascalTri(n-1,r-1);
        end
        if PascalTri(n,r) > limit
            count = count + n - 2*r + 1;
            break
        end
    end
end
count
toc
