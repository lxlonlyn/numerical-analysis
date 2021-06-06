% 输入数据
% x, y为给出的函数表，x0代表所求点横坐标
x = [0.4 0.55 0.8 0.9 1];
y = [0.41075 0.57815 0.88811 1.02652 1.17520];
x0 = [0.5 0.7 0.85];

% 拉格朗日插值
fprintf('x: ');
for i = 1 : length(x0)
    fprintf('%10f', x0(i));
end
fprintf('\n拉格朗日插值：\ny: ');
for i = 1 : length(x0)
    fprintf('%10.6f', lagrange_interpolation(x, y, x0(i)));
end
fprintf('\n牛顿插值：\ny: ');
for i = 1 : length(x0)
    fprintf('%10.6f', newton_interpolation(x, y, x0(i)));
end
fprintf('\n');
