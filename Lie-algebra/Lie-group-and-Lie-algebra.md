See Loring W. tu .

> [!def] Definition 15.1. Lie group
> A Lie group is a $C^{\infty}$ manifold $G$ which is also a group such that the two group operations, multiplication
> $$
> \mu: G \times G \rightarrow G, \quad \mu(a, b)=a b
> $$
> and inverse
> $$
> \iota: G \rightarrow G, \quad \iota(a)=a^{-1}
> $$
> are $C^{\infty}$.

The **rank of a smooth map** $f:M\to N$ at $p\in M$ is the rank of its differential at $p$.
> [!def] Critical point and regular point
> A point $p$ in $N$ is a **critical point** of $f$ if the differential
> $$
> f_{*, p}: T_p N \rightarrow T_{f(p)} M
> $$
> fails to be surjective. It is a **regular point** of $f$ if the differential $f_{*, p}$ is surjective. 
> 
> A point in $M$ is a critical value if it is the image of a critical point; otherwise it is a regular value.


> [!def] Level Set
> A **level set** of a map $f: N \rightarrow M$ is the subset $f^{-1}(\{c\}) = \{p \in N \mid f(p)=c\}$ for some $c \in M$. The usual notation for a level set is $f^{-1}(c)$, rather than the more correct $f^{-1}(\{c\})$. If $f: N \rightarrow \mathbb{R}^m$, then $Z(f) := f^{-1}(0)$ is the **zero set** of $f$. The inverse image $f^{-1}(c)$ of a **regular value** $c$ is called a **regular level set**.

> [!def] Regular submanifold
> A subset $S$ of a manifold $N$ of dimension $n$ is a **regular submanifold** of dimension $k$ if for every $p \in S$ there is a coordinate neighborhood $(U, \phi) = (U, x^1, \ldots, x^n)$ of $p$ in the atlas of $N$ such that $U \cap S$ is defined by the vanishing of $n-k$ of the coordinate functions. By renumbering the coordinates, we may assume these $n-k$ coordinate functions are $x^{k+1}, \ldots, x^n$.

> [!thm] Regular level set theorem
> Let $f: N \rightarrow M$ be a $C^{\infty}$ map of manifolds, with $\operatorname{dim} N=n$ and $\operatorname{dim} M=m$. Then a nonempty regular level set $f^{-1}(c)$ is a regular submanifold of $N$ of dimension equal to $n-m$.

> [!thm] Constant-rank level set theorem
> Let $f: N \rightarrow M$ be a $C^{\infty}$ map of manifolds and $c \in M$. If $f$ has constant rank $k$ in a neighborhood of the level set $f^{-1}(c)$ in $N$, then $f^{-1}(c)$ is a regular submanifold of $N$ of codimension $k$.


We can envolve all the concepts above to prove that $O(n)$ is a regular submanifold of $\mathrm{GL}(n,\mathbb{R})$ with dimension $(n^{2}-n)/2$.

> [!def] Immersion and submersion
> A smooth map $f: N \rightarrow M$ of manifolds is an **immersion** if the differential $f_{*, p}: T_p N \rightarrow T_{f(p)} M$ is injective for every $p$ in $N$. It is a **submersion** if $f_{*, p}$ is surjective for every $p$ in $N$.

> [!def] Embedding
> A $C^{\infty}$ map $f: N \rightarrow M$ is called an **embedding** if (i) it is a one-to-one immersion and (ii) the image $f(N)$ with the subspace topology is homeomorphic to $N$ under $f$. The phrase "one-to-one" in this definition is redundant since a homeomorphism is necessarily one-to-one.

> [!def] Immersed Submanifold
> A submanifold is defined as the image of any one-to-one immersion with the topology and differentiable structure inherited from $f$. Such a set is sometimes called an immersed submanifold of $M$.

> [!def] Lie subgroup
> A **Lie subgroup** of a Lie group $G$ is (i) an abstract subgroup $H$ which is (ii) an immersed submanifold via the inclusion map so that (iii) the group operations on $H$ are $C^{\infty}$.

