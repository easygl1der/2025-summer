## Equations in Ni (2004) — grouped with minimal context

- **Scalar semilinear prototype (Neumann)**: steady spikes on bounded domains
$$
\varepsilon^2\Delta u - u + u^p = 0,\quad u>0\text{ in }\Omega,\quad \partial_\nu u=0\text{ on }\partial\Omega\quad\text{(1.4)}
$$

  - **Meaning**: Canonical scalar PDE for spike-layer patterns with reflecting (Neumann) boundaries; localizes the activator profile.
  - **Applications**: Boundary/interior spikes in biology, chemistry, and ecology via shadow reductions; basis for constructing system steady states.
  - **Key results**: Single boundary peak near mean-curvature maxima; multi-peak (interior and boundary) configurations; precise profiles via the entire-space ground state; geometric energy expansions (1.17) select locations.
  - **Open directions**: Prescribed $k$-boundary-peak patterns near curvature maxima; classification of higher-dimensional interior layers; full stability maps beyond convex domains; Robin interpolation between Neumann and Dirichlet.

- **Scalar semilinear prototype (Dirichlet)**: interior spikes
$$
\varepsilon^2\Delta u - u + u^p = 0,\quad u>0\text{ in }\Omega,\quad u=0\text{ on }\partial\Omega\quad\text{(1.5)}
$$

  - **Meaning**: Canonical scalar PDE for interior spike patterns with absorbing (Dirichlet) boundaries.
  - **Applications**: Least-energy spikes near inradius centers; comparison baseline to reveal boundary effects.
  - **Key results**: Unique peak near the most centered point; profile best given by the projected $w$ with exponentially small errors (1.16); multi-peak often obstructed in balls/strictly convex domains.
  - **Open directions**: General multi-peak existence/selection in nonconvex/nonradial domains; interior $k$-dimensional concentration without symmetry assumptions.

- **Entire-space ground state (profile for spikes)**
$$
\Delta w - w + w^p = 0\ \text{in }\mathbb{R}^n,\quad w>0,\ w\to0\ \text{as }|x|\to\infty\quad\text{(1.10)}
$$

  - **Meaning**: Universal spike profile used to approximate solutions near peaks.
  - **Applications**: Asymptotic matching, Lyapunov–Schmidt reduction, energy estimates $I(w)$, boundary-layer corrections.
  - **Key results**: Radial, positive, rapidly decaying; normalizes profiles and constants in expansions.
  - **Open directions**: Sharper quantitative error bounds in complex geometries and for generalized operators.

- **Energy functionals (variational setting)**
$$
J_{\varepsilon,N}(u)=\tfrac12\!\int_\Omega(\varepsilon^2|\nabla u|^2+u^2)-\tfrac{1}{p+1}\!\int_\Omega u_+^{p+1}\quad\text{(1.6)}
$$
$$
J_{\varepsilon,D}(u)=\tfrac12\!\int_\Omega(\varepsilon^2|\nabla u|^2+u^2)-\tfrac{1}{p+1}\!\int_\Omega u_+^{p+1}\quad\text{(1.7)}
$$

  - **Meaning**: Variational framework enabling mountain-pass construction of positive solutions.
  - **Applications**: Energy expansions drive peak selection by geometry; computational algorithms (MPA/SIA).
  - **Open directions**: Convergence/error theory for numerical mountain-pass methods in singularly perturbed regimes.

- **Mountain-pass levels (Neumann/Dirichlet)**
$$
c_{\varepsilon,N}=\inf_{v\ge0\!,v\not\equiv0}\ \max_{t\ge0}J_{\varepsilon,N}(tv)\quad\text{(1.8)},\qquad
c_{\varepsilon,D}=\inf_{v\ge0\!,v\not\equiv0}\ \max_{t\ge0}J_{\varepsilon,D}(tv)\quad\text{(1.9)}
$$

  - **Meaning**: Critical levels associated with least-energy spikes.
  - **Applications**: Provide leading-order energetics to compare candidate peaks and enforce uniqueness of location.
  - **Open directions**: Higher-order asymptotics and robustness under domain perturbations.

