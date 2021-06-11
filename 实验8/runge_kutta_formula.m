function [x, y] = runge_kutta_formula(df, l, r, h, y0)
% 四阶龙格-库塔方法，df为dy/dx，lr为区间，h为步长，y0为初值
n = (r - l) / h + 1;
x = zeros(n, 1);
y = zeros(n, 1);
x(1) = l;
y(1) = y0;
for i = 2 : n
    x(i) = x(i - 1) + h;
    k1 = feval(df, x(i - 1), y(i - 1));
    k2 = feval(df, x(i - 1) + h / 2, y(i - 1) + h / 2 * k1);
    k3 = feval(df, x(i - 1) + h / 2, y(i - 1) + h / 2 * k2);
    k4 = feval(df, x(i - 1) + h, y(i - 1) + h * k3);
    y(i) = y(i - 1) + h * (k1 + 2 * k2 + 2 * k3 + k4) / 6;
end
end