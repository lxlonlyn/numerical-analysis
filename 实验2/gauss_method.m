function x = gauss_method(A, b)
% 列主元高斯消去法求解方程组 Ax = b
[n, ~] = size(A);
if length(b) ~= n
    error '矩阵 A 行数与向量 b 长度不等。';
end
A = [A, b];
for k = 1 : (n - 1)
    % 选取列主元
    [~, r] = max(abs(A(k : n, k)));
    r = r + k - 1;
    if r ~= k
        t = A(k, :);
        A(k, :) = A(r, :);
        A(r, :) = t;
    end
    
    % 特判：A(k, k)为 0 时跳过
    if abs(A(k, k)) <= 1e-7 
        continue;
    end
    
    % 进行高斯消元
    for i = (k + 1) : n
        for j = (k + 1) : (n + 1)
            A(i, j) = A(i, j) - A(i, k) / A(k, k) * A(k, j);
        end
    end
    
    for i = (k + 1) : n
        A(i, k) = 0;
    end
end

% 回带，得出答案
x = zeros(n, 1);
x(n) = A(n, n + 1) / A(n, n);
for k = n - 1 : -1 : 1
    x(k, :) = ...
        (A(k, n + 1) - A(k, (k + 1) : n) * x((k + 1) : n)) / A(k, k);
end
end