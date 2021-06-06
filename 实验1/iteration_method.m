function [x,k] = iteration_method(func, x0, e)
% 迭代法求根，k返回迭代次数
x = x0;
x0 = x + 2 * e;
k = 0;

while abs(x0 - x) > e 
    x0 = x;
    x = feval(func, x0);
    k = k + 1;
end
end
