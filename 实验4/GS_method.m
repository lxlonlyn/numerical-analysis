function [x, step] = GS_method(A, b, e)
% 高斯-塞德尔迭代法求线性方程组并返回步数
n = length(b);
x0 = zeros(n, 1);

x = b;
x0 = x + 2 * e;
step = 0;

D = diag(diag(A));
L = -tril(A, -1);
U = -triu(A, 1);

while norm(x0 - x) > e
    step = step + 1;
    x0 = x;
    x = (D - L) \ U * x0 + (D - L) \ b;
end
end