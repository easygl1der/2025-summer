[lectures-toric-varieties-2024-2025.pdf](https://perso.pages.math.cnrs.fr/users/nicolas.perrin/media/lectures-toric-varieties-2024-2025.pdf)

The toric variety can build bridge between AG and convex geometry, and it also has application in birational geometry.

> [!def] Algebraic group
> An algebraic group is a $k$-variety $G$ with a structure of abstract group such that the multiplication map $\mu: G \times G \rightarrow G$ and the inverse $\iota: G \rightarrow G$ are morphisms.

> [!def] k-variety
> A $k$-variety is a non-empty irreducible algebraic variety over $k$. An algebraic variety is an integral separated scheme of finite type over a field $k$. An integral scheme is an irreducible scheme such that its unique generic point is special. A separated scheme is a scheme $X$ such that the diagonal morphism $\Delta: X \rightarrow X \times X$ is a closed immersion. A scheme of finite type over $k$ is a scheme $X$ which is a finite union $X = \bigcup_{i=1}^n U_i$ of open sets $U_i$ such that each $U_i$ is isomorphic to $\text{Spec}(A_i)$ where $A_i$ is a $k$-algebra which is of finite type as a $k$-algebra.


> [!def] Morphism
> A morphism between two schemes $X$ and $Y$ is a pair $(f, f^\sharp)$ where $f: X \rightarrow Y$ is a continuous map of topological spaces and $f^\sharp: \mathcal{O}_Y \rightarrow f_* \mathcal{O}_X$ is a sheaf of rings, such that for every open set $U \subseteq Y$, the map $f^\sharp(U): \mathcal{O}_Y(U) \rightarrow \mathcal{O}_X(f^{-1}(U))$ is a ring homomorphism and satisfies the following condition: for every open set $V \subseteq U$, the restriction $(f^\sharp(U))|_V$ is the map $\mathcal{O}_Y(V) \rightarrow \mathcal{O}_X(f^{-1}(V))$.

## $f_* \mathcal{O}_X$ Definition

In the context of schemes, $f_* \mathcal{O}_X$ refers to the **direct image sheaf** of the structure sheaf $\mathcal{O}_X$ along a morphism $f: X \rightarrow Y$.

More formally, for a morphism of schemes $f: X \rightarrow Y$, the direct image sheaf $f_* \mathcal{O}_X$ is a sheaf on $Y$ defined as follows:

For any open set $V \subseteq Y$, the section of $f_* \mathcal{O}_X$ over $V$ is given by the set of sections of $\mathcal{O}_X$ over the preimage of $V$ under $f$:
$$ (f_* \mathcal{O}_X)(V) = \mathcal{O}_X(f^{-1}(V)) $$

This operation essentially "pulls back" the structure sheaf from $X$ to $Y$ in a way that respects the mapping $f$. It's a fundamental construction in algebraic geometry for relating the ringed spaces associated with schemes.




