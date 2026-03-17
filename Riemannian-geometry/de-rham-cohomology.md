See loring W. tu .

![[de-rham-cohomology-2025073100.png]]
![[1-de-rham-cohomology-2025073100.png]]
![[2-de-rham-cohomology-2025073100.png]]

The de Rham cohomology $H^{*}(M)$ is an anticommutative graded ring, with wedge as the multiplication; anticommutative means :
$$
a\cdot b=(-1)^{k\ell}b\cdot a
$$
where $a\in A^{k}, b\in A^{\ell}$ for the graded ring $A=\oplus_{k=0}^{\infty}A^{k}$; in graded ring the ring multiplication sends $A^{k}\times A^{\ell}$ to $A^{k\times \ell}$.

Suppose $F:N\to M$ is a $C^{\infty}$ mapping of manifolds; because $F^{*}(\omega \wedge \tau)=F^{*}\omega \wedge F^{*}\tau$ for differential forms $\omega$ and $\tau$ on $M$, the pullback map $F^{*}:H^{*}(M)\to H^{*}(N)$ is a ring homomorphism. If $F$ is diffeomorphism, then $F^{*}$ is isomorphism.

To sum up, de Rham cohomology gives a contravariant functor from the category of $C^{\infty}$ manifolds to the category of anticommutative graded rings. In this way the de Rham cohomology becomes a powerful diffeomorphism invariant of $C^{\infty}$ manifolds.

![[de-rham-cohomology-2025073112.png]]


![[1-de-rham-cohomology-2025073112.png]]
![[2-de-rham-cohomology-2025073112.png]]


### Deformation Retractions

Let $r:M\to S$, where $S$ is submanifold of $M$. Then $r$ is called a **retraction** if $\left.r\right|_{S}=id_{S}$. We call $S$ a retract of $M$.

A **deformation retraction** from $M$ to $S$ is a map $F:M\times \mathbb{R}\to M$, setting $F(x,t)=f_{t}(x)$, for $f_{t}:M\to M$, it satisfies
1. $f_0=id_{M}$;
2. $f_1$ is retraction from $M$ to $S$;
3. For every $t$, $f_{t}:M\to M$ leaves $S$ fixed pointwisely.

We call $S$ a deformation retract of $M$.

> There is a deformation retract from $\mathbb{R}^{2}-\{ 0 \}$ to $S^{1}$.

![[de-rham-cohomology-2025073114.png]]

### Computation of de Rham cohomology

![[1-de-rham-cohomology-2025073114.png]]
![[2-de-rham-cohomology-2025073114.png]]
![[3-de-rham-cohomology-2025073114.png]]
![[4-de-rham-cohomology-2025073114.png]]
![[5-de-rham-cohomology-2025073114.png]]
![[6-de-rham-cohomology-2025073114.png]]

![[7-de-rham-cohomology-2025073114.png]]
The 1-form $dx$ on $\mathbb{R}^{2}$ is $\pi^{*}$ of a 1-form on the torus $\mathbb{R}^{2}/\Lambda$; simliar for $dy$.






