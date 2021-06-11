% 输入数据
% f(x)代表输入方程
syms x;
f(x) = exp(x);

% (1)变步长中点方法
fprintf('变步长中点计算方法：\n');
fprintf('标准答案：%f\n', exp(1));
ans1 = midpoint_formula(f, 1, 0.8, 10);
fprintf('k   :');
for i = 1 : 5
    fprintf('%10d', i);
end
fprintf('\n');
fprintf('G(h):');
for i = 1 : 5
    fprintf('%10f', ans1(i));
end
fprintf('\n');
fprintf('k   :');
for i = 6 : 10
    fprintf('%10d', i);
end
fprintf('\n');
fprintf('G(h):');
for i = 6 : 10
    fprintf('%10f', ans1(i));
end
fprintf('\n\n');

% (2)插值型方法
fprintf('三点求导公式计算：\n');
fprintf('   x         f''(x)\n');
h = 1.0;
for i = 1 : 3
    fprintf('%.5f: ', h);
    fprintf('%10f\n', interpolation_formula(f, 1, h));
    h = h / 10;
end