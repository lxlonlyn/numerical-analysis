function [x, step] = jacobi_method(A, b, e)
% 雅克比迭代法解线性方程组并返回步数
n = length(b);
x0 = b;

x = x0;
x0 = x + 2 * e;
step = 0;

D = diag(diag(A));
L = -tril(A, -1);
U = -triu(A, 1);

while norm(x0 - x) > e 
    step = step + 1;
    x0 = x;
    x = (eye(n) - D \ A) * x0 + D \ b;
end
end
