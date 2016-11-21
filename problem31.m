close all; clear; clc;


% Brute force method
tic
tot = 200;
ways = 0;

for a = tot:-200:0
    for b = a:-100:0
        for c = b:-50:0
            for d = c:-20:0
                for e = d:-10:0
                    for f = e:-5:0
                        for g = f:-2:0
                            ways = ways + 1;
                        end
                    end
                end
            end
        end
    end
end
ways
toc

%{
% Dynamic programming 
tic
tot = 200;
coinSizes = [1 2 5 10 20 50 100 200];
ways = zeros(tot+1);
ways(1) = 1;
for i = 1:length(coinSizes)
    j = coinSizes(i);
    while j <= tot
        ways(j+1) = ways(j+1) + ways(j-coinSizes(i)+1);
        j = j + 1;
    end
end
ways(tot+1)
toc
%}












