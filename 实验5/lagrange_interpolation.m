function y0 = lagrange_interpolation(x, y, x0)
% 使用拉格朗日插值公式求解 f(x0)
n = length(x);
sum = 0;
for i = 1 : n
    p = 1;
    for j = 1 : n
        if j ~= i
            p = p * (x0 - x(j)) / (x(i) - x(j));
        end
    end
    sum = sum + p * y(i);
end
y0 = sum;
end