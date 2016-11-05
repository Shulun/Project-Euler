function value = fib(n,prev,val)
% prev: first number
% val: second number
% tail recursion
if n==0, value = prev; end
if n==1, value = val; end
if n>1, value = fib(n-1,val,val+prev); end


    