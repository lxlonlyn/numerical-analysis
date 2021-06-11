function [x, y] = improved_euler_formula(df, l, r, h, y0)
% 改进欧拉公式求解常微分方程初值问题，df为dy/dx，lr为区间，h为步长，y0为初值
n = (r - l) / h + 1;
x = zeros(n, 1);
y = zeros(n, 1);
x(1) = l;
y(1) = y0;
for i = 2 : n
    x(i) = x(i - 1) + h;
    k1 = feval(df, x(i - 1), y(i - 1));
    y(i) = y(i - 1) + h * k1;
    k2 = feval(df, x(i), y(i));
    y(i) = y(i - 1) + h * (k1 + k2) / 2;
end
end