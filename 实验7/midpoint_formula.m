function dy = midpoint_formula(func, x, h0, k)
% 变步长中点方法，函数为func，求导数点为x，步长h0，二等分k次
% 返回值为1-k次二等分的结果
dy = zeros(k, 1);
h = h0;
for i = 1 : k
    h = h / 2;
    dy(i) = (feval(func, x + h) - feval(func, x - h)) / (2 * h);
end
end