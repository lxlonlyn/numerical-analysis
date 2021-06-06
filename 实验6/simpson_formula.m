function sum = simpson_formula(func, a, b, n)
% 复合辛普生求积公式
h = (b - a) / n;
sum = (h / 6) * (feval(func, a) + feval(func, b));
for i = 0 : n - 1
    sum = sum + (h / 6) * 4 * (feval(func, a + (i + 1/2) * h ));
end
for i = 1 : n - 1
    sum = sum + (h / 6) * 2 * (feval(func, a + i * h));
end
end