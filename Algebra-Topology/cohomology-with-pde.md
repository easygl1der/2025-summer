[2503.22813](https://arxiv.org/pdf/2503.22813)

When discreting a system, it's crucial to preserve some conserved quantity. In some case, the scheme not preserving it will fail to mimic a crucial topology mechanism.

In data science or complex systems such as biology, first-principle models are often unavailable; so ome must rely on coarser structures (e.g. topological connectivity of nodes) rather than precise geometric distances. 

> [!remark] the logic
> If the natural of the world were discrete, then one should regard discrete models as fundamental objects and investigate their convergence in the continuum limit, rather than first having the continuum models and discretising them.

Lattice theories (finite difference with MAC/Yee grids, Discrete Exterior Calculus, discrete differential geometry, lattice gauge theory) encode topological or geometric structures in a purely discrete form, are flexible (sometimes extendable to graphs), and are physically intuitive; yet their convergence and many properties may be less understood.

The first question in structure-preserving numerical computation is *which structures* should be preserved.

First, the resulting models and formulations enjoy the well-posedness encoded in complexes. Second, compatible and structure-preserving discretisation naturally follows by discretising the underlying complexes and preserving the cohomology.

In $\mathbb{R}^{3}$, consider $d^{k}:\Lambda^{k}(\Omega)\to\Lambda^{k+1}(\Omega)$, then $d^{0}$ is the gradient $\nabla$, $d^{1}$ is the curl $\nabla \times$, and $d^{2}$ is the divergence $\nabla \cdot$.

Having introduced chains, boundaries, and homology, we now move to the dual picture. Instead of working directly with simplices and their boundaries, we can assign to each k-simplex a real value and track how these "dual values" change under a dual operator called the coboundary. This leads to cochains and cohomology, which capture the same topological information as homology but often prove more convenient for certain theoretical and computational tasks.

> Well-posedness (existence, uniqueness and stability) is related to the properties on complex.