Unlike the exponential of real numbers, when $A$ and $B$ are $n \times n$ matrices with $n>1$, it is not necessarily true that

$$
e^A e^B=e^{A+B}
$$

> [!exr] Exponentials of commuting matrices
> Prove that if $A$ and $B$ are commuting $n \times n$ matrices, then
>
> $$
> e^A e^B=e^{A+B}
> $$

Let det: $\mathrm{GL}(n, \mathbb{R}) \rightarrow \mathbb{R}$ be the determinant map. The tangent space at $I$ of $\mathrm{GL}(n, \mathbb{R})$ is the vector space $\mathbb{R}^{n \times n}$ and the tangent space to $\mathbb{R}$ at 1 is $\mathbb{R}$. So

$$
\operatorname{det}_{*, I}: \mathbb{R}^{n \times n} \rightarrow \mathbb{R}
$$


> [!proposition] 
> For any $X \in \mathbb{R}^{n \times n}, \operatorname{det}_{*, I}(X)=\operatorname{tr} X$.


`\begin{proof}`
We use curves at $I$ to compute the differential (Proposition 8.17). As a curve $c(t)$ with $c(0)=I$ and $c^{\prime}(0)=X$, we choose the matrix exponential $c(t)=e^{t X}$. Then
$$
\begin{aligned}
\operatorname{det}_{*, I}(X) & =\left.\frac{d}{d t} \operatorname{det}\left(e^{t X}\right)\right|_{t=0}=\left.\frac{d}{d t} e^{t \operatorname{tr} X}\right|_{t=0} \\
& =\left.(\operatorname{tr} X) e^{t \operatorname{tr} X}\right|_{t=0}=\operatorname{tr} X
\end{aligned}
$$
`\end{proof}`

Let $X$ be a vector field on a Lie group $G$. We do not assume $X$ to be $C^{\infty}$. For any $g \in G$, because left multiplication $\ell_g: G \rightarrow G$ is a diffeomorphism, the pushforward $\ell_{g *} X$ is a well-defined vector field on $G$. We say that the vector field $X$ is left-invariant if
$$
\ell_{g *} X=X
$$
for every $g \in G$; this means for any $h \in G$,
$$
\ell_{g *}\left(X_h\right)=X_{g h} .
$$

In other words, a vector field $X$ is left-invariant if and only if it is $\ell_g$-related to itself for all $g \in G$.

Clearly, a left-invariant vector field $X$ is completely determined by its value $X_e$ at the identity, since
$$
X_g=\ell_{g *}\left(X_e\right)
$$

Conversely, given a tangent vector $X_e \in T_e(G)$ we can define a vector field $X$ on $G$ by (16.2). So defined, the vector field $X$ is left-invariant, since
$$
\begin{aligned}
\ell_{g *}\left(X_h\right) & =\ell_{g *} \ell_{h *} X_e \\
& =\left(\ell_g \circ \ell_h\right)_* X_e \quad \text { (by the chain rule) } \\
& =\left(\ell_{g h}\right)_*\left(X_e\right) \\
& =X_{g h}
\end{aligned}
$$

Thus, there is a one-to-one correspondence
$$
\begin{aligned}
T_e(G) & \leftrightarrow L(G):=\{\text { left-invariant vector fields on } G\}, \\
X_e & \leftrightarrow X, \quad \text { with } X_g=\ell_{g *}\left(X_e\right) .
\end{aligned}
$$

If $X_g=\ell_{g *}\left(X_e\right)$ for all $g \in G$, we call $X$ the left-invariant vector field on $G$ generated by $X_e$. The set $L(G)$ of left-invariant vector fields on $G$ is obviously a vector space and the correspondence above is an isomorphism of vector spaces.

