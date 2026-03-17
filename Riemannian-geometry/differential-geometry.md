## 曲面论基本定理

### Christoffel 记号，Gauss 公式，Wiengarten 公式
![[differential-geometry-2025070923.png]]

对于 $r(u^{1},v^{1})$，
$$
\mathrm{d}r=\sum_{\alpha=1}^{2} r_{\alpha}\mathrm{d}u^{\alpha}=r_{\alpha}\mathrm{d}u^{\alpha}
$$
第一基本形式：
$$
\mathrm{I}=\lvert \mathrm{d}r \rvert ^{2}=\sum_{\alpha,\beta=1}^{2} \underbrace{ (r_{\alpha}\cdot r_{\beta}) }_{ \eqqcolon g_{\alpha\beta} }\mathrm{d}u^{\alpha}\mathrm{d}u^{\beta}=g_{\alpha\beta}\mathrm{d}u^{\alpha}\mathrm{d}u^{\beta}
$$
第二基本形式：
$$
\mathrm{II}=\sum_{\alpha,\beta=1}^{2} \underbrace{ (r_{\alpha\beta}\cdot n) }_{ \eqqcolon  b_{\alpha\beta} }\mathrm{d}u^{\alpha}\mathrm{d}u^{\beta}=b_{\alpha\beta}\mathrm{d}u^{\alpha}\mathrm{d}u^{\beta}
$$
 $b_{\alpha\beta}=r_{\alpha\beta}\cdot n=-r_{\alpha}\cdot n_{\beta}=-r_{\beta}\cdot n_{\alpha}$. 记 $g\coloneqq \det(g_{\alpha\beta}),b\coloneqq \det(b_{\alpha\beta})$, $(g_{\alpha\beta})$ 显然正定，其逆记作 $(g^{\alpha\beta})$. 有如下关系
$$
g^{\alpha\beta}g_{\beta\gamma}=\delta_{\gamma}^{\alpha}
$$
$$
\begin{pmatrix}
g^{11}  & g^{12 } \\
g^{21} & g^{22}
\end{pmatrix}=\frac{1}{g}\begin{pmatrix}
g_{22} & -g_{12} \\
-g_{21} & g_{11}
\end{pmatrix}
$$

曲面 $S:r=r(u^{1},u^{2})$ 在每点处有自然标架 $\{ r;r_1,r_2,n \}$，其中 $r_1,r_2$ 由 $\partial_1r,\partial_2r$ 定义，$n\coloneqq\frac{r_1\times r_2}{\lvert r_1\times r_2 \rvert}$. 点在曲面上运动的时候，对应的自然标架也是运动的，考虑描述其变化的方程：
$$
\begin{cases}
\frac{ \partial r_{\alpha} }{ \partial u^{\beta} }  & =\Gamma^{\gamma}_{\alpha\beta}r_{\gamma}+C_{\alpha\beta}n \\
\frac{ \partial n }{ \partial u^{\beta} }  & =D^{\gamma}_{\beta}r_{\gamma }+D_{\beta}n
\end{cases}
$$

^1233fd

其中 $\Gamma^{\gamma}_{\alpha\beta},C_{\alpha\beta},D^{\gamma}_{\beta},D_{\beta}$ 都是待定系数. 分别用 $r_{\xi},n$ 与上式做内积得到
$$
D_{\beta}=n_{\beta}\cdot n=-n\cdot n_{\beta}=0
$$
$$
C_{\alpha\beta}=r_{\alpha\beta}\cdot n=b_{\alpha\beta}
$$
$$
D^{\gamma}_{\beta}g_{\gamma \xi}=D^{\gamma}_{\beta}r_{\gamma}\cdot r_{\gamma}=n_{\beta}\cdot r_{\xi}=-b_{\beta \xi}
$$

^cb4036

于是
$$
D^{\gamma}_{\beta}=D^{\gamma}_{\beta}\underbrace{ g_{\gamma \xi}g^{\xi\gamma} }_{ =1 }=-b_{\beta \xi}g^{\xi\gamma}
$$

^e87292

