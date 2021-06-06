function [x,k] = bisection_method(func, l, r, e)
% funcΪ������l,rΪ�������䣨�豣֤����������������ţ���eΪ����
val_l = feval(func, l);
val_r = feval(func, r);
if val_l * val_r >= 0
    error('���˺���ֵΪͬ��')
end
k = 0;
x = (l + r) / 2;
while r - l > 2 * e
    val_x = feval(func, x);
    if val_l * val_x < 0
        r = x;
        val_r = val_x;
    else
        l = x;
        val_l = val_x;
    end
    k = k + 1;
    x = (l + r) / 2;
end
end