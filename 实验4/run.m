% 输入数据
% A,b 为系数矩阵和常向量
A = [
    4 -1 0 -1 0 0;
    -1 4 -1 0 -1 0;
    0 -1 4 -1 0 -1;
    -1 0 -1 4 -1 0;
    0 -1 0 -1 4 -1;
    0 0 -1 0 -1 4
    ];
b = [0; 5; -2; 5; -2; 6];

% 利用雅克比迭代法求解线性方程组
[ans1, step1] = jacobi_method(A, b, 1e-4);
fprintf('用雅克比迭代法求解答案：\n');
fprintf('x=(');
for i = 1 : length(ans1) - 1
    fprintf('%.5f,', ans1(i));
end
fprintf('%.5f)T\n', ans1(length(ans1)));
fprintf('经过了 %d 步迭代\n', step1);

% 利用高斯-塞德尔迭代法求解线性方程组
[ans2, step2] = GS_method(A, b, 1e-4);
fprintf('用高斯-塞德尔迭代法求解答案：\n');
fprintf('x=(');
for i = 1 : length(ans2) - 1
    fprintf('%.5f,', ans2(i));
end
fprintf('%.5f)T\n', ans2(length(ans2)));
fprintf('经过了 %d 步迭代\n', step2);