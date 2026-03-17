See do Cramo

![[differential-manifold-2025071022.png]]

"maximal" in condition (3) means that the family of charts $\{(U_\alpha, x_\alpha)\}$ cannot be extended further while still satisfying conditions (1) and (2).

Condition (2) allow us to carry over all of the ideas of differential calculus in $\mathbb{R}^{n}$ to differentiable manifolds.

The topology on $M$ is natually defined. $A\subset M$ is open iff $x_{\alpha}^{-1}(A\cap x_{\alpha}(U))$ is open in $\mathbb{R}^{n}$. 

> [!EXAMPLE] $\mathbb{P}^{n}$
> ![[1-differential-manifold-2025071022.png]]
> ![[2-differential-manifold-2025071022.png]]

Let us exetnd the idea of differentiability to mappings between manifolds.

![[3-differential-manifold-2025071022.png]]
![[4-differential-manifold-2025071022.png]]


![[5-differential-manifold-2025071022.png]]

![[6-differential-manifold-2025071022.png]]
![[7-differential-manifold-2025071022.png]]
![[8-differential-manifold-2025071022.png]]
![[9-differential-manifold-2025071022.png]]
![[10-differential-manifold-2025071022.png]]

![[11-differential-manifold-2025071022.png]]

- Immersion: A differentiable mapping $\varphi: M \rightarrow N$ is an immersion if its derivative $d \varphi_p$ : $T_p M \rightarrow T_{\varphi(p)} N$ is injective for all $p \in M$. This essentially means that locally, the map doesn't "fold" or "pinch."
- Embedding: If, in addition to being an immersion, $\varphi$ is a homeomorphism onto its image $\varphi(M) \subset N$, then $\varphi$ is called an embedding. A homeomorphism means the map is:
	1. Bijective (one-to-one and onto).
	2. Continuous.
	3. Has a continuous inverse.


![[differential-manifold-2025071023.png]]
![[1-differential-manifold-2025071023.png]]
![[2-differential-manifold-2025071023.png]]

A homeomorphism requires that the map preserves topological properties. Specifically, it must map connected sets to connected sets, and locally, open sets in the domain should map to open sets in the image (with the induced topology).
- An open neighborhood in the domain $(-3,0)$ (e.g., around a $t$ value close to 0 ) is connected.
- The image of this connected neighborhood, when viewed with the subspace topology inherited from $\mathbb{R}^2$, becomes disconnected (in infinitely many pieces) near the point $(0,-1)$.



> [!def] **Regular Surface**
> A subset $S \subset \mathbb{R}^3$ is called a **regular surface** if for every point $p \in S$, there exists a neighborhood $V \subset \mathbb{R}^3$ containing $p$, and a map $\mathrm{x}: U \rightarrow V \cap S$ of an open set $U \subset \mathbb{R}^2$ onto $V \cap S$ such that:
> 1. $\mathbf{x}$ is a differentiable (or smooth, i.e., $C^{\infty}$ ) map. (This means all partial derivatives of all orders exist and are continuous.)
> 2. $\mathbf{x}$ is a homeomorphism. That is, $\mathbf{x}$ is continuous, bijective, and its inverse $\mathrm{x}^{-1}: V \cap S \rightarrow U$ is also continuous. (This ensures that x maps open sets in $U$ to open sets in $V \cap S$ with the subspace topology, and vice versa. This condition specifically rules out self-intersections and pathological behaviors like the "comb space" example.)
> 3. For each $q \in U$, the differential $d \mathrm{x}_q: \mathbb{R}^2 \rightarrow \mathbb{R}^3$ is injective (one-to-one). This is also called the "regularity condition" or "immersion condition" for the parametrization. It means that the partial derivative vectors $\frac{\partial \mathrm{x}}{\partial u}$ and $\frac{\partial \mathrm{x}}{\partial v}$ are linearly independent at every point in $U$. (This condition ensures that there is a well-defined tangent plane at every point and that the surface does not have "sharp points" or "cusps").

^ff91ce

