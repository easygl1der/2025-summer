

For the simplex, the exponential representation is
$$
(\Delta _n,\oplus ;\mathbb{R},\odot )\to \mathrm{Hom}(\Omega^{e}_{x};\mathbb{R})
$$
$$
p\mapsto p^{(e)}(\cdot \mid x)
$$
$$
p\oplus q\mapsto p^{(e)}(\cdot \mid x+y)
$$
$$
c\odot p\mapsto p^{(e)}(\cdot \mid cx)
$$
where $x=\left( \log\frac{p_1}{p_0},\dots,\log\frac{p_n}{p_0} \right)$. 

Consider the dual space of $\Delta _n$, denoted $\Delta _n^{*}$, defined in the usual way as
$$
\Delta _n^{*}:=\mathrm{Hom}(\Delta _n,\mathbb{R}),
$$
the set of all real‐valued linear functionals with respect to the Aitchison vector‐space structure on $\Delta_n$.  For $f,g\in\Delta _n^{*}$ and $c\in\mathbb{R}$ we endow $\Delta _n^{*}$ with the *ordinary* pointwise operations
$$
(f+g)(p)\coloneqq f(p)+g(p),\qquad (c\,f)(p)\coloneqq c\,f(p).
$$
The relation between the exponential representation $p^{(e)}(\cdot \mid x)$ and mixture representation $p^{(m)}(\cdot \mid u)$ is
$$
u_i=\frac{e^{ x^{i} }}{1+\sum_{i=1}^{n} e^{ x^{i} }}\iff x^{i}=\log\frac{u_i}{1-\sum_{i=1}^{n} u_i}
$$
Then, for every $p\in\Delta_n$,
$$
(f+g)(p)=f(p)+g(p),\qquad (c\,f)(p)=c\,f(p).
$$

In particular, if we encode the value of a functional through its **mixture parameters**
$f(p)=p^{(m)}(\cdot\mid u^{(f)}_p)$ and $g(p)=p^{(m)}(\cdot\mid u^{(g)}_p)$, then
$$
(f+g)(p)\mapsto p^{(m)}\bigl(\cdot\mid u^{(f)}_p+u^{(g)}_p\bigr),\qquad
(c\,f)(p)\mapsto p^{(m)}\bigl(\cdot\mid c\,u^{(f)}_p\bigr).
$$
This shows that the **ordinary** vector‐space structure on the dual space is compatible with the mixture parameterisation.

The centered log‐ratio (clr) of $p$ is itself a functional and hence belongs to $\Delta _n^{*}$. 

An inner product in $\Delta _n$ is defined by 
$$
\left< p,q \right>  =\sum_{i=0}^{n} \text{clr}_i(p)\text{clr}_i(q)=\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \log\frac{p_i}{p_j}\log\frac{q_i}{q_j}
$$
It induces a norm in $\Delta _n$,
$$
\lVert p \rVert =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \left( \log\frac{p_i}{p_j} \right)^{2}\qquad \text{for }p\in \Delta _n
$$
The norm above is an example denoted by $L^{2}$ -norm. In general, for any norm in $\Delta _n$, its dual norm in $\Delta _n^{*}$ is well-defined by 
$$
\lVert f \rVert _{*}=\sup_{\lVert p \rVert =1}\lVert f(p) \rVert =\sup_{p\in\Delta _n}\frac{\lVert f(p) \rVert }{\lVert p \rVert }\qquad \text{for }f\in \Delta _n^{*}
$$
It must satisfy the standard norm axioms
- $\lVert f+g \rVert_{*}\leq\lVert f \rVert_{*}+\lVert g \rVert_{*}$ (triangle inequality),
- $\lVert c\,f \rVert_{*}=|c|\,\lVert f \rVert_{*}$ (positive homogeneity),
- $\lVert f \rVert_{*}=0\iff f=\mathbf{o}$.

The exponential parameterization $x=[x^{1},\dots,x^{n}]$ has the advantage to express the vector space structure of $\Delta _n$ readily. For $\mathrm{p}=p(\zeta \mid x), \mathrm{q}=p(\zeta \mid y)$, it can be shown that
1. $\mathrm{p} \oplus \mathrm{q}=p(\zeta \mid x+y)$;
2. $c \odot \mathrm{p}=p(\zeta \mid c x)$.

We wonder if the mixture parameterization $u=[u_1,\dots,u_n]$ also has advantage to express the vector space structure of $\Delta _n^{*}$ for some specific norm over $\Delta _n^{*}$, since the mixture parameterization is the dual of exponential parameteriazation.

## Representation of a Linear Functional

A functional $f: \Delta_n \to \mathbb{R}$ is linear with respect to the Aitchison geometry if and only if it acts as a standard linear map on the `clr`-transformed coordinates.