> [!example] Example 16.3 (Left-invariant vector fields on $\mathbb{R}$ )
> On the Lie group $\mathbb{R}$, the group operation is addition and the identity element is 0 . So "left multiplication" $\ell_g$ is actually addition:
>
> $$
> \ell_g(x)=g+x .
> $$
>
> Let us compute $\ell_{g *}\left(d /\left.d x\right|_0\right)$. Since $\ell_{g *}\left(d /\left.d x\right|_0\right)$ is a tangent vector at $g$, it is a scalar multiple of $d /\left.d x\right|_g$ :
>
> $$
> \ell_{g *}\left(\left.\frac{d}{d x}\right|_0\right)=\left.a \frac{d}{d x}\right|_g
> $$
>
> To evaluate $a$, apply both sides of (16.4) to $x$ :
>
> $$
> a=\left.a \frac{d}{d x}\right|_g x=\ell_{g *}\left(\left.\frac{d}{d x}\right|_0\right) x=\left.\frac{d}{d x}\right|_0 x \circ \ell_g=\left.\frac{d}{d x}\right|_0 g+x=1 .
> $$
>
> Thus,
>
> $$
> \ell_{g *}\left(\left.\frac{d}{d x}\right|_0\right)=\left.\frac{d}{d x}\right|_g
> $$
>
> This shows that $d / d x$ is a left-invariant vector field on $\mathbb{R}$. Therefore, the left-invariant vector fields on $\mathbb{R}$ are constant multiples of $d / d x$.

> [!example] Example 16.4 (Left-invariant vector fields on $\mathrm{GL}(n, \mathbb{R})$ )
> Since $\mathrm{GL}(n, \mathbb{R})$ is an open subset of $\mathbb{R}^{n \times n}$, at any $g \in \mathrm{GL}(n, \mathbb{R})$ there is a canonical identification of the tangent space $T_g(\operatorname{GL}(n, \mathbb{R}))$ with $\mathbb{R}^{n \times n}$ :
>
> $$
> \left.\sum a_{i j} \frac{\partial}{\partial x_{i j}}\right|_g \leftrightarrow\left[a_{i j}\right] .
> $$
>
> Let $B=\sum b_{i j} \partial /\left.\partial x_{i j}\right|_I \in T_I(\mathrm{GL}(n, \mathbb{R}))$ and let $\tilde{B}$ be the left-invariant vector field on $\operatorname{GL}(n, \mathbb{R})$ generated by $B$. By Example 8.18,
>
> $$
> \tilde{B}_g=\left(\ell_g\right)_* B \leftrightarrow g B
> $$
>
> under the identification (16.5). In terms of the standard basis $\partial /\left.\partial x_{i j}\right|_g$,
>
> $$
> \tilde{B}_g=\left.\sum_{i, j}(g B)_{i j} \frac{\partial}{\partial x_{i j}}\right|_g=\left.\sum_{i, j}\left(\sum_k g_{i k} b_{k j}\right) \frac{\partial}{\partial x_{i j}}\right|_g .
> $$


> [!proposition] Proposition 16.5. 
> Any left-invariant vector field $X$ on a Lie group $G$ is $C^{\infty}$.

It follows from this proposition that the vector space $L(G)$ of left-invariant vector fields on $G$ is a subspace of the vector space $\mathfrak{X}(G)$ of all $C^{\infty}$ vector fields on $G$.

> [!def] Lie bracket
> Given two smooth vector fields $X$ and $Y$ on $U$ and $p \in U$, we define their **Lie bracket** $[X, Y]$ at $p$ to be
> $$
> [X, Y]_p f=\left(X_p Y-Y_p X\right) f
> $$
> for any germ $f$ of a $C^{\infty}$ function at $p$.

> [!remark]
> Lie bracket is firstly defined on vector fields, then induces the definition on points.

^cad013


> [!proposition] Proposition 16.6.
> If $X$ and $Y$ are left-invariant vector fields on $G$, then so is $[X, Y]$.


