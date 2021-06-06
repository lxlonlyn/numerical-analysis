function [x,k] = iteration_method(func, x0, e)
% func����������x0��ֵ��e����
x = x0;
x0 = x + 2 * e;
k = 0;

while abs(x0 - x) > e 
    x0 = x;
    x = feval(func, x0);
    k = k + 1;
end
end