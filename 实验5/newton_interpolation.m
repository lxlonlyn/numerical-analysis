function y0 = newton_interpolation(x, y, x0)
% 使用牛顿插值公式求解 f(x0)
n = length(x);
% 求解差商
d = zeros(n);
for i = 1 : n
    d(i, 1) = y(i);
end
for j = 2 : n
    for i = 1 : (n - j + 1)
        d(i, j) = (d(i + 1, j - 1) - d(i, j - 1)) / (x(i + j - 1) - x(i));
    end
end

sum = 0; 
p = 1;
for i = 1 : n
    sum = sum + d(1, i) * p;
    p = p * (x0 - x(i));
end
y0 = sum;
end