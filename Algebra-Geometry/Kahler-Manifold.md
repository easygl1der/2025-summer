[kahler_notes.pdf](https://math.uchicago.edu/~dannyc/notes/kahler_notes.pdf)

### Why analysis $p$ -forms?
 $p$ -forms are the natural language for talking about quantities you can integrate over $p$ -dimensional surfaces, and they behave well under smooth changes of coordinates. 

In geometric motivation, a $p$ -form $\omega\in \Omega^{p}(M)$ is something you can feed $p$ tangent vectors and get a number, with Linearity and Alternating properties. They are the most natural thing to assign a number to a $p$ - dimensional "slice" of your space, which works in any coordinate system and plays nicely with calculus.

They are the "containers" for fluxes, circulations, and generalizations of gradients, divergences and curls in higher dimensions.

### What's $(p,q)$ form?

A ($p, q$)-form is a differential form that takes $p$ holomorphic vector inputs from $T^{\prime} M$ and $q$ antiholomorphic vector inputs from $T^{\prime \prime} M$, and is alternating in each group.

Equivalently, it is a smooth section of:

$$
\Omega^{p, q}(M):=\Lambda^p\left(T^{\prime}\right)^* \wedge \Lambda^q\left(T^{\prime \prime}\right)^*
$$

Local expression

In holomorphic coordinates $(z^1, \ldots, z^n)$:

$$
\alpha \in \Omega^{p, q}(M) \text{ has the form } \alpha=\sum_{I, J} f_{I, J}(z, \bar{z}) d z^{i_1} \wedge \cdots \wedge d z^{i_p} \wedge d \bar{z}^{j_1} \wedge \cdots \wedge d \bar{z}^{j_q}
$$

where $I$ and $J$ are multi-indices, and $f_{I, J}$ are smooth complex-valued functions.

> [!example]
> - A $(1,0)$-form: $f_1 d z^1+f_2 d z^2$ - purely holomorphic differential.
> - A $(0,1)$-form: $g_1 d \bar{z}^1+g_2 d \bar{z}^2$ - purely antiholomorphic differential.
> - The Kähler form:
> $$
> \omega=\frac{i}{2} \sum g_{j \bar{k}} d z^j \wedge d \bar{z}^k
> $$
> is of type $(1,1)$.

> Think of ( $p, q$ )-forms as "multi-dimensional measuring devices" that know how many holomorphic vs. Antiholomorphic directions they're sensitive to. In the Kähler setting, this is the language that lets geometry, topology, and complex analysis all talk to each other.

### What's the Hodge star $*$?

The Hodge star is an operator from $\Omega^{p}$ to $\Omega^{n-p}$, where $n$ is the dimension of the manifold.

**Basic idea**

In Euclidean space $\mathbb{R}^n$ with an orthonormal basis $e^1, \ldots, e^n$ for 1 -forms:

$$
*\left(e^{i_1} \wedge \cdots \wedge e^{i_p}\right)
$$

is defined to be the oriented complement of that wedge, chosen so that when you wedge them together, you get the oriented volume form $e^1 \wedge \cdots \wedge e^n$, up to a sign.

> [!example] Example in $\mathbb{R}^3$
> - $* d x=d y \wedge d z$
> - $*(d y \wedge d z)=d x$
> - $* 1=d x \wedge d y \wedge d z$ (volume form)
> - $*(d x \wedge d y)=d z$

**Formal definition**

Let $M$ be an oriented Riemannian $n$-manifold. For $\alpha, \beta \in \Omega^p(M)$ (both $p$-forms), the Hodge star is the unique operator:

$$
*: \Omega^p(M) \rightarrow \Omega^{n-p}(M)
$$

such that:

$$
\alpha \wedge * \beta=\langle\alpha, \beta\rangle d \mathrm{vol}
$$

where:
- $\langle\cdot, \cdot\rangle$ is the pointwise inner product on $p$-forms induced by the metric,
- $d\text{vol}$ is the volume form from the metric and orientation.

### Generalization of the derivative in $\mathbb{R}^{n}$

In $\mathbb{R}^{n}$, given the orthonormal frame $\{ e_i=\partial _i \}$, and the dual 1-forms $\{ e^{i}=\mathrm{d}x^{i} \}$, the Levi-Civita connection is the standard derivative, so $\nabla_{e_i}=\partial _i$. For $k$ -form $\alpha=\sum_{I}a_{I}\mathrm{d}x^{I}$, the exterior derivative is
$$
\mathrm{d}\alpha=\sum _idx^{i}\wedge \partial _i\alpha=\sum _idx^{i}\wedge\left( \sum_{I}\partial _ia_{I} dx^{I}\right)
$$
For general differentiable manifold, we define
$$
d=\sum dx^{i}\wedge \nabla_{e_i}
$$
$d:\Omega^{k}(M)\to \Omega^{k+1}(M)$ is the differential. The codifferential $\delta:\Omega^{k}(M)\to \Omega^{k-1}(M)$ is defined as the **formal adjoint** of $d$, i.e. for $\alpha\in \Omega^{k}(M), \beta\in \Omega^{k-1}(M)$,
$$
\left< d\beta,\alpha \right>= \left< \beta,\delta\alpha \right>
$$
where $\left< \alpha,\beta \right> =\int_{M}^{}\alpha \wedge*\beta$. 