A Lie subalgebra of a Lie algebra $\mathfrak{g}$ is a vector subspace $\mathfrak{h} \subset \mathfrak{g}$ that is closed under the bracket $[\cdot, \cdot]$. By Proposition 16.6, the space $L(G)$ of left-invariant vector fields on a Lie group $G$ is closed under the Lie bracket $[\cdot, \cdot]$ and thus is a Lie subalgebra of the Lie algebra $\mathfrak{X}(G)$, the Lie algebra of all $C^{\infty}$ vector fields on $G$.

Since the tangent space $T_e(G)$ is isomorphic to $L(G)$ as a vector space, it inherits a Lie bracket from $L(G)$. For $A \in T_e G$, denote by $\tilde{A}$ the left-invariant vector field generated by $A$:
$$
\tilde{A}_g=\ell_{g *}(A) \quad \text { for any } g \in G
$$

If $A, B \in T_e G$, then their Lie bracket $[A, B] \in T_e G$ is defined to be
$$
[A, B]=[\tilde{A}, \tilde{B}]_e
$$

> [!proposition] Proposition 16.7
> If $A, B \in T_e G$ and $\tilde{A}, \tilde{B}$ are the left-invariant vector fields they generate, then
> $$\begin{align*} [\tilde{A}, \tilde{B}] &= [A, B]^{\sim} \end{align*}$$


`\begin{proof}`
By Proposition 16.6, $[\tilde{A}, \tilde{B}]$ is a left-invariant vector field. Thus both $[\tilde{A}, \tilde{B}]$ and $[A, B]^{\sim}$ are left-invariant vector fields whose value at $e$ is $[A, B]$. Since a left-invariant vector field is determined by its value at $e$, the two vector fields are equal.
`\end{proof}`

With the Lie bracket $[\cdot, \cdot]$, the tangent space $T_e(G)$ becomes a Lie algebra, called the Lie algebra of the Lie group $G$. As a Lie algebra, $T_e(G)$ is usually denoted by $\mathfrak{g}$.


The tangent space at the identity $I$ of the general linear group $\mathrm{GL}(n, \mathbb{R})$ is identified with $\mathbb{R}^{n \times n}$, the vector space of all $n \times n$ real matrices. A tangent vector in $T_I(\mathrm{GL}(n, \mathbb{R}))$ is identified with a matrix $A \in \mathbb{R}^{n \times n}$ as follows:

$$
\left.\sum a_{i j} \frac{\partial}{\partial x_{i j}}\right|_I \longleftrightarrow\left[a_{i j}\right]
$$

The Lie algebra structure on the tangent space $T_I \mathrm{GL}(n, \mathbb{R})$ is denoted $\mathfrak{g l}(n, \mathbb{R})$. If $\tilde{A}$ is the left-invariant vector field on $\operatorname{GL}(n, \mathbb{R})$ generated by $A$, then the Lie bracket on $\mathfrak{g l}(n, \mathbb{R})$ is given by $[A, B]=[\tilde{A}, \tilde{B}]_I$, derived from the Lie bracket of left-invariant vector fields. The following proposition relates this Lie bracket to matrix operations.

> [!proposition] Proposition 16.8
> Let
> $$
> A=\left.\sum a_{i j} \frac{\partial}{\partial x_{i j}}\right|_I, \quad B=\left.\sum b_{i j} \frac{\partial}{\partial x_{i j}}\right|_I \in T_I(\operatorname{GL}(n, \mathbb{R})) .
> $$
> If
> $$
> [A, B]=[\tilde{A}, \tilde{B}]_I=\left.\sum c_{i j} \frac{\partial}{\partial x_{i j}}\right|_I
> $$
> then
> $$
> c_{i j}=\sum_k a_{i k} b_{k j}-b_{i k} a_{k j}
> $$
> Thus, if derivations are identified with matrices via (16.6), then
> $$
> [A, B]=A B-B A
> $$

