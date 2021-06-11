function dy = interpolation_formula(func, x, h)
% 插值型微分公式，利用三点求导公式求解。函数为func，求导数点为x，节点距离h
x0 = x - h;
x2 = x + h;
dy = 1 / (2 * h) * (-feval(func, x0) + feval(func, x2));
end