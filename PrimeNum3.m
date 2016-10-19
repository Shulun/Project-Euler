function [Prime] = PrimeNum3(N,M)
if (N > M || N <0 || M < 0)
    error('ERROR: Invalid Input, you entered biggere number first or you entered negative number as you interval.');
end
Prime = [];
for j=0:(M-N)
    %if all(mod((N+j),2:((N+j)/2))), Prime = [Prime;N+j]; end
    if all(mod(N+j, [2, 3:2:sqrt(N+j)])), Prime = [Prime;N+j]; end
end