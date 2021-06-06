function sum = trapezoidal_formula(func, a, b, n)
% 复合梯形求积公式
h = (b - a) / n;
sum = (h / 2) * (feval(func, a) + feval(func, b));
for i = 1 : n - 1
    sum = sum + h * feval(func, a + i * h);
end
end