% 输入数据
% df(x,y)代表输入方程
syms x y double;
df(x, y) = 2 / 3 * x * y^(-2);

% 欧拉公式
[x0, y0] = euler_formula(df, 0, 1, 0.1, 1);

% 改进欧拉公式
[x1, y1] = improved_euler_formula(df, 0, 1, 0.1, 1);

% 四阶龙格-库塔方法
[x2, y2] = runge_kutta_formula(df, 0, 1, 0.1, 1);

% 精确解 y = (x^2 + 1)^(1/3)
f(x) = (x^2 + 1)^(1/3); 
y3 = zeros(11, 1);
for i = 1 : 11
    y3(i) = feval(f, (i - 1) * 0.1);
end

% 输出结果
fprintf(' xi     欧拉公式    改进欧拉公式  龙格库塔公式    精确解\n');
for i = 1 : 11
    fprintf('%.2f %12.8f %12.8f %12.8f %12.8f\n', x0(i), y0(i), y1(i), y2(i), y3(i));
end