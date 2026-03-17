## Introduction of Preliminaries

Let $\varphi:\Omega \subseteq \mathbb{R}^{n}\to \mathbb{R}^{m}$, $\boldsymbol{\varphi}(\boldsymbol{x})=(\varphi^{1}(x),\dots,\varphi^{m}(x))$. The Jacobian derivative is
$$
D\boldsymbol{\varphi}(x)=\begin{bmatrix}
\partial_1\boldsymbol{\varphi}(x) & \partial _{2}\boldsymbol{\varphi}(x) & \dots & \partial _n\boldsymbol{\varphi}(x)
\end{bmatrix}\in M^{m\times n}
$$
Rank-one matrices: for $a\in \mathbb{R}^{m}$, $n\in \mathbb{R}^{n}$, 
$$
e_1\otimes e_1=\begin{pmatrix}
1 & 0 & \dots & 0 \\
0 & 0 & \dots & 0 \\
\vdots & \vdots &  & \vdots \\
0 & 0 & \dots & 0
\end{pmatrix}
$$
$$
a\otimes n=(a_i\cdot n_j)_{i,j}^{m,n}
$$

> [!exr]
> Let $v\in \mathbb{R}^{n}$, $(a\otimes n) v= \left< n,v \right>a$.

> [!def] differential inclussion
> Given $K\subseteq M^{m\times n}, A\in M^{m\times n}$
> 1. $\left.\varphi\right|_{\partial \Omega}=\mathbf{A}\mathbf{x}+\mathbf{b}$
> 2. $D\varphi (x)\in K$, a.e. $x\in \Omega$.
> 3. $+$ Regularily on $\varphi$.

### Regularity?
- Control on the oscillation
	- Holder: $\lvert \varphi(x)-\varphi(y) \rvert\leq C\lvert x-y \rvert ^{\alpha}$, where $0<\alpha<1$.
	- Lipschitz:  $\lvert \varphi(x)-\varphi(y) \rvert\leq C\lvert x-y \rvert$.
- Bounds on the derivative
	- $W^{k,p}(\Omega,\mathbb{R}^{m})$, the sobolev spaces.
	- Approx $\int_{\Omega}^{} \lvert D^{\gamma} \varphi\rvert ^{p} \, \mathrm{d}x<\infty$, for $0\leq\gamma\leq k$.
	- Warning: what means derivative?
		- Derivatives are understood in the weak sense.


Textbooks:
- Evans
- Eienmen?
- Adams


> [!def] piecewise affine
> $\boldsymbol{\varphi}:\Omega\to \mathbb{R}^{m}$ is called pircewise affine (pa) if $\exists \{ \Omega _i \}^{\infty}_{i=1}$, s.t. 
> $$\boldsymbol{\varphi}(\mathbf{x})=\sum(\mathbf{A}_i \mathbf{x}+\mathbf{b}_i)\chi_{\Omega _i}$$
> Where $m\left( \Omega\setminus \bigcup_{i=1}^{\infty}\Omega _i \right)=0$, $D\boldsymbol{\varphi}=\sum \mathbf{A}_i\chi_{\Omega _i}$.

Then 
$$
\int \lvert D\varphi \rvert ^{p}=\sum \lvert \Omega _i \rvert \cdot \lvert \mathbf{A}_i \rvert ^{p}
$$
We know that $W^{1,\infty}=\text{Lip}$, and $W^{1,p}\overset{ \text{inclusion} }{ \to } C^{1-\frac{n}{p}}$ for $p>n$, which is Holder space.

### History 
- Nash: Isometric inmersions
- Approximate solutions

$$
I[u]\coloneqq \int_{}^{}W[Du(x)]  \, \mathrm{d}x 
$$
Where $W:M^{m\times n}\to \mathbb{R}_{+}$, $K\coloneqq W^{^{-1}}[0]$. (Mullen)

- Regularity of elliplic systems



---

## IPM

$\rho\in \mathbb{R}, u\in \mathbb{R}^{3}$, $\rho=\rho(x,t)$, $u=(u^{1}(x,t),u^{2}(x,t),u^{3}(x,t))$. where $x\in \mathbb{T}$, $t\in[0,T]$
$$
\begin{cases}
\partial _{t}u+\mathrm{div}(\rho u)=0 \\
\mathrm{div}(u)=0 \\
u=\nabla_{\text{p}}\cdot \rho(0,1)
\end{cases}
$$

A PDE: for $U\in K$, solve $\nabla \times U= \mathbf{0}$.

Use new variable $m=(m^{1}(x,t),m^{2}(x,t),m^{3}(x,t))$, then
$$
\begin{cases}
\partial _{t}\rho +\mathrm{div}(m)=0 \\
\mathrm{div}(u)=0 \\
\nabla \times(u+\rho(0,1))=0
\end{cases}
$$
This is a **linear equation** in $K^{\text{IPM}}\coloneqq \{ (\rho,m,u):m=\rho u \}\subset \mathbb{R}^{7}$. (Add three dimension to linearize it.)

> [!def] gradient distribution
> $\varphi:\Omega\to \mathbb{R}^{m}$, $\left.\varphi\right|_{\partial \Omega}=\mathbf{A}\mathbf{x}+\mathbf{b}$, $V_{\varphi}\in \mathcal{M}(M^{m\times n})$ is gradient distribution.

For open subset $\mathcal{O}\subset M^{m\times n}$, we define
$$
V_{\varphi}(\mathcal{O})=\frac{m(\{ x\in \Omega:D\varphi(x)\in \mathcal{O} \})}{\lvert \Omega \rvert }
$$
Then $C^{\infty}_{0}(M^{m\times n})=\mathcal{M}(M^{m\times n})$,
$$
\int_{M^{m\times n}}^{} f(x) \, \mathrm{d}V_{\varphi}=\int_{\Omega}^{} f(D\varphi(x)) \, \mathrm{d}x 
$$


Recall that for the measure $\delta_{A}$
$$
\int_{\Omega}^{} f \, \mathrm{d}\delta_{A} =f(A)
$$
Then for $V=\sum l_i\delta_{A_i}$, we have
$$
\int_{\Omega}^{} f \, \mathrm{d}V=\sum l_if(A_i)
$$

For $\varphi(x)=Ax$, we have $D\varphi=A$, then (why?) $V_{\varphi}=\delta_{A}$, then if $D\varphi=\sum A_i\chi_{\Omega _i}$, then $V_{\varphi}=\sum\frac{\lvert \Omega _i \rvert}{\lvert \Omega \rvert}\delta_{A_i}$.










