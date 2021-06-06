% 输入数据
% A是系数矩阵，b是常向量
A = [
    2 -1 0 0 0
    -1 2 -1 0 0 
    0 -1 2 -1 0
    0 0 -1 2 -1 
    0 0 0 -1 2
    ];
b = [1; 0; 0; 0; 0];

% 追赶法求解方程解
[y, x] = chasing_method(A, b);
fprintf('追赶法解方程组结果：\n');
fprintf('y=(');
for i = 1 : length(y) - 1
    fprintf('%s,', rats(y(i), 3));
end
fprintf('%s)\n', rats(y(length(y)), 3));
fprintf('x=(');
for i = 1 : length(x) - 1
    fprintf('%s,', rats(x(i), 3));
end
fprintf('%s)\n', rats(x(length(x)), 3));