`\begin{proof}`
Apply the idea in [[#^cad013]]. 


`\end{proof}`

By the correspondence between *left-invariant vector fields on a Lie group* and *tangent vectors at the identity of the Lie group*, one can <u>push forward</u> a left-invariant vector field under a $C^{\infty}$ map of Lie groups.^[The push forward does not necessarily exist for non-diffeomorphism $F:N\to M$.] We show this now.

Recall that every left-invariant vector field on a Lie group $H$ is of the form $\widetilde{A}$ for some $A\in T_{e}H$ with $\widetilde{A}_{h}=(\ell_{h})_{*}A$.

> [!def] push forward 
> Let $F: H \rightarrow G$ be a $C^{\infty}$ map of Lie groups. Define $F_*: L(H) \rightarrow L(G)$ by
> $$
> F_*(\tilde{A})=(F_* A)^{\sim}
> $$
> for all $A \in T_e H$.

> [!def] Lie group homomorphism
> A map $F: H \rightarrow G$ between two Lie groups $H$ and $G$ is a **Lie group homomorphism** if it is a $C^{\infty}$ map and a group homomorphism.

The group homomorphism condition means that for all $h, x \in H$,

$$
F(h x)=F(h) F(x) .
$$


This may be rewritten in functional notation as

$$
F \circ \ell_h=\ell_{F(h)} \circ F \quad \text { for all } h \in H .
$$

> [!proposition] Proposition 16.11
> If $F: H \rightarrow G$ is a Lie group homomorphism and $A \in T_e H$ is a tangent vector of $H$ at the identity e of $H$, then the left-invariant vector field $F_* \tilde{A}$ on $G$ is $F$-related to the left-invariant vector field $\tilde{A}$ on $H$.

`\begin{proof}`
For $h \in H$,
$$
\begin{aligned}
F_*\left(\tilde{A}_h\right) & =F_*\left(\ell_{h *} A\right) & & (\text { definition of } \tilde{A}) \\
& =\left(F \circ \ell_h\right)_* A & & (\text { chain rule }) \\
& =\left(\ell_{F(h)} \circ F\right)_* A & & (F \text { is a Lie group homomorphism }) \\
& =\ell_{F(h) *} F_* A & & (\text { chain rule again }) \\
& =\left(\left(F_* A\right)^r\right)_{F(h)} & & (\text { definition of }(\cdot)^\sim ) \\
& =\left(F_* \tilde{A}\right)_{F(h)} & &
\end{aligned}
$$
`\end{proof}`

> [!proposition] Proposition 16.12. 
> If $F: H \rightarrow G$ is a Lie group homomorphism, then its differential at the identity,
> $$
> F_*=F_{*, e}: T_e H \rightarrow T_e G
> $$
> is a Lie algebra homomorphism, i.e., a linear map such that for all $A, B \in T_e H$,
> $$
> F_*[A, B]=\left[F_* A, F_* B\right]
> $$

By the discussion above, Lie algebra structures on $\mathfrak{s l}(n, \mathbb{R}), \mathfrak{o}(n)$, and $\mathfrak{u}(n)$ are given by

$$
[A, B]=A B-B A, \quad \text { as on } \mathfrak{g} \mathfrak{l}(n, \mathbb{R})
$$

> [!remark] Remark 16.13
> A fundamental theorem in Lie group theory asserts the existence of a one-to-one correspondence between the connected Lie subgroups of a Lie group $G$ and the Lie subalgebras of its Lie algebra $\mathfrak{g}$ [19, Theorem 3.19, Corollary (a), p. 95]. For the torus $\mathbb{R}^2 / \mathbb{Z}^2$, the Lie algebra $\mathfrak{g}$ is $\mathbb{R}^2$ and the one-dimensional Lie subalgebras are all the lines through the origin. According to the theorem, the onedimensional connected Lie subgroups of the torus are the images of all the lines through the origin. It is because of this theorem that a Lie subgroup is defined to be an immersed submanifold. In the example of the torus, the one-dimensional embedded Lie subgroups correspond to only the lines with rational slope through the origin in $\mathbb{R}^2$, not to all one-dimensional subalgebras of the Lie algebra.