A regular surface $S\subset \mathbb{R}^{3}$ has differentiable structure given by $x_{\alpha}:U_{\alpha}\subset \mathbb{R}^{2}\to S$, which are embedding of $U_{\alpha}$ into $S$ by [[#^ff91ce]]. We want to show the inclusion $i:S\to \mathbb{R}^{3}$ is an embedding, i.e. $S$ is a submanifold of $\mathbb{R}^{3}$.

In fact, $id_{V}^{-1}\circ i\circ x=x$ is differentiable, then by definition, $i$ is differentiable; and $i$ is clearly homeomorphism. We are done!

Every immersion is locally an embedding.

![[3-differential-manifold-2025071023.png]]

![[4-differential-manifold-2025071023.png]]

![[5-differential-manifold-2025071023.png]]

![[6-differential-manifold-2025071023.png]]

Defintion of regular value:
![[7-differential-manifold-2025071023.png]]
![[8-differential-manifold-2025071023.png]]
![[9-differential-manifold-2025071023.png]]
![[10-differential-manifold-2025071023.png]]

> Let $R:(y_1,\dots,y_n)\mapsto(-y_1,\dots,y_n)$; if $x_{2}^{-1}\circ x_1$ has negative Jacobian at $p$, we replace $x_2$ by $x_{2}\circ R$ in its differential stucture.

![[differential-manifold-2025071100.png]]

The transition map $\pi_2\circ \pi_1 ^{-1}:(x_j)\mapsto(y_j^{-1}(x_j))\mapsto\frac{x_j}{\sum_{i=1}^{n}x_i^{2}}$. The Jacobian is $(-1)^{n}/\lvert \mathbf{x} \rvert ^{2}$, which is either positive or negative. By approach in Example 4.5, $S^{n}$ is orientable.

![[1-differential-manifold-2025071100.png]]

The linear map $dA_{p}:T_{p}S^{n}\subset \mathbb{R}^{n+1}\to T_{-p}S^{n}$ has matrix form $-I_{n+1}$, which has determinant $(-1)^{n+1}$.

> [!def] Definitions of Orientation Preservation and Reversal
> A differentiable map $\phi: M \rightarrow N$ between oriented manifolds is said to:
> - **Preserve Orientation** at a point $p \in M$ if its differential $d \phi_p: T_p M \rightarrow T_{\phi(p)} N$ maps an oriented basis for $T_p M$ to an oriented basis for $T_{\phi(p)} N$. In local coordinates, this means the Jacobian determinant of the local representation of $\phi$ is positive.
> - **Reverse Orientation** at a point $p \in M$ if its differential $d \phi_p: T_p M \rightarrow T_{\phi(p)} N$ maps an oriented basis for $T_p M$ to an oppositely oriented basis for $T_{\phi(p)} N$. In local coordinates, this means the Jacobian determinant of the local representation of $\phi$ is negative.

If $\phi$ is a diffeomorphism, then its Jacobian determinant will be non-zero everywhere.

If it has a constant sign (which it will if the domain is connected), then $\phi$ either preserves orientation everywhere or reverses orientation everywhere.


![[2-differential-manifold-2025071100.png]]
![[3-differential-manifold-2025071100.png]]

![[5-differential-manifold-2025071100.png]]


$\mathbb{P}^{n}(\mathbb{R})$ is orientable iff $n$ is odd, because
- $S^{n}$ is always orientable.
- If $n$ is odd: The antipodal map $A$ preserves orientation on $S^n$. Therefore, by the theorem, $\mathbb{P}^n(\mathbb{R})=S^n /\{I, A\}$ is orientable.
- If $n$ is even: The antipodal map $A$ reverses orientation on $S^n$. Therefore, by the theorem, $\mathbb{P}^n(\mathbb{R})=S^n /\{I, A\}$ is non-orientable.

We abstract the process of $\mathbb{P}^{n}\cong S^{n}/\{ I,A \}$.

![[6-differential-manifold-2025071100.png]]
![[7-differential-manifold-2025071100.png]]
Example:
![[8-differential-manifold-2025071100.png]]

![[differential-manifold-2025071110.png]]
![[1-differential-manifold-2025071110.png]]
![[2-differential-manifold-2025071110.png]]
![[3-differential-manifold-2025071110.png]]
![[4-differential-manifold-2025071110.png]]
![[5-differential-manifold-2025071110.png]]
![[6-differential-manifold-2025071110.png]]
![[7-differential-manifold-2025071110.png]]

![[8-differential-manifold-2025071110.png]]
![[9-differential-manifold-2025071110.png]]
![[10-differential-manifold-2025071110.png]]














