[kg.dvi](https://moroianu.perso.math.cnrs.fr/tex/kg.pdf)

Examples:
![[1-kahler-geometry-2025082312.png]]

Applications:
![[1-kahler-geometry-2025082313.png]]


![[kahler-geometry-2025082312.png]]

The motivation of the definition of $J$ is from $j$, the multiplication by $i$ on $\mathbb{C}$ via the identification of $\mathbb{R}^{2}$ with $\mathbb{C}$ given by $z=x+iy\mapsto(x,y)$. The endomorphism $j$ can be expressed in the canonical base as 
$$
j=\begin{pmatrix}
0 & -1 \\
1 & 0
\end{pmatrix}
$$
The differential of $F=f+ig:U\subset \mathbb{C}\to \mathbb{C}$ (viewed as a real function $F:U\subset \mathbb{R}^{2}\to \mathbb{R}^{2}$) is the linear map
$$
F_{*}=\begin{pmatrix}
\frac{ \partial f }{ \partial x }  & \frac{ \partial f }{ \partial y }  \\
\frac{ \partial g }{ \partial x }  & \frac{ \partial g }{ \partial y } 
\end{pmatrix}
$$
Then it is easy to check that the Cauchy-Riemann relations are equivalent to the commutation relation $jF_{*}=F_{*}j$.

Then for $F:U\subset \mathbb{C}^{n}\to \mathbb{C}^{m}$, it is holomorphic iff the diffrerential $F_{*}$ of $F$ as real map $F:\mathbb{R}^{2n}\to \mathbb{R}^{2m}$ satisfies $j_mF_{*}=F_{*}j_n$, where 
$$
j_m=\begin{pmatrix}
0 & -I _m \\
I _m & 0
\end{pmatrix}
$$





![[kahler-geometry-2025082313.png]]
![[kahler-geometry-2025082314.png]]

![[1-kahler-geometry-2025082314.png]]


Almost complex structure $J$ :
![[2-kahler-geometry-2025082314.png]]
$J_{U}$ does not depend on $U$ and their collection is a well-defined tensor $J$ on $M$. This tensor clearly satisfies $J^{2}=-id$.

![[3-kahler-geometry-2025082314.png]]
A $(1,1)$ -tensor $J$ is a type of tensor that takes in one vector and one covector (a linear function) and outputs a scalar.

A complex manifold is thus in a canonical way an almost complex manifold. 

![[4-kahler-geometry-2025082314.png]]
![[5-kahler-geometry-2025082314.png]]

**Integrability** of the distribution $T^{0,1}M$ means that its sections are closed under the Lie bracket, which is a condition that ensires the existence of a compatible complex coordinate system. In other words:
$$
[X,Y]\in \Gamma(D)\qquad \forall X,Y\in\Gamma(D)
$$
where the distribution $D$ is a subbundle of $T_{\mathbb{C}}M$ and $\Gamma(D)$ is a vector field in $D$.

---

Suppose that $J$ comes from a holomorphic structure on $M$. Consider a local chart $(U,\phi_{U})$ and let $z_{\alpha}=x_{\alpha}+iy_{\alpha}$ be the $\alpha$ -th component of $\phi_{U}$. If $\{ e_1,\dots,e_{2m} \}$ denotes the standard basis of $\mathbb{R}^{2m}$, we have by definition:
$$
\frac{ \partial   }{ \partial x_{\alpha} } =(\phi_{U})^{-1}_{*}(e_{\alpha}),\qquad \frac{ \partial   }{ \partial y_{\alpha} } =(\phi_{U})^{-1}_{*}(e_{m+\alpha})
$$
Moreover, $j_m(e_{\alpha})=e_{m+\alpha}$, so we obtain directly from the defintion
$$
J\left( \frac{ \partial   }{ \partial x_{\alpha} }  \right)=\frac{ \partial   }{ \partial y_{\alpha} }
$$
We now make the following notations
$$
\frac{\partial}{\partial z_\alpha}:=\frac{1}{2}\left(\frac{\partial}{\partial x_\alpha}-i \frac{\partial}{\partial y_\alpha}\right), \quad \frac{\partial}{\partial \bar{z}_\alpha}:=\frac{1}{2}\left(\frac{\partial}{\partial x_\alpha}+i \frac{\partial}{\partial y_\alpha}\right) .
$$
Suppose that $u_\alpha, v_\alpha$ is another local system of coordinates, satisfying

$$
\frac{\partial}{\partial v_\alpha}=J \frac{\partial}{\partial u_\alpha}
$$

We then have 
$$
\frac{\partial u_\beta}{\partial x_\alpha}=\frac{\partial v_\beta}{\partial y_\alpha} \quad \text { and } \quad \frac{\partial u_\beta}{\partial y_\alpha}=-\frac{\partial v_\beta}{\partial x_\alpha},
$$
thus the transition functions are holomorphic.


> [!exr]
> ![[kahler-geometry-2025082711.png]]

^7c5a9f

`\begin{proof}`
$$
\dots=\begin{pmatrix}
A+iB & B \\
O & A-iB
\end{pmatrix}
$$
Then
$$
\det \begin{pmatrix}
A & B \\
-B & A
\end{pmatrix}=\det (A+iB)\cdot \det(A-iB)=\det(A+iB)\cdot  \overline{\det(A+iB)}=\lvert \det(A+iB) \rvert ^{2}>0
$$
`\end{proof}`

> [!exr]
> ![[1-kahler-geometry-2025082711.png]]

A smooth manifold is **orientable** if you can find an **oriented atlas**. 

Given a collection of coordinate charts $(U_k,\phi _k)$ that covers the manifold, we need to show that the Jacobian determinant of all transition functions $\phi _j\circ \phi _k^{-1}$ is everywhere positive.

Under the basis $(v_1,\dots,v_n,Jv_1,\dots,Jv_n)$, any transition functions have the real matrix form
$$
\begin{pmatrix}
A & B \\
-B & A
\end{pmatrix}
$$
which has strictly positive determinant by [[#^7c5a9f]] .



## Holomorphic forms and vector fields
![[6-kahler-geometry-2025082314.png]]

![[kahler-geometry-2025082315.png]]
![[1-kahler-geometry-2025082315.png]]


![[kahler-geometry-2025082713.png]]
$[\cdot,\cdot]$ is the Lie Bracket, which is defined by
$$
[X,Y](f)=X(Y(f))-Y(X(f))
$$

> [!proposition] 
> ![[1-kahler-geometry-2025082713.png]]
> ![[2-kahler-geometry-2025082713.png]]

`\begin{proof}`
Read.
`\end{proof}`


![[3-kahler-geometry-2025082713.png]]
![[kahler-geometry-2025082714.png]]
![[1-kahler-geometry-2025082714.png]]
![[kahler-geometry-2025082715.png]]



## Hermitian bundles

Let $M$ be a differentiable manifold (not necessarily complex) and let $E\to M$ be a <u>complex vector bundle</u> over $M$, which means $E$ is a space with a projection map to $M$, and the fibers over each point in $M$ are complex vector space.

> [!def] connection
> A ($\mathbb{C}$ -linear) connection on a $E$ is a $\mathbb{C}$ -linear differential operator $\nabla:C^{\infty}(E)\to C^{\infty}(\Lambda^{1}(E))$ satisfying the Leibniz rule
> $$\nabla(f\sigma)=df\otimes \sigma+f\nabla\sigma,\qquad \forall f\in C^{\infty}(M)$$
> 

$C^{\infty}(\Lambda^{1}(E))$ is the space of $E$ -valued 1-forms, where $\Lambda^{1}(E)$ denotes the bundle of $E$ -valued 1-forms over $M$. 

One can extend any connection to the bundles of $E$ -valued $p$ -forms on $M$ by
$$
\nabla(\omega \otimes \sigma)=d\omega \otimes \sigma+(-1)^{p}\omega \wedge \nabla\sigma
$$
where the wedge product has to be understood as
$$
\omega \wedge \nabla\sigma\coloneqq \sum_{i=1}^{n} \omega \wedge e^{ * }_i\otimes \nabla_{e_i}\sigma
$$
for any local basis $\{ e_i \}$ of $TM$ with dual basis $\{ e^{ * }_i \}$. $\nabla_{e_i}\sigma$ is the covariant derivative along the basis vector $e_i$.

> [!def] curvature
> The **curvature** of $\nabla$ is the $\text{End}(E)$ -valued 2-form $R^{\nabla}$ defined by
> $$R^{\nabla}(\sigma)\coloneqq \nabla(\nabla\sigma)\qquad \forall \sigma\in C^{\infty}(E)$$

To check that this is indeed tensorial (i.e. depends on $\sigma$ and not on $f$), we can write
$$
\nabla^{2}(f\sigma)=\nabla(df\otimes \sigma+f\nabla\sigma)=\underbrace{ d^{2}f }_{ =0 }\otimes \sigma-df\wedge \nabla\sigma+df\wedge \nabla\sigma+f\nabla^{2}\sigma=f\nabla^{2}\sigma
$$
![[kahler-geometry-2025082819.png]]
![[1-kahler-geometry-2025082819.png]]
![[2-kahler-geometry-2025082819.png]]
![[3-kahler-geometry-2025082819.png]]
![[kahler-geometry-2025082820.png]]
![[1-kahler-geometry-2025082820.png]]
![[2-kahler-geometry-2025082820.png|896]]
![[3-kahler-geometry-2025082820.png]]
![[5-kahler-geometry-2025082820.png]]
![[4-kahler-geometry-2025082820.png]] 
![[kahler-geometry-2025082821.png]]
![[2-kahler-geometry-2025082821.png]]
![[3-kahler-geometry-2025082821.png]]

## The curvature tensor of Kahler manifolds
![[kahler-geometry-2025082911.png]]

![[1-kahler-geometry-2025082911.png]]
![[2-kahler-geometry-2025082911.png]]














