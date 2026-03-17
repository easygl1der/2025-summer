## Detailed, balanced summary of “Introduction to Reaction–Diffusion Equations: Theory and Applications to Spatial Ecology and Evolutionary Biology” (Lam & Lou, 2022)

### Aim and structure
- A self-contained route from linear parabolic/elliptic theory to global dynamics in ecology/evolution, emphasizing maximum/comparison principles, principal eigenvalues, monotone dynamical systems, Lyapunov/LaSalle tools, and Floquet bundles.
- Four parts: (I) linear theory; (II) ecological dynamics; (III) evolutionary dynamics; (IV) abstract monotone dynamics/Krein–Rutman with complete proofs.

---

## Part I. Linear theory (Ch. 1–4)

### Chapter 1. Maximum/comparison principles and principal eigenvalues (single equations)
- Generalized super/subsolutions: enables “gluing” barriers without full weak/viscosity apparatus; supports Neumann, Robin, and oblique data.
- Weak/strong maximum principle; boundary point lemma; Krylov–Safonov growth lemma; interior and global Harnack inequalities (with compatible boundary conditions).
- Semilinear comparison: if $u_t+\mathcal L u\le f(x,t,u,Du)$ and $v_t+\mathcal L v\ge f(x,t,v,Dv)$ with $\mathcal Bu\le\mathcal Bv$, then $u\le v$. Monotone iteration (Sattinger) yields convergence to steady states under mild boundedness.
- Elliptic principal eigenvalue for $-a^{ij}D_{ij}-b^iD_i-c$ with oblique BC:
  - Existence, positivity, and simplicity via the strong Krein–Rutman theorem; positive eigenfunction in $\bar\Omega$; spectral gap to the rest of the spectrum.
  - Monotonicity: for $-d\Delta\phi-c\phi=\mu\phi$, $\mu_1$ increases with diffusion $d$, and $\mu_1\to-\max_{\bar\Omega}c$ as $d\to0^+$; smooth dependence on $d$ via an implicit function framework.

### Chapter 2. Periodic–parabolic principal eigenvalues
- Periodic in time parabolic operators: existence, positivity, and continuity of periodic principal eigenvalues.
- Qualitative properties: small/large diffusion limits; monotonicity in forcing frequency; applications to competition models in space–time heterogeneous environments.

### Chapter 3. Systems (cooperative/competitive)
- Comparison principles for cooperative parabolic systems and principal eigenvalues for systems (cooperative or suitably transformed).
- Asymptotics of principal eigenvalues for system operators; extension of Chapter 1 tools to vector-valued settings.

### Chapter 4. Principal Floquet bundles
- Generalization of principal eigenfunction to space–time varying environments (not necessarily periodic).
- Existence for non-divergence and divergence operators; smooth parameter dependence.
- Generalized relative entropy as a technical tool for parabolic dynamics.

---

## Part II. Ecological dynamics (Ch. 5–8)

### Chapter 5. Single species: logistic with diffusion
- Model: $u_t-d\Delta u=u(a-bu)$ with no-flux boundary conditions.
- Global convergence to equilibria via Lyapunov functions + LaSalle’s invariance principle; monotone iteration constructs steady states.
- Critical domain size phenomenon: persistence vs extinction; asymptotics as diffusion $d\to0,\infty$.

### Chapter 6. Fisher–KPP spreading and shifting environments
- Fisher–KPP on $\mathbb R$: $u_t=u_{xx}+f(u)$ with $f'(0)>0$.
- Spreading speed: definition, barrier-based proof of classical speed in homogeneous media; maximum principle on unbounded domains.
- Shifting habitats: habitat front motion; nonlocal selection mechanisms can alter selected spreading speeds.

### Chapter 7. Two-species Lotka–Volterra competition–diffusion
- Strongly monotone semiflow reformulation; global dynamics via order-preserving theory, Lyapunov/LaSalle, and principal eigenvalues.

- Constant coefficients (bounded domain, Neumann BCs):
  - Lyapunov functions for coexistence/exclusion; no nonconstant positive equilibria in homogeneous parameters.
  - Bistable regimes: convex domains rule out stable nonconstant steady states (Kishimoto–Weinberger); unstable patterns may exist.

- Spatial heterogeneity:
  - Weak competition with small diffusion: unique positive equilibrium globally attracting; convergence to averaged limit as $\min d_i\to\infty$ with explicit averaged coexistence values.
  - Slow vs fast dispersal (Dockery–Hastings): for nonconstant $m(x)$ and equal intraspecific competition $b=c=1$, if $0<d_1<d_2$ then the slower diffuser excludes the faster; proof uses principal eigenvalue $\mu_1(d,h)$ monotonicity in $d$.
  - General weak competition with heterogeneity: define a stability region $\Sigma_c\subset\{d_1<d_2\}$ depending on the interspecific coefficient $c$:
    - If $(d_1,d_2)\in\Sigma_c$ (and $c>c_*$), the slower diffuser can exclude the faster (global asymptotic stability of $(\theta_{d_1},0)$).
    - If $(d_1,d_2)\notin\Sigma_c$ with $d_1<d_2$, a unique positive equilibrium is globally attracting.
    - $\Sigma_c$ increases with $c$ and tends to $\{d_1<d_2\}$ as $c\nearrow1$.
  - Large and small diffusion asymptotics: global stability of positive equilibrium for both $\max d_i\gg1$ and $\max d_i\ll1$ regimes under weak competition inequalities.

