位势方程 $\Delta u=f$ 在零 Dirichlet 边值条件下的解是泛函 $F(u)=\int_{\Omega}^{} \left[ \frac{1}{2}\lvert \nabla u \rvert ^{2}+fu \right] \, \mathrm{d}x$ 的最小值点，叫做 Dirichlet 原理.

给定方程
$$
-\sum_{i, j=1}^n a_{i j} \partial_{i j}^2 u+\sum_{i=1}^n b_i \partial_i u+c u=f
$$
若 $(a_{ij}(x))$ 总是正定或负定，则称其为椭圆型. 若存在 $c_0>0$，使得
![[elliptic-2025072510.png]]
则称为一致椭圆型. 

边值条件有：
- Dirichlet 边值：$\left.u\right|_{\partial \Omega}(x)=h(x)$.
- Neumann 边值：$\left.\frac{ \partial u(x) }{ \partial \mu }\right|_{\partial \Omega}=h(x)$. 其中 $\mu$ 是某个向量场.
- Robin 边值：$\frac{ \partial u (x) }{ \partial \mu }+\sigma (x) u (x)=h (x),\forall x\in \partial \Omega$.
- ...

![[elliptic-2025072511.png]]
![[1-elliptic-2025072511.png]]
![[2-elliptic-2025072511.png]]
![[3-elliptic-2025072511.png]]
`\begin{proof}`
应用紧算子的 Fredholm 定理.
`\end{proof}`
考虑如下方程
$$
\begin{cases}
Lu=f & \forall x\in \Omega \\
u=\psi & \forall x\in \partial \Omega
\end{cases}
$$
其中 $f\in H^{-1}(\Omega)$, $\psi\in H^{\frac{1}{2}}(\partial\Omega)$. 

接下来研究解的正则性问题：如果 $f$ 属于比 $H^{-1}(\Omega)$ 正则性更好的空间，$\psi$ 属于比 $H^{\frac{1}{2}}(\partial \Omega)$ 正则性更好的空间，那么解 $u$ 是否存在更好的正则性？

![[4-elliptic-2025072511.png]]
![[5-elliptic-2025072511.png]]
略过正则性这些各种范数估计.

接下来考虑特征值问题：
$$
\begin{cases}
Lu=\lambda u & \forall x\in \Omega  \\
u=0 & \forall x\in \partial \Omega 
\end{cases}
$$
我们要研究对于什么样的复数 $\lambda$ ，这个问题存在非零解 $u$，称为**特征函数**. 所以本节研究的问题叫做 Dirichlet 特征值问题，应用前两节得到的结果和关于紧算子的 Riesz-Shauder 理论，可以得到这个问题的圆满解答.

![[elliptic-2025072512.png]]
![[1-elliptic-2025072512.png]]
![[2-elliptic-2025072512.png]]
这个定理在抽象空间中就有一套证明，参见于品.

接下来考虑极值原理

![[3-elliptic-2025072512.png]]
![[4-elliptic-2025072512.png]]
![[5-elliptic-2025072512.png]]
我们注意到在经典解的极值问题中，证明利用到了经典解的假设，却不涉及解的导数，自然地我们会问：对强解和弱解是否也成立类似的结果？这个问题的回答是肯定的.

![[6-elliptic-2025072512.png]]
![[7-elliptic-2025072512.png]]
![[8-elliptic-2025072512.png]]
![[9-elliptic-2025072512.png]]


接下来建立 Dirichlet 边值问题解的 $L^{p}$ 估计，这里先不考虑解的存在性，而是对已知的解建立一些不等式，所以叫做**先验估计**. 

![[elliptic-2025072517.png]]
![[1-elliptic-2025072521.png]]
![[elliptic-2025072521.png]]