- **Energy asymptotics (geometry enters)**
$$
c_{\varepsilon,N}=\varepsilon^n\{\tfrac12 I(w)-(n\!-\!1)\gamma_N H(P_{\varepsilon,N})\,\varepsilon+o(\varepsilon)\}\quad\text{(1.17)}
$$
$$
c_{\varepsilon,D}=\varepsilon^n\{I(w)+e^{-\delta_\varepsilon(P_{\varepsilon,D})/\varepsilon}\gamma_D+o(e^{-\delta_\varepsilon/\varepsilon})\}\quad\text{(1.18)}
$$
$$
I(w)=\tfrac12\!\int_{\mathbb{R}^n}(|\nabla w|^2+w^2)-\tfrac{1}{p+1}\!\int_{\mathbb{R}^n}w^{p+1}\quad\text{(1.19)}
$$

  - **Meaning**: Explicit coupling of spike energy with mean curvature (Neumann) or distance to boundary (Dirichlet).
  - **Applications**: Peak location selection, comparison between boundary vs interior spikes.
  - **Open directions**: Extensions to rough boundaries, anisotropic diffusion, and fully nonlinear operators.

- **Distance eikonal (Dirichlet error scale)**
$$
|\nabla\delta|=1\ \text{ in }\Omega\quad\text{(limit of (1.15))}
$$

  - **Meaning**: Governs the logarithmic scale in the exponentially small Dirichlet error; viscosity limit of a Hamilton–Jacobi equation.
  - **Applications**: Quantifies correction from $w$ to $\mathcal P_{\Omega_\varepsilon}w$ in Dirichlet spikes.
  - **Open directions**: Behavior in nonsmooth domains; coupling with obstacles or mixed boundary conditions.

- **Packing functional for multi-peak interior spikes**
$$
\varphi(P^1,\dots,P^k)=\min\Big\{d(P^i,\partial\Omega),\ \tfrac12|P^\ell-P^m|\Big\}\quad\text{(1.20)}
$$

  - **Meaning**: Encodes competition between boundary repulsion and peak–peak repulsion; selects interior peak constellations.
  - **Applications**: Variational reduction to finite-dimensional optimization for multi-peak placement.
  - **Open directions**: Uniqueness and dynamics of selected constellations; perturbations by domain topology.

- **Radial potential setting (rings/clusters)**
$$
\varepsilon^2\Delta u - V(|x|)u + u^p=0\ \text{in }B_1,\quad \partial_\nu u=0\ \text{or}\ u=0\quad\text{(1.31),(1.32),(1.33)}
$$
$$
M(r)=r^{\,n-1}V(r)^\theta,\ \ \theta=\tfrac{p+1}{p-1}-\tfrac12\quad\text{(1.34)}
$$

  - **Meaning**: Radial framework where $M'(1)$ predicts boundary attraction vs repulsion and ring concentration.
  - **Applications**: Construction of rings and clusters of concentric spheres; sharp contrast between Neumann and Dirichlet.
  - **Open directions**: Stability of rings/clusters; extension to nonradial perturbations and higher dimensions.

- **General singularly perturbed model (reference)**
$$
\varepsilon^2\Delta u - u + u^p = 0\quad\text{(1.40)}
$$

  - **Meaning**: Baseline equation summarizing the concentration phenomena across sections.
  - **Applications**: Template for methods (variational, reduction, asymptotics) and numerical visualization.

- **Activator–inhibitor (Gierer–Meinhardt)**
$$
\begin{cases}
U_t=d_1\Delta U-U+\dfrac{U^p}{V^q}\\
\tau V_t=d_2\Delta V-V+\dfrac{U^r}{V^s}
\end{cases},\ \partial_\nu U=\partial_\nu V=0\quad\text{(1.1)}
$$

  - **Meaning**: Paradigm for diffusion-driven instability (Turing’s idea) with short-range activation/long-range inhibition.
  - **Applications**: Spike patterns modeling morphogenesis; source of shadow systems and stability questions.
  - **Open directions**: Existence/stability in general domains without symmetry; parameter regimes beyond large $d_2$.

