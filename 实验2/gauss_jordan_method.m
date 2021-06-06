function x = gauss_jordan_method(A, b)
% 列主元高斯-约当消去法求解方程组 Ax = b
[n, ~] = size(A);
if length(b) ~= n
    error '矩阵 A 行数与向量 b 长度不等。';
end
A = [A, b];
for k = 1 : n
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
    
    % 进行高斯-约旦消元
    for i = 1 : n
        if i == k
            continue;
        end
        for j = (k + 1) : (n + 1)
            A(i, j) = A(i, j) - A(i, k) / A(k, k) * A(k, j);
        end
    end
    
    for j = (k + 1) : (n + 1)
        A(k, j) = A(k, j) / A(k, k);
    end
    A(k, k) = 1;
    
    for i = 1 : n
        if k == i 
            continue;
        end
        A(i, k) = 0;
    end
end

% 得出答案
x = A(:, n + 1);
end