[[#^e87292]] 证明的逻辑是先任给指标 $\sigma$，对 [[#^cb4036]] 左右乘上 $g^{\xi\sigma}$，自然成立
$$
(D^{\gamma}_{\beta}g_{\gamma \xi})g^{\xi\sigma}=-b_{\beta \xi}g^{\xi\sigma}
$$
再交换求和次序得到
$$
D^{\gamma}_{\beta}\underbrace{ (g_{\gamma \xi}g^{\xi\sigma}) }_{ =\delta_{\gamma}^{\sigma} }=-b_{\beta \xi}g^{\xi\sigma}
$$
令 $\sigma=\gamma$ 即可.

引入指标上升/下降的概念，命
$$
b^{\gamma}_{\beta}\coloneqq b_{\beta \xi}g^{\xi\gamma}
$$
从而
$$
b_{\beta\gamma}=b_{\beta}^{\xi}g_{\xi\gamma}
$$
接下来我们求 $\Gamma^{\gamma}_{\alpha\beta}$. 对于 [[#^1233fd]] 第一式点乘 $r_{\xi}$ 得到
$$
r_{\alpha\beta}\cdot r_{\xi}=\Gamma^{\gamma}_{\alpha \beta}g_{\gamma \xi} \overset{ \text{指标下降} }{ = } \Gamma_{\xi\alpha\beta}
$$
注意到指标的对称性，以及 $g_{\alpha\beta}=r_{\alpha}\cdot r_{\beta}$，故
$$
\begin{cases}
\frac{ \partial g_{\alpha\beta} }{ \partial u^{\gamma} } & =r_{\alpha\gamma}\cdot r_{\gamma}+r_{\alpha}\cdot r_{\beta\gamma}=\Gamma_{\beta\alpha\gamma}+\Gamma_{\alpha\beta\gamma} \\
 \frac{ \partial g _{\alpha\gamma}}{ \partial u^{\beta} }  & =\Gamma_{\alpha\gamma\beta}+\Gamma_{\gamma\alpha\beta} \\
 \frac{ \partial g_{\gamma\beta} }{ \partial u^{\alpha} }  & =\Gamma_{\gamma\beta\alpha}+\Gamma_{\beta\gamma\alpha}
\end{cases}
$$
解得
$$
2\Gamma_{\gamma\alpha\beta}=\frac{ \partial g_{\alpha\gamma} }{ \partial u^{\beta} } +\frac{ \partial g_{\gamma\beta} }{ \partial u^{\alpha} } -\frac{ \partial g_{\alpha\beta} }{ \partial u^{\gamma} } 
$$
于是
$$
\Gamma^{\gamma}_{\alpha\beta}=\Gamma _{\xi\alpha\beta}g^{\gamma \xi}=\frac{1}{2}g^{\gamma \xi}\left( \frac{ \partial g_{\alpha \xi} }{ \partial u^{\beta} } +\frac{ \partial g_{\xi\beta} }{ \partial u^{\alpha} } -\frac{ \partial g_{\alpha\beta} }{ \partial u^{\xi} }  \right)
$$
综上，[[#^1233fd]] 变为
$$
\begin{cases}
\frac{ \partial r_{\alpha} }{ \partial u^{\beta} }  & =\Gamma^{\gamma}_{\alpha\beta}r_{\gamma}+b_{\alpha\beta}n \\
\frac{ \partial n }{ \partial u^{\beta} }  & =-b^{\gamma}_{\beta}r_{\gamma }
\end{cases}
$$

^9c4151

这里 $\Gamma^{\gamma}_{\alpha\beta}$ 称为 **Christoffel 记号**. 通常把 [[#^9c4151]] 的第一式称为 **Gauss 公式**，第二式称为 **Weingarten 公式**.

> $\Gamma^{\gamma}_{\alpha\beta}$ 的几何意义是 $r_{\alpha\beta}$ 用自然标架分解时在切向量 $r_{\gamma}$ 上的投影（是那个系数）；$\Gamma_{\gamma\alpha\beta}$ 的几何意义是 $r_{\alpha\beta}$ 在切向量 $r_{\gamma}$ 上的投影，即 $r_{\alpha \beta}\cdot r_{\gamma}$. 当 $r_1\not\perp r_2$ 时他们不同.

![[differential-geometry-2025071000.png]]

### Riemann 符号
若 $r\in C^{3}$，则
$$
r_{\alpha\beta\gamma}=r_{\alpha\gamma\beta},\qquad n_{\beta\gamma}=n_{\gamma\beta}
$$
由 [[#^9c4151]] 可知

$$
(\Gamma^{\sigma}_{\alpha\beta}r_{\delta}+b_{\alpha\beta}n)_{\gamma}=(\Gamma^{\delta}_{\alpha\gamma}r_{\delta}+b_{\alpha\gamma}n)_{\beta}
$$
^djl1jd

$$
(b^{\delta}_{\beta}r_{\delta})_{\gamma}=(b_{\gamma}^{\delta}r_{\delta})_{\beta}
$$
展开得到并利用 [[#^9c4151]] 化简得到两个式子
$$
(b_{\alpha\beta})_{\gamma}-(b_{\alpha\gamma})_{\beta}=b_{\gamma\delta}\Gamma^{\delta}_{\alpha\gamma}-b_{\gamma\delta}\Gamma^{\delta}_{\alpha\beta}
$$
$$
(\Gamma^{\delta}_{\alpha\beta})_{\gamma}-(\Gamma^{\delta}_{\alpha\gamma})_{\beta}+\Gamma^{\eta}_{\alpha\beta}\Gamma^{\delta}_{\eta\gamma}-\Gamma^{\eta}_{\alpha\gamma}\Gamma^{\delta}_{\eta\beta}=b_{\alpha\beta}b^{\delta}_{\gamma}-b_{\alpha\gamma}b^{\delta}_{\beta}\eqqcolon -R^{\delta}_{\alpha\beta\gamma}
$$
称为第一类基本量的 **Riemann 符号**. 
> Riemann 符号的定义可能偏差一个负号.

同时，记指标下降为
$$
R_{\delta\alpha\beta\gamma}\coloneqq g_{\delta \eta}R^{\eta}_{\alpha\beta\gamma}=b_{\delta\beta}b_{\alpha\gamma}-b_{\delta\gamma}b_{\alpha\beta}
$$
^djl1jd2

[[#^djl1jd2]] 称为曲面的 **Gauss 方程**， [[#^djl1jd]] 称为 **Codazzi 方程**.

要指出 Riemann 符号具有对称性质：
$$
R_{\delta\alpha\beta\gamma}=R_{\beta\gamma\delta\alpha}=-R_{\alpha\delta\beta\gamma}=-R_{\delta\alpha\gamma\beta}
$$
本质上 [[#^djl1jd2]] 只包含一个方程
$$
R_{1212}=b_{11}b_{22}-(b_{12})^{2}
$$
[[#^djl1jd]] 中有意义的方程只有两个（若 $\gamma=\beta$ 则恒等）
$$
\begin{cases}
(b_{11})_{2}-(b_{12})_{1} & =-b_{2\gamma}\Gamma^{\gamma}_{11}+b_{1\gamma}\Gamma_{12}^{\gamma} \\
(b_{21})_{2}-(b_{22})_{1} & =-b_{2\gamma}\Gamma_{21} ^{\gamma}+b_{1\gamma}\Gamma_{22}^{\gamma}
\end{cases}
$$
![[1-differential-geometry-2025071000.png]]
![[2-differential-geometry-2025071000.png]]
![[3-differential-geometry-2025071000.png]]

### 唯一性、存在性
![[4-differential-geometry-2025071000.png]]

### Gauss 绝妙定理

![[5-differential-geometry-2025071000.png]]
![[6-differential-geometry-2025071000.png]]

Gauss 绝妙定理启发我们对于只给定第一基本形式的曲面进行研究，这样的几何学称为内蕴几何学，它在高维的推广即 Riemann 几何学.

## 测地线、测地曲率
![[differential-geometry-2025071009.png]]
![[1-differential-geometry-2025071009.png]]