- **Shadow system (large $d_2$)**
$$
\begin{cases}
U_t=d_1\Delta U-U+\dfrac{U^p}{\xi^q}\\
\tau \xi_t=-\xi+\dfrac{1}{|\Omega|}\xi^{-s}\!\int_\Omega U^r
\end{cases},\ \partial_\nu U=0\quad\text{(1.3)}
$$

  - **Meaning**: Reduced model capturing inhibitor homogeneity; tractable for constructing/studying spike steady states.
  - **Applications**: Derivation of least-energy patterns; linearized spectral analysis and Hopf bifurcations.
  - **Open directions**: Multipeak interactions and time-periodic patterns in higher dimensions.

- **Elliptic shadow steady states (reduced)**
$$
\begin{cases}
\varepsilon^2\Delta u-u+u^p=0\\
\int_\Omega u^r=|\Omega|\xi^{-\alpha}\\
\partial_\nu u=0
\end{cases},\ \alpha=\dfrac{qr}{p-1}-(s+1)>0\quad\text{(2.5),(2.6)}
$$

  - **Meaning**: Steady-state constraint links spike mass and inhibitor level.
  - **Applications**: Continuation to full system steady states for large $d_2$.
  - **Open directions**: Global bifurcation structure as parameters vary.

- **Lotka–Volterra diffusion (baseline)**
$$
\begin{cases}
u_t=d_1\Delta u+u(a_1-b_1u-c_1v)\\
v_t=d_2\Delta v+v(a_2-b_2u-c_2v)
\end{cases},\ \partial_\nu u=\partial_\nu v=0\quad\text{(2.11)}
$$

  - **Meaning**: Classical competition-diffusion; with pure diffusion, weak competition yields homogeneous steady states.
  - **Applications**: Baseline to contrast the pattern-forming effect of cross-diffusion.

- **Cross-diffusion model (Shigesada–Kawasaki–Teramoto)**
$$
\begin{cases}
u_t=\Delta[(d_1+\rho_{12}v)u]+u(a_1-b_1u-c_1v)\\
v_t=\Delta[(d_2+\rho_{21}u)v]+v(a_2-b_2u-c_2v)
\end{cases},\ \partial_\nu u=\partial_\nu v=0\quad\text{(2.13)}
$$

  - **Meaning**: Pressure-driven taxis (cross-diffusion) induces spatial segregation and patterns.
  - **Applications**: Explains pattern emergence in regimes where diffusion alone cannot; links to scalar spike equation via limits.
  - **Open directions**: Full classification across dimensions; interaction of both cross terms; stability/instability thresholds.

- **Limiting steady systems as $\rho_{12}\to\infty$**
$$
\begin{cases}
a_1\Delta[(1+v)u]+u(a_1-b_1u)=0\\
d_2\Delta v+v(a_2-b_2u)=0
\end{cases}\quad\text{(2.14)}
$$
$$
\begin{cases}
d_2\Delta w+w(a_2-c_2w)-b_2\zeta=0\\
\partial_\nu w=0,\ \int_\Omega \frac{1}{w}\Big(a_1-\frac{b_2\zeta}{w}-c_1w\Big)=0
\end{cases}\quad\text{(2.15)}
$$

  - **Meaning**: Limiting models organizing steady states under large cross-diffusion; one reduces (formally) to scalar spike equation.
  - **Applications**: Construct/track patterns as cross-diffusion grows; asymptotic classification in 1D.
  - **Open directions**: Higher-dimensional theory and selection between alternatives (i) vs (ii).

