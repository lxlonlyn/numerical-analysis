% 输入数据
% A是系数矩阵，b是常向量
A = [
    1.1348 3.8326 1.1651 3.4017;
    0.5301 1.7875 2.5330 1.5435;
    3.4129 4.9317 8.7643 1.3142;
    1.2371 4.9998 10.6721 0.0147
    ];
b = [9.5342; 6.3941; 18.4231; 16.9237];

x1 = gauss_method(A, b);
fprintf('使用高斯列主元消元法得到结果：\n');
fprintf('x=(');
for i = 1 : length(x1)-1
    fprintf('%.5f,', x1(i));
end
fprintf('%.5f)T\n', x1(length(x1)));

x2 = gauss_jordan_method(A, b);
fprintf('使用高斯-约旦列主元消元法得到结果：\n');
fprintf('x=(');
for i = 1 : length(x2)-1
    fprintf('%.5f,', x2(i));
end
fprintf('%.5f)T\n', x2(length(x2)));