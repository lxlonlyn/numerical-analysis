# 数值分析实验程序整理
## 为什么要创建这个库
有一种痛，叫做数值分析实验。有一种痛，叫做学校的五楼机房。

按理说，在 github 应该放学习、小应用等，不该直接把实验报告等作业扔上来。

但经历了一次又一次电脑因 Ctrl+S 卡机重启导致程序白打的经历（插 U 盘？响应了 10 min 电脑又卡机了），于是便有了这个仓库。

## 文件说明
除了 run 以外，其他文件都为 function。

run 作为验证测试使用。

## 内容
《计算方法》（第3版） 李桂成 编著

### 实验一 方程求根
[二分法](/实验1/bisection_method.m)

[迭代法](/实验1/iteration_method.m)

[牛顿迭代法](/实验1/newton_method.m)

[测试文件](/实验1/run.m)

### 实验二 解线性方程组的直接法
[高斯消元](/实验2/gauss_method.m)

[高斯-约当消元](/实验2/gauss_jordan_method.m)

[测试文件](/实验2/run.m)

### 实验三 解三对角线性方程组的追赶法
[追赶法](/实验3/chasing_method.m)

[测试文件](/实验3/run.m)

### 实验四 解线性方程组的迭代法
[雅克比迭代法](/实验4/jacobi_method.m)

[高斯-塞德尔迭代法](/实验4/GS_method.m)

[测试文件](/实验4/run.m)

### 实验五 函数插值
[拉格朗日插值](/实验5/lagrange_interpolation.m)

[牛顿插值](/实验5/newton_interpolation.m)

[测试文件](/实验5/run.m)

### 实验六 数值积分
[复合梯形求积公式](/实验6/trapezoidal_formula.m)

[复合辛普森求积公式](/实验6/simpson_formula.m)

[龙贝格求积公式](/实验6/romberg_formula.m)

[测试文件](/实验6/run.m)


### 实验七 数值微分
[变步长的中点方法](/实验7/midpoint_formula.m)

[三点求导公式](/实验7/interpolation_formula.m)

[测试文件](/实验7/run.m)

### 实验八 常微分方程初值问题的数值解法
[欧拉公式](/实验8/euler_formula.m)

[改进的欧拉公式](/实验8/improved_euler_formula.m)

[经典四阶龙格-库塔公式](/实验8/runge_kutta_formula.m)

[测试文件](/实验8/run.m)

---

以下的是坑

---

### 实验九 矩阵特征值计算
[幂法]()

[QR方法]()

[雅克比方法]()

[测试文件]()

### 实验十 函数优化计算
[梯度法]()

[牛顿法]()

[共轭方向法]()

[测试文件]()