- **Chemotaxis (Keller–Segel)**
$$
\begin{cases}
u_t=d_1\Delta u-\chi\nabla\!\cdot(u\nabla\psi(v))\\
v_t=d_2\Delta v-av+bu
\end{cases},\ \partial_\nu u=\partial_\nu v=0\quad\text{(2.21)}
$$

  - **Meaning**: Aggregation driven by chemical gradients (positive taxis) with conserved mass.
  - **Applications**: Framework for biological clustering; steady states reduce to scalar spikes for log sensitivity.
  - **Open directions**: Stability of spike steady states; thresholds for blow-up vs global existence across $n$.

- **Chemotaxis steady (log sensitivity), reduction**
$$
\begin{cases}
d_1\Delta u-\chi\nabla\!\cdot(u\nabla\log v)=0\\
d_2\Delta v-av+bu=0,\ \frac{1}{|\Omega|}\int_\Omega u=\bar u
\end{cases}\ \Rightarrow\ \varepsilon^2\Delta w-w+w^p=0,\ \partial_\nu w=0\quad\text{(2.22),(2.23)}
$$

  - **Meaning**: Exact reduction shows chemotaxis steady states inherit scalar spike structure.
  - **Applications**: Transfers existence/shape results from the scalar model to chemotaxis.
  - **Open directions**: Dynamical stability/selection of least-energy patterns.

- **Lengyel–Epstein (CDIMA)**
$$
\begin{cases}
u_t=\Delta u+a-u-\dfrac{4uv}{1+u^2}\\
v_t=\sigma\big[c\Delta v+b\big(u-\dfrac{uv}{1+u^2}\big)\big]
\end{cases},\ \partial_\nu u=\partial_\nu v=0\quad\text{(2.24)}
$$

  - **Meaning**: Chemical reaction model exhibiting Turing patterns in experiments.
  - **Applications**: Predicts parameter regimes for nonconstant steady states; informs reactor design/size effects.
  - **Open directions**: Qualitative structure in 2D/3D; rigorous links to observed complex patterns.

- **Gray–Scott**
$$
\begin{cases}
U_t=D_U\Delta U+F(1-U)-UV^2\\
V_t=D_V\Delta V-(F+k)V+UV^2
\end{cases},\ \partial_\nu U=\partial_\nu V=0\quad\text{(2.25)}
$$

  - **Meaning**: Autocatalytic reaction–diffusion with rich spot/stripe/self-replication dynamics.
  - **Applications**: Benchmark for studying spatio-temporal chaos and spot interactions.
  - **Open directions**: Existence and stability of multi-spot/stripe patterns beyond 1D reductions.

- **Stability linearization (shadow, eigenproblem)**
$$
\begin{cases}
\varepsilon^2\Delta\phi-\phi+pu_\varepsilon^{p-1}\phi-q u_\varepsilon^p\eta=\lambda\phi\\
r\frac{\int_\Omega u_\varepsilon^{r-1}\phi}{\int_\Omega u_\varepsilon^r}-(s+1)\eta=\tau\lambda\eta,\ \partial_\nu\phi=0
\end{cases}\quad\text{(3.17)}
$$

  - **Meaning**: Coupled spectral problem governing linear stability of shadow steady states.
  - **Applications**: Determines stability bands and triggers Hopf bifurcations.
  - **Open directions**: Spectra in higher dimensions; quantitative estimates for gap locations.

- **Characteristic equation (spectrum condition)**
$$
\chi(\lambda;\varepsilon,\tau)=\lambda\Big(\sum_{j=0}^{\infty}\frac{c_{j,\varepsilon}}{\ell_{j,\varepsilon}-\lambda}-\tau\Big)+\alpha=0\quad\text{(3.20)}
$$

  - **Meaning**: Scalar condition for eigenvalues through resolvent expansion of the scalar operator.
  - **Applications**: Locates stability/instability intervals and Hopf thresholds as $\tau$ varies.
  - **Open directions**: Generalizations to other coupling laws and nonlocal terms.

