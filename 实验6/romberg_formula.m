function [x, i] = romberg_formula(func, a, b, e)
% 龙贝格求积公式
i = 1; j = 1;
h = b - a;
T(i, 1) = h / 2 * (feval(func, a) + feval(func, b));
T(i+1, 1) = T(i, 1) / 2 + sum(feval(func, a + h / 2 : h : b - h / 2 + 0.001 * h)) * h / 2;
T(i+1, j+1) = 4^j * T(i+1, j) / (4^j - 1) - T(i, j) / (4^j - 1);
while abs(T(i+1, i+1) - T(i, i)) > e
    i = i + 1; h = h / 2;
    T(i+1, 1) = T(i, 1) / 2 + sum(feval(func, a + h / 2 : h : b - h / 2 + 0.001 * h)) * h / 2;
    for j = 1 : i
        T(i+1, j+1) = 4^j * T(i+1, j) / (4^j - 1) - T(i, j) / (4^j - 1);
    end
end
x = T(i+1, j+1);
i = i + 1;
end