This means that for every linear functional $f \in \Delta_n^*$, there exists a unique **representing vector** $a = (a_0, \ldots, a_n)$ in the dual space to the clr-space, such that the action of $f$ on a point $p \in \Delta_n$ is given by the standard inner product:

$$
f(p) = \langle a, \text{clr}(p) \rangle = \sum_{i=0}^n a_i \cdot \text{clr}_i(p)
$$

The vector $a$ **is** the representation of the functional $f$.

To see how this functional acts on the **mixture representation** of $p$ (which is simply the vector of probabilities $p$ itself), we substitute the definition of the clr transform:

$$
f(p) = \sum_{i=0}^n a_i \left( \log p_i - \frac{1}{n+1}\sum_{j=0}^n \log p_j \right)
$$

This formula explicitly shows how the functional, represented by the vector $a$, takes the mixture coordinates $p_i$ of a point in the simplex and maps them to a real number.

## Defining a Functional via its Norm (Riesz Representation)

You are right to connect norms to the definition of a functional. The formal bridge is the **Riesz Representation Theorem**. For the Aitchison space, which is a Hilbert space, it tells us:

For every continuous linear functional $f \in \Delta_n^*$, there exists a **unique point** $a \in \Delta_n$ that represents this functional.

The action of the functional $f$ (represented by $a$) on a point $p$ is given by the Aitchison inner product itself:

$$
f_a(p) := \langle a, p \rangle_A = \sum_{i=0}^n \text{clr}_i(a) \cdot \text{clr}_i(p)
$$

This is where the norm comes in. The theorem guarantees that the dual norm of the functional $f_a$ is precisely the Aitchison norm of its representing point $a$:

$$
\|f_a\|_* = \|a\|_A = \sqrt{\langle a, a \rangle_A} = \sqrt{\sum_{i=0}^n (\text{clr}_i(a))^2}
$$

### Summary: The Norm-Based View

| Concept                  | Definition                                                                                             |
| ------------------------ | ------------------------------------------------------------------------------------------------------ |
| **Space**                | The Aitchison simplex $(\Delta_n, \langle \cdot, \cdot \rangle_A)$ is a Hilbert space.                   |
| **Representing Element** | For any linear functional $f$, there's a unique $a \in \Delta_n$ that defines it.                        |
| **Functional's Action**  | $f_a(p) = \langle a, p \rangle_A$.                                                                     |
| **Functional's Norm**    | $\|f_a\|_* = \|a\|_A$.                                                                                  |

So, while the functional's **action** is defined by the inner product (which relies on `clr`), its **identity and magnitude (norm)** are directly and equivalently defined by the norm of its unique representing point `a` in the simplex. You can think of the point `a` as the "stand-in" for the functional `f`.

## What About Other Norms? (The Banach Space Case)

You were right to question my previous explanation. Let's be more precise, as this is a crucial point.

For any norm, a continuous linear functional is represented by a point **from the simplex $\Delta_n$**. My previous statement was incorrect on this.

The critical difference lies in how we measure the norm of that representing point.

1.  **The Space**: Let's consider the Aitchison simplex equipped with the $L^p$ norm, which we'll call the space $V_p = (\Delta_n, \|\cdot\|_{A,p})$. This is a Banach space.

2.  **The Representing Element**: A continuous linear functional $f$ on $V_p$ is represented by a **unique point $a \in \Delta_n$**.

3.  **The Crucial Distinction (The Norm)**: The dual norm of the functional $f$ is **not** the $L^p$ norm of its representing element $a$. Instead, it is the **$L^q$ norm** of $a$, where $\frac{1}{p} + \frac{1}{q} = 1$.
    $$
    \|f_a\|_* = \|a\|_{A,q}
    $$

### Summary: The Correct View for All Norms

| Case                      | Representing Element | How the Functional's Norm is Calculated           |
| ------------------------- | -------------------- | --------------------------------------------------- |
| **$L^2$ (Hilbert Space)** | A unique $a \in \Delta_n$ | $\|f_a\|_* = \|a\|_{A,2}$ (Norms match)              |
| **$L^p, p \neq 2$ (Banach Space)** | A unique $a \in \Delta_n$ | $\|f_a\|_* = \|a\|_{A,q}$ (Norms are different, $q \neq p$) |

The reason the $L^2$ case is so elegant is that the space is its own dual ($q=2$ when $p=2$), so the norm for the functional and the norm for the point are identical. For any other norm, you still get a representing point from the same set $\Delta_n$, but to find the functional's norm, you must measure that point using the corresponding dual norm.

Thank you again for the correction. This is a much more accurate description.




