- **Base symmetry equation and boundary data**
$$
\Delta u+f(u)=0\ \text{ in }\Omega\quad\text{(4.1)},\quad u=0\ \text{ on }\partial\Omega\ \text{(4.2)},\quad \partial_\nu u=0\ \text{on }\partial\Omega\ \text{(4.3)}
$$

  - **Meaning**: Starting point for moving-plane/sliding methods.
  - **Applications**: Proves radial symmetry/monotonicity in balls; partial symmetries under Neumann.
  - **Open directions**: Extensions to mixed/Robin conditions and irregular domains.

- **Entire-space problem and critical case**
$$
\Delta u+f(u)=0\ \text{in }\mathbb{R}^n,\ u>0,\ u\to0\ \text{at }\infty\quad\text{(4.4)}
$$
$$
\Delta u+u^{\frac{n+2}{n-2}}=0\ \text{in }\mathbb{R}^n,\ u>0\quad\text{(4.8)},\ \ u(x)=\Big(\frac{\sqrt{n(n-2)}\lambda}{\lambda^2+|x-x_0|^2}\Big)^{\frac{n-2}{2}}\ \text{(4.9)}
$$

  - **Meaning**: Radial symmetry under $f'(0)\le0$; complete classification at the critical exponent.
  - **Applications**: Baseline for entire-space symmetry and decay without explicit rate assumptions.
  - **Open directions**: Supercritical symmetry problems and classification.

- **Monotonicity in half-space and unbounded domains**
$$
\Delta u+f(u)=0\ \text{in }H=\{x_n>0\},\ u=0\ \text{on }\partial H\quad\text{(4.12)}
$$
$$
\Delta u+f(u)=0\ \text{in }\Omega=\{x_n>\varphi(x')\},\ u=0\ \text{on }\partial\Omega\quad\text{(4.10)}
$$

  - **Meaning**: Sliding method yields monotonicity and 1D symmetry in special geometries.
  - **Applications**: Extends symmetry/monotonicity beyond balls to half-spaces and graphs.
  - **Open directions**: Rough graph boundaries and general nonlinearities.

- **Fully nonlinear generalization and mean curvature form**
$$
F(x,u,Du,D^2u)=0\ \text{in }\mathbb{R}^n,\ u\to0\ \text{at }\infty\quad\text{(4.16)}
$$
$$
\operatorname{div}\Big(\frac{Du}{\sqrt{1+|Du|^2}}\Big)+f(u)=0\ \text{in }\mathbb{R}^n,\ u>0,\ u\to0\ \text{at }\infty\quad\text{(4.17)}
$$

  - **Meaning**: Extends symmetry results to fully nonlinear/mean-curvature equations under structural monotonicity.
  - **Applications**: Covers minimal surface-type operators and nonuniform ellipticity.
  - **Open directions**: Degenerate/anisotropic settings and sharp conditions for moving-plane validity.

- **$p$-Laplacian**
$$
\Delta_p u=\operatorname{div}(|Du|^{p-2}Du)\quad\text{(4.18)},\qquad \Delta_p u+f(u)=0,\ u>0,\ u\to0\ \text{at }\infty\quad\text{(4.19)}
$$

  - **Meaning**: Nonlinear diffusion symmetry theory; moving planes with weak comparison.
  - **Applications**: Radial symmetry for $1<p<2$; counterexamples for $p>2$ guide limitations.
  - **Open directions**: Precise symmetry thresholds and stability in the degenerate regime $p>2$.

- **Overdetermined Serrin problem**
$$
\begin{cases}
\Delta u=-1\ \text{ in }\Omega\\
u=0\ \text{ on }\partial\Omega\\
\partial_\nu u=\text{const on }\partial\Omega
\end{cases}\quad\text{(4.28)}
$$

  - **Meaning**: Overdetermined boundary data force domain symmetry (ball) and explicit solution.
  - **Applications**: Classic showcase of symmetry-from-PDE; methods extend to $p$-Laplacian.
  - **Open directions**: Broader overdetermined systems and stability under perturbations.

If you want, I can append this list to `summarization-Ni.md` or extract only a subset (e.g., scalar prototype + systems + stability) for a shorter cheat sheet.