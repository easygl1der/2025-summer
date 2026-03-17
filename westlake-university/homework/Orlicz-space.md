Reference: Theory of Orlicz spaces, by Rao and Ren. Application of Orlicz spaces, by Rao.

A function $\Phi$ is called a **Young function** if $\Phi(0)=0$, $\Phi$ is even, convex, strictly increasing on $[0,\infty)$ and $\lim_{ t \to \infty }t^{-1}\Phi(t)=\infty$. The convexity of $\Phi$ and $\Phi(0)=0$ implies that $\Phi (cx)\leq c\Phi (x)$ and $\Phi(c^{-1}x)\geq c^{-1}\Phi(x)$ for all $c\in(0,1)$, $x\in \mathbb{R}$. The dual function of $\Phi$ is $\Psi$ defined by $\Psi(u)\coloneqq \sup_{v} \{ u\cdot v-\Phi(v) \}$.


$$
\widetilde{L}^{\Phi}=\left\{  f:\Omega\to \mathbb{R},\text{measurable},\rho_{\Phi}(f)=\int_{\Omega}^{} \Phi(f) \, \mathrm{d}\mu<\infty   \right\}
$$
The space 
$$
L^{\Phi}=\{ f:\Omega\to \mathbb{R},\text{measurable}, \rho_{\Phi}(af)<\infty,\text{for some }a>0 \}
$$
is called an Orlicz space on $(\Omega,\Sigma,\mu)$.

The space 
$$
M^{\Phi}=\{ f:\Omega\to \mathbb{R},\text{measurable}, \rho_{\Phi}(af)<\infty,\text{for all }a>0 \}
$$
is called the Morse-Transue space.



The **Orlicz norm** is
$$
\lVert f \rVert _{\Phi}:=\sup \left\{  \int_{\Omega}^{} \lvert f g\rvert  \, \mathrm{d}\mu   :\rho_{\Psi}(g)\leq 1\right\}
$$
The **gauge norm** is
$$
\lVert f \rVert _{(\Phi)}\coloneqq \inf \left\{  k\geq0:\rho_{\Phi}\left( \frac{f}{k} \right)\leq 1  \right\}
$$
where $(\Phi,\Psi)$ are complementary pair of Young functions and $(L^{\Phi}(\mu),L^{\Psi}(\mu ))$ are the corresponding Orlicz spaces on a measure space $\left( \Omega,\Sigma,\mu \right)$.

Also, $(L^{\Phi},\lVert \cdot \rVert_{\Phi})$ is a Banach space if $f,g$ are identified when $\lVert f-g \rVert_{\Phi}=0$. 

Under some good condition, the dual space of $L^{\Phi}(\mu)$ is $L^{(\Psi)}(\mu)$. We have Holder inequality:
$$
\lVert fg \rVert _{1}\leq \lVert f \rVert _{(\Phi)}\lVert g \rVert _{\Psi}\qquad \lVert fg \rVert _{1}\leq \lVert f \rVert _{\Phi}\lVert g \rVert _{(\Psi)}
$$
for $f\in L^{\Phi}, g\in L^{\Psi}$. 

Define
$$
M^{\Phi}\coloneqq \{ f:\rho_{\Phi}(\alpha f)<\infty,\forall \alpha>0 \}
$$
If $\Phi$ is Young function, then $M^{\Phi}\subset \widetilde{L}^{\Phi}\subset L^{\Phi}$.

For every $0\neq f\in M^{\Phi}$, we have
$$
\int_{\Omega}^{} \Phi\left( \frac{f}{\lVert f \rVert _{(\Phi)} } \right) \, \mathrm{d}\mu=1
$$
> For simplicity, we use $L^{\Phi}$ and $L^{(\Phi)}$ for spaces $(L^{\Phi},\lVert \cdot \rVert_{\Phi})$ and $(L^{\Phi},\lVert \cdot \rVert_{(\Phi)})$ respectively. Similar for $M^{\Phi}$ and $M^{(\Phi)}$. In case $\mu$ is counting measure, the corresponding spaces are denoted $\ell^{\Phi},\ell^{(\Phi)}$ and $m^{\Phi},m^{(\Phi)}$ respectively.

![[Orlicz-space-2025091023.png]]

The dual of $L^{\Phi}$ with the Luxemburg norm is $L^{\Psi}$ with the Orlicz norm (under certain conditions, e.g., $\Phi$ and $\Psi$ satisfy the $\Delta_2$ -condition for finite measures).

The question is whether the following are dual norms.

For $p,q\in(\Delta _n,\oplus;\mathbb{R},\odot)$, 
$$
\lVert p \rVert _{(\Phi)}\coloneqq \inf \left\{  k>0:\sum_{i=0}^{n}  \Phi\left( \frac{\text{clr}_{i}(p)}{k} \right)\leq 1  \right\}
$$
where $\text{clr}(p)=\left[ \log\frac{p_0}{\left( \prod_{i=0}^{n}p_i \right)^{1/(n+1)}} ,\dots,\log\frac{p_n}{\left( \prod_{i=0}^{n}p_i \right)^{1/(n+1)}}\right]$.
$$
\ell_{p}(q)\coloneqq \sum_{i=0}^{n}\text{clr}_{i}(p)\text{clr}_i(q)
$$
We define a norm on $\Delta _n^{*}$, the linear functional space,
$$
\lVert \ell_{p} \rVert _{\Psi}\coloneqq \sup \left\{  \left< p,q \right>: \rho_{\Phi}(q)=\sum_{i=0}^{n}\Phi(\text{clr}_i(q))  \leq 1  \right\}\overset{ \text{Theorem 8} }{ = }\underbrace{ \sup \{ \left< p,q \right> :\lVert q \rVert _{(\Phi)}\leq 1 \} }_{ =\lVert p \rVert _{\Phi,*} }
$$
where $\left< p,q \right>\coloneqq \ell_{p}(q)$. 

> [!thm]
> $(\Delta _n,\lVert \cdot \rVert_{(\Phi)})$ and $(\Delta _n^{*},\lVert \cdot \rVert_{\Psi})$ are dual space. 

`\begin{proof}`
Omitted.
`\end{proof}`

![[Orlicz-space-2025091117.png]]

In the case $\Phi(u)=\lvert u \rvert ^{p},1<p<\infty$, we have $\lVert \cdot \rVert_{(\Phi)}=\lVert \cdot \rVert_{p}$ and $\lVert \cdot \rVert_{\Psi}=\lVert \cdot \rVert_{q}$.

![[1-Orlicz-space-2025091117.png]]
![[2-Orlicz-space-2025091117.png]]

When $\Phi(u)=u^{2}/2,\Psi(u)=u^{2}/2$, this is the inner product case. The norm we defined is a generalization.

![[3-Orlicz-space-2025091117.png]]


### Finsler geometry

https://math.aalto.fi/~fdahl/finsler/finsler.pdf

Finsler 几何就是不作二次限制的黎曼几何, 在黎曼几何里，每个切空间 $T_x M$ 上给的是一个内积，对应长度来自一个二次型；而在 Finsler 几何里，每个切空间配的是一个满足正定、齐次、强凸的范数 $F(x, \cdot)$ ，不再要求来自二次型。直观地说，＂同一条向量的长度＂不仅依赖于所在点 $x$ ，还可以精细地依赖方向，从而公许空间在不同方向有不同的度量性质。

![[Orlicz-space-2025120523.png]]
![[1-Orlicz-space-2025120523.png]]
![[2-Orlicz-space-2025120523.png]]
![[3-Orlicz-space-2025120523.png]]




