- Advective environments (1D “river” models):
  - Reaction–diffusion–advection competition with mixed upstream/outflow boundary conditions (free-flow or loss at downstream):
    - Linearized eigenvalue monotonicity in diffusion under advection; at certain mixed BCs, no coexistence equilibrium if $d_1\ne d_2$.
    - Selection for faster diffusion under advection with free-flow or partial-loss boundaries; rigorous theorems show global attraction to the single faster species when it exists.

### Chapter 8. Phytoplankton in a eutrophic water column (nonlocal light limitation)
- System (for $N$ species): $u_{i,t}=D_i u_{i,xx}-\alpha_i u_{i,x}+u_i(g_i(I(x,t))-d_i)$, with no-flux Robin at both ends; light obeys Lambert–Beer $I(x,t)=I_0\exp(-k_0x-\sum_j k_j\int_0^x u_j)$ (nonlocal coupling).
- Positivity and well-posedness for continuous initial data.
- Key device: cumulative biomass $U(x,t)=\int_0^x u(y,t)\,dy$ defines an order cone; the induced semiflow is strongly monotone in that cone, making monotone dynamics theory applicable.
- Results:
  - Single species: global classification by Lyapunov + monotonicity.
  - Two species: if identical except buoyancy/sinking, the more buoyant (or less sinking) species excludes the other.
  - $N$ species: via principal Floquet bundle tools and nonlocal comparison, competitive exclusion for sufficiently similar species.

---

## Part III. Evolutionary dynamics (Ch. 9–10)

### Chapter 9. Adaptive dynamics (PDE viewpoint)
- Concepts: invasion exponent, selection gradient, singular strategy, convergence-stable strategy, evolutionary stable strategy (ESS), continuously stable strategy (CSS), neighborhood invader strategy, dimorphism, branching points.
- River population model: PDE framing of trait-based invasion and selection under advection; pairwise invasibility plots and selection gradients computed within PDE models.

### Chapter 10. Selection–mutation models (trait-structured populations)
- Without space (Magal–Webb): well-posedness and convergence to equilibrium under selection–mutation dynamics.
- With space (Perthame–Souganidis): spatially varying but temporally constant environments; evolution of dispersal rates; link to adaptive dynamics notions (ESS/CSS/branching) as mutation variance shrinks.
- Relation to multi-species LV as $N\to\infty$: trait distribution limits, concentration phenomena.

---

## Part IV. Tools: monotone dynamics and Krein–Rutman (Appendices A–E)

### Appendix A. Fixed point index via Leray–Schauder degree
- Construction and properties; used to show existence/nonexistence of fixed points in order intervals and in homotopies.

### Appendix B. Krein–Rutman theorems (weak/strong) and cones
- Ordered Banach spaces, solid/total cones, adjoint cones.
- Strong Krein–Rutman for compact, strongly positive maps/operators: existence, positivity, simplicity, spectral gap of the principal eigenvalue.

### Appendix C. Subhomogeneous dynamics
- Subhomogeneous maps/semiflows (positive homogeneity of degree one locally) in ordered spaces.
- Global attraction to a fixed point for monotone subhomogeneous maps; leveraged for boundary equilibria analysis.

### Appendix D. Connecting orbits and order-interval trichotomy
- Discrete-time Dancer–Hess lemma: under strict monotonicity, order compactness, and index conditions, either a fixed point exists inside an order interval or a monotone entire orbit connects two boundary equilibria.
- Order-interval trichotomy: exactly one of (connectivity via increasing orbit), (via decreasing orbit), or (an interior fixed point) holds; continuous-time analogs proved via time discretization.

### Appendix E. Abstract competitive systems (discrete and continuous)
- Hypotheses for maps $S:C\to C$ (H1–H4) and semiflows $\Phi_t$ (H1'–H4') on $C=C_1\times C_2$ with competitive cone $K=X_1^+\times(-X_2^+)$:
  - Strict monotonicity w.r.t. $<_{K}$, order-compactness, persistence on axes (boundary equilibria $E_1=(\hat x_1,0)$, $E_2=(0,\hat x_2)$), and strong order improvement into $\operatorname{Int}C$.
- Core consequences:
  - If no interior equilibrium, then every interior orbit converges to a boundary equilibrium; exactly one of $E_1$ or $E_2$ attracts all interior trajectories in the order interval.
  - Repelling criteria for boundary equilibria via spectral assumptions (H5/H5'): $r(D S(E_i))\ge1$ (or $r(D\Phi_\tau(E_i))\ge1$) with a positive cone eigenvector implies repulsion and thus global attraction to the other side.
  - Compression theorems: existence of two interior equilibria $E_*\le_K E^*$ compressing dynamics; uniqueness and global stability if all interior equilibria are locally asymptotically stable.
  - Bistability (both boundary equilibria stable on $I$) or mutual invasibility (both unstable) implies existence of a positive equilibrium; uniqueness under LAS of all positive equilibria.
- Applications mapped back to Chapter 7 (LV systems) and Chapter 8 (phytoplankton).

---

## Techniques and insights across the book
- **Comparison/maximum principles** and **principal eigenvalues** drive persistence/invasion/stability.
- **Lyapunov + LaSalle** give global convergence for scalar and some 2-species systems.
- **Strongly monotone dynamics** on ordered cones reduce complex PDEs to trichotomy and connecting orbit arguments.
- **Floquet bundles** extend eigenfunction ideas to nonperiodic space–time environments.
- **Heterogeneity vs dispersal**: slow diffusers win in static heterogeneous environments; **advection** can flip selection to fast dispersers depending on boundary losses.
- **Nonlocal couplings** (light) handled via cumulative variables and special cones to restore monotonicity.
- **Evolutionary modules** (adaptive dynamics and selection–mutation) integrate rigorously with ecological PDEs.