% 输入数据
% f(x)为方程 e^x+10x-2
% g(x)为迭代公式
% df(x)为f(x)导数
syms x;
f(x) = exp(x) + 10*x - 2;
g(x) = (2 - exp(x)) / 10;
df(x) = diff(f(x));

% 二分法：
[ans1, k1] = bisection_method(f, 0, 1, 5e-4);
fprintf('使用二分法得到结果：%.5f，共经过 %d 次运算。\n', ans1, k1);

% 迭代法：
[ans2, k2] = iteration_method(g, 0, 5e-4);
fprintf('使用迭代法得到结果：%.5f，共经过 %d 次运算。\n', ans2, k2);

% 牛顿迭代法：
[ans3, k3] = newton_method(f, df, 0, 5e-4);
fprintf('使用牛顿迭代法得到结果：%.5f，共经过 %d 次运算。\n', ans3, k3);