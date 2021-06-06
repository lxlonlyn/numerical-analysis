% 输入数据
% f(x)代表被积分方程。
syms x;
f(x) = 4 / (1 + x * x);

% 精确值结果：
fprintf('精确解：                 %.20f\n',pi);

% 复合梯形求积公式：
ans1 = trapezoidal_formula(f, 0, 1, 32);
fprintf('用复合梯形公式求解结果：  %.20f\n', ans1);

% 复合辛普生求积公式：
ans2 = simpson_formula(f, 0, 1, 16);
fprintf('用复合辛普生公式求解结果：%.20f\n', ans2);

% 龙贝格求积公式
[ans3, step] = romberg_formula(f, 0, 1, 5e-8);
fprintf('用龙贝格求积公式求解结果：%.20f，进行了 %d 次计算\n', ans3, step);