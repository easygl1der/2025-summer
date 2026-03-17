> [!def] Riemannian metric
> A **Riemannian metric** on $M$ is a inner product $\left< \cdot,\cdot \right>_{p}$ on $T_{p}M$ assosiated to each $p\in M$.

In other words, if $\mathbf{x}:U\subset \mathbb{R}^{n}\to M$ is a system of coordinate near $p$, with $\mathbf{x}(x_1,\dots, x_n)=q\in \mathbf{x}(U)$ and $\partial _i (q)=d \mathbf{x}_{q}(0,\dots,1,\dots,0)$, then 
$$
\left< \partial _i(q),\partial _j(q) \right> _{q}=g_{ij}(x_1,\dots,x_n)
$$
is differentiable on $U$.

> [!remark] 
> The definition does not depend on the choice of cooridnate system.

A differentaible manifold with a given Riemannian metric is called a **Riemannian manifold**.

> [!def] isometry between manifolds
> A diffeomorphism $f:M\to N$ is called an **isometry** if 
> $$\left< u,v \right> _{p}= \left< df_{p}(u),df_{p}(v) \right>_{f(p)}\qquad \text{for all }p\in M, u,v\in T_{p}M  $$









![[6-Riemannian-geometry-2025071111.png]]





## Affine connection


Given surface $S\subset \mathbb{R}^{3}$, a parametrized curve $c:I\to S$, with $V:I\to \mathbb{R}^{3}$ a vector field along $c$, note that $V (t)\in T_{c(t)}S$ but $\frac{dV}{dt}(t)$ does not. We look $\frac{dV}{dt}(t)$ *from the viewpoint of $S$*, i.e. we see its orthogonal projection on $T_{c(t)}S$, which is named the **covariant derivative**, denoted by $\frac{DV}{dt }(t)$.

$\frac{DV}{dt}(t)$ depends only on the $\mathbb{I}$ -form of $S$, thus can be considered within Riemannian geometry. 

Physically, $\frac{DV}{dt}(t)$ gives the acceleration of the curve $c$ in $S$. The curve with <u>zero acceleration</u> are precisely the **geodesics** of $S$ and $\kappa_{g}$ can be expressed from $\frac{DV}{dt}(t)$.

If $\frac{DV}{dt}\equiv0$, we say the vector field $V$ along $c$ is **parallel**. Historically, the idea of parallelism came before covariant derivative.

The notation of $\frac{DV}{dt}$ makes the basic idea of *geodesic* and *curvature* defined in more general case than that of Riemannian manifolds.

As metric Euclidean geometry is a particular case of <u>affine geometry</u> and more generally of <u>projective geometry</u>, Riemannian geometry is a particular case of more <u>general geometric structures</u>.

A choice of a Riemannian metric on $M$ uniquely determines a affine connection on $M$. 

Let $\mathcal{X}(M)$ be the collection of vector field on $M$; $\mathcal{D}(M)=C^{\infty}(M)$, real functions.

> [!def] affine connection
> An **affine connection** on $M$ is the mapping
> $$\nabla:\mathcal{X}(M)\times \mathcal{X}(M)\to \mathcal{X}(M)$$
> Write $\nabla(X,Y)=\nabla_{X}(Y)$, it must satisfies
> 1. $\nabla _{fX+gY}Z=f\nabla_{X}Z+g\nabla_{Y}Z$;
> 2. $\nabla_{X}(Y+Z)=\nabla_{X}Y+\nabla_{X}Z$;
> 3. $\nabla_{X}(fY)=f\nabla_{X}Y+X(f)Y$.
> 
> where $X, Y, Z\in \mathcal{X}(M), f, g\in \mathcal{D}(M)$.

For $M$ with $\nabla$, there is a unique correspondence between vector field $V$ along $c:I\to M$ and another vector field $\frac{DV}{dt }$ along $c$, called the covariant derivative of $V$ along $c$, such that 
1. $\frac{D}{dt }(V+W)=\frac{DV}{dt }+\frac{DW}{dt }$;
2. $\frac{D}{dt }(fV)=\frac{df}{dt }V+f\frac{DV}{dt }$;
3. If $V$ is induced by $Y\in \mathcal{X}(M)$, i.e. $V(t)=Y(c(t))$, then $\frac{DV}{dt }=\nabla\left( \frac{dc}{dt },Y \right)$.

The notation of connection furnishes a manner of differentiating vectors along curves; then it will be possible to talk about the acceleration of a curve in $M$.

> [!proposition] parallel transport
> Given vector $V_{0}\in T_{c(t_0)}M$, there exists a unique parallel $V$ along $c$, s.t. $V(t_0)=V_0$.

`\begin{proof}`
It suffices to prove locally, then by the compactness of $c(I)$ in $M$, we are done. 

Then we can assume that $c(I)\subset \mathbf{x}(U)$, where $\mathbf{x}:U\subset \mathbb{R}^{n}\to M$; let $\mathbf{x}^{-1}(c(t))=(x_1(t),\dots,x_n(t))$ be the local expression for $c(t)$; let $V_0=\sum _jv_0^{j}X_j$, where $X_j=\partial _j(c(t_0))$. 

For the uniqueness, if $V(t_0)=V_0$, then $V=\sum v^{j}X_j$ satisfies
$$
0=\frac{DV}{dt }=\sum _j\frac{dv^{j}}{dt }X_j+\sum_{i,j}\frac{dx_i}{dt }v^{j}\underbrace{ \nabla_{X_i}X_j }_{ =\sum _k\Gamma^{k}_{ij} X_k}
$$
Replace $j$ by $k$ then
$$
\frac{DV}{dt }=\sum _k\left\{  \frac{dv^{k}}{dt }+\sum_{i,j} v^{j}\frac{dx_i}{dt }\Gamma^{k}_{ij} \right\}X_k=0
$$
thus
$$
\frac{dv^{k}}{dt }+\sum_{i,j} v^{j}\frac{dx_i}{dt }\Gamma^{k}_{ij} =0,\qquad k=1,\dots,n
$$

^3b3681

possesses a unique solution for the initial condition $v^{k}(t_0)=v_0^{k}$. Since [[#^3b3681]] is linear, any solution is well-defined over $t\in I$, which proves the existence.

`\end{proof}`

> [!def] compactible
> Given $\nabla$, $\left< \cdot,\cdot \right>$ on $M$, $\nabla$ is said to be **compactible** with $\left< \cdot,\cdot \right>$ if for any $c$ and parallel vector field $P,P'$ on $c$, $\left< P,P' \right>$ is constant.

Then we are able to "differentiate" $\left< \cdot,\cdot \right>$. 

For Riemannian manifold $M$, $\nabla$ is compactible iff for any $V,W$ along $c$, 
$$
\frac{d}{dt }\left< V,W \right> = \left< \frac{DV}{dt },W \right> +\left< V,\frac{DW}{dt } \right>, \qquad t\in I
$$
A corollary is $\nabla$ is compactible iff
$$
X\left< Y,Z \right> = \left< \nabla_{X}Y,Z \right> +\left< Y,\nabla_{X}Z \right> ,\qquad \forall X,Y,Z\in \mathcal{X}(M)
$$
To prove for fixed $p\in M$, just define $c:I\to M$ with $c(t_0)=p$ by $\left.\frac{dc}{dt }\right|_{t=t_0}=X(p)$. Then we have the $\Rightarrow$; the $\Leftarrow$ is obvious.

> [!def] symmetric
> An affine $\nabla$ on $M$ is said to be **symmetric** if 
> $$\nabla_{X}Y-\nabla_{Y}X=[X,Y],\qquad \forall X,Y\in \mathcal{X}(M)$$

In a coordinate system $(U,\mathbf{x})$, symmetric $\nabla$ implies $\forall i,j$, 
$$
\nabla_{X_i}X_j-\nabla_{X_j}X_i=[X_i,X_j]=0,\quad X_i=\frac{ \partial   }{ \partial x_i }
$$
which is equivalent to $\Gamma^{k}_{ij}=\Gamma^{k}_{ji}$.

> [!thm] Levi-Civita
> Given Riemannian $M$, there exists a unique **symmetric**, **compactible**, <u>affine connection</u> $\nabla$ on $M$.

`\begin{proof}`

Suppose initially the existence of such a $\nabla$. Then

$$
X\langle Y, Z\rangle=\left\langle\nabla_X Y, Z\right\rangle+\left\langle Y, \nabla_X Z\right\rangle
$$

^9e3c07

$$
\langle Z, X\rangle=\left\langle\nabla_Y Z, X\right\rangle+\left\langle Z, \nabla_Y X\right\rangle
$$

^d53727

$$
Z\langle X, Y\rangle=\left\langle\nabla_Z X, Y\right\rangle+\left\langle X, \nabla_Z Y\right\rangle .
$$

^038e1a



Adding [[#^9e3c07]]  and [[#^d53727]]  and subtracting [[#^038e1a]] , we have, using the symmetry of $\nabla$, that

$$
\begin{aligned}
X\langle Y, Z\rangle & +Y\langle Z, X\rangle-Z\langle X, Y\rangle \\
& =\langle[X, Z], Y\rangle+\langle[Y, Z], X\rangle+\langle[X, Y], Z\rangle+2\left\langle Z, \nabla_Y X\right\rangle
\end{aligned}
$$

Therefore

$$
\begin{aligned}
\left\langle Z, \nabla_Y X\right\rangle= & \frac{1}{2}\{X\langle Y, Z\rangle+Y\langle Z, X\rangle-Z\langle X, Y\rangle \\
& -\langle[X, Z], Y\rangle-\langle[Y, Z], X\rangle-\langle[X, Y], Z\rangle\} .
\end{aligned}
$$

^c53f81



The expression [[#^c53f81]]  shows that $\nabla$ is uniquely determined from the metric $\langle$, $\rangle$. Hence, if it exists, it will be unique.

To prove existence, define $\nabla$ by [[#^c53f81]] . It is easy to verify that $\nabla$ is well-defined and that it satisfies the desired conditions.

`\end{proof}`

The connection defined above is called **Riemannian connection**.

For a coordinate system $(U,\mathbf{x})$, it's customary to call $\Gamma^{k}_{ij}$ defined on $U$ by $\nabla_{X_i}X_j=\sum _k\Gamma^{k}_{ij}X_k$, the **coefficients of the connection** $\nabla$ on $U$ or the **Christoffel symbols** of the connection.

[[#^c53f81]] gives
$$
\sum_{\ell} \Gamma_{i j}^{\ell} g_{\ell k}=\frac{1}{2}\left\{\frac{\partial}{\partial x_i} g_{j k}+\frac{\partial}{\partial x_j} g_{k i}-\frac{\partial}{\partial x_k} g_{i j}\right\}
$$

^fbd839

where $g_{ij}= \left< X_i,X_j \right>$.

The inverse matrix of $(g_{km})$ is $(g^{km})$, then [[#^fbd839]] gives
$$
\Gamma^{m}_{ij}=\frac{1}{2}\sum _k\left\{\frac{\partial}{\partial x_i} g_{j k}+\frac{\partial}{\partial x_j} g_{k i}-\frac{\partial}{\partial x_k} g_{i j}\right\}g^{km}
$$
which is a classical expression. 

>  For $\mathbb{R}^{n}$, $\Gamma^{k}_{ij}=0$.

The covariant derivative has the classical expression:
$$
\frac{D V}{d t}=\sum_k\left\{\frac{d v^k}{d t}+\sum_{i, j} \Gamma_{i j}^k v^j \frac{d x_i}{d t}\right\} X_k
$$

## Geodesics

After basic terminology, we pass to two foundamental concepts: geodesic and curvature.

If $\gamma$ is geodesic, i.e.$\frac{D}{dt }\frac{d\gamma}{dt}\equiv0$, then
$$
\frac{\mathrm{d}}{\mathrm{d}t} \left< \frac{d\gamma}{dt},\frac{d\gamma}{dt} \right> =2\left< \frac{D}{dt }\frac{d\gamma}{dt},\frac{d\gamma}{dt} \right>=0
$$
Then $\lvert \frac{d\gamma}{dt} \rvert$ is constant, assumed to be $c\neq0$. The **arc length** of $\gamma$ from $t_0$ is
$$
s(t)=\int_{t_0}^{t} \left\lvert  \frac{d\gamma}{dt}  \right\rvert  \, \mathrm{d}t =c(t-t_0)
$$
When $c=1$, we say the geodesic $\gamma$ is **normalized**.

Given coordinate system $(U,\mathbf{x})$, in $U$, a curve $\gamma(t)=(x_1(t),\dots,x_n(t))$ will be a geodesic iff 
$$
0=\frac{D}{dt }\left( \frac{d\gamma}{dt } \right)=\sum _k\left( \frac{d^{2}x_k}{dt^{2} }+\sum_{i,j}\Gamma^{k}_{ij} \frac{dx_i}{dt }\frac{dx_j}{dt }\right)\frac{\partial}{\partial x^{k}}
$$
Iff
$$
\frac{d^{2}x_k}{dt^{2} }+\sum_{i,j}\Gamma^{k}_{ij} \frac{dx_i}{dt }\frac{dx_j}{dt }=0,\qquad k=1,\dots,n
$$

^ec1f88

 To study [[#^ec1f88]], we consider the tangent bundle $TM$, which is the pairs $(q,v)$, $q\in M$, $v\in T_{q}M$. For $(U,\mathbf{x})$, any vector in $T_{q}(M), q\in \mathbf{x}(U)$, can be written as $\sum_{i=1}^{n}y_i\frac{ \partial   }{ \partial x_i }$. Taking $(x_1,\dots,x_n,y_1,\dots,y_n)$ as coordinate of $(q,v)$ in $TU$, then we obtain a differentiable structeure for $TM$. 

Any curve $t\mapsto\gamma(t)$ in $M$ determine $t\mapsto\left( \gamma(t),\frac{\mathrm{d}}{\mathrm{d}t}\gamma(t) \right)$ in $TM$. If $\gamma$ is geodesic then on $TM$,
$$
t\mapsto\left( x_1(t),\dots,x_n(t),\frac{\mathrm{d}}{\mathrm{d}t} x_1(t),\dots,\frac{\mathrm{d}}{\mathrm{d}t} x_n(t) \right)
$$
satisfies 
$$
\begin{cases}
\frac{\mathrm{d}}{\mathrm{d}t} x_k=y_k \\
\frac{\mathrm{d}}{\mathrm{d}t} y_k=-\sum_{i,j}\Gamma^{k}_{ij}y_iy_j
\end{cases}\qquad k=1,\dots,n
$$

> [!thm] 
> If $X$ is a $C^{\infty}$ vector field on the open set $V$ in the manifold $M$ and $p \in V$ then there exist an open set $V_o \subset V, p \in V_o$, a number $\delta>0$, and a $C^{\infty}$ mapping $\varphi:(-\delta, \delta) \times V_o \rightarrow V$ such that the curve $t \rightarrow \varphi(t, q), t \in(-\delta, \delta)$, is the unique trajectory of $X$ which at the instant $t=0$ passes through the point $q$, for every $q \in V_o$.

The mapping $\varphi_t: V_o \rightarrow V$ given by $\varphi_t(q)=\varphi(t, q)$ is called the **flow** of $X$ on $V$.

> [!lem]
> There exists a unique vector field $G$ on $T M$ whose trajectories are of the form $t \rightarrow\left(\gamma(t), \gamma^{\prime}(t)\right)$, where $\gamma$ is a geodesic on $M$.

> [!def] Geodesic Field and Flow
> The vector field $G$ defined above is called the **geodesic field** on $TM$ and its flow is called the **geodesic flow** on $TM$.

> [!proposition] Proposition 2.5
> Given $p \in M$, there exist an open set $V \subset M$, $p \in V$, numbers $\delta>0$ and $\varepsilon_1>0$ and a $C^{\infty}$ mapping
>
> $$
> \gamma:(-\delta, \delta) \times U \rightarrow M, \quad U=\left\{(q, v) ; q \in V, v \in T_q M,|v|<\varepsilon_1\right\},
> $$
>
> such that the curve $t \rightarrow \gamma(t, q, v), t \in(-\delta, \delta)$, is the unique geodesic of $M$ which, at the instant $t=0$, passes through $q$ with velocity $v$, for each $q \in V$ and for each $v \in T_q M$ with $|v|<\varepsilon_1$.

> [!lem] Homogeneity of a geodesic
> If the geodesic $\gamma(t, q, v)$ is defined on the interval $(-\delta, \delta)$, then the geodesic $\gamma(t, q, a v), a \in \mathbf{R}, a>0$, is defined on the interval $\left(-\frac{\delta}{a}, \frac{\delta}{a}\right)$ and
> $$
> \gamma(t, q, a v)=\gamma(a t, q, v) .
> $$

> [!proposition] Proposition 2.7.
> Given $p \in M$, there exist a neighborhood $V$ of $p$ in $M$, a number $\varepsilon > 0$ and a $C^{\infty}$ mapping $\gamma:(-2,2) \times U \rightarrow M$, $U=\left\{(q, w) \in T M ; q \in V, w \in T_q M,|w|<\varepsilon\right\}$ such that $t \rightarrow \gamma(t, q, w)$, $t \in(-2,2)$, is the unique geodesic of $M$ which, at the instant $t=0$, passes through $q$ with velocity $w$, for every $q \in V$ and for every $w \in T_q M$, with $|w|<\varepsilon$.

^579f68


[[#^579f68]]  permits us to introduce the concept of the exponential map in the following manner. Let $p \in M$ and let $\mathcal{U} \subset T M$ be an open set given by [[#^579f68]] . Then the map $\text{exp}:U \rightarrow M$ given by
$$
\exp (q, v)=\gamma(1, q, v)=\gamma\left(|v|, q, \frac{v}{|v|}\right), \quad(q, v) \in \mathcal{U}
$$
is called the **exponential map** on $\mathcal{U}$.






## Curvature
We present a definition of curvature that measures the amount that a Riemannina manifold deviates from being Euclidea

The **curvature** $R$ of a Riemannian manifold $M$ is a correspondence that associates to every pair $X, Y \in \mathcal{X}(M)$ a mapping $R(X, Y): \mathcal{X}(M) \rightarrow \mathcal{X}(M)$ given by

$$
R(X, Y) Z=\nabla_Y \nabla_X Z-\nabla_X \nabla_Y Z+\nabla_{[X, Y]} Z, \quad Z \in \mathcal{X}(M)
$$

where $\nabla$ is the Riemannian connection of $M$.

> [!proposition]
> The curvature $R$ of a Riemannian manifold has the following properties:
> (i) $R$ is bilinear in $\mathcal{X}(M) \times \mathcal{X}(M)$, that is,
> $$
> \begin{aligned}
> & R\left(f X_1+g X_2, Y_1\right)=f R\left(X_1, Y_1\right)+g R\left(X_2, Y_1\right), \\
> & R\left(X_1, f Y_1+g Y_2\right)=f R\left(X_1, Y_1\right)+g R\left(X_1, Y_2\right), \\
> & f, g \in \mathcal{D}(M), \quad X_1, X_2, Y_1, Y_2 \in \mathcal{X}(M) .
> \end{aligned}
> $$
> (ii) For any $X, Y \in \mathcal{X}(M)$, the curvature operator $R(X, Y)$ : $\mathcal{X}(M) \rightarrow \mathcal{X}(M)$ is linear, that is,
> $$
> \begin{aligned}
> R(X, Y)(Z+W) & =R(X, Y) Z+R(X, Y) W \\
> R(X, Y) f Z & =f R(X, Y) Z
> \end{aligned}
> $$
> $f \in \mathcal{D}(M), \quad Z, W \in \mathcal{X}(M)$.


> [!proposition] 2.4. (Bianchi Identity).
> $$
> R(X, Y) Z+R(Y, Z) X+R(Z, X) Y=0
> $$

From now on, we shall write $\left< R(X, Y) Z, T\right>=(X, Y, Z, T)$.
 
> [!proposition] 
> 1. $(X, Y, Z, T)+(Y, Z, X, T)+(Z, X, Y, T)=0$
> 2. $(X, Y, Z, T)=-(Y, X, Z, T)$
> 3. $(X, Y, Z, T)=-(X, Y, T, Z)$
> 4. $(X, Y, Z, T)=(Z, T, X, Y)$.

^e9da3e




For $(U,\mathbf{x})$, let $\frac{ \partial   }{ \partial x_i }=X_i$ ; put
$$
R(X_i,X_j)X_k=\sum_{\ell}R_{ijk}^{\ell}X_{\ell}
$$
Thus $R^{\ell}_{ijk}$ are the component of the curvature $R$ in $(U,\mathbf{x})$. Express in terms of $\Gamma^{k}_{ij}$:
$$
\begin{aligned}
R\left(X_i, X_j\right) X_k & =\nabla_{X_j} \nabla_{X_i} X_k-\nabla_{X_i} \nabla_{X_j} X_k \\
& =\nabla_{X_j}\left(\sum_{\ell} \Gamma_{i k}^{\ell} X_{\ell}\right)-\nabla_{X_i}\left(\sum_{\ell} \Gamma_{j k}^{\ell} X_{\ell}\right),
\end{aligned}
$$
A direct calculation yields
$$
R^{s}_{ijk}=\sum_{\ell}\Gamma^{\ell}_{ik}\Gamma^{s}_{j\ell}-\sum_{\ell}\Gamma^{\ell}_{jk}\Gamma^{s}_{i\ell}+\frac{ \partial   }{ \partial x_j } \Gamma^{s}_{ik}-\frac{ \partial   }{ \partial x_i } \Gamma^{s}_{jk}
$$
Putting
$$
\left\langle R\left(X_i, X_j\right) X_k, X_s\right\rangle=\sum_{\ell} R_{i j k}^{\ell} g_{\ell s}=R_{i j k s}
$$
we can write the identities of [[#^e9da3e]] as:
$$
\begin{gathered}
R_{i j k s}+R_{j k i s}+R_{k i j s}=0 \\
R_{i j k s}=-R_{j i k s} \\
R_{i j k s}=-R_{i j s k} \\
R_{i j k s}=R_{k s i j}
\end{gathered}
$$

### Tensor
The notation of curvature is a particular case of the idea of a tensor, which is a useful object in differential geometry. The idea of a tensor is a natural generalization of the idea of a vector field; tensor can also be differentiated covariantly.

Now we view $\mathcal{X}(M)$ as $\mathcal{D}(M)$ -module.

> [!def] Tensor of order r on a Riemannian manifold
> A tensor $T$ of order $r$ on a Riemannian manifold is a multilinear mapping
> $$
> T: \underbrace{\mathcal{X}(M) \times \cdots \times \mathcal{X}(M)}_r \rightarrow \mathcal{D}(M) .
> $$
>
> This means that given $Y_1, \ldots, Y_r \in \mathcal{X}(M), T\left(Y_1, \ldots, Y_r\right)$, is a differentiable function on $M$, and that $T$ is linear in each argument, that is,
> $$
> \begin{aligned}
> T\left(Y_1, \ldots, f X+g Y, \ldots, Y_r\right)=f T\left(Y_1, \ldots, X, \ldots, Y_r\right) & \\
> +g T\left(Y_1, \ldots, Y, \ldots, Y_r\right) &
> \end{aligned}
> $$
> for all $X, Y \in \mathcal{X}(M), f, g \in \mathcal{D}(M)$.

A tensor $T$ can be understood as a pointwise object. For a fixed point $p \in M$ and a neighborhood $U$ of $p$, we can define vector fields $E_1, \ldots, E_n \in \mathcal{X}(M^n)$ such that $\{E_i(q)\}$ forms a basis for $T_q M$ at each $q \in U$. This set $\{E_i\}$ is called a moving frame on $U$.

If we have vector fields $Y_1, \ldots, Y_r$ defined on $U$ and expressed in the moving frame as $Y_k = \sum_{i_k} y_{i_k} E_{i_k}$, then by linearity, the action of $T$ on these vector fields is:
$$
T\left(Y_1, \ldots, Y_r\right)=\sum_{i_1, \ldots, i_r} y_{i_1} \ldots y_{i_r} T\left(E_{i_1}, \ldots, E_{i_r}\right)
$$

The functions $T(E_{i_1}, \ldots, E_{i_r}) = T_{i_1 \ldots i_r}$ on $U$ are known as the components of $T$ in the frame $\{E_i\}$.

The expression above implies that the value of $T\left(Y_1, \ldots, Y_r\right)$ at a point $p \in M$ depends only on the values at $p$ of the components of $T$, and the values of $Y_1, \ldots, Y_r$ at $p$. It is in this sense that we say that $T$ is a <u>pointwise object</u>.

> [!example] 
> The curvature tensor
> $$
> R: \mathcal{X}(M) \times \mathcal{X}(M) \times \mathcal{X}(M) \times \mathcal{X}(M) \rightarrow \mathcal{D}(M)
> $$
> is defined by
> $$
> R(X, Y, Z, W)=\left< R(X, Y) Z, W\right>, \quad X, Y, Z, W \in \mathcal{X}(M)
> $$
>
> It is easy to verify that $R$ is a tensor of order 4 , whose components in the frame $\left\{X_i=\frac{\partial}{\partial x_i}\right\}$ associated with the system of coordinates $\left(x_i\right)$ is
> $$
> R\left(X_i, X_j, X_k, X_{\ell}\right)=R_{i j k \ell}
> $$

> [!example] 
> The "metric tensor" $G: \mathcal{X}(M) \times \mathcal{X}(M) \rightarrow \mathcal{D}(M)$ is defined by $G (X, Y)=\langle X, Y\rangle, X, Y \in \mathcal{X}(M)$ .
> 
> $G$ is a tensor of order 2 and its components in the frame $\left\{X_i\right\}$ are the coefficients $g_{i j}$ of the Riemannian metric in the given system of coordinates.

> [!example]
> The Riemannian connection $\nabla$ defined by:
> $$
> \begin{gathered}
> \nabla: \mathcal{X}(M) \times \mathcal{X}(M) \times \mathcal{X}(M) \rightarrow \mathcal{D}(M) \\
> \nabla(X, Y, Z)=\left<\nabla_X Y, Z\right>, \quad X, Y, Z \in \mathcal{X}(M),
> \end{gathered}
> $$
> is not a tensor, because $\nabla$ is not linear with respect to the argument $Y$.

As the Riemannian metric associates to each $X\in \mathcal{X}(M)$ a unique element $\omega\in \mathcal{X}^{*}(M)$ given by
$$
\omega(Y)= \left< X,Y \right> \qquad \forall Y\in \mathcal{X}(M)
$$
Such a correspondence allows us to identify the contravariant tensors with the covariant tensors. So we focus on the convariant tensors.

> [!remark]
> It's convenient to identify the field $X\in \mathcal{X}(M)$ with the tensor $X:\mathcal{X}(M)\to \mathcal{D}(M),Y\mapsto\left< X,Y \right>$.
> 

^0c3420

The following definition is very natural. 

> [!def] covariant differential, covariant derivative of tensor
> Let $T$ be a tensor of order $r$. The **covariant differential** $\nabla T$ of $T$ is a tensor of order $(r+1)$ given by
> $$
> \begin{aligned}
> \nabla T\left(Y_1, \ldots, Y_r, Z\right)=Z( & \left.T\left(Y_1, \ldots, Y_r\right)\right)-T\left(\nabla_Z Y_1, \ldots, Y_r\right) \\
> & -\cdots-T\left(Y_1, \ldots, Y_{r-1}, \nabla_Z Y_r\right) .
> \end{aligned}
> $$
> For each $Z \in \mathcal{X}(M)$, the **covariant derivative** $\nabla_Z T$ of $T$ relative to $Z$ is a tensor of order $r$ given by
> $$
> \nabla_Z T\left(Y_1, \ldots, Y_r\right)=\nabla T\left(Y_1, \ldots, Y_r, Z\right) .
> $$

> [!example] 
> The covariant differential of the metric tensor is the zero tensor. Indeed, for all $X, Y, Z \in \mathcal{X}(M)$,
> $$
> \nabla G(X, Y, Z)=Z\langle X, Y\rangle-\left\langle\nabla_Z X, Y\right\rangle-\left\langle X, \nabla_Z Y\right\rangle=0
> $$
> because $\nabla$ is the Riemannian connection.

> [!example] 
> Let $X \in \mathcal{X}(M)$. Identify $X$ with the tensor that associates to the vector field $Y \in \mathcal{X}(M)$ the function $\langle X, Y\rangle$ (See [[#^0c3420]] ). The covariant derivative of the tensor $X$ relative to the vector field $Z \in \mathcal{X}(M)$ is such that, for all $Y \in \mathcal{X}(M)$,
> $$
> \begin{aligned}
> \nabla_Z X(Y) & =\nabla X(Y, Z)=Z(X(Y))-X\left(\nabla_Z Y\right) \\
> & =Z(X, Y)-\left\langle X, \nabla_Z Y\right\rangle=\left\langle\nabla_Z X, Y\right\rangle
> \end{aligned}
> $$
> We conclude thus that the tensor $\nabla_Z X$ can be identified with the vector field $\nabla_Z X$. This justifies the notation adopted, and shows that **the covariant derivative of tensors is a generalization of the covariant derivative of vector fields**.

## Variations of energy

The foundamental point is the calculation of the formula for the second variation of the energy of a geodesic. 

<u>The theorem of Bonnet-Myers</u> states that a complete manifold whose curvature is positive and does not approach zero is compact, and its diameter can be estimated in terms of the bounds of the curvature.

A extension of a theorem of Synge asserts the simple connectivity of a compact, orientable, manifold of even dimension whose curvature is positive.

This chapter discusses how curvature influences the topology of Riemannian manifolds, building on Hadamard's theorem. The key result is the Sphere Theorem, with implications for ongoing research.

> [!def] Variation of a curve
> Let $c:[0, a] \rightarrow M$ be a piecewise differentiable curve in a manifold $M$. A variation of $c$ is a continuous mapping $f:(-\varepsilon, \varepsilon) \times[0, a] \rightarrow M$ such that:
> 1. $f(0, t)=c(t), t \in[0, a]$,
> 2. there exists a subdivision of $[0, a]$ by points $0=t_o<t_1<\cdots<t_{k+1}=a$, such that the restriction of $f$ to each $(-\varepsilon, \varepsilon) \times\left[t_i, t_{i+1}\right], i=0,1, \ldots, k$, is differentiable.
>
> A variation is said to be proper if
> $$
> f(s, 0)=c(0) \quad \text { and } \quad f(s, a)=c(a)
> $$
> for all $s \in(-\varepsilon, \varepsilon)$. If $f$ is differentiable, the variation is said to be differentiable.




