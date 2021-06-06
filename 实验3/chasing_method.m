function [y, x] = chasing_method(A, f)
% 使用追赶法解三对角线性方程组 Ax = f
n = length(f);

a = zeros(n, 1);
b = zeros(n, 1);
c = zeros(n, 1);

for i = 1 : (n - 1)
    a(i + 1) = A(i + 1, i);
    b(i) = A(i, i);
    c(i) = A(i, i + 1);
end
a(1) = 0;
b(n) = A(n, n);
c(n) = 0;

l = zeros(n, 1);
u = zeros(n, 1);
y = zeros(n, 1);
x = zeros(n, 1);

l(1) = b(1);
for i = 1 : (n - 1)
    u(i) = c(i) / l(i);
    l(i + 1) = b(i + 1) - a(i + 1) * u(i);
end

y(1) = f(1) / l(1);
for i = 2 : n
    y(i) = (f(i) - a(i) * y(i - 1)) / l(i);
end

x(n) = y(n);
for i = (n - 1) : -1 : 1
    x(i) = y(i) - u(i) * x(i + 1);
end
end

