function [x,k] = newton_method(func, dfunc, x0, e)
% func函数，dfunc导数，x0初值，e精度
N = 100;
x = x0;
x0 = x + 2 * e;
k = 0;
while abs(x0 - x) > e && k < N
    x0 = x;
    x = x0 - feval(func, x0) / feval(dfunc, x0);
    k = k + 1;
end
if k == N
    warning('已达最大迭代次数');
end
end