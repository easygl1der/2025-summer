Processed: 02/23/09

## SCIE <br> QA 371 .H36 2004

Journal Title: Handbook of differential equations; stationary partial differential equations /

Volume:
Issue:
Month/Year: 2004
Pages: 157-233

## Article Author:

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-01.jpg?height=183&width=204&top_left_y=716&top_left_x=487)

Article Title: Ni, Wei-Ming; Qualitative properties of solutions to elliptic problems

Imprint: Amsterdam; Boston; Elsevier/North Holland, 2004-

Lender String IND,OSU,*EYM,CGU,IAY
Notes
Borrowing Notes; *Thank you.*

Ariel: 128.210.125.135
Fax:

## PRIORITY

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-01.jpg?height=274&width=212&top_left_y=234&top_left_x=838)

Copy To:
(IPL)( 1) - Purdue University
Library- Interlibrary Loan
504 West State Street
West Lafayette, IN 47907-2058

Borrowed from:
Interlibrary Loan
University of Michigan
106 Hatcher Graduate Library
Ann Arbor, Ml 48109-1205

ILL Office Hours: Monday - Friday, 8am - 7pı
Phone: 734-764-0295
Fax: 734-647-2050
Ariel: ariel.lib.umich.edu
ill-lending@umich.edu

## CHAPTER 3

# Qualitative Properties of Solutions to Elliptic Problems 

Wei-Ming Ni<br>School of Mathematics, University of Minnesota, Minneapolis, MN 554.55, USA<br>E-mail: ni@mah.umm.edu

Contents
Introduction ..... 159

1. Concentrations of solutions: Single equations ..... 163
1.1. Spike-layer solutions in elliptic boundary-value problems ..... 163
1.2. Multi-peak spike-layer solutions in elliptic boundary-value problems ..... 170
1.3. Solutions with multidimensional concentration sets ..... 173
1.4. Remarks ..... 177
2. Concentrations of solutions: Systems ..... 177
2.1. The activator-inhibitor system ..... 178
2.2. A Lotka-Volterra competition system with cross-diffusion ..... 181
2.3. A chemotaxis system ..... 185
2.4. Other systems ..... 187
3. Stability of solutions ..... 189
3.1. Single equations with Neumann boundary conditions ..... 190
3.2. Single equations with Dirichlet boundary conditions ..... 194
3.3. Shadow systems ..... 196
3.4. Diffusion systems ..... 203
4. Symmetry and related properties of solutions ..... 204
4.1. Symmetry of semilinear elliptic equations in a ball ..... 206
4.2. Symmetry of semilinear elliptic equations in an annulus ..... 208
4.3. Symmetry of semilinear elliptic equations in entire space ..... 208
4.4. Related monotonicity properties, level sets and more general domains ..... 211
4.5. Generalizations and other types of equations ..... 214
4.6. Symmetry of nonlinear elliptic systems ..... 215
4.7. Miscellaneous results ..... 217
5. Graphics and visualization ..... 218
5.1. Mountain-pass and scaling algorithms ..... 220
5.2. Visualization of solutions of singularly perturbed semilinear elliptic boundary value problems ..... 222
5.3. Concluding remarks ..... 228

[^0]Acknowledgment ..... 228
References ..... 228

## Introduction

Qualitative properties of solutions to elliptic equations can be interpreted in an extremely broad sense to include virtually every property of solutions. In this chapter, however, I shall focus more on concrete and/or geometric properties of solutions. In particular, I shall emphasize the following two properties of solutions: the "shape" of solutions and the stability of solutions. Naturally, the connections between them will also be discussed. Boundary conditions clearly play important roles in the qualitative behavior of solutions. One feature of this survey is the inclusion of comparisons of the different, sometimes opposite effects of Dirichlet and Neumann boundary conditions whenever possible.

Qualitative properties of solutions are closely related to the existence of solution; in fact, it seems obvious that existence of solutions provides the basis for the study of qualitative properties. On the other hand, searching for solutions with particular properties in mind (often reflected in the phenomena for which the equations are modeling) could provide clues for existence. Therefore, in this chapter, we shall also talk about the existence of solutions, especially those solutions with "desired" properties, whenever is necessary or appropriate.

Systematic studies of qualitative properties of solutions to general nonlinear elliptic equations or systems essentially began in the late 1970s, although some nonlinear elliptic equations (such as the Lane-Emden equation in astrophysics [Ch]) actually go back to the 19 th century. It should be noted, however, that earlier works in this direction on linear elliptic equations, such as symmetrization or modal properties of eigenfunctions, have had their consequences in nonlinear equations.

Symmetry remains an important topic in modern theory of nonlinear partial differential equations. In particular, it is now understood how different boundary conditions may influence the symmetry properties of positive solutions in domains with symmetries. First, solutions of boundary-value problems are very different from solutions on entire space. Moreover, solutions to Neumann boundary-value problems exhibit drastically different behavior to their Dirichlet counterparts. For instance, it is known [GNN1] that all positive solutions of the following Dirichlet problem

$$
\begin{cases}\varepsilon^{2} \Delta u+f(u)=0 & \text { in } B_{R}(0) \\ u=0 & \text { on } \partial B_{R}(0)\end{cases}
$$

where $\Delta=\sum_{i=1}^{n} \frac{\partial^{2}}{\partial x_{i}^{2}}$ is the usual Laplace operator in $\mathbb{R}^{n}, \varepsilon>0$ is a constant, $f$ is a $C^{l}$-function and $B_{R}(0)$ is the ball of radius $R$ centered at the origin 0 , must be radially symmetric. On the other hand, it has been proved [NT2] that for e sufficiently small the following Neumann problem

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } B_{R}(0) \\ \frac{\partial u}{\partial v}=0 & \text { on } \partial B_{R}(0)\end{cases}
$$

where $\nu$ is the unit outer normal to $\partial B_{R}(0)$ and $1<p<\frac{n+2}{n-2}(=\infty$ if $n=2)$ ，possesses a positive solution $u_{E}$ with a unique maximum point located on the boundary $\partial B_{R}(0)$ ．Thus， this solution $u_{\varepsilon}$ cannot possibly be radially symmetric．In fact，the number of positive non－ radial solutions of the Neumann problem above tends to 00 as $\varepsilon$ tends to 0 ．Furthermore． while it has been known for decades that symmetrization reduces the＂energy＂of positive solutions for Dirichlet problems，it can be shown that symmetrization actually increases the＂energy＂of the solution $u_{\varepsilon}$ above．（Here，by＂energy＂we mean the variational integral

$$
\int_{B_{u}(0)}\left[\frac{1}{2}\left(|\nabla u|^{2}+u^{2}\right)-\frac{1}{p+1} u^{p+1}\right]
$$

Note that，since symmetrization does not alter integrals involving $u$ ，only the Dirichlet integral

$$
\int_{B_{M}(0)}\left|\nabla_{u}\right|^{2}
$$

gets changed after symmetrization．）In other words，the most＂stable＂solutions to the Neumann problem above must not be radially symmetric－a remarkable difference be－ tween Neumann and Dirichlet boundary conditions．In fact，solutions to Neumann prob－ lems also possess some restricted symmetry properties－they seem to be more subtle． （See Section 4．1．）Generally speaking，Dirichlet boundary conditions are far more rigid and imposing than Neumann boundary conditions，as is already indicated by the above discussions．This is also true for general bounded smooth domains $\Omega$ in $\mathbb{R}^{n}$ ．

Symmetry properties of solutions to elliptic equations on entire space（or unbounded domains）clearly reguire appropriate conditions at $\infty$ ．It seems that the simplest，most general result in this direction is that，all positive solutions of the following problem

$$
\begin{cases}\Delta u+f(u)=0 & \text { in } \mathbb{R}^{v} \\ u \rightarrow 0 & \text { at } \infty\end{cases}
$$

must be radially symmetric（up to a translation）provided that $f^{\prime}(0)<0$ ．（See［LiN］or The－ orem 4．3．）The case $f^{\prime}(0)=0$ turns out to be far more complicated．Roughly speaking，to guarantee radial symmetry in this case，additional hypothesis on suitable decay of solu－ tions are needed．Symmetries and related properties，such as monotonicity，are discussed in Section 4.

In a different but very important direction，significant progress has been made in the past filteen years in understanding the＂shape＂of solutions；in particular，the＂concentra－ tion＂behavior of solutions to nonlinear elliptic equations and systems．More precisely， positive solutions concentrating near isolated points，i．e．，spike－layer solutions（or，single－ and multi－peak solutions），and the locations of these points（determined by the geometry of the underlying domains）have been obtained for both Dirichlet and Neumann boundary－ value problems．For instance，as we shall see，in Section I that，for $\varepsilon$ small，a＂least－energy
solution" of the Neumann problem

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } \Omega,  \tag{N}\\ u>0 & \text { in } \Omega, \\ \frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $1<p<\frac{n+2}{n-2}(=\infty$ if $n=2)$, must have its only (local and thus global) maximum point (in $\bar{\Omega}$ ) located on $\partial \Omega$ and near the most "curved" part of $\partial \Omega$. (See [NT2,NT3] or Theorem 1.1. Here, the "curvedness" is measured by the mean curvature of $\partial \Omega$.) On the other hand, a "least-energy solution" of the Dirichlet problem

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } \Omega,  \tag{D}\\ u>0 & \text { in } \Omega, \\ u=0 & \text { on } \partial \Omega,\end{cases}
$$

where $1<p<\frac{n+2}{n-2}(=\infty$ if $n=2)$, must have its only (local and thus global) maximum point located near a "center" of the domain $\Omega$. (See [NW] or Theorem 1.1. Here a "center" is defined as a point in $\Omega$ which is most distant from $\partial \Omega$.) Furthemore, the "profiles" of these least-energy solutions for both (N) and (D) have been determined in [NT2,NT3] and [NW]. There has been a huge amount of literature on those spike-layer solutions published since the papers [NT2,NT3] first appeared in the early 1990s, and many interesting and excellent results have been obtained. For example, the locations of multiple interior peaks to a solution of (N), for $\varepsilon$ small, are determined by the "spherepacking" property of the domain $\Omega$. (See [GW1] or Section 1.2.) Those solutions often represent pattern formation in various branches of science. In Sections 1 and 2, we shall describe the recent progress in this direction as well as some models leading to those solutions. (We will, for instance, include the Gierer-Meinhardt system, based on Turing's idea of "diffusion-driven instability", in modeling the regeneration phenomenon of hydra.) Furthermore, positive solutions concentrating on multidimensional subsets (instead of isolated points which are 0 -dimensional) of the underlying domains will also be discussed in Section 1, although advance in this direction has been rather limited so far. It is interesting to note that the multidimensional concentration sets in all results obtained thus far are located either on or near the boundary of the underlying domain; in particular, no multidimensional concentration set in the interior of the underlying domain has been found.

The "shape" of solutions of elliptic equations or systems turns out to be closely related to the stability properties of those solutions. It seems clear that stability properties are crucial to our understanding of the entire dynamics of the original evolution problems. In Section 3 we include a brief discussion on this important and fascinating matter. Roughly speaking, the "general principle" here seems to be that the "simpler the shape" of a solution, the "more stable" it tends to be. For solutions of single (autonomous) elliptic equations under homogeneous Neumann boundary conditions

$$
\begin{cases}\Delta u+f(u)=0 & \text { in } \Omega, \\ \frac{\partial u}{\partial u}=0 & \text { on } \partial \Omega,\end{cases}
$$

it was established in 1979 that the only stable solutions are constant solutions, if $\Omega$ is convex. (See [CH,Ma1].) Thus, stability implies triviality. When we come to $2 \times 2$ elliptic systems

$$
\begin{cases}d_{1} \Delta u+f(u, v)=0 & \text { in } \Omega,  \tag{S}\\ d_{2} \Delta v+g(u, v)=0 & \text { in } \Omega, \\ \frac{\partial u}{\partial u}=\frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega,\end{cases}
$$

the situation becomes much more complicated and, up to this date, no general result has been established. However, as an intermediate step between single equations and $2 \times 2$ systems, progress has been made for the "shadow" system obtained by letting $d_{2} \rightarrow \infty$ in ( S ) and formally replacing $v$ by a constant $\xi$

$$
\begin{cases}d_{1} \Delta u+f(u, \xi)=0 & \text { in } \Omega, \\ \int_{\Omega} g(u, \xi) \mathrm{d} x=0, & \\ \frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega .\end{cases}
$$

(See Section 3.3.) It was proved in [NPY] that if $n=1$ (i.e., $\Omega=(0,1)$ ) then stable solutions of shadow systems must be monotone. That is, stability implies monotonicity. In fact, similar results have been established in [NPY] for time-dependent solutions of the corresponding parabolic "shadow" systems as well. However, it remains an outstanding open problem when $n>1$.

One of the most direct ways to understand the qualitative behavior of solutions is to be able to "view" the graphs of solutions. With the help of modern compating power, it is now possible to graph solutions of nonlinear elliptic problems quite accurately by numerical simulations and thereby "visualize" the shape of solutions, even those exhibiting strikingly singular behavior. In Section 5, a brief illustration of this approach is presented. Again, particular attention has been paid to comparing the effects of different boundary conditions on the shapes of solutions. For the sake of simplicity, we have only included illustrations involving two-dimensional domains, although three-dimensional domains can be handled as well. This section is mainly written in collaboration with Goong Chen, Alain Perronnett and Jianxin Zhou, to whom I am grateful.

Throughout this entire paper I have focused only on properties of positive solutions. Sign-changing solutions and their nodal domain properties are extremely interesting, although relatively unexplored. In this regard, I mention the very nice work of Castro et al. [CCN] in which a solution to a nonlinear Dirichlet problem that changes sign exactly once is established.

Many other topics of elliptic equations have been omitted here; for instance, the Morse index of solutions; the topological degree of solutions; equations involving critical Sobolev exponents; and others. Many of those are quite important and interesting. Fortunately, some of them are covered by other articles in this volume. The selection of topics in this survey does not imply any value judgment on the topics but rather reflects my own taste. In particular, the Ginzburg-Landau system has received enormous attention in recent years. Although originally I intended to include it in this survey, I soon realized that it deserves
a separate paper of its own. Here, we simply refer the interested readers to $[\mathrm{BBH}]$ and the more recent papers [Lin,LR]. For superconductivity with magnetic field, the readers should consult $[\mathrm{Pan}]$ and the references therein.

Many colleagues offered generous help in the writing of this survey-expository paper. Besides these already mentioned above, I would like to thank Changfeng Gui, Yi Li and Juncheng Wei, as I have learned from them on various topics included here. I am particularly grateful to Fang-Hua Lin, who explained, among other things, the Ginzburg-Landau vortices to me.

## 1. Concentrations of solutions: Single equations

One of the greatest advances in the theory of partial differential equations is the recent progress on the studies of concentration behaviors of solutions to elliptic equations and systems. It is remarkable to see that similar, and in many cases, independent results have been obtained simultaneously concerning these striking behaviors in various models from ditterent areas of science. These include activator-inhibitor systems in modeling the regeneration phenomenon of hydra, Ginzburg-Landau systems in superconductivity, nonlinear Schröclinger equations, the Gray-Scott model, the Lotka-Volterra competition system with cross-diffusions, and others. In this and next sections, we shall include descriptions of some of these systems from their backgrounds to the significance of the mathematical results obtained. Comparisons of results under different boundary conditions also will be made to illustrate the importance of boundary effect on the behaviors of solutions.

### 1.1. Spike-layer solutions in elliptic boundary-value problems

We have indicated in the Introduction that Neumann boundary condition is far less restrictive than Dirichlet boundary condition. Consequently, Neumann boundary-value problems tend to allow more solutions with more interesting behaviors than their Dirichlet counterparts. However, it is interesting to note that systematic studies of nonlinear Neumann problems seem to have a much shorter history.

Studies of nonlinear Neumann problems are often motivated by models in pattern formation in mathematical biology. One of the more well-known examples is the Turing's "diffusion-driven instability".

The regeneration phenomenon of hydra, first discovered by A. Trembley [Tr] in 1744, is one of the earliest examples in morphogenesis. Hydra, an animal of a few millimeters in length, is made up of approximately 100,000 cells of about 15 different types. It consists of a "head" region located at one end along its length. Typical experiments on hydra involve removing part of its "head" region and transplanting it to other parts of the body column. Then, a new "head" will form if and only if the transplanted area is sufficiently far from the (old) "head". These observations have led to the assumption of the existence of two chemical substances - a slowly diffusing (short-range) activator and a rapidly diffusing (long-range) inhibitor. In 1952, A. Turing [Tu] argued, although diffusion is a smoothing
and trivializing process in a system of a single chemical, for systems of two or more chemicals, different diffusion rates could force the uniform steady states to become unstable and lead to nonhomogeneous distributions of such reactants. This is now known as the "diffusion-driven instability". Exploring this idea further, in 1972, Gierer and Meinhardt [GM] proposed the following activator-inhibitor system (already normalized) to nodel the above regeneration phenomenon of hydra:

$$
\begin{cases}U_{t}=d_{\|} \Delta U-U+\frac{U^{\prime}}{V^{\prime}} & \text { in } \Omega \times[0, T),  \tag{1.1}\\ \tau V_{t}=d_{2} \Delta V-V+\frac{U^{r}}{V^{\prime}} & \text { in } \Omega \times[0, T), \\ \frac{\partial U}{\partial v}=\frac{\partial V}{\partial u}=0 & \text { on } \partial \Omega \times[0, T),\end{cases}
$$

where, as before, $\Delta$ is the usual Laplacian, $\Omega$ is a bounded smooth domain in $\mathbb{R}^{\prime \prime}, \nu$ denotes the outward unit normal to $\partial \Omega, T \leqslant \infty$, and the constants $\tau, d_{1}, d_{2}, p, q, r$ are all positive, $s \geqslant 0$ and

$$
\begin{equation*}
0<\frac{p-1}{q}<\frac{r}{s+1} . \tag{1.2}
\end{equation*}
$$

Here $U$ represents the density of the slowly diffusing activator which activates both $U$ and $V$, and $V$ represents the density of the rapidly diffusing inhibitor which suppresses both $U$ and $V$. Therefore, both $U$ and $V$ are positive, and $d_{1}$ is very small while $d_{2}$ is very large. The parameter $\tau$ here reflects the response rate of $V$ versus the change of $U$.

Condition (1.2) is mathematical, under which one can prove easily that the equilibrium $\bar{U} \equiv 1$ and $\bar{V} \equiv 1$ of the corresponding kinetic system (for ordinary differential equation)

$$
\left\{\begin{array}{l}
\bar{U}_{i}=-\bar{U}+\frac{\bar{U}^{p}}{\bar{V}^{u}}, \\
\tau \overline{V_{i}}=-\bar{V}+\frac{\bar{U}^{r}}{\bar{V}^{s}}
\end{array}\right.
$$

is wable if $\tau<(x+1) /(p-1)$. However, once the diffusion terms are introduced with $d_{1}$ small and $d_{2}$ large in (1.1), linearized analysis of (1.1) shows that the equilibrium $U \equiv 1$ and $V \equiv 1$ becomes unstable and bifurcations occur, thus the "diffusion-driven instability" takes place.

Note that (1.1) does not have variational structure. One way to solve (1.1) is using the "shadow system" approach. More precisely, since $d_{2}$ is large, we divide the second equation in (1.1) by $d_{2}$ and let $d_{2}$ tend to $\infty$. It seems reasonable to expect that, for each fixed $t, V$ tends to a (spatially) harmonic function that must be a constant by the boundary condition. That is, as $d_{2} \rightarrow \infty, V$ tends to a spatially homogeneous function $\xi(t)$. Thus, integrating the second equation in (1.1) over $\Omega$, we reduce (1.1) to the following "shadow system'"

$$
\begin{cases}U_{t}=d_{1} \Delta U-U+\frac{U^{\prime}}{\xi^{\prime}} & \text { in } \Omega \times[0, T)  \tag{1.3}\\ \tau \xi_{t}=-\xi+\frac{1}{|\Omega|} \xi^{-s} \int_{\Omega} U^{r}(x, t) \mathrm{d} x & \text { in }[0, T) \\ \frac{\partial U}{\partial w}=0 & \text { on } \partial \Omega \times[0, T)\end{cases}
$$

where $|\Omega|$ denotes the measure of $\Omega$. Although the above reduction can be verified rigorously in some cases [NT1], we must point out that it is more important to solve (1.1) via solutions of (1.3). It turns out that the steady states of (1.3) and their stability properties are closely related to that of the original system (1.1) and that the study of the steady states of (1.3) essentially reduces to that of the following single equation (by a suitable scaling argument):

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } \Omega,  \tag{1.4}\\ u>0 & \text { in } \Omega, \\ \frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega .\end{cases}
$$

In the case $n=1$, a lot of work has been done by I. Takagi [T]. For $n \geqslant 2$, the situation becomes far more interesting. The pioneering work [NT1-NT3], [LNT] have produced a single-peak spike-layer solution $u_{\varepsilon}$ of (1.4) in 1993. Furthermore, steady states of the shadow system (1.3) as well as the original system (1.1) have been constructed from $u_{E}$ - at least for small $d_{1}$ and large $d_{2}$, and their stability properties have been investigated [NT4,NTY1,NTY2].

It seems illuminating to "solve" (1.4) as well as its Dirichlet counterpart side-by-side:

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{\nu}=0 & \text { in } \Omega,  \tag{1.5}\\ u>0 & \text { in } \Omega, \\ u=0 & \text { on } \partial \Omega,\end{cases}
$$

and compare the qualitative properties of the solutions. I shall first describe how the existence of a single-peak spike-layer solution is established, and then discuss the location and the profile of this single peak. Since the equation in (1.4) and (1.5) is "autonomous" (i.e., no explicit spatial dependence in the equation), the location of the spike must be determined by the geometry of $\Omega$. I would like to call the reader's attention to see how exactly the geometry of $\Omega$ enters the picture in each of the problems (1.4) and (1.5) separately, and to compare the effects of different boundary conditions on the location of the peak.

For $\varepsilon$ small, (1.4) and (1.5) are singular perturbation problems. However, the traditional method in applied mathematics, using inner and outer expansions, simply does not apply here, because a spike-layer solution of (1.4) or (1.5) is exponentially small away from its peaks. To solve (1.4) or (1.5), it is important to note that although (1.1) does not admit a variational structure, there is a natural "energy" functional for (1.4) or (1.5).

In the rest of this section, we will always assume that $1<p<\frac{n+2}{n-2}$ if $n \geqslant 3$, and $1<$ $p<\infty$ if $n=1,2$. We first define the "energy" functional in $H^{l}(\Omega)$

$$
\begin{equation*}
J_{E . N}(u)=\frac{1}{2} \int_{\Omega}\left(\varepsilon^{2}|\nabla u|^{2}+u^{2}\right)-\frac{1}{p+1} \int_{\Omega} u_{+}^{p+1} \tag{1.6}
\end{equation*}
$$

where $u_{+}=\max \{u, 0\}$. It is standard to check that a critical point corresponding to a posifive critical value of $J_{\varepsilon, N}$ is a classical solution of (1.4). Similarly, we define the "energy" functional in $H_{0}^{1}(\Omega)$

$$
\begin{equation*}
J_{\varepsilon, D}(u)=\frac{1}{2} \int_{\Omega}\left(\varepsilon^{2}|\nabla u|^{2}+u^{2}\right)-\frac{1}{p+1} \int_{\Omega} u_{+}^{p+1} \tag{1.7}
\end{equation*}
$$

and observe that a critical point corresponding to a positive critical value of $J_{\varepsilon_{n} D}$ is a classical solution of (1.5). Our first step appears to be nothing unusual; namely, we shall use the well-known Mountain-Pass lemma to guarantee that each of $J_{\varepsilon, N}$ and $J_{\varepsilon, D}$ has a positive critical value. However, in order to use this variational formulation to obtain useful information later, our formulation of the Mountain-Pass lemma deviates from the usual one (see Section 1.4). More precisely, setting

$$
\begin{equation*}
c_{E, N}=\inf \left\{\max _{r \geqslant 0} J_{E, N}(t v) \mid v \geqslant 0, \not \equiv 0 \text { in } H^{\prime}(\Omega)\right\} \tag{1.8}
\end{equation*}
$$

and

$$
\begin{equation*}
c_{\varepsilon, D}=\inf \left\{\max _{t \geqslant 0} J_{\varepsilon, D}(t v) \mid v \geqslant 0, \neq 0 \text { in } H_{0}^{\prime}(\Omega)\right\} \tag{1.9}
\end{equation*}
$$

we show that $c_{\varepsilon, N}$ is a positive critical value of $J_{\varepsilon, N}$, thus gives rise to a solution $u_{\varepsilon, N}$ of (1.4); and similarly that $c_{\varepsilon, D}$ is a positive critical value of $J_{\varepsilon, D}$, thus gives rise to a solution $u_{\varepsilon . D}$ of (1.5). Our main task here is to prove that both $u_{\varepsilon, N}$ and $u_{\varepsilon, D}$ exhibit a single spike-layer behavior, and we are going to determine the location as well as the profile of the spike-layer of $u_{\varepsilon, N}$ and $u_{\varepsilon, D}$ separately.

Roughly speaking, both $u_{\varepsilon_{1} N}$ and $u_{\varepsilon_{1} D}$ can have only one "peak" (i.e., a local maximum point in $\bar{\Omega}$ ), denoted by $P_{\varepsilon, N}$ and $P_{\varepsilon, D}$, respectively, and must tend to 0 everywhere else. Moreover, $P_{E, N}$ must lie on the boundary $\partial \Omega$ and tend to the "most-curved" part of $\partial \Omega$, while $P_{E, D}$ must tend to the "most-centered" part of $\Omega$ as $\varepsilon$ tends to 0 . As for the profiles of $u_{\varepsilon, N}$ and $u_{\varepsilon, D}$, again, roughly speaking, $u_{\varepsilon, D}$ is approximately a "scaled" version of $w$ near $P_{\varepsilon, D}$ where $w$ is the unique solution of

$$
\left\{\begin{array}{l}
\Delta w-w+w^{\prime}=0 \quad \text { in } \mathbb{R}^{\prime \prime},  \tag{1.10}\\
w>0 \quad \text { in } \mathbb{R}^{\prime \prime}, \quad w \rightarrow 0 \quad \text { at } \infty, \\
w(0)=\max w,
\end{array}\right.
$$

while $u_{\varepsilon, N}$ is approximately a "scaled" and "deformed" version of "half" of $w$. To make those descriptions precise, we start with $u_{\varepsilon, N}$.

THEOREM 1.1. For each $\varepsilon$ sufficiently small, the solution $u_{\varepsilon ., N}$ has exactly one local (thus global) maximum in $\bar{\Omega}$ and it is achieved at exactly one point $P_{\varepsilon, N}$ in $\bar{\Omega}$. Moreover, $u_{\varepsilon, N}$ has the following properties:
(i) As $\varepsilon \rightarrow 0$ the translated solution $u_{\varepsilon}\left(\cdot+P_{\varepsilon, N}\right) \rightarrow 0$ except at 0 , and $u_{\varepsilon, N}\left(P_{\varepsilon, N}\right) \rightarrow$ $w(0)$, where $w$ is the unique solution of (1.10).
(ii) $P_{\varepsilon, N} \in \partial \Omega$ and $H\left(P_{\varepsilon, N}\right) \rightarrow \max P \in d \Omega H(P)$ as $\varepsilon \rightarrow 0$, where $H$ denotes the mean curvature of $\partial \Omega$.
(iii) Through rotation and translation we may suppose that $P_{\varepsilon, N}$ is the origin and near $P_{\varepsilon, N}$ the boundary $\partial \Omega=\left\{\left(x^{\prime}, x_{n}\right) \mid x_{n}=\psi_{\varepsilon}\left(x^{\prime}\right)\right\}$ and $\Omega=\left\{\left(x^{\prime}, x_{n}\right) \mid x_{n}>\right.$ $\left.\psi_{\varepsilon}\left(x^{\prime}\right)\right\}$, where $x^{\prime}=\left(x_{1}, \ldots, x_{n-1}\right)$, and $\psi_{\varepsilon}(0)=0, \nabla \psi_{\varepsilon}(0)=0$. Then the diffeomorphism $x=\Phi_{\varepsilon}(\tilde{x})=\left(\Phi_{\varepsilon, 1}(\tilde{x}), \ldots, \Phi_{\varepsilon, 1}(\tilde{x})\right)$ defined by

$$
\Phi_{\varepsilon, j}(\tilde{x})= \begin{cases}\tilde{x}_{j}-\tilde{x}_{n} \frac{\partial \psi_{\varepsilon}}{\partial x_{j}}\left(\tilde{x}^{\prime}\right) & \text { for } j=1, \ldots, n-1 \\ \tilde{x}_{n}+\psi_{\varepsilon}\left(\tilde{x}^{\prime}\right) & \text { for } j=n\end{cases}
$$

flattens the boundary $\partial \Omega$ near $P_{\varepsilon, N}$, and

$$
\begin{equation*}
u_{\varepsilon, N}\left(\Phi_{\varepsilon}(\varepsilon y)\right)=w(y)+\varepsilon \phi(y)+\mathrm{o}(\varepsilon) \tag{1.11}
\end{equation*}
$$

where $\phi$ is the unique solution of

$$
\left\{\begin{array}{l}
\Delta \phi-\phi+p w^{p-1} \phi  \tag{1.12}\\
\quad+2\left|y_{n}\right| \sum_{i, j=1}^{n} \psi_{\varepsilon, i j} \frac{\partial^{2} w}{\partial y_{i} \partial y_{j}}-\alpha_{\varepsilon}\left(\operatorname{sgn} y_{n}\right) \frac{\partial w}{\partial y_{n}}=0 \quad \text { in } \mathbb{R}^{n} \\
\phi(y) \rightarrow 0 \quad \text { as } y \rightarrow \infty, \quad \text { and } \quad \int_{\mathbb{R}^{n}} \phi \frac{\partial w}{\partial y_{j}}=0 \quad \text { for } j=1, \ldots, n
\end{array}\right.
$$

with $\psi_{\varepsilon, i j}=\frac{\partial^{2} \psi_{\varepsilon}}{\partial x_{i} \partial x_{j}}(0), \alpha_{\varepsilon}=\Delta \psi_{\varepsilon}(0)$.
Note that (1.10) gives the profile of $u_{\varepsilon, N}$ up to the second order, where it can be proved that $\phi$ actually decays exponentially near $\infty$. The detailed proof of Theorem 1.1 may be found in [NT2,NT3].

We now turn to the Dirichlet case. To describe our results, first we need to introduce some notation. For a bounded smooth domain $\widetilde{\Omega}$ in $\mathbb{R}^{\prime \prime}$, we let $\mathcal{P}_{\widetilde{\Omega}} w$ be the solution of the linear problem

$$
\begin{cases}\Delta v-v+w^{p}=0 & \text { in } \tilde{\Omega},  \tag{1.13}\\ v=0 & \text { on } \partial \tilde{\Omega},\end{cases}
$$

where $w$ is the unique solution of (1.10). Now, set

$$
z=\frac{x-P_{\varepsilon, D}}{\varepsilon}
$$

and $\Omega_{\varepsilon}=\left\{z \in \mathbb{R}^{\prime \prime} \mid x=P_{\varepsilon, D}+\varepsilon z \in \Omega\right\}$, where $P_{\varepsilon, D}$ is the unique peak of $u_{\varepsilon, D}$ as is stated in Theorem 1.2. Since eventually we will show the scaled version of $\mathcal{P}_{\Omega_{\varepsilon}} w$ is a very good approximation of $u_{\varepsilon}$, we need to study the difference between $w$ and $\mathcal{P}_{\Omega_{\varepsilon}} w$, that is, the function $\varphi_{\varepsilon} \equiv w-\mathcal{P}_{\Omega_{\varepsilon}} w$, which satisfies

$$
\begin{cases}\Delta \varphi_{\varepsilon}-\varphi_{\varepsilon}=0 & \text { in } \Omega_{\varepsilon}  \tag{1.14}\\ \varphi_{\varepsilon}=w & \text { on } \partial \Omega_{\varepsilon}\end{cases}
$$

The quantity $\varphi_{E}$ is extremely small and it turns out that the "correct" order of the difference $w-\mathcal{P}_{\Omega_{\varepsilon}} w$ (for our purposes) is the logarithmic of $\varphi_{\varepsilon}^{-\varepsilon}$; i.e., the function $\delta_{\varepsilon}(x)=$ $-\varepsilon \log \varphi_{\varepsilon}(\bar{z})$, which satisfies a nonlinear equation instead

$$
\begin{cases}\varepsilon \Delta \delta_{\varepsilon}-\left|\nabla \delta_{\varepsilon}\right|^{2}+1=0 & \text { in } \Omega  \tag{1.15}\\ \delta_{\varepsilon}(x)=-\varepsilon \log w\left(\frac{x-P_{\varepsilon} \cdot D}{\varepsilon}\right) & \text { on } \partial \Omega\end{cases}
$$

Finally, we enlarge $\varphi_{\varepsilon}$ to $V_{\varepsilon}(z)=\mathrm{e}^{\frac{1}{\varepsilon} \delta_{r}\left(P_{r}, D\right)} \varphi_{\varepsilon}(z)$. It is clear that $V_{\varepsilon}$ satisfies

$$
\left\{\begin{array}{l}
\Delta V_{\varepsilon}-V_{\varepsilon}=0 \quad \text { in } \Omega_{\varepsilon} \\
V_{\varepsilon}(0)=1
\end{array}\right.
$$

We are now ready to state our main results for the Dirichlet problem (1.5).
THEOREM 1.2. For each $\varepsilon$ sufficiently small, the solution $u_{\varepsilon, D}$ has exactly one local (thus global) maximum in $\Omega$ and it is achieved at exactly one point $P_{\varepsilon, D}$ in $\Omega$. Moreover, $u_{\varepsilon, D}$ has the following properties:
(i) As $\varepsilon \rightarrow 0$ the translated solution $u_{\varepsilon, D}\left(\cdot+P_{\varepsilon, D}\right) \rightarrow 0$ except at 0 , and $u_{\varepsilon, D}\left(P_{\varepsilon, D}\right) \rightarrow$ $w(0)$, where $w$ is the unique solution of (1.10).
(ii) $d\left(P_{\varepsilon, D}, \partial \Omega\right) \rightarrow \max _{P \in \Omega} d(P, \partial \Omega)$ as $\varepsilon \rightarrow 0$, where $d$ denotes the usual distance function.
(iii) For every sequence $\varepsilon_{k} \rightarrow 0$, there is a subsequence $\varepsilon_{k_{i}} \rightarrow 0$ such that for $\varepsilon=\varepsilon_{k_{i}}$ it holds that

$$
\begin{equation*}
u_{\varepsilon, D}(x)=\mathcal{P}_{\Omega_{\varepsilon}} w(z)+\mathrm{e}^{-\frac{1}{\varepsilon} \delta_{\varepsilon}\left(P_{\varepsilon}, D\right)} \phi_{\varepsilon}(z)+\mathrm{o}\left(\mathrm{e}^{-\frac{1}{\varepsilon} \delta_{\varepsilon}\left(P_{\varepsilon, D}\right)}\right) \tag{1.16}
\end{equation*}
$$

where $\delta_{\varepsilon}\left(P_{\varepsilon, D}\right) \rightarrow 2 \max p_{\in \Omega} d(P, \partial \Omega),\left\|\mathrm{e}^{-\mu|z|}\left(\phi_{\varepsilon}-\phi_{0}\right)\right\|_{L^{\infty}\left(\mathbb{R}^{\prime \prime}\right)} \rightarrow 0$ with $1>$ $\mu>\max \{0,2-p\}, \phi_{0}$ being a solution of

$$
\left(\Delta-1+p w^{p-1}\right) \phi_{0}=p w^{p-1} V_{0} \quad \text { in } \mathbb{R}^{n}
$$

and $V_{0}$ being the pointwise limit of $V_{\varepsilon}, \varepsilon=\varepsilon_{k_{i}}$.
Several remarks are in order. First, comparing Theorems 1.1 and 1.2, we see that part (i) of Theorems 1.1 and 1.2, respectively, shows that each of the solutions $u_{\varepsilon, N}$ and $u_{\varepsilon, D}$ possesses a single-peak spike-layer structure, and, part (ii) of Theorems 1.1 and 1.2, also respectively, locates the peak of $u_{\varepsilon, N}$ and of $u_{\varepsilon, D}$. It is interesting to note that although intuitively, by the exponential decay of $w$, a scaled $w$ (i.e., $w\left(\frac{x-P_{F, D}}{\varepsilon}\right)$ ) which is truncated near $\partial \Omega$ seems to be an excellent approximation for $u_{s, D}$, part (iii) of Theorem 1.2 indicates that the function $\mathcal{P}_{\Omega_{\varepsilon}} w\left(\frac{x-P_{E, D}}{\varepsilon}\right)$ is actually a better approximation for $u_{\varepsilon, D}$. This is quite delicate since the error terms induced by these two approximations are both of exponentially small order and, are very close. In fact, this observation turns out to be crucial in pushing our method through for the Dirichlet case (1.5).

We now describe our method of proofs. In both cases (1.4) and (1.5), the most important idea is to obtain an estimate for $c_{\varepsilon, N}$ and $c_{\varepsilon, D}$, respectively, which is sufficiently accurate to reflect the influence of the geometry of the domain $\Omega$. More precisely, both the zerothorder approximations for $c_{\varepsilon, N}$ and $c_{\varepsilon, D}$ depend only on the unique solution $w$ (and its energy) of (1.10). The geometry of the domain $\Omega$, namely, the boundary mean curvature $H\left(P_{\varepsilon, N}\right)$ at $P_{\varepsilon, N}$ in the Neumann case and the distance $d\left(P_{\varepsilon, D}, \partial \Omega\right)$ in the Dirichlet case, enters the first-order approximation of $c_{\epsilon, N}$ and $c_{\varepsilon, D}$. To be explicit, we have

$$
\begin{equation*}
c_{\varepsilon, N}=\varepsilon^{\prime \prime}\left\{\frac{1}{2} I(w)-(n-1) \gamma_{N} H\left(P_{\varepsilon, N}\right) \varepsilon+o(\varepsilon)\right\} \tag{1.17}
\end{equation*}
$$

and

$$
\begin{equation*}
c_{\varepsilon, D}=\varepsilon^{n}\left\{I(w)+\mathrm{e}^{-\frac{1}{\varepsilon} \delta_{\varepsilon}\left(P_{\varepsilon, D}\right)} \gamma_{D}+o\left(\mathrm{e}^{-\frac{1}{\varepsilon} \delta_{\varepsilon}\left(P_{\varepsilon, D}\right)}\right)\right\}, \tag{1.18}
\end{equation*}
$$

where $\gamma_{N}$ and $\gamma_{D}$ are positive constants independent of $\varepsilon$ and

$$
\begin{equation*}
I(w)=\frac{1}{2} \int_{\mathbb{R}^{n}}\left(|\nabla w|^{2}+w^{2}\right)-\frac{1}{p+1} \int_{\mathbb{R}^{n}} w^{p+1} \tag{1.19}
\end{equation*}
$$

Observe that part (ii) of Theorems 1.1 and 1.2 follows from (1.17) and (1.18), respectively, together with some useful upper bounds of $c_{\varepsilon, N}$ and $c_{\varepsilon, D}$. However, to obtain (1.17) and (1.18), one must first establish part (iii) of Theorems 1.1 and 1.2, respectively, namely, the profiles of $u_{E, N}$ and $u_{E, D}$ (i.e., (1.11) and (1.16)). This turns out to rely heavily on some preliminary versions of (1.17) and (1.18). The proofs are indeed very involved and we shall refer the reader to the papers [NT2,NT3] and [NW] for the full details. One interesting component ju our proof of Theorem 1.2 is that the limit of $\delta_{\varepsilon}$ turns out to be a "viscosity" solution of the Hamilton-Jacobi equation

$$
|\nabla \delta|=1 \quad \text { in } \Omega
$$

which gives rise to the distance $d\left(P_{\varepsilon,} D, \partial \Omega\right)$. This also seems to indicate that although the function $\varphi_{\varepsilon}$ (or $V_{\varepsilon}$ ) satisfies a simple linear elliptic equation while $\delta_{\varepsilon}$ satisfies a nonlinear one, the "correct" order of the error ( $w-\mathcal{P}_{\Omega_{\varepsilon}} w$ ) is far more important than the form of the equation it satisfies.

It turns out that the Neumann problem (1.4) also has a single-interior-peak spike-layer solution which is very close to the solution obtained in Theorem 1.2 (for the Dirichlet case (1.5)). We refer the interested reader to [W2] or the next section.

Theorems 1.1 and 1.2 establish the existence of single-peak spike-layer solutions of (1.4) and (1.5), respectively. One natural question is that: Are there other single-peak spikelayer solutions of (1.4) or (1.5)? And, if there are, where are the locations of their peaks?

For boundary spikes of the Neumann problem (1.4), Wei showed that if $u_{\varepsilon}$ is a solution of (1.4) which has a single boundary peak $P_{\varepsilon}$, then, as $\varepsilon \rightarrow 0$, by passing to a subsequence if necessary, $P_{\varepsilon}$ must tend to a critical point of the boundary mean curvature. On the other hand, for each nondegenerate critical point $P_{0}$ of the boundary mean curvature, one can
always construct, for every $\varepsilon>0$ small, a solution of (1.4) which has exactly one peak at $P_{\varepsilon} \in \partial \Omega$ such that $P_{\varepsilon} \rightarrow P_{0}$ as $\varepsilon \rightarrow 0$. (See [W1] for details).

For interior spikes of the Neumann problem (1.4), it is established in [GPW] that (by passing to a subsequence if necessary) the single peak $P_{\varepsilon}$ of a solution of (1.4) must tend to a critical point of the distance function $d(P, \partial \Omega)$. Conversely, again with additional hypotheses on $\Omega$ and a nondegeneracy condition on a critical point $P_{0} \in \Omega$ of $d(P, \partial \Omega)$, one can construct, for every $\varepsilon>0$ small, a solution of (1.4) which has exactly one peak at $P_{\varepsilon} \in \Omega$ such that $P_{\varepsilon} \rightarrow P_{0}$ as $\varepsilon \rightarrow 0$. (See [W2] for details).

The counterparts of the above results for the Dirichlet case (1.5) are, however, not settled. Progress has been made in [W4].

### 1.2. Multi-peak spike-layer solutions in elliptic boundary-value problems

A vast amount of literature on (1.4) has been produced since the publication of [NT3] in 1993. Much progress has been made and fascinating results concerning multi-peak spike-layer solutions have been obtained. We will only include the most recent and complete results here. Again, in this section we shall always assume that $1<p<\frac{n+2}{n-2}$ in (1.4).

An "ideal" result for multi-peak spike-layer solutions to (1.4) would read as follows:

CONJECTURE. For any given nonnegative integers $k$ and $\ell$, (1.4) always possesses a multi-peak spike-layer solution with exactly $k$ interior-peaks and $\ell$ boundary-peaks, provided that $\varepsilon$ is sufficiently small.

This conjecture almost has been proved in this generality. In [GW2], this conjecture is established with some minor conditions imposed on the domain $\Omega$. The main difficulty here comes from the fact the "error" in the boundary-peak case is algebraic (as shown in (1.11) or (1.17)) while the "error" in the interior-peak case is transcendental (as indicated in (1.16) or (1.18)). To overcome this, a delicate argument was devised in [GW2] to handle the gap in the error, but only under additional technical assumptions on $\Omega$.

On the other hand, if we are to treat interior-peaks and boundary-peaks separately, definitive results are possible. For the case of interior-peaks, the following result was obtained in [GW1].

THEOREM 1.3. Given any positive integer $k$, for every $\varepsilon$ sufficiently small, (1.4) always possesses a multi-peak spike-layer solution with exactly $k$ interior peaks. Furthermore, as $\varepsilon \rightarrow 0$ the $k$ peaks converge to a maximum point of the function

$$
\begin{equation*}
\varphi\left(P^{l}, \ldots, P^{k}\right)=\min \left\{d\left(P^{i}, \partial \Omega\right), \left.\frac{1}{2}\left|P^{\ell}-P^{m}\right| \right\rvert\, i, \ell, m=1, \ldots, k\right\}, \tag{1.20}
\end{equation*}
$$

where $P^{l}, \ldots, P^{k} \in \Omega$.
Intuitively speaking, a maximum point ( $Q^{1}, \ldots, Q^{h}$ ) of the function $\varphi$ in (1.20) corresponds to the centers of $k$ disjoint balls of equal size packed in $\Omega$ (i.e., contained in $\Omega$ )
with the largest possible cliameter. Such a maximum point certainly exists, although may not be unique.

The method of proof is still variational; however, with the help of Lyapunov-Schmidt reduction, the original "global" variational approach has now evolved to a powerful "localized" version. To illustrate the basic idea involved here, it seems best that we only treat the simplest case $k=1$.

This "localized" energy method is semiconstructive. The strategy is simple: First, we construct an approximate solution in the sense of Lyapunov-Schmidt with its peak located at a prescribed point $P \in \Omega$. Then we perturb this point $P$ and find a critical point of the corresponding "energy" of this approximate solution, which gives rise to an interior-peak spike-layer solution of (1.4).

To carry out this strategy, we let $w$ be the solution of (1.10), as before, and, for any given point $P=\left(P_{1}, \ldots, P_{n}\right)$ in $\Omega$, let $\mathcal{P}_{\varepsilon, p} w$ be the solution of

$$
\begin{cases}\Delta v-v+w^{p}=0 & \text { in } \Omega_{E, P} \\ \frac{\partial v}{\partial v}=0 & \text { on } \partial \Omega_{E, P}\end{cases}
$$

where $\Omega_{\varepsilon, P}=\left\{z \in \mathbb{R}^{\prime \prime} \mid x=P+\varepsilon z \in \Omega\right\}$. Now solve

$$
\begin{equation*}
u_{\varepsilon, P}=\mathcal{P}_{\varepsilon, P} w+\psi_{\varepsilon, P} \tag{1.21}
\end{equation*}
$$

with $\psi_{\varepsilon, P} \in K_{\varepsilon, P}^{\perp}$, where

$$
\begin{equation*}
K_{\varepsilon, p}=\operatorname{span}\left\{\left.\frac{\partial \mathcal{P}_{\varepsilon, p} w}{\partial P_{j}} \right\rvert\, j=1, \ldots, n\right\} \tag{1.22}
\end{equation*}
$$

and that $\psi_{\varepsilon, P}$ is $C^{1}$ in $P, \Delta u_{\varepsilon, P}-u_{\varepsilon, P}+u_{\varepsilon, P}^{p} \in K_{\varepsilon, P}$ and

$$
\begin{equation*}
\left\|\psi_{\varepsilon, P}\right\|_{H^{2}\left(\Omega_{\varepsilon, P}\right)} \leqslant C \exp \left[-\frac{C}{\varepsilon} d(P, \partial \Omega)\right] \tag{1.23}
\end{equation*}
$$

Next, we define

$$
\begin{equation*}
\Phi_{\varepsilon}(P)=J_{\varepsilon}\left(u_{\varepsilon, P}\right)=J_{\varepsilon}\left(\mathcal{P}_{\varepsilon, P} w+\psi_{\varepsilon, P}\right) \tag{1.24}
\end{equation*}
$$

It is not hard to see that a maximum point $P_{\varepsilon}$ of $\Phi_{\varepsilon}$, i.e.,

$$
\begin{equation*}
\Phi_{E}\left(P_{E}\right)=\max _{P \in \Omega} \Phi_{\varepsilon}(P) \tag{1.25}
\end{equation*}
$$

gives a solution $u_{E}=\mathcal{P}_{\varepsilon, P_{\varepsilon}} w+\psi_{\varepsilon, P_{\varepsilon}}$ of (1.4). For

$$
\begin{equation*}
\Delta u_{\varepsilon}-u_{\varepsilon}+u_{\varepsilon}^{p}=\sum_{j=1}^{n} \alpha_{j} \frac{\partial \mathcal{P}_{\varepsilon, P_{\varepsilon}} w}{\partial P_{j}}, \tag{1.26}
\end{equation*}
$$

for some $\alpha_{1}, \ldots, \alpha_{n} \in \mathbb{R}$. From (1.25) and (1.26) it follows that

$$
\begin{align*}
0 & =\left.\frac{\partial \Phi_{\varepsilon}(P)}{\partial P_{k}}\right|_{P=P_{r}}=J_{\varepsilon}^{\prime}\left(u_{\varepsilon}\right) \frac{\partial u_{\varepsilon}}{\partial P_{k}} \\
& =\sum_{j=1}^{n} \alpha_{j} \int_{\Omega_{t}, P_{r}} \frac{\partial \mathcal{P}_{\varepsilon, P_{\varepsilon}} w}{\partial P_{j}} \frac{\partial\left(\mathcal{P}_{\varepsilon, P_{k}} w+\psi_{\varepsilon, P_{\varepsilon}}\right)}{\partial P_{k}}=\sum_{j=1}^{n} a_{k_{j}} \alpha_{j}, \tag{1.27}
\end{align*}
$$

where the matrix ( $a_{k j}$ ) is defined by the last equality. Due to the cancellation property of the integral

$$
\begin{equation*}
\int_{\Omega_{\varepsilon, \sqrt{*}}} \frac{\partial \mathcal{P}_{\varepsilon, P_{k}} w}{\partial P_{j}} \frac{\partial \mathcal{P}_{\varepsilon, P_{k}} w}{\partial P_{k}}, \quad k \neq j, \tag{1.28}
\end{equation*}
$$

and (1.23), we see that $a_{k k}$ is much larger than $a_{k j}, k \neq j$. Consequently, $\operatorname{det}\left(a_{k j}\right) \neq 0$. Therefore, $\alpha_{j}=0, j=1, \ldots, n$, and the proof is complete. This method generalizes to arbitrary $k>1$.

For the case of boundary-peaks, the situation becomes more interesting. The following result is obtained in [GWW].

THEOREM 1.4. Given any positive integer $k$, (1.4) always possesses a multipeak spikelayer solution with exactly $k$ boundary peaks, provided that $\varepsilon$ is sufficiently small. Furthermore, as $\varepsilon \rightarrow 0$, the $k$ peaks $Q_{1}^{\varepsilon}, \ldots, Q_{k}^{\varepsilon}$ have the following property:

$$
\begin{equation*}
H\left(Q_{j}^{c}\right) \rightarrow \min _{p \in \partial \Omega} H(P), \tag{1.29}
\end{equation*}
$$

where $H$ denotes the mean curvature of $\partial \Omega$.

Comparing the above result to Theorem 1.1, we see a very interesting difference in the location of the peaks: Theorem 1.1 guarantees the existence of a single boundary peak near a maximum of the boundary mean curvature, while Theorem 1.4 implies the existence of an arbitany number of boundary peaks near a minimum of the boundary mean curvature. Whether (1.4) has a spike-layer solution with exactly $k$ boundary peaks near a maximum of the boundary mean curvature, for a prescribed positive integer $k$, remains an interesting open question.

The proof uses basically the same approach as that of Theorem 1.3. The detailed computations are, of course, quite different. We refer the interested readers to [GWW] for details.

In [GW1,GPW], it is also proved that if $P_{\varepsilon}^{\prime}, \ldots, P_{\varepsilon}^{k}$ in $\Omega$ are the locations of the $k$ (interior) peaks of a solution to (1.4), then, by passing to subsequence if necessary, $P_{\varepsilon}^{l}, \ldots, P_{\varepsilon}^{k}$ must tend to a critical point of $\varphi$ in (1.20).

We see that we have acquired a fairly good understanding of spike-layer solutions of ( 1.4 ) although there are still major questions left open. On the other hand, our knowledge of solutions of (1.4) with multidimensional concentration sets is very limited at this time. In the next section we shall report our progress in that direction.

To conclude this section we remark that the existence of multi-peak spike-layer solutions for the Dirichlet problem (1.5) is, in general, not possible. For instance, when $\Omega$ is a ball, [GNN1] implies that solutions of (1.5) must be radially symmetric and thus (1.5) can only have single-peak solutions. This result is extended to strictly convex domains by Wei [W2]. Therefore, the existence of multi-peak spike-layer solutions for the Dirichlet problem (1.5) is drastically different from its counterpart of the Neumann case (1.4), and generally depends on the geometry of $\Omega$.

### 1.3. Solutions with multidimensional concentration sets

A spike-fayer solution (discussed in previous sections) has the property that its "energy" or "mass" concentrates near isolated points (i.e., its peaks) in $\bar{\Omega}$, which are 0 -dimensional. Therefore we view a spike-layer solution as a solution with zero-dimensional concentration set. Similarly, solutions which are small everywhere except near a curve or curves are regarded as solutions with one-dimensional concentration sets. Generalizing in this manner, we can define solutions with $k$-dimensional concentration sets.

The following conjecture has been around for quite some time:

CONJECTURE. Given any integer $0 \leqslant k \leqslant n-1$, there exists $p_{k} \in(1, \infty)$ such that for $1<p<p_{k}$, (1.4) possesses a solution with $k$-dinensional concentration set, provided that $\varepsilon$ is sufficiently small.
(See, for instance, [N2].)
Progress in this direction has only been made very recently. In [MM1,MM2] the above conjecture was established for a sequence of $\varepsilon \rightarrow 0$ in the case $k=n-1$ with the boundary $\partial \Omega$ (or, part of $\partial \Omega$ ) being the concentration set.

THEOREM 1.5. Let $\Omega \subseteq \mathbb{R}^{n}$ be a bounded smooth domain and $p>1$. Then, for any component $\Gamma$ of $\partial \Omega$, there exists a sequence $\varepsilon_{m} \rightarrow 0$ such that (1.4) possesses a solution $u_{\varepsilon_{m}}$ for $\varepsilon=\varepsilon_{m}$ and $u_{\varepsilon_{m}}$ concentrates at $\Gamma$; i.e., $u_{\varepsilon_{m}} \rightarrow 0$ away from $\Gamma$ and $u_{\varepsilon_{m}}\left(\varepsilon_{m}(x-\right.$ $\left.\left.x_{0}\right)\right) \rightarrow w\left(x \cdot \nu_{0}\right)$ near $x_{0} \in \Gamma$ where $\nu_{0}$ is the unit inner normal to $\Gamma$ at $x_{0}$ and $w$ is the solution of (1.10) with $n=1$.

Note that in Theorem 1.5, no upper bound is imposed on $p$. The proof is very technical, and we shall only give a very brief outline. The first crucial step is to construct a "good" approximate solution $\tilde{u}_{\varepsilon}$. Then, a detailed analysis of the second differential $J_{\varepsilon}^{\prime \prime}\left(\tilde{u}_{\varepsilon}\right)$, where $J_{\varepsilon}$ is defined in ( 1.6 ), is essential for using the contraction mapping argument to obtain the solution $u_{\varepsilon}$ near $\tilde{u}_{\varepsilon}$. In the second step it is observed that the Morse index of $\tilde{u}_{\varepsilon}$ tends to $\infty$ as $\varepsilon \rightarrow 0$, and thus the invertibility of $J_{\varepsilon}^{\prime \prime}\left(\tilde{u}_{\varepsilon}\right)$ is only guaranteed along a sequence $\varepsilon_{m} \rightarrow 0$. Similar to the proofs of spike-layer solutions in previous sections, the construction of approximate solutions here is crucial, and is delicate and interesting. Roughly speaking, it is natural to use the one-dimensional solution of (1.10) as a candidate for approximate
solutions. This turns out to be inadequate. In [MM1] (1.10) was replaced by

$$
\left\{\begin{array}{l}
w^{\prime \prime}-w+w^{p}=-\lambda w^{\prime} \quad \text { in }[0, \infty)  \tag{1.30}\\
w^{\prime}(0)=w(\infty)=0 \quad \text { and } \quad w>0
\end{array}\right.
$$

where $\lambda$ is related to the mean curvature of the boundary of $\Omega_{\varepsilon}=\frac{1}{\varepsilon} \Omega$ (which tends to 0 as $\varepsilon \rightarrow 0$ ).

A natural question would be that whether (1.4) admits any solutions which concentrate on "interior" curves, and if there are such solutions, how the locations of these "interior" curves are determined. Even at the formal level, these are difficult questions. To this date, progress has been made only in radially symmetric cases.

In [AMN3], the following result was established.

THEOREM 1.6. Let $\Omega$ be the unit ball $B_{1}$ in $\mathbb{R}^{n}$. Then, for every $p>1$ and $\varepsilon$ small, (1.4) possesses a radial solution $u_{\varepsilon}$ concentrating at $|x|=r_{\varepsilon}$ for which $1-r_{\varepsilon} \sim \varepsilon|\log \varepsilon|$.
(Here we use the notation " $f \sim g$ " to denote that as $\varepsilon \rightarrow 0$, the quotient $f / g$ is bounded from above and below by two positive constants.) Note that again we do not impose any upper bound on $p$ here.

We remark that the solution guaranteed by Theorem 1.6 is different from the one in Theorem 1.5, as the maximum of the solution in Theorem 1.5 takes place on the boundary, while the maximum of the solution in Theorem 1.6 lies in the interior of $\Omega$. In fact, it is possible to construct a solution of (1.4) which concentrates on a cluster of spheres.

THEOREM 1.7 [MNW]. Let $\Omega$ be the unit ball $B_{1}$ in $\mathbb{R}^{n}$ and $N$ be a given positive integer. Then for every $p>1$ and $\varepsilon$ small, (1.4) possesses a radial solution $u_{\varepsilon}$ concentrating on $N$ spheres $|x|=r_{\varepsilon, j}, j=1, \ldots, N$, where $1-r_{\varepsilon, 1} \sim \varepsilon|\log \varepsilon|$ and $r_{\varepsilon, j}-r_{\varepsilon, j+1} \sim \varepsilon|\log \varepsilon|$ for $j=1, \ldots, N-1$.

Since the basic ideas involved in Theorems 1.6 and 1.7 are similar, we shall confine our discussions in the rest of this section to Theorem 1.6 for the sake of simplicity.

It is obvious that (1.5) - the Dirichlet counterpart of (1.4) - does not admit any solutions other than a single-peak solution in case $\Omega$ is a ball, as is guaranteed by Gidas et al. [GNN1]. Nevertheless, Theorem 1.6 gives us a good opportunity to compare Dirichlet and Neumano boundary conditions. To illustrate the ideas involved, it seems best to discuss a slightly more general equation

$$
\begin{equation*}
\varepsilon^{2} \Delta u-V(|x|) u+u^{p}=0 \quad \text { and } \quad u>0 \quad \text { in } B_{1}, \tag{1.31}
\end{equation*}
$$

under the boundary conditions

$$
\begin{equation*}
\frac{\partial u}{\partial v}=0 \quad \text { on } \partial \Omega \tag{1.32}
\end{equation*}
$$

or

$$
\begin{equation*}
u=0 \quad \text { on } \partial \Omega, \tag{1.33}
\end{equation*}
$$

where $V$ is a radial potential bounded by two positive constants. In fact, the relevant quantity turns out to be

$$
\begin{equation*}
M(r)=r^{n-1} V^{\theta}(r), \quad \theta=\frac{p+1}{p-1}-\frac{1}{2}, \tag{1.34}
\end{equation*}
$$

and Theorem 1.6 is a special case of the following result.
THEOREM 1.8 [AMN3]. (i) If $M^{\prime}(1)>0$ then for every $p>1$ and $\varepsilon$ small, the problem (1.31), (1.32) possesses a solution $u_{\varepsilon}$ concentrating at $|x|=r_{\varepsilon}$, where $1-r_{\varepsilon} \sim$ $\varepsilon|\log \varepsilon|$.
(ii) If $M^{\prime}(1)<0$ then for every $p>1$ and $\varepsilon$ small, the problem (1.31), (1.33) possesses a solution $u_{\varepsilon}$ concentrating at $|x|=r_{\varepsilon}$, where $1-r_{\varepsilon} \sim \varepsilon|\log \varepsilon|$.

REMARK. In addition to the solutions in Theorem 1.8, the problems (1.31), (1.32) and (1.31), (1.33) also have solutions concentrating near $|x|=\bar{r}$, where (and if) $\bar{F}$ is a local extreme point of $M$. This particular solution also exists for the nonlinear Schrödinger equations in $\mathbb{R}^{\prime \prime}$. (See [AMN2].)

The proof relies upon a finite-dimensional Lyapunov-Schmidt reduction and a "localized" energy method. Again, the first crucial step, for both (i) and (ii), is to find a good approximate solution $z_{\rho, N}^{\varepsilon}$ for (i) and $z_{\rho, D}^{\varepsilon}$ for (ii), where $\rho$ is a parameter between 0 and 1 , denoting the radius of concentration and will be determined eventually. Observe that a solution to the problem (1.31) and (1.32) is a critical point of the (rescaled) functional on $H_{r}^{1}\left(B_{l / \varepsilon}\right)$

$$
\begin{equation*}
\widetilde{J}_{\varepsilon, N}(u)=\frac{1}{2} \int_{B_{1 / \varepsilon}}\left(|\nabla u|^{2}+V(\varepsilon|x|) u^{2}\right)-\frac{1}{p+1} \int_{B_{1 / \varepsilon}} u_{+}^{p+1} \tag{1.35}
\end{equation*}
$$

where $H_{V}^{1}$ is the space of all radial $H^{1}$ functions on $B_{1 / \varepsilon}$. The general abstract procedure establishing $\widetilde{J}_{\varepsilon, N}^{\prime}\left(z_{\rho, N}^{\varepsilon}+w\right)=0$ is equivalent to
(a) finding $w=w_{\rho, N}^{\varepsilon} \in\left(T_{z} Z_{N}^{\varepsilon}\right)^{\perp}$ such that $P \widetilde{J}_{\varepsilon, N}^{\prime}\left(\bar{z}_{\rho, N}^{\varepsilon}+w\right)=0$, and
(b) finding a stationary point of

$$
\begin{equation*}
\Psi_{\varepsilon, N}(\rho)=\tilde{J}_{\varepsilon, N}\left(z_{\rho, N}^{\varepsilon}+w_{\rho, N}^{\varepsilon}\right) \tag{1.36}
\end{equation*}
$$

where $P$ denotes the orthogonal projection from $H_{r}^{l}$ onto $\left(T_{z} Z_{N}^{\varepsilon}\right)^{\perp}, T_{z} Z_{N}^{\varepsilon}$ is the tangent space of $Z_{N}^{\varepsilon}$ at $z$ and $Z_{N}^{\varepsilon}$ is the family of the approximate solutions $z_{\rho, N}^{\varepsilon}$. To find nontrivial critical value of $\Psi_{\varepsilon, N}$, we have the following expansion

$$
\begin{equation*}
\varepsilon^{\prime-1} \Psi_{\varepsilon, N}(\rho)=M(\varepsilon \rho)\left[\alpha-\beta \mathrm{e}^{-2 \lambda\left(\frac{1}{\varepsilon}-\rho\right)}\right]+\text { higher-order terms } \tag{1.37}
\end{equation*}
$$

where $\alpha, \beta$ are two positive constants and $\lambda^{2}=V(\varepsilon \rho)$. Now, differentiating (1.37) with respect to $\rho$ and setting the leading term to 0 , we obtain

$$
\begin{aligned}
& \varepsilon M^{\prime}(\varepsilon \rho)\left[\alpha-\beta \mathrm{e}^{-2 \lambda\left(\frac{1}{\varepsilon}-\rho\right)}\right] \\
& \quad+2 \beta M(\varepsilon \rho)\left[\varepsilon \lambda^{\prime}(\varepsilon \rho)\left(\frac{1}{\varepsilon}-\rho\right)-\lambda(\varepsilon \rho)\right] \mathrm{e}^{-2 \lambda\left(\frac{1}{\varepsilon}-\rho\right)}=0
\end{aligned}
$$

If $\frac{1}{\varepsilon}-\rho \sim|\log \varepsilon|$, then, as $\varepsilon \rightarrow 0$

$$
\mathrm{e}^{-2 \lambda\left(\frac{1}{k}-\rho\right)} \rightarrow 0
$$

and therefore

$$
\begin{equation*}
\varepsilon \alpha M^{\prime}(\varepsilon \rho) \sim 2 \beta M(\varepsilon \rho) \lambda(\varepsilon \rho) \mathrm{e}^{-2 \lambda\left(\frac{1}{f}-\rho\right)} \tag{1.38}
\end{equation*}
$$

which can be achieved if $M^{\prime}(1)>0\left(\right.$ since $\varepsilon \rho \rightarrow 1$ and $\left.\frac{1}{\varepsilon}-\rho \sim|\log \varepsilon|\right)$.
For the Dirichlet case (1.31) and (1.33) we define similarly the functionals $\widetilde{J}_{\varepsilon, D}$ and $\Psi_{\varepsilon, D}$ and the expansion corresponding to (1.37) now reads as follows:

$$
\begin{equation*}
\varepsilon^{n-1} \Psi_{\varepsilon, D}(\rho)=M(\varepsilon \rho)\left[\alpha+\beta \mathrm{e}^{-2 \lambda\left(\frac{1}{\digamma}-\rho\right)}\right]+\text { higher-order terms. } \tag{1.39}
\end{equation*}
$$

Comparing (1.39) to (1.37), we see that only the sign for the term $\beta \mathrm{e}^{-2 \lambda\left(\frac{1}{e}-\rho\right)}$ is different, which reflects the different or, opposite effects of Dirichlet and Neumann boundary conditions. Heuristically, when $V \equiv 1$, the first term in (1.37) and (1.39) is due to the volume energy which always has a tendency to "shrunk", while the second term $\pm \beta \mathrm{e}^{-2 \lambda\left(\frac{1}{k}-\rho\right)}$ in (1.39) and (1.37), respectively, inclicates that in the Dirichlet case the boundary "pushes" the mass of the solution away from the boundary (therefore only single-peak solutions are possible), but in the Neumann case the boundary "pulls" the mass of the solution and thereby reaches a balance at $\rho=r_{\varepsilon} \sim 1-\varepsilon|\log \varepsilon|$ creating an extra solution.

We remark that the method described above also applies to the annulus case and yields the following interesting results for $V \equiv 1$, which illustrates the opposite effects between Dirichlet and Neumann boundary conditions most vividly.

Theorem 1.9 [AMN3]. (i) For every $p>1$ and $\varepsilon$ small, the Neunam problem (1.4) with $\Omega=\left\{x \in \mathbb{R}^{\prime \prime}|0<a<|x|<b\}\right.$ possesses a solution concentrating at $|x|=r_{\varepsilon}$, where $b-r_{\varepsilon} \sim \varepsilon \| \log \varepsilon \mid$, near the outer bowndary $|x|=b$.
(ii) For every $p>1$ and $\varepsilon$ small, the Dirichlet problem (1.5) with $\Omega=\left\{x \in \mathbb{R}^{\prime \prime} \mid 0<\right.$ $a<|x|<b\}$ possesses a solution concentrating at $|x|=r_{\varepsilon}$, where $r_{\varepsilon}-a \sim \varepsilon \mid \log \varepsilon \|$, near the inner boundary $|x|=a$.

Observe that from the "moving plane" method [GNN1] it follows easily that the Dirichlet problem (1.5) does not have a solution concentrating on a sphere near the outer boundary $|x|=b$.

In conclusion, we mention that the method of Theorem 1.8 can be extended to produce solutions with $k$-dimensional concentration sets but again, some symmetry assumptions are needed. The conjecture stated at the beginning of this section remains as a major open problem.

### 1.4. Remarks

In this section, we have considered the various concentration phenomena for essentially just one equation, namely,

$$
\begin{equation*}
\varepsilon^{2} \Delta u-u+u^{p}=0 \tag{1.40}
\end{equation*}
$$

in a bounded domain $\Omega$ under either Dirichlet or Neumann boundary conditions in (1.5) or (1.4), respectively. However, since the equation (1.40) is quite basic, similar phenomena could be expected for a more general class of equations. As a side remark, perhaps we ought to mention that, as $\varepsilon$ becomes large, (1.4) will eventually lose all of its solutions except the trivial one $u_{\varepsilon} \equiv 1$ [LNT].

The methods involved in handling (1.40) are basically variational; more precisely, via the mountain-pass lemma. However, the mountain-pass approach we have used here in establishing Theorem 1.1 is due to Ding and Ni [DN] in 1983, which deviates from the original one due to Ambrosetti and Rabinowitz [AR] and is less general but more constructive. As a result, it is proved in [N1] that this approach yields the same critical value as the constrained minimization approach due to Nehari [Ne] in 1960. In studying multipeak solutions and other concentration sets, this approach has been modified; namely, it is also coupled with the Lyapunov-Schmidt finite-dimensional reduction, and becomes "local" in nature. This "localized energy method" is a major achievement, and is due to Gui and Wei [GW1].

It is interesting to note that the concentration sets of solutions to (1.4) we have discussed so far have dimensions ranging from 0 (i.e., peaks) to $n-1$ (spheres in $\mathbb{R}^{n}$ ). A natural question arises: Does (1.4) possess solutions with $n$-dimensional concentration sets? In general, this question remains open although the answer is probably negative.

Solutions with $n$-dimensional concentration sets (often referred to as internal transition layers) appear in phase transitions. This problem has been studied extensively in the past 30 years by many authors, including Alikakos, Bates, Xinfu Chen, del Pino, Fife, Fusco, Hale, Mimura and others. We refer the interested readers to the monograph $[F]$ for further details.

Finally, we remark that in Section 5, some of the single-peak spike-layer solutions of (1.40) are graphed numerically under homogeneous Dirichlet or Neumann boundary conditions.

## 2. Concentrations of solutions: Systems

In Section 2.1, we shall return to the activator-inhibitor system (1.1) discussed in Section 1. Our first goal is to construct stationary solutions of (1.1) for large $d_{2}$ given the
knowledge of the single－peak spike－layer solutions of（1．4）in Section 1．It turns out that this is accomplished only under additional assumptions．

Next，we shall discuss cross－diffusion systems．Unlike（1．1）which is coupled in the re－ action terms，these systems are coupled also in the highest－order terms．These systems typically appear in population dynamics with the environmental influences on the move－ ment of individuals taken into consideration．That is，we no longer assume that individuals move around randomly．Instead，＂directed movements＂seem more reasonable．Thus，a ba－ sic equation in population dynamics（without the reaction term for the time being）is

$$
\begin{equation*}
u_{l}=\nabla \cdot(d \nabla u \pm u \nabla \psi(E(x, t))) \tag{2.1}
\end{equation*}
$$

where $d>0, \psi$ is increasing and $E$ represents environmental influences that could also depend on $u$ ．Note that the first term in（2．1）is diffusion，while the second term there represents the＂directed movement＂or the＂taxis＂．Examples for $\psi$ include $\psi(E)=k E$ ， $k \log E$ or $k E^{m} /\left(1+a E^{m}\right)$ ，where $k>0$ and $m>0$ ．When the positive sign in（2．1）is used，we refer to the movement as＂negative taxis＂，as in the classical Lotka－Volterra com－ petition system with cross－diffusion proposed by Shigesada，Kawasaki and Teramoto in 1979，which will be studied in Section 2．2．When the negative sign in（2．1）is adopted，we have＂positive taxis＂，as in the Keller－Segel system in modeling the chemotactic aggrega－ tion stage of cellular slime molds（amoebae），which will be described in Section 2．3．As we shall see，in all these examples，solutions to the single equation（1．4）play fundamental roles．Another common feature in those three examples is that they all do not have varia－ tional structures－that is，none of the three systems is the Euler－Lagrange equation of a variational functional．In many ways，this makes them more interesting and challenging．

In Section 2.4 we include two more systems：the CIMA reaction and the Gray－Scott model．Both present extremely rich and interesting phenomena in pattern formations．

## 2．1．The activator－inhibitor system

In the one－dimensional case，much is known due to the work of Takagi［T］．We shall therefore focus on the case $n \geqslant 2$ in this section．The existence question for nontrivial stationary solutions to the activator－inhibitor system（1．1）under the condition（1．2）for general domain $\Omega$ remains open．Progress has been made and there are two approaches to this problem．The first one is via the shadow system．The best result in this direction so far seems to be［NT4］in which the domain $\Omega$ is assumed to be axially symmetric and multipeak spike－layer steady states are constructed．Here we are going to give a brief description of this result．

The steady states of（1．1）satisfy the following elliptic system

$$
\begin{cases}d_{1} \Delta U-U+\frac{U^{\prime \prime}}{V^{\prime \prime}}=0 & \text { in } \Omega,  \tag{2.2}\\ d_{2} \Delta V-V+\frac{U^{r}}{V^{\prime}}=0 & \text { in } \Omega, \\ U>0 \text { and } V>0 & \text { in } \Omega, \\ \frac{\partial U}{\partial u}=0=\frac{\partial V}{\partial u} & \text { on } \partial \Omega,\end{cases}
$$

where $p, q, r$ are positive, $s \geqslant 0$ and

$$
\begin{equation*}
0<\frac{p-1}{q}<\frac{r}{s+1} \tag{2.3}
\end{equation*}
$$

Similarly, the elliptic "shadow" system is

$$
\begin{cases}d_{1} \Delta U-U+\frac{U^{p}}{\xi^{q}}=0 & \text { in } \Omega  \tag{2.4}\\ \int_{\Omega} U^{r}=|\Omega| \xi^{3+i}, & \text { on } \partial \Omega \\ \frac{\partial U}{\partial v}=0 & \end{cases}
$$

If we set

$$
U(x)=\xi^{q /(p-1)} u(x)
$$

then (2.4) is equivalent to

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } \Omega  \tag{2.5}\\ \int_{\Omega} u^{r}=|\Omega| \xi^{-\alpha}, & \\ \frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega\end{cases}
$$

where $d_{1}=\varepsilon^{2}$ and

$$
\begin{equation*}
\alpha=\frac{q r}{p-1}-(s+1)>0 \tag{2.6}
\end{equation*}
$$

Now, suppose that the $x_{n}$-axis is the axis of symmetry for $\Omega$ and that $P_{1}, \ldots, P_{2 N}$ are the points at which $\partial \Omega$ intersects the $x_{n}$-axis. The following result is proved in [NT4].

THEOREM 2.1. Under the assumption (2.6), given any m distinct points $P_{j_{1}}, \ldots, P_{j_{m}}$ in $\left\{P_{1}, P_{2}, \ldots, P_{2 N}\right\}$, there are two constants $D_{1}$ and $D_{2}$ such that for every $0<d_{1}<D_{1}$ and $d_{2}>D_{2}$ the system (2.2) has a spike-layer solution with exactly $m$ peaks at $P_{j_{1}}, \ldots, P_{j_{m}}$ "

To illustrate our approach, we shall only treat the case $m=1$, as the general case $m>1$ requires no new ideas or techniques.

First, we introduce a diffeomorphism to flatten a boundary portion around $P \in$ $\left\{P_{1}, \ldots, P_{2 N}\right\}$, as follows. Assuming $P$ is the origin, we see that there is a smooth function $\psi \in C^{\infty}([-\delta, \delta])$ with $\psi(0)=\psi^{\prime}(0)=0$ such that, near $P, \partial \Omega$ is represented by $\left\{\left(x^{\prime}, \psi\left(\left|x^{\prime}\right|\right)| | x^{\prime} \mid<\delta\right\}\right.$. Setting

$$
\Phi_{j}(y)= \begin{cases}y_{j}-y_{n} \psi^{\prime}\left(\left|y^{\prime}\right|\right) \frac{y_{j}}{\left|y^{\prime}\right|}, & j=1, \ldots, n-1,  \tag{2.7}\\ y_{n}+\psi\left(\left|y^{\prime}\right|\right), & j=n,\end{cases}
$$

we see that $x=\Phi(y)=\left(\Phi_{1}(y), \ldots, \Phi_{n}(y)\right)$ is a diffeomorphism from an open set containing the closed ball $\bar{B}_{3 k}$, where $\kappa>0$ is small, onto a neighborhood of $P$ with $D \bar{\phi}(0)=I$,
the identity map. Observe that $x=\Phi(y)$ maps the hyperplane $\left\{y_{n}=0\right\}$ into $\partial \Omega$. We write $\psi=\phi^{-1}$.

Now we can write

$$
\begin{equation*}
u(x)=\chi\left(\kappa^{-1}|\Psi(x)|\right) w\left(\varepsilon^{-1} \Psi(x)\right)+\varepsilon \phi \equiv \tilde{u}_{\varepsilon}+\varepsilon \phi, \tag{2.8}
\end{equation*}
$$

where $w$ is the solution of (1.10) and $\chi \in C_{0}^{\infty}(\mathbb{R})$ is a cut-off function such that (i) $0 \leqslant$ $\chi(s) \leqslant 1$, (ii) $\chi(s)=1$ if $|s| \leqslant 1$, and (iii) $\chi(s)=0$ if $|s| \geqslant 2$. Note that $\tilde{u}$ is an approximate solution of the equation in (2.5) and the equation in (2.5) now takes the following form

$$
L_{\varepsilon} \phi+g_{\varepsilon}+M_{\varepsilon}[\phi]=0,
$$

where

$$
\begin{aligned}
& L_{\varepsilon}=\varepsilon^{2} \Delta-1+p \tilde{u}_{\varepsilon}^{p-1}, \\
& g_{\varepsilon}=\frac{1}{\varepsilon}\left[\varepsilon^{2} \Delta \tilde{u}_{\varepsilon}-\tilde{u}_{\varepsilon}+\tilde{u}_{\varepsilon}^{p}\right], \\
& M_{\varepsilon}[\phi]=\frac{1}{\varepsilon}\left[\left(\tilde{u}_{\varepsilon}+\varepsilon \phi\right)^{p}-\tilde{u}_{\varepsilon}^{p}-\varepsilon p \tilde{u}_{\varepsilon}^{p-1} \phi\right] .
\end{aligned}
$$

It turns out that $M_{E}[\phi]$ is small and $g_{\varepsilon}$ is bounded. While $L_{\varepsilon}$ is not invertible in general, it actually has a bounded inverse when restricted to axially symmerric functions. This enables us to solve the equation in (2.5) with a solution of the form (2.8). Then we simply define

$$
\xi_{\infty}=|\Omega|^{1 / \alpha}\left(\int_{\Omega} u^{r}\right)^{-1 / \alpha}
$$

and $U_{\infty}(x)=\xi_{\infty}^{q /(p-1)} u(x)$, we obtain a solution $(U, \xi)$ of the shadow system (2.4).
The original system (2.2) with $d_{2}$ large turns out to be a regular perturbation of the shadow system (2.4). If we write $\delta=d_{2}^{-1}$ and define the operator

$$
\mathcal{P}_{u}=u-\frac{1}{|\Omega|} \int_{\Omega} u,
$$

then we can convert solving the system (2.2) to finding a zero ( $U, \xi, \phi$ ) of the map $\mathcal{F}=$ $\left(\mathcal{F}_{1}, \mathcal{F}_{2}, \mathcal{F}_{3}\right)$ for $\delta>0$ but small, where

$$
\begin{aligned}
& \mathcal{F}_{1}(U, \xi, \phi ; \delta)=\varepsilon^{2} \Delta U-U+\frac{U^{p}}{(\xi+\phi)^{q}} \\
& \mathcal{F}_{2}(U, \xi, \phi ; \delta)=\int_{\Omega}\left[-(\xi+\phi)+\frac{U^{r}}{(\xi+\phi)^{s}}\right] \\
& \mathcal{F}_{3}(U, \xi, \phi ; \delta)=\Delta \phi+\delta\left[-\phi+\mathcal{P}\left(\frac{U^{r}}{(\xi+\phi)^{s}}\right)\right]
\end{aligned}
$$

near ( $U_{\infty}, \xi_{\infty}, 0$ ) (the solution for (2.4), corresponding to the case $\delta=0$ ). Notice that we have decomposed the second equation in (2.2) into two equations so that the linearization of the map $\mathcal{F}$ at ( $U_{\infty}, \xi_{\infty}, 0 ; 0$ ) is invertible in suitable function spaces and thereby (2.2) can be solved by the implicit function theorem.

The second approach is due to Wei and his collaborators. In this approach, $d_{2}$ needs not to be very large, although there are other restrictions; in particular, this approach only works for planar domains, i.e., $n=2$. To illustrate the basic idea involved here, we take the special case $s=0$ in (2.2). The first step here is to solve the second equation in (2.2)

$$
\begin{cases}d_{2} \Delta V-V+U^{r}=0 & \text { in } \Omega,  \tag{2.9}\\ \frac{\partial V}{\partial v}=0 & \text { on } \partial \Omega .\end{cases}
$$

Then, writing $V=T\left[U^{r}\right]$ and substituting into the first equation in (2.2), we have

$$
\begin{cases}d_{1} \Delta U-U+\frac{U^{p}}{\left(T\left[U^{r}\right]\right)^{q}}=0 & \text { in } \Omega,  \tag{2.10}\\ \frac{\partial U}{\partial v}=0 & \text { on } \partial \Omega .\end{cases}
$$

It is observed that, under suitable scalings, (2.9) will have a solution close to a large constant, namely,

$$
V \sim \xi_{\varepsilon}\left(1+O\left(\frac{1}{|\log \varepsilon|}\right)\right)
$$

where $d_{1}=\varepsilon^{2}$ is small and $\xi_{\varepsilon} \rightarrow \infty$ as $\varepsilon \rightarrow 0$. In this approach, the asymptotic behavior of the Green's function

$$
\begin{cases}\Delta G-G+\delta_{P}=0 & \text { in } \Omega \\ \frac{\partial G}{\partial \nu}=0 & \text { on } \partial \Omega\end{cases}
$$

where $\delta_{P}$ denotes the Dirac $\delta$-function at the point $P$, is essential, which limits this approach to $n=2$ only. (See [WW1,WW2].)

### 2.2. A Lotka-Volterra competition system with cross-diffusion

Although diffusion is generally regarded as a trivializing process in single equations (see Section 1), we have seen how different diffusion rates could produce patterns strikingly different from trivial ones for $2 \times 2$ systems. However, for that to happen, reaction terms are essential as well: for some systems, no matter what the diffusion rates are, no nonconstant steady state could possibly exist. For example, the classical Lotka-Volterra competitiondiffusion system takes the following form:

$$
\begin{cases}u_{f}=d_{1} \Delta u+u\left(a_{1}-b_{1} u-c_{1} v\right) & \text { in } \Omega \times(0, \infty),  \tag{2.11}\\ v_{t}=d_{2} \Delta v+v\left(a_{2}-b_{2} u-c_{2} v\right) & \text { in } \Omega \times(0, \infty), \\ \frac{\partial u}{\partial v}=0=\frac{\partial v}{\partial v} & \text { on } \partial \Omega \times(0, \infty),\end{cases}
$$

where all the constants $a_{i}, b_{i}, c_{j}, d_{i}, i=1,2$, are positive, and $u, v$ are nonnegative. Here, as is explained in [Wm], $u$ and $v$ represent the population densities of two competing species. (A nice and thorough reference for (2.11) is the recent monograph by Cantrell and Cosner [CC].) For convenience, we set $A=\frac{a_{1}}{a_{2}}, B=\frac{b_{1}}{b_{2}}$, and $C=\frac{c_{1}}{c_{2}}$. It is well known that in the "weak competition" case, i.e.,

$$
\begin{equation*}
B>A>C, \tag{2.12}
\end{equation*}
$$

the constant steady state $\left(u_{*}, v_{*}\right) \equiv\left(\frac{a_{1} c_{2}-a_{2} c_{1}}{b_{1} c_{2}-b_{2} c_{1}}, \frac{b_{1} c_{2}-b_{2} a_{1}}{b_{1} c_{2}-b_{2} c_{1}}\right)$ is globally asymptotically stable regandless of the diffusion rates $d_{1}$ and $d_{2}$. This implies, in particular, that no nonconstant steady state can exist for any diffusion rates $d_{1}, d_{2}$.

On the other hand, it seems not entirely reasonable to add just diffusions to models in population dynamics, since individuals do not move around completely randomly. In particular, while modeling segregation phenomena for two competing species one must take into account the population pressures created by the competitors. In an attempt to model segregation phenomena between two competing species, Shigesada, Kawasaki and Teramoto [SKT] proposed in 1979 the following cross-diffusion model

$$
\begin{cases}u_{1}=\Delta\left[\left(d_{1}+\rho_{12} v\right) u\right]+u\left(a_{1}-b_{1} u-c_{1} v\right) & \text { in } \Omega \times(0, T)  \tag{2.13}\\ v_{1}=\Delta\left[\left(d_{2}+\rho_{21} u\right) v\right]+v\left(a_{1}-b_{2} u-c_{2} v\right) & \text { in } \Omega \times(0, T) \\ \frac{\partial u}{\partial v}=0=\frac{\partial v}{\partial v} & \text { on } \partial \Omega \times(0, T)\end{cases}
$$

where $\rho_{12}$ and $\rho_{21}$ represent the cross-diffusion pressures and are nonnegative. (In fact, the model in [SKT] also includes "self-diffusion" pressures that turn out to be not so different from the usual diffusion as is shown in [LN1]. Here, for simplicity, we shall discuss only (2.13).) Considerable work has been done concerning the global existence of solutions to the system (2.13) under various hypotheses. However, it is worth noting that even the local existence question for (2.13) is highly nontrivial and was resolved in a series of long papers by Amann [A1,A2] about ten years ago.

We first focus on the effect of cross-diffusion on steady states. To illustrate the significance of cross-cliffusions, we again go to the weak competition case (i.e., $B>A>C$ ) since in this case (2.13) has no nonconstant steady states if both $\rho_{12}=\rho_{21}=0$. (We refer to $[\mathrm{Hu}]$ for some interesting discussions on the ecological significance of coexistence, "competition-exclusion", and weak/strong competitions. One point of view is that whether "competition-exclusion" holds in nature is a matter of interpretation. See [Wm].) Recent work of Lou and myself [LN1,LN2] show that, indeed, if one of the two cross-diffusion rates, say $\rho_{12}$, is large, then (2.13) will have nonconstant steady states provided that $d_{2}$ belongs to a proper range. On the other hand, if both $\rho_{12}$ and $\rho_{21}$ are small, then (2.13) will have no nonconstant steady states under the condition (2.12). This shows the introduction of cross-diffusion does seem to help create patterns.

In the "strong competition" case, i.e., $B<A<C$, even the situation of steady states solutions of (2.11) becomes more interesting and complicated, and is not completely understood. Nonetheless, cross-diffusions still have similar effects in help creating nontrivial patterns of (2.13). We refer the interested readers to [LN1,LN2] for details.

So far in this section, we have only touched upon the existence and nonexistence of nonconstant steady states. It seems natural and important to ask if we can derive any qualitative properties (such as the spike-layers in the previous section) of those steady states. Our first step in this direction is to classify all the possible (limiting) steady states as one of the cross-diffusion pressures tends to infinity.

Theorem 2.2 [LN2]. Suppose for simplicity that $\rho_{21}=0$. Suppose further that $B \neq$ $A \neq C, n \leqslant 3$, and $\frac{a_{2}}{d_{2}} \neq \lambda_{k}$ for all $k$, where $\lambda_{k}$ is the kth eigenvalue of $-\Delta$ on $\Omega$ with zero Neunann boundary data. Let $\left(u_{j}, v_{j}\right)$ be a nonconstant steady state solution of (2.13) with $\rho_{12}=\rho_{12}, j$. Then by passing to a subsequence if necessary, either (i) or (ii) holds as $\rho_{12, j} \rightarrow \infty$, where
(i) $\left(u_{j}, \frac{P_{12 . j}}{d_{1}} v_{j}\right) \rightarrow(u, v)$ uniformly, $u>0_{v} v>0$, and

$$
\begin{cases}a_{1} \Delta[(1+v) u]+u\left(a_{1}-b_{1} u\right)=0 & \text { in } \Omega,  \tag{2.14}\\ d_{2} \Delta v+v\left(a_{2}-b_{2} u\right)=0 & \text { in } \Omega, \\ \frac{\partial u}{\partial v}=0=\frac{\partial v}{\partial v} & \text { on } \partial \Omega ;\end{cases}
$$

and
(ii) $\left(u_{j}, v_{j}\right) \rightarrow\left(\frac{\zeta}{w}, w\right)$ uniformly, $\zeta$ is a positive constant, $w>0$, and

$$
\begin{cases}d_{2} \Delta w+w\left(a_{2}-c_{2} w\right)-b_{2} \zeta=0 & \text { in } \Omega,  \tag{2.15}\\ \frac{\partial w}{\partial w}=0 & \text { on } \partial \Omega, \\ \int_{\Omega} \frac{1}{w}\left(a_{1}-\frac{b_{2} \zeta}{w}-c_{1} w\right)=0 . & \end{cases}
$$

The proof is quite lengthy. The most important step in the proof is to obtain a priori bounds on steady states of (2.13) that are independent of $\rho_{12}$.

We ought to remark that both systems (2.14) and (2.15) possess spike-layer solutions. For instance, using a suitable change of variables, the equation in (2.15) may be transformed into (1.4) with $p=2$. Thus our results in Section 1 apply. Perhaps we ought to point out that in fact, what is important is the ratio of cross-diffusion versus diffusion $\rho_{12} / d_{1}$ in which $d_{1}$ can also vary. A deeper classification result is obtained in [LN2] as $\rho_{12} \rightarrow \infty$ in (2.13) in terms of various possibilities of $\rho_{12} / d_{1}$ and $d_{1}$.

To see how (1.4) turns up in (2.15), at least heuristically, we proceed as follows. Formally, setting

$$
\begin{equation*}
\zeta=u_{*} v_{*} \quad \text { and } \quad w=v^{*}-\varphi, \tag{2.16}
\end{equation*}
$$

we have

$$
\begin{equation*}
d_{2} \Delta \varphi-\left(c_{2} v_{*}-b_{2} u_{*}\right) \varphi+c_{2} \varphi^{2}=0 . \tag{2.17}
\end{equation*}
$$

Rescaling (2.17) we obtain (1.4) provided that

$$
\begin{equation*}
c_{2} v_{*}-b_{2} u_{*}>0, \tag{2.18}
\end{equation*}
$$

which is equivalent to

$$
\begin{cases}\frac{1}{2}(B+C)>A & \text { if } B>A>C  \tag{2.19}\\ \frac{1}{2}(B+C)<A & \text { if } B<A<C\end{cases}
$$

Note that in (2.16) we need $w>0$, or, $v^{*}>\varphi$. In $n=1$ this is guaranteed by

$$
\begin{equation*}
A>\frac{1}{4}(B+3 C) \tag{2.20}
\end{equation*}
$$

Under these conditions, our results in Section 1 imply that (2.17) has spike-layer solutions for $d_{2}$ small. Observe that those solutions tend to 0 as $d_{2} \rightarrow 0$ except at isolated points. Let $\varphi$ be, e.g., the solution of (1.4) guaranteed by Theorem 1.1. Then the pair ( $w, u_{*} v_{*}$ ) satisfies the differential equation with the homogeneous Neumann boundary condition in (2.15), and it clmost satisfies the integral constraint in (2.15) since $w$ is close to $v_{*}$ a.e. for $d_{2}$ small. It is then not hard to find a solution, for $d_{2}$ small, near the pair ( $w, u_{*} v_{*}$ ) by the implicit function theorem, as was done in [LN2].

Although (2.14) is still an elliptic system, it is a bit easier to analyze than the original one. We refer the interested reader to [LN2], Section 5, for details.

It turns out that both alternatives (i) and (ii) in Theorem 2.2 occur under suitable conditions. Therefore, to understand the steady states of (2.13) a good model would be (2.14) or (2.15), at least when $\rho_{12}$ is large. In the recent work of Lou, Yotsutani and myself [LNY], we were able to achieve an almost complete understanding of the "shadow" system (2.15) for $n=1$ (and $\Omega$ is an interval, say, $(0,1)$ ). To illustrate our results, we include the following.

Theorem 2.3. Suppose $B<C$. Then (2.15) does not have any nonconstant solution if either one of the following two conditions hold:
(i) $d_{2} \geqslant a_{2} / \pi^{2}$,
(ii) $A \leqslant B$.

Theorem 2.4. Suppose $B<C$. Then (2.15) has a nonconstant solution if $d_{2}<a_{2} / \pi^{2}$ and $A \geqslant(B+C) / 2$.

The case $d_{2}<a_{2} / \pi^{2}$ and $B<A<(B+C) / 2$ is more delicate - existence holds for $d_{2}$ closer to $a_{2} / \pi^{2}$ while nonexistence holds when $d_{2}$ is near 0 .

The behavior of solutions is also obtained for $d_{2}$ close to one of the two endpoints, 0 or $a_{2} / \pi^{2}$.

Theorem 2.5. (i) $A s d_{2} \rightarrow a_{2} / \pi^{2},(w, \zeta) \rightarrow(0,0)$ in such a way that

$$
\frac{\zeta}{w} \rightarrow \frac{a_{2}(1+\mu)}{2\left[\mu+(1-\mu) \sin ^{2}(\pi x / 2)\right]}
$$

uniformly on $[0,1]$ where $\mu=(2 A / B)-1-2 \sqrt{(A / B)^{2}-(A / B)} \in(0,1]$.
(ii) As $d_{2} \rightarrow 0$ we have
(a) if $A<\frac{B+3 C}{4}$, then

$$
\begin{aligned}
& \zeta \rightarrow \frac{a_{2}^{2}}{b_{2} c_{2}} \frac{(B-A)(A-C)}{(B-C)^{2}} \\
& w(0) \rightarrow 2 \frac{a_{2}}{c_{2}} \frac{A-(B+3 C) / 4}{B-C} \\
& w(\cdot) \rightarrow \frac{a_{2}}{c_{2}} \frac{B-A}{B-C} \quad \text { on }(0,1]
\end{aligned}
$$

( $\beta$ ) if $A \geqslant \frac{B+3 C}{4}$, then $\zeta \rightarrow \frac{3}{16} \frac{a_{2}^{2}}{b_{2} c_{2}}, w(0) \rightarrow 0$, and $w \rightarrow \frac{3 a_{2}}{4 c_{2}}$ on $(0,1]$.
It seems interesting to note that the limits in ( $\beta$ ) above are independent of $a_{1}, b_{1}, c_{1}$.
Our method of proof here is a bit unusual: we convert the problem of solving ( $w, \zeta$ ) of (2.15) to a problem of solving its "representation" in a different parameter space. This is done first without the integral constraint in (2.15). Then we use the integral constraint to find the "solution curve" in the new parameter space as the diffusion rate $d_{2}$ varies. This method turns out to be very powerful as it gives fairly precise information about the solution.

Of course, our uttimate goal is to be able to obtain the steady states of (2.13) from our knowledge of the simpler limiting systems (2.14) or (2.15). This turns out to be possible, at least in the one-dimensional case $\Omega=[0,1]$, as the next two results show. (For simplicity, we shall assume that $\rho_{21}=0$ in the next two theorems.)

THEOREM 2.6 [LN2]. Suppose that $A>B$. There exists a small $d^{*}>0$ such that for any $d_{2} \in\left(0, d^{*}\right)$, we can find a large $\vec{d}>0$ such that if $d_{1} \geqslant \tilde{d}$ is fixed, then there exists a large $\alpha>0$, such that if $\rho_{12}>\alpha,(2.13)$ has a nonconstant positive steady state $(u, v)$, with $\left(u, \rho_{12} v\right) \rightarrow(\bar{u}, \bar{v})$ uniformly in $[0,1]$ as $\rho_{12} \rightarrow \infty$, where $(\bar{u}, \bar{v})$ is a nonconstant positive solution of (2.14).

THEOREM 2.7 [LN2]. Suppose that $d_{1}>0$ is fixed and that either $A \in\left(\frac{1}{2}(B+C),\left(\frac{1}{4} B+\right.\right.$ $\left.\frac{3}{4} C\right)$ ) or $A \in\left(\left(\frac{1}{4} B+\frac{3}{4} C\right), \frac{1}{2}(B+C)\right)$. There exists a small $d^{*}>0$ such that for $d_{2} \in\left(0, d^{*}\right)$ we can find a large $\alpha>0$ such that if $\rho_{12}>\alpha$, (2.13) has a nonconstant positive steady state $(u, v)$ with $(u, v) \rightarrow\left(\frac{\zeta}{w}, w\right)$ as $\rho_{12} \rightarrow \infty$ where $w>0$, nonconstant and $(w, \zeta)$ is a solution of (2.15).

The proofs of Theorems 2.6 and 2.7 involve careful analysis of the linearized systems of (2.14) and (2.15) at their nonconstant positive solutions.

### 2.3. A chemotaxis system

Chemotaxis is the oriented movement of cells in response to chemicals in their environment. Cellular slime molds (amoebae) release a certain chemical, c-AMP, move toward its
higher concentration, and eventually form aggregates. Letting $u(x, t)$ be the population of amoebae at place $x$ and at time $t$, and $v(x, t)$ be the concentration of this chemical, Keller and Segel [KS] proposed the following model to describe the chemotactic aggregation stage of amoebae:

$$
\begin{cases}u_{f}=d_{1} \Delta u-\chi \nabla \cdot[u \nabla \psi(v)] & \text { in } \Omega \times(0, T),  \tag{2.21}\\ v_{i}=d_{2} \Delta v-a v+b_{u} & \text { in } \Omega \times(0, T), \\ \frac{d_{u}}{\partial v}=0=\frac{\partial v}{\partial v} & \text { on } \partial \Omega \times(0, T), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where the constants $\chi, a$ and $b$ are positive. Comparing the first equation in (2.21) to (2.1) we see that (2.21) is indeed an example for "positive taxis". Popular examples for the "sensitivity function" $\psi$ include $\psi(v)=k v, k \log v$ or $k v^{2} /\left(1+v^{2}\right)$, where $k>0$ is a constant.

A large amount of work has focused on the linear case $\psi(v)=k v$, and much is known in this case, at least for the low spatial dimensions, $n=1$ or 2 . The mathematical phenomena exhibited here are rich, from nontrivial steady states to blow-up dynamics. A nice article due to Horstmann [Ho] contains a thorough survey, from a derivation of the Keller-Segel model to the descriptions of many significant results, on this linear sensitivity case. It also includes some discussions on the (biological) consequences of those mathematical results. We will therefore refer the readers to $[\mathrm{Ho}]$ and the references therein for the linear case and concentrate on the other cases here.

For the logarithmic case $\psi(v)=k \log v$, Nagai and Senba [NS] recently proved global existence for a modified parabolic-elliptic system in case $n=2$. Observe that in (2.21) the total population is always conserved; that is, for all $t>0$ we have

$$
\int_{\Omega} u(x, t) \mathrm{d} x \equiv \int_{\Omega} u_{0}(x) \mathrm{d} x
$$

Therefore to study the steady states of (2.21) for the case $\psi(v)=\log v$ we consider the following elliptic system

$$
\begin{cases}d_{1} \Delta u-\chi \nabla \cdot(u \nabla \log v)=0 & \text { in } \Omega  \tag{2.22}\\ d_{2} \Delta v-a v+b u=0 & \text { in } \Omega \\ \frac{d_{u}}{\partial v}=0=\frac{i_{v}}{\partial v} & \text { on } \partial \Omega \\ \frac{1}{|\Omega|} \int_{\Omega} u(x) \mathrm{d} x=\bar{u} & \text { (prescribed) }\end{cases}
$$

With $p=\chi / d_{1}$, it is not hard to show that $u=\lambda v^{p}$ for some constant $\lambda>0$. Thus, setting $\varepsilon^{2}=d_{2} / a, \mu=(b \lambda / a)^{1 /(p-1)}$, and $w=\mu v$, we see that $w$ satisfies (1.4), i.e.,

$$
\begin{cases}\varepsilon^{2} \Delta w-w+w^{p}=0 & \text { in } \Omega  \tag{2.23}\\ \frac{\partial w}{\partial v}=0 & \text { on } \partial \Omega\end{cases}
$$

and our previous results for (1.4) apply. To obtain a solution pair for (2.22) from a solution
of (2.23), simply set

$$
u=\frac{\bar{u}|\Omega| w^{p}}{\int_{\Omega} w^{p}} \quad \text { and } \quad v=\frac{\bar{v}|\Omega| w}{\int_{\Omega} w}
$$

with $\bar{u}=b \bar{u} / a$. In this way, we obtain spike-layer steady states for the chemotaxis system (2.22) when $d_{2} / a$ is small and $1<x / d_{1}<\frac{n+2}{n-2}(\infty$ if $n=1,2)$. Although many believe the particular steady state corresponding to the "least-energy" solution of (1.4) is stable, its proof has thus far eluded us.

### 2.4. Other systems

The 1952 paper of Turing [Tu], in which the novel notion of "diffusion-driven instability" was first posed in an attempt to model the regeneration phenomenon of hydra, is one of the most important papers in theoretical biology in the last century. However, the two chemicals, activator and inhibitor in Turing's theory, are yet to be identified in hydra.

The first experimental evidence of Turing pattern was observed in 1990, nearly 40 years after Turing's prediction, by the Bordeaux group in France on the chlorite-iodidemalonic acid-starch (CIMA) reaction in an open unstirred gel reactor [CDBD]. In their scheme, the two sides of the gel strip loaded with starch indicator are, respectively, in contact with solutions of chlorite ( $\mathrm{ClO}_{2}^{-}$) and iodide ( $\mathrm{I}^{-}$) ions on one side, and malonic acid (MA) on the other side, which are fed through two continuously-flow stirred tank reactors. These reactants diffuse into the gel, encountering each other at significant concentrations in a region near the middle of the gel, where the Turing patterns of lines of periodic spots can be observed. This observation represents a significant breakthrough for one of the most fundamental ideas in morphogenesis and biological pattern formation.

The Brandeis group later found that, after a relatively brief initial period, it is really the simpler chlorine dioxide $\mathrm{ClO}_{2}-\mathrm{I}_{2}-\mathrm{MA}$ (CDIMA) reaction that governs the formation of the patterns [LE1,LE2]. The CDIMA reaction can be described in a five-variable model consists of three component processes. However, observing that three of the five concentrations remain nearly constants in the reaction, Lengyel and Epstein [LEI,LE2] simplified the model to a $2 \times 2$ system: Let $u=u(x, t)$ and $v=v(x, t)$ denote the chemical concentrations (rescaled) of iodide ( $\mathrm{I}^{-}$) and chlorite ( $\mathrm{ClO}_{2}^{-}$), respectively, at time $t$ and $x \in \Omega$, where $\Omega$ is a smooth, bounded domain in $\mathbb{R}^{\prime \prime}$. Then the Lengyel and Epstein model takes the form

$$
\begin{cases}u_{l}=\Delta u+a-u-\frac{4 u v}{1+u^{2}} & \text { in } \Omega \times[0, T),  \tag{2.24}\\ v_{l}=\sigma\left[c \Delta v+b\left(u-\frac{u v}{1+u^{2}}\right)\right] & \text { in } \Omega \times[0, T), \\ \frac{\partial u}{\partial u}=\frac{\partial v}{\partial v}=0 & \text { on } \partial \Omega \times[0, T),\end{cases}
$$

where $a$ and $b$ are parameters related to the feed concentrations; $c$ is the ratio of the diffusion coefficients; $\sigma>1$ is a rescaling parameter depending on the concentration of the
starch, enlarging the effective diffusion ratio to $\sigma c$. All constants $a, b, c$, and $\sigma$ are assumed to be positive.

It was established in [NTa] that solutions of (2.24) must eventually enter the region

$$
R_{a}=(0, a) \times\left(0,1+a^{2}\right)
$$

for 1 large, regardless of the initial values $u(x, 0), v(x, 0)$. Furthermore, the existence and nonexistence of steady states of (2.24) are also investigated in [NTa]. Results there show that, roughly speaking, if any one of the following three quantities
(i) the parameter a (related to the feed concentrations),
(ii) the size of the reactor $\Omega$ (reflected by its first eigenvalue),
(iii) the "effective" diffusion rate $d=c / b$, is not large enough, then the system (2.24) has no nonconstant steady states.

On the other hand, it was also established in [NTa] that if a lies in a suitable range, then (2.24) possesses nonconstant steady states for large $d$. The proof of the existence uses a degree-theoretical approach combined with the a priori bounds. However, such an approach does not provide much information about the shape of the solution. In the case $n=1$, a better description for the structure of the set of nonconstant steady states to (2.24) is given in [JNT]; namely, a global bifurcation theorem which gives the existence of nonconstant steady states to (2.24) for all $d$ suitably large (under a rather natural condition) is obtained. Moreover, the corresponding shadow system (as $d \rightarrow \infty$ ) is also solved in [JNT].

There are various experimental and numerical studies on the system (2.24), see, e.g., $[\mathrm{CK}, \mathrm{JS}]$ and the references therein. However, the qualitative properties of solutions to (2.24) largely remain open.

Another system supporting many interesting spatio-temporal patterns is the Gray-Scott model [GS]. It models an irreversible autocatalytic chemical reaction involving two reactants in a gel reactor, where the reactor is maintained in contact with a reservoir of one of the two chemicals in the reaction. In dimensionless units it can be written as

$$
\begin{cases}U_{t}=D_{U} \Delta U+F(1-U)-U V^{2} & \text { in } \Omega \times[0, T),  \tag{2.25}\\ V_{t}=D_{V} \Delta V-(F+k) V+U V^{2} & \text { in } \Omega \times[0, T), \\ \frac{a U}{\partial v}=\frac{\partial V}{\partial v}=0 & \text { on } \partial \Omega \times[0, T),\end{cases}
$$

where the unknowns $U=U(x, t)$ and $V=V(x, t)$ represent the concentrations of the two chemicals at a point $x \in \Omega \subset \mathbb{R}^{n}, n \leqslant 3$ and at a time $t>0$, respectively; $D_{U}, D_{V}$ are the diffusion coefficients of $U$ and $V$, respectively. $F$ denotes the rate at which $U$ is fed from the reservoir into the reactor, and $k$ is a reaction-time constant.

For various ranges of these parameters, (2.25) is expected to admit a rich solution structure involving pulses or spots, rings, stripes, self-replication spots, and spatio-temporal chaos. See [Pe] and [LMPS] for mumerical simulations and experimental observations.

In one-dimensional case $n=1$, stationary one-pulse solution in the entire real line (i.e., $\Omega=\mathbb{R}^{l}$ and no boundary condition in (2.25)) is studied in [DGK]. In case $n=2$, "spotty" solutions are investigated in [W3] and [WW3]. Many other patterns here remain to be established with mathernatical rigor.

## 3. Stability of solutions

The stability/instability properties of solutions to elliptic problems, viewed as steady states of the appropriate corresponding evolution equations, are perhaps among the most important aspects if we are to understand the entire dynamics of the original evolution problems. For instance, in Section I we have obtained many solutions exhibiting various striking concentration patterns, to the semilinear Neumann problem (1.4). Which ones are stable? More precisely, from which ones can we construct stable steady states to the shadow system (1.3) or to the original system (1.1)? An ultimate question would be: For given initial data $U(x, 0)$ and $V(x, 0)$ in (1.1) how do we determine the large time behavior of $U(x, t)$ and $V(x, t)$ ? To answer that, one important intermediate step would be to study the stability/instability properties of each and every steady state of (1.1). Therefore, we emphasize that it is not just the stability properties of the spike-layer solutions obtained in Theorems 1.1 and 1.3-1.6 in the context of the single equation (1.4) that we need to understand, what we are really after is the stability properties of the corresponding spike-layer steady states obtained in Section 2.1, in the context of the original system (1.1).

It turns out to be a general principle that the stability properties of a steady state are closely related to the "shape" of the steady state. Roughly speaking, the more complicated the shape of the steady state, the less stable the steady state is.

For example, in Section 3.1 we will show that for a solution of a single equation with homogeneous Neumann boundary condition to be stable, it must be a constant if the domain is convex - a nice result due to Matano [Ma1]. This may be regarded as "stability implies triviality" for single equations. In Section 3.3 we will show that, in one space dimension and under homogeneous Neumann boundary condition, for a (time-dependent) solution of a "shadow system" (i.e., a reaction-diffusion equation coupled with a nonlocal ordinary differential equation) to be stable, it must be eventually monotone in space. In short, "stability implies monotonicity" holds for shadow systems - a recent result due to [NPY]. For $2 \times 2$ systems, the situation can be very complicated and will be illustrated via the example (1.1) in Section 3.4.

Stability properties of solutions to homogeneous Dirichlet problems, even in the single equation case, are not well understood. A discussion is included in Section 3.2. For equations in entire space $\mathbb{R}^{\prime \prime}$, stability properties could be extremely interesting and sometimes even counter-intuitive. For instance, positive solutions of the simple-looking equation

$$
\Delta u+u^{p}=0 \quad \text { in } \mathbb{R}^{\prime \prime},
$$

for $n \geqslant 3$ and $p \geqslant \frac{n+2}{n-2}$, exhibit surprisingly sophisticated stability and instability behaviors. (See [Wa,GNW1,GNW2] and [PY] for details.)

### 3.1. Single equations with Neumann boundary conditions

We start our discussion on the stability analysis of solutions to single equations with homogeneous Neumann boundary conditions

$$
\begin{cases}\Delta u+f(u)=0 & \text { in } \Omega,  \tag{3.1}\\ \frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $f \in C^{1}(\mathbb{R}), \Omega$ is a bounded smooth domain in $\mathbb{R}^{n}, v$ is the unit outer normal to $\partial \Omega$. In order to discuss the notion of stability in an intuitive way, it is best to introduce the corresponding parabolic initial-boundary problem

$$
\begin{cases}v_{t}=\Delta v+f(v) & \text { in } \Omega \times \mathbb{R}_{+}  \tag{3.2}\\ \frac{\partial v}{\partial v}=0 & \text { on } \partial \Omega \times \mathbb{R}_{+} \\ v(x, 0)=v_{0}(x) & \text { in } \Omega .\end{cases}
$$

A solution of (3.1) is said to be a steady state of (3.2), and a solution of $u$ of (3.1) is said to be stable if for every $\varepsilon>0$, there exists a $\delta>0$ such that $\|v(\cdot, t)-u(\cdot)\|_{L^{\infty}(\Omega)}<\varepsilon$ for all $t>0$ provided that $\left\|v_{0}-u\right\|_{L^{\infty}(\Omega)}<\delta$. A steady state $u$ is said to be asymptotically stable if there exists $\delta>0$ such that $\|v(\cdot, t)-u(\cdot)\|_{L^{\infty}(\Omega)} \rightarrow 0$ as $t \rightarrow \infty$ provided that $\left\|u_{0}-u\right\|_{L^{\infty}(\Omega)}<\delta$. Naturally we say that $u$ is unstable if it is not stable. It is also possible to discuss the stability of a solution $u$ to (3.1) without going into its parabolic counterpart (3.2). This may be done via the "linearized stability". Standard arguments show that (see, e.g., [Ma1], Theorem 3.3, p. 423) if $u$ is stable, then

$$
\begin{equation*}
\mathcal{H}(\varphi)=\int_{\Omega}\left[|D \varphi|^{2}-f^{\prime}(u) \varphi^{2}\right] \geqslant 0 \tag{3.3}
\end{equation*}
$$

for all $\varphi \in H^{1}(\Omega)$. Putting this in a different way, we look at the linearized problem of (3.1) at this particular solution $u$

$$
\begin{cases}\Delta \varphi+f^{\prime}(u) \varphi+\lambda \varphi=0 & \text { in } \Omega,  \tag{3.4}\\ \frac{\partial \varphi}{\partial u}=0 & \text { on } \partial \Omega .\end{cases}
$$

Denoting the first eigenvalue by $\lambda_{1}$, we have

$$
\begin{equation*}
\lambda_{1}=\min \left\{\mathcal{H}(\varphi) \mid \varphi \in H^{1}(\Omega),\|\varphi\|_{L^{2}(\Omega)}=1\right\} \tag{3.5}
\end{equation*}
$$

and, the assertion (3.3) follows from the following proposition.

Proposition 3.1. If $\lambda_{1}<0$, then $u$ is unstable.

Proof. Let $\varphi_{1}$ be an eigenfunction (normalized, $\left\|\varphi_{1}\right\|_{L^{2}(\Omega)}=1$ ) corresponding to $\lambda_{1}$. Then $\lambda_{1}$ is simple and $\varphi_{1}>0$ (or $<0$ ) in $\Omega$ by the Krein-Rutman theory. Next, since $\lambda_{1}<0$, there exists $\varepsilon_{0}>0$ such that, for every $0<\varepsilon \leqslant \varepsilon_{0}$,

$$
\begin{equation*}
\frac{f(u(x)+\varepsilon)-f(u(x))}{\varepsilon} \geqslant f^{\prime}(u(x))+\frac{\lambda_{1}}{2} \tag{3.6}
\end{equation*}
$$

for all $x \in \Omega$.
Suppose that $u$ is stable. Then, in particular, there exists $v_{0}$ close to $u$ with $v_{0}>u$ and $\|v(\cdot, t)-u(\cdot)\|_{L \infty}^{\infty}(\Omega)<\varepsilon_{0}$ for all $t>0$. (Note that $v(x, t)>u(x)$ for all $x \in \Omega$ and for all $t>0$ by the usual maximum principle.) Now setting

$$
g(t)=\int_{\Omega}[v(x, t)-u(x)] \varphi_{\mathrm{I}}(x) \mathrm{d} x
$$

we have $g(t) \leqslant \varepsilon_{0}|\Omega|^{1 / 2}$ for all $t \geqslant 0$, and

$$
\begin{aligned}
g^{\prime}(t) & =\int_{\Omega} v_{l}(x, t) \varphi_{l}(x) \mathrm{d} x \\
& =\int_{\Omega}[\Delta v+f(v)] \varphi_{l} \\
& =\int_{\Omega}[\Delta(v-u)+f(v)-f(u)] \varphi_{l} \\
& =\int_{\Omega}\left\{(v-u) \Delta \varphi_{l}+[f(v)-f(u)] \varphi_{1}\right\} \\
& =\int_{\Omega}(v-u)\left\{\frac{f(v)-f(u)}{v-u}-f^{\prime}(u)-\lambda_{l}\right\} \varphi_{l} \\
& \geqslant \int_{\Omega}(v-u) \varphi_{l}\left(-\frac{\lambda_{l}}{2}\right)
\end{aligned}
$$

by (3.6), i.e., we have obtained $g^{\prime}(t)+\frac{\lambda_{1}}{2} g(t) \geqslant 0$ for $t \geqslant 0$.
Then

$$
\frac{\mathrm{d}}{\mathrm{~d} t}\left[\mathrm{e}^{\lambda_{1} t / 2} g(t)\right] \geqslant 0
$$

for $t \geqslant 0$, which implies that $e^{\lambda_{1} t / 2} g(t)$ is increasing and

$$
e^{\lambda_{1} t / 2} g(t) \geqslant g(0)>0
$$

for all $t>0$ which, in turn, implies that

$$
g(t) \geqslant \mathrm{e}^{-\lambda_{1} t / 2} g(0) \rightarrow \infty \quad \text { as } t \rightarrow \infty
$$

a contradiction. Therefore $u$ must be unstable.
It is generally believed that the diffusion process is a "smoothing" and "trivializing" process. Thus in a closed system it seems reasonable to expect that the only stable steady states are constants (i.e., sparially homogeneous). It turns out that this is indeed the case for single equations (3.1) or (3.2) provided that the domain $\Omega$ is nice, e.g., convex. (For systems of equations with different diffusion coefficients, this is generally not true and we shall discuss this later.) This result was proved by Matano [Mal] in 1979. (See [CH] also.) Matano also showed that this result also holds for other domains such as annuli $\left\{x \in \mathbb{R}^{n}|a<|x|<b\}\right.$, and gave a counterexample showing that for certain nonconvex domains, nontrivial stable steady states of (3.1) or (3.2) do exist. Following Matano's proof, we see that the rolle of convexity is contained in the following lemma.

LEMMA 3.2. Let $\Omega$ be a bounded smooth convex domain in $\mathbb{R}^{n}$. Suppose that $v \in C^{3}(\bar{\Omega})$ with $\frac{\partial y}{\partial y}=0$ on $\partial \Omega$. Then

$$
\frac{\partial}{\partial v}\|D v\|^{2} \leqslant 0 \quad \text { on } \partial \Omega .
$$

The main result in this section may be stated as follows.
THEOREM 3.3. If $\Omega$ is conwex, then the only stable solutions of (3.1) are constants.
Proof. The approach is to show that if $u$ is a nonconstant solution of (3.1), then $\lambda_{I}$ (given by (3.5)) must be negative. We shall achieve this by choosing appropriate test functions in (3.3). However, it is natural to question it a priori whether this approach would work. For, it seems that if $f^{\prime}<0$ on $\mathbb{R}$, then $\mathcal{H}(\varphi)$ is always positive for all $\varphi \not \equiv 0$ in $H^{1}(\Omega)$. It turns out that if $f^{\prime}<0$ on $\mathbb{R}$, then (3. 1) has no nonconstant solutions. To prove this, we let $u$ be a solution of (3.1). Integrating the equation yields $\int_{\Omega} f(u(x)) \mathrm{d} x=0$ and thus there exists a unique $a$ such that $f(a)=0$ (since $f$ is monotonically decreasing). Without loss of generality, we may assume that $a=0$, i.e., $f(0)=0$. (For example, we may set $v \equiv u-a$, then $\Delta v+\tilde{f}(v)=0$ and $\frac{\partial v}{\partial v}=0$ on $\partial \Omega$, where $\tilde{f}(v)=f(v+a)$. Thus $\tilde{f}(0)=f(a)=0$.) Assume $u \not \equiv 0$, then $\{x \in \Omega \mid u(x)>0\}$ and $\{x \in \Omega \mid u(x)<0\}$ are both nonempty. Let $u(P)=\max _{\bar{\Omega}} u$. Then $u(P)>0$ and we have two cases:
(i) $P \in \Omega$. Since $f(u(P))<0\left(f<0\right.$ on $\left.\mathbb{R}_{+}\right)$we have $\Delta u(P)>0$. On the other hand, $u$ assumes its maximum at $P$, so $\Delta u(P) \leqslant 0$, a contradiction.
(ii) $P \in \partial \Omega$. Choose a ball $B \subseteq \Omega$ which is tangent to $\partial \Omega$ at $P$ with $u>0$ on $\bar{B}$. Then $f(u(x))<0$ on $\bar{B}$, and $\Delta u(x)>0$ on $B$ with $u(P)=\max _{\bar{B}} u$. By Hopf's boundary point lemma, $\frac{\partial u}{\partial v}>0$ at $P$, which contradicts the boundary condition $\frac{\partial u}{\partial v}=0$ on $\partial \Omega$.

Coming back to the proof of the theorem, we choose $\varphi=u_{i}=\partial u / \partial x_{i}$. Then differentiating the equation in (3.1) gives $\Delta u_{i}+f^{\prime}(u) u_{i}=0$, and

$$
\begin{aligned}
\sum_{i} H\left(u_{i}\right) & =\sum_{i} \int_{\Omega}\left[\left|D u_{i}\right|^{2}-f^{\prime}\left(u_{i}\right) u_{i}^{2}\right] \\
& =\sum_{i} \int_{\Omega}\left[\left|D u_{i}\right|^{2}+u_{i} \Delta u_{i}\right]
\end{aligned}
$$

$$
\begin{aligned}
& =\sum_{i}\left\{\int_{\Omega}\left[\left|D u_{i}\right|^{2}-\left|D u_{i}\right|^{2}\right]+\int_{\partial \Omega} u u_{i} \frac{\partial u_{i}}{\partial v}\right\} \\
& =\frac{1}{2} \int_{\partial \Omega} \frac{\partial}{\partial v}|D u|^{2} \\
& \leqslant 0
\end{aligned}
$$

by Lemma 3.2. If one of the $\mathcal{H}\left(u_{i}\right), i=1,2, \ldots, n$, is negative, then, we are done since $u_{i} \in H^{!}(\Omega)$. Therefore we only have to deal with the case that $\mathcal{H}\left(u_{i}\right)=0, i=1,2, \ldots, n$, and $\lambda_{1}=0$. We shall derive a contradiction. First of all, we note that under this assumption each $u_{i}$ is an eigenfunction of $\lambda_{1}$. Since $\lambda_{1}$ is simple we see that for each $i$, there exists $c_{i}$ such that $u_{i}=c_{i} \varphi_{1}$ where $\varphi_{1}>0$ is the normalized eigenfunction corresponding to $\lambda_{1}$ (i.e., $\left.\left\|\varphi_{!}\right\|_{L^{2}(\Omega)}=1\right)$. Thus $D_{u}=\mathbf{c} \varphi_{1}$ where $\mathbf{c}=\left(c_{1}, \ldots, c_{n}\right)$. This implies that $u$ is constant when restricted to hyperplanes which are perpendicular to $\mathbf{c}$ (by mean-value theorem); i.e., $u$ is a function of one variable only.

If we rotate the coordinate system so that the new coordinate system, denoted by $x^{\prime}$, has its $x_{1}^{\prime}$-axis pointing in the direction of $\mathbf{c}$, then $u$ is a function of $x_{1}^{\prime}$ only. Since everything involved here are invariant under rotation, from now on, we shall be working with the new coordinate system $x^{\prime}$. To keep the notations simple, we shall still denote this new coordinate by $x$, the clomain by $\Omega$. So we have $u(x)=u\left(x_{1}\right)$ where $x=\left(x_{1}, \ldots, x_{n}\right)$ and $D u(x)=\left(c \varphi_{\mathrm{I}}(x), 0, \ldots, 0\right)$ where $c=|\mathrm{c}|$. Thus, for some $a<b$, we have

$$
\left\{\begin{array}{l}
u^{\prime \prime}+f(u)=0 \quad \text { in }(a, b), \\
u^{\prime}(a)=u^{\prime}(b)=0 .
\end{array}\right.
$$

Recall that $u_{i}=c_{i} \varphi_{1}$, this implies that in particular $u_{i}$ satisfies the homogeneous Neumann boundary condition

$$
\frac{\partial u_{i}}{\partial v}=0
$$

on $\partial \Omega$, which in turn implies that $u_{1 ।}(a)=0$, i.e., $u^{\prime \prime}(a)=0$. Now we have

$$
\left\{\begin{array}{l}
u^{\prime \prime}+f(u)=0 \quad \text { in }(a, b), \\
u^{\prime}(a)=u^{\prime \prime}(a)=0 .
\end{array}\right.
$$

Thus at $x_{1}=a, f(u(a))=0$ and $u \equiv u(a)$ is a solution of this problem. By the uniqueness of solutions of ordinary differential equations, $u \equiv u(a)$, a constant. This contradicts our assumption on $u$. Thus $\lambda_{1}<0$, and our proof is complete.

In [Ma1], an example is given to illustrate the importance of the convexity of $\Omega$ in the above theorem; namely, a stable nonconstant solution for (3.1) on a dumbell-shaped domain $\Omega$ was constructed with a bistable nonlinearity $f(u)$. Further research in this direction has been conducted by many authors, see $[\mathrm{HV}, \mathrm{JM}]$ and the references therein.

### 3.2. Single equations with Dirichlet boundary conditions

It is clear that we can define the notions of stability, asymptotic stability, linearized stability and instability for solutions to single equations under homogeneous Dirichlet boundary conditions

$$
\begin{cases}\Delta u+f(u)=0 & \text { in } \Omega  \tag{3.7}\\ u=0 & \text { on } \partial \Omega\end{cases}
$$

in a similar fashion as we did in Section 3.1. Attempts have been made to obtain the counterpart of Theorem 3.3 in Section 3.1. However, the situation here is more complicated. In [LinN] (see [Sw]) the following result was established:

Proposition 3.4. Let $\Omega$ be a ball or an annulus. Then a stable solution of (3.7) must not change sign in $\Omega$.

We ought to remark that in the case $n=1$, more general boundary condition than $u=0$ in (3.7) was studied by [Mg]. However, in general, even if $\Omega$ is convex, a stable solution of (3.7) is not necessarily of one sign. Such an example was constructed in [Ma2] and [Sw].

Proof of Proposition 3.4. To prove Proposition 3.4, we proceed as follows. Note that an interesting intermediate step in the proof is that stability implies radial symmetry.

Let $u$ be a stable solution (3.7). As the first step, we claim that $u$ must be radial. To this end, we set

$$
T_{i j}=x_{i} \frac{\partial}{\partial x_{j}}-x_{j} \frac{\partial}{\partial x_{i}}, \quad i, j=\mathfrak{l}, \ldots, n,
$$

where $x=\left(x_{1}, \ldots, x_{n}\right) \in \mathbb{R}^{n}$. A straightforward computation shows that

$$
\Delta T_{i j}=T_{i j} \Delta
$$

Applying $T_{i j}$ to (3.7), we have

$$
\begin{cases}\Delta\left(T_{i j} u\right)+f^{\prime}(u) T_{i j} u=0 & \text { in } \Omega \\ T_{i j} u=0 & \text { on } \partial \Omega\end{cases}
$$

(Recall that $\Omega$ has rotational symmetry.) Since (3.3) holds for all $\varphi \in H_{0}^{I}(\Omega), T_{i j} u$ is the first eigenfunction of the linearized operator $\Delta+f^{\prime}(u)$ if $T_{i j} u \not \equiv 0 . T_{i j} u$ must then have only one sign in $\Omega$, which is impossible. Hence $T_{i j} u \equiv 0$ for all $1 \leqslant i, j \leqslant n$ and our assertion is proved.

We now divide the rest of the proof into two cases.
Case 1. $\Omega=B_{b}$ (i.e., $\Omega$ is the ball of radius $b$ centered at the origin).
Since $u$ is radial, it satisfies

$$
\left\{\begin{array}{l}
u_{r r}+\frac{n-1}{r} u_{r}+f(u)=0 \quad \text { in } 0 \leqslant r \leqslant b, \\
u(b)=0 .
\end{array}\right.
$$

Suppose that $u$ changes sign in ( $0, b$ ). Then there exists an $r_{0} \in(0, b)$ such that $u_{r}\left(r_{0}\right)=0$. Differentiating the above equation with respect to $r$, we obtain

$$
\left(u_{r}\right)_{r r}+\frac{n-1}{r}\left(u_{r}\right)_{r}+f^{\prime}(u) u_{r}-\frac{n-1}{r^{2}} u_{r}=0 .
$$

Multiplying the above equation by $r^{n-1} u_{r}$ and integrating over $\left(0, r_{0}\right)$, we have, by (3.3), that

$$
-(n-1) \int_{B_{r_{0}}} \frac{u_{r}^{2}}{r^{2}} \mathrm{~d} x=\int_{B_{r_{0}}}\left|\nabla u_{r}\right|^{2} \mathrm{~d} x-\int_{B_{r_{0}}} f^{\prime}(u)\left|u \iota_{r}\right|^{2} \mathrm{~d} x \geqslant 0
$$

since the function

$$
\varphi(r)= \begin{cases}u_{r}(r) & \text { if } r \leqslant r_{0}, \\ 0 & \text { if } r_{0} \leqslant r \leqslant b,\end{cases}
$$

belongs to $H_{0}^{1}(\Omega)$. Therefore, $u_{r} \equiv 0$ in ( $0, r_{0}$ ) which implies that $u$ is a constant in $B_{r_{0}}$ and thus in $\Omega$, which is a contradiction.

Case 2. $\Omega=\left\{x \in \mathbb{R}^{\prime \prime}|a<|x|<b\}\right.$ where $0<a<b<\infty$.
Now u satisfies

$$
\left\{\begin{array}{l}
u_{r r}+\frac{n-1}{r} u_{r}+f(u)=0 \quad \text { in }(a, b), \\
u(a)=u(b)=0 .
\end{array}\right.
$$

Suppose that $u$ changes sign, there exist $r_{0}, r_{1}$ such that $a<r_{0}<r_{1}<b$ and $u_{r}\left(r_{0}\right)=$ $u_{r}\left(r_{1}\right)=0$. Differentiating the above equation and repeating the same arguments as in Case 1, we obtain that $u_{r} \equiv 0$ in ( $r_{0}, r_{1}$ ). (In the present case, the "test function" is chosen to be

$$
\varphi(r)= \begin{cases}u_{r}(r) & \text { if } r_{0} \leqslant r \leqslant r_{1}, \\ 0 & \text { if } r \geqslant r_{1} \text { or } r \leqslant r_{0},\end{cases}
$$

which clearly belongs to $H_{0}^{l}(\Omega)$.) Thus $u$ is a constant in ( $r_{0}, r_{1}$ ) which again implies $u$ is a constant in $\Omega$, a contradiction, and the proof of Proposition 3.4 is complete.

For general nonlinearity $f(u)$, even positive solutions of (3.7) are often unstable. To guarantee stability for positive solutions, we need to restrict ourselves to special classes of nonlinearities.

Proposition 3.5. Let $u$ be a positive solution of (3.7) where $f$ satisfies the following condition:

$$
\begin{equation*}
\frac{f(z)}{z} \text { is decreasing in } z>0 \text {. } \tag{3.8}
\end{equation*}
$$

Then $u$ must be the only positive solution of (3.7) and is stable.

Well-known examples include the case $f(u)=\mathrm{e}^{-u}$. The sublinear case $f(u)=u^{\gamma}, 0<$ $\gamma<1$, although not $C^{l}$ in $\mathbb{R}$, can be handled by exactly the same arguments below.

The proof makes use of the well-known "monotone method". Let $u_{1}$ and $u_{2}$ be two positive solutions of (3.7). Then, observe that for $0<\lambda<1, \lambda_{u_{\perp}}$ is a subsolution of (3.7). On the other hand, since $f(0) \geqslant 0$ (guaranteed by (3.8)), we have by Hopf Boundary Point lemma that $\partial u_{i} / \partial \nu<0$ on $\partial \Omega$ for $i=1,2$, and consequently $\lambda u_{1}<u_{2}$ for sufficiently small $\lambda>0$. Therefore, if we apply the monotone iteration scheme (see, e.g., [Sa], Theorem 2.1) to $\lambda u_{1}$, for some $\lambda$ small, eventually we obtain a solution $u_{3}$. Since $u_{1}$ and $u_{2}$ are both supersolutions of (3.7) and $\lambda u_{1}<u_{1}$ and $\lambda u_{1}<u_{2}$, we have $u_{3} \leqslant u_{1}$ and $u_{3} \leqslant u_{2}$. Since $u_{1} \neq u_{2}$, we must have $u_{3}<u_{1}$ or $u_{3}<u_{2}$. Assume that $u_{3}<u_{2}$. Applying the Green's identity, we derive from (3.8) that

$$
0=\int_{\Omega}\left(u_{2} \Delta u_{3}-u_{3} \Delta u_{2}\right)=\int_{\Omega} u_{2} u_{3}\left[\frac{f\left(u_{2}\right)}{u_{2}}-\frac{f\left(u_{3}\right)}{u_{3}}\right]<0,
$$

a contradiction. Thus (3.7) has at most one positive solution under the hypothesis (3.8). The stability of a positive solution $u$ to (3.7), if exists, also follows from the monotone method. For, if $u$ is a positive solution of (3.7), then $\lambda u$ is a supersolution for every $\lambda>1$, and $\lambda u$ is a subsolution of (3.7) for every $0<\lambda<1$. Our conclusion now follows from Theorem 3.3 in [Sa].

### 3.3. Shadow systems

From Theorem 3.3 in Section 3.1, it seems clear that single equations with homogeneous Neumann boundary conditions are simply inadequate in modeling nontrivial pattern in reality. Therefore we need to go to systems, and it seems that $2 \times 2$ systems already admit many stable steady state solutions with highly nontrivial patterns. As a first step in understanding $2 \times 2$ systems, we shall first study the shadow systems which, in some sense, lie between single equations and $2 \times 2$ systems (as we have seen in Section 1).

For a $2 \times 2$ system

$$
\begin{cases}u_{r}=d_{1} \Delta u+f(u, v) & \text { in } \Omega \times[0, T),  \tag{3.9}\\ v_{i}=d_{2} \Delta v+g(u, v) & \text { in } \Omega \times[0, T), \\ \frac{\partial u}{\partial u}=\frac{\partial v}{i v}=0 & \text { on } \partial \Omega \times[0, T),\end{cases}
$$

it has been known for quite some time that when both the diffusion coefficients $d_{1}$ and $d_{2}$ are large, the dynamics of (3.9) is essentially determined by the corresponding system of ordinary differential equations, at least in many important cases. It has also been understood that when one of the diffusion coefficients, say, $d_{2}$ is large, the dynamics of (3.9) is essentially determined by the following shadow system

$$
\begin{cases}u_{r}=d_{1} \Delta u+f(u, \xi) & \text { in } \Omega \times[0, T),  \tag{3.10}\\ \xi_{r}=|\Omega|^{-1} \int_{\Omega} g(u, \xi) \mathrm{d} x & \text { in }[0, T), \\ \frac{\partial u}{\partial u}=0 & \text { on } \partial \Omega \times[0, T),\end{cases}
$$

again in many important cases. (See [HS].) Note that the equation for $v$ in (3.9) is replaced by an ordinary differential equation for $\xi$ with nonlocal effects.

In [NPY] it is established that any bounded (not necessariby stationary) stable solution of ( 3.10 ) in $n=1$ must be either asymptotically homogeneous or eventually monotone in $x$. In particular, the fact that "stability implies monotonicity" for the shadow system (3.10) we discussed at the beginning of this chapter holds. To make the basic ideas involved here transparent, we first treat the steady state case.

Proposition 3.6 [NPY]. Suppose that $f(u, v)$ and $g(u, v)$ are of class $C^{1}$. Then any spatially inhomogeneous nonmonotone steady state of

$$
\begin{cases}u_{t}=u_{x x}+f(u, \xi) & \text { in }(0,1) \times[0, \infty),  \tag{3.11}\\ u_{x}(0, t)=0=u_{x}(1, t), & t>0, \\ \xi_{t}=\int_{0}^{1} g(u, \xi) \mathrm{d} x, & t>0,\end{cases}
$$

is unstable.
The proof relies heavily on symmetry properties of the domain $\Omega=(0,1)$ and thus is strictly one-dimensional.

We begin with the notion of $k$-symmetry. We say that a function $u(x)$ is $k$-symmetric in $[0,1], k \geqslant 2$, if the restriction $u(x), x \in\left[\frac{i-1}{k}, \frac{i+1}{k}\right]$, is (even) symmetric with respect to the point $x=i / k$ for all $i=1,2, \ldots, k-1$, that is,

$$
u(x)=u\left(\frac{2 i}{k}-x\right) \text { for all } x \in\left[\frac{i-1}{k}, \frac{i+1}{k}\right] .
$$

We call a solution $(u, \xi)$ of (3.11) $k$-symmetric if $u(x, t)$ is $k$-symmetric for every $t$.
Let $(u(x), \xi)$ be a stationary solution of (3.11), that is, $(u(x), \xi)$ satisfies

$$
\left\{\begin{array}{l}
u^{\prime \prime}+f(u, \xi)=0, \quad x \in(0,1)  \tag{3.12}\\
u^{\prime}(0)=0=u^{\prime}(1) \\
\int_{0}^{1} g(u(x), \xi) \mathrm{d} x=0
\end{array}\right.
$$

Clearly, if $(u(x), \xi)$ is a nonconstant nonmonotone solution of (3.12), then $u(x)$ is $k$-symmetric with some $k \geqslant 2$ and monotone in $[0,1 / k]$.

Let us consider the following eigenvalue problem associated with the linearized operator at $u(x)$ :

$$
\left\{\begin{array}{l}
\ell \varphi(x)=\varphi^{\prime \prime}(x)+f_{u}(u(x), \xi) \varphi(x), \quad x \in(0,1)  \tag{3.13}\\
\varphi^{\prime}(0)=0=\varphi^{\prime}(1)
\end{array}\right.
$$

According to the Sturm-Liouville theory, the eigenvalues of (3.13) are real numbers $\ell_{0}>\ell_{1}>\ell_{2}>\cdots \rightarrow-\infty$, and the corresponding eigenfunctions $\varphi_{0}, \varphi_{1}, \varphi_{2}, \ldots$, are characterized by the property that $\varphi_{j}$ has exactly $j$ zeros in $(0,1)$. We assume that these eigenfunctions are normalized in $L^{2}(0,1)$.

Next, let us consider the eigenvalue problem

$$
\left\{\begin{array}{l}
\tilde{\ell} \tilde{\varphi}(x)=\tilde{\varphi}^{\prime \prime}(x)+f_{u}(u(x), \xi) \bar{\varphi}(x), \quad x \in(0,1 / k)  \tag{3.14}\\
\tilde{\varphi}^{\prime}(0)=0=\tilde{\varphi}^{\prime}(1 / k)
\end{array}\right.
$$

We denote by $\tilde{\ell}_{j}$ and $\tilde{\varphi}_{j}$ the $j$ th eigenvalue and corresponding eigenfunction of (3.14), respectively. We assume that the eigenfunctions are normalized in $L^{2}(0,1 / k)$. Since $\tilde{\varphi}_{j}$ has exactly $j$ zeros in ( $0,1 / k$ ), it follows from reflection and the number of zeros that

$$
\tilde{\ell}_{j}=\ell_{j k}, \quad \tilde{\varphi}_{j}(x) \equiv \sqrt{k} \varphi_{j k}(x) \quad \text { on }[0,1 / k],
$$

for all $j=0,1,2, \ldots$.
LEMMA 3.7. Let $w(x)$ be any $k$-synmetric function on $[0,1]$. Then

$$
\int_{0}^{1} w(x) \varphi_{j}(x) \mathrm{d} x=0, \quad j \neq 0, k, 2 k, \ldots
$$

PROOF, Let $(\cdot,)_{L^{2}(a, b)}$ denote the $L^{2}$-inner product on $(a, b)$. By reflection, we have for $x \in(0,1 / k)$

$$
\begin{aligned}
w & =\sum_{j=0}^{\infty}\left\langle w, \tilde{\varphi}_{j}\right\rangle_{L^{2}(0,1 / k)} \tilde{\varphi}_{j} \\
& =\sum_{j=0}^{\infty} k\left(w, \varphi_{j k}\right\rangle_{L_{(0,1 / k)}^{2}} \varphi_{j k} \\
& =\sum_{j=0}^{\infty}\left(w, \varphi_{j k}\right)_{L^{2}(0,1)} \varphi_{j k}
\end{aligned}
$$

Hence, again by reflection, we obtain

$$
w=\sum_{j=0}^{\infty}\left(w, \varphi_{j k}\right)_{L^{2}(0,1)} \varphi_{j k} \quad \text { on }[0,1] .
$$

On the other hand, we can expand $w$ as

$$
w=\sum_{j=0}^{\infty}\langle w, \varphi\rangle_{L^{2}(0,1)} \varphi_{j} \quad \text { on }[0,1]
$$

Comparing these two expansions termwise, we obtain the conclusion.

LEMMA 3.8. If $u(x)$ is $k$-synmetric, then the eigenvalues of (3.13) satisfy $\ell_{0}>\ell_{1}>\cdots>$ $\ell_{k-1}>0$.

Proof. Differentiating (3.12), we obtain

$$
\left\{u^{\prime}(x)\right\}^{\prime \prime}+f_{u}(u(x), \xi) u^{\prime}(x)=0, \quad x \in(0,1)
$$

We also have $u^{\prime}(0)=u^{\prime}(1)=0$. Clearly $u^{\prime}(x)$ has $k-1$ zeros in $(0,1)$ and $\varphi_{j}(x)$ has exactly $j$ zeros in $(0,1)$. Then it follows from the Sturm comparison theorem (see, e.g., [CoL]) that $\ell_{k-1}>0$.

We now give a proof of Proposition 3.6.
Proof of Proposition 3.6. Let $(u(x), \xi)$ be any spatially inhomogeneous nonmonotone solution of (3.12), and consider the eigenvalue problem

$$
\left\{\begin{array}{l}
\lambda \Phi(x)=\Phi^{\prime \prime}(x)+f_{u}(u(x), \xi) \Phi(x)+f_{v}(u(x), \xi) \eta, \quad x \in(0,1)  \tag{3.15}\\
\lambda \eta=\int_{0}^{1}\left\{g_{u}(u(x), \xi) \Phi(x)+g_{v}(u(x), \xi) \eta\right\} \mathrm{d} x \\
\Phi^{\prime}(0)=0=\Phi^{\prime}(1)
\end{array}\right.
$$

Since $g_{u}(u(x), \xi)$ is $k$-symmetric with some $k \geqslant 2$, it follows from Lemma 3.7 that

$$
\int_{0}^{l} g_{u}(u(x), \xi) \varphi_{j}(x) \mathrm{d} x=0 \quad \text { for } j \neq 0, k, 2 k, \ldots
$$

Hence, $(\lambda, \Phi, \eta)=\left(\ell_{j}, \varphi_{j}, 0\right)$ satisfies (3.15) if $j \neq 0, k, 2 k, \ldots$. This implies that $(\widetilde{\Phi}, \tilde{\eta})=\left(\mathrm{e}^{\ell l_{j}} \varphi_{j}(x), 0\right)$ satisfies the linearized system for (3.11)

$$
\begin{cases}\widetilde{\Phi}_{t}=\widetilde{\Phi}_{x x}+f_{u}(u, \xi) \widetilde{\Phi}+f_{v}(u, \xi) \tilde{\eta}, & 0<x<1, t>0 \\ \tilde{\eta}_{t}=\int_{0}^{1}\left[g_{u}(u, \xi) \widetilde{\Phi}+g_{v}(u, \xi) \tilde{\eta}\right] \mathrm{d} x, & t>0 \\ \widetilde{\Phi}_{x}(0, t)=0=\widetilde{\Phi}_{x}(1, t), & t>0\end{cases}
$$

if $j \neq 0, k, 2 k, \ldots$. Since $\ell_{j}>0$ for $j=1,2, \ldots, k-1$, by Lemma 3.8, the steady state $(u, \xi)$ is unstable.

The proof of the "parabolic" version of Proposition 3.6 is more involved, and we refer the interested readers to [NPY] for details.

Among major problems left open concerning (3.10) is perhaps the multidimensional analogue of Proposition 3.6 for, say, convex domains. Very little is known so far in this generality.

On the other hand, with more specific shadow systems, for instance, the one derived from the $2 \times 2$ activator-inhibitor system in Section 1, namely, (1.3), we do have results concerning its stability and instability properties in multidimensions. To describe some of the existing results we first introduce the notion of weak stability. We say that a steady
state solution $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ of (1.3), with $d_{\mathrm{E}}=\varepsilon^{2}$, is weakly stable if all the eigenvalues of the linearized operator

$$
\mathcal{L}_{\varepsilon, \tau}=\left(\begin{array}{cc}
\varepsilon^{2} \Delta-1+p U_{\varepsilon}^{p-1} / \xi_{\varepsilon}^{q} & -q U_{\varepsilon}^{p} / \xi_{\varepsilon}^{q+1} \\
\frac{r}{\tau|\Omega|} \int_{\Omega} U_{\varepsilon}^{r-1} \mathrm{~d} x / \xi_{\varepsilon}^{s} & -\frac{1}{\tau}+s \int_{\Omega} U_{\varepsilon}^{r} \mathrm{~d} x /\left(\tau|\Omega| \xi_{E}^{s+1}\right)
\end{array}\right)
$$

are contained in the set $\{\lambda \in \mathbb{C} \mid \operatorname{Re} \lambda<0$ or $\lambda=0\}$. By standard theory we know that if all the eigenvalues of $\mathcal{L}_{\varepsilon, \tau}$ are contained in the left half plane $\{\lambda \in \mathbb{C} \mid \operatorname{Re} \lambda<0\}$, then $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is asymptotically stable; while it is unstable if $\mathcal{L}_{\varepsilon, \tau}$ has an eigenvalue with positive real part. The weak stability allows 0 to be an eigenvalue. Next, we assume for the rest of this section that $1<p<\frac{n+2}{n-2}$. Then we say that ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) is a least-energy pattern if

$$
\begin{equation*}
U_{\varepsilon}(x)=\xi_{\varepsilon}^{q /(p-1)} u_{\varepsilon}(x) \quad \text { and } \quad \xi_{\varepsilon}=\frac{1}{|\Omega|}\left(\int_{\Omega} u_{\varepsilon}^{r} \mathrm{~d} x\right)^{-1 / \alpha} \tag{3.16}
\end{equation*}
$$

where $\alpha$ is defined in (2.6) and $u_{\varepsilon}$ is the least-energy solution $u_{\varepsilon, N}$ of (1.4) guaranteed by Theorem 1.1. (It is easy to see that (3.16) gives a steady state of (1.3).) We are now ready to state some results concerning the stability and instability properties of ( $U_{\varepsilon}, \xi_{\varepsilon}$ ). (See [NTY2] for details.)

Theorem 3.9 (Instability). For each $\varepsilon$ sufficiently small, there is a $\tau_{0} \geqslant 0$, depending on $p, q, r, s$ and $\varepsilon$, such that ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) is unstable if $\tau>\tau_{0}$.

Theorem 3.10 (Stability). Suppose that $r=p+1$. Then, as long as $\alpha$ does not betong to a certain finite (possibly empty) subset $\mathcal{C}$ of the interval $\left(0, \frac{q r}{p-1}-1\right)$, there exist positive numbers $\tau_{1}>\tau_{2}>\cdots>\tau_{2 m-1}>0$, depending on $p, q, s, \varepsilon$, for which the following hold:
(i) $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is weakly stable if $\tau \in\left(0, \tau_{2 m-1}\right) \cup\left(\tau_{2 m-2}, \tau_{2 m-3}\right) \cup \cdots \cup\left(\tau_{2}, \tau_{1}\right)$;
(ii) $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is unstable if $\tau \in\left(\tau_{2 m-1}, \tau_{2 m-2}\right) \cup \cdots \cup\left(\tau_{3}, \tau_{2}\right) \cup\left(\tau_{1}, \infty\right)$, provided that $\varepsilon$ is sufficiently small.

Furthernore, if $\mathcal{C}$ is empty, then $m=1$.
THEOREM 3.11 (Hopf bifurcation). Under the hypothesis of the above theorem, if $\alpha \notin \mathcal{C}$ and $\varepsilon$ is sufficiently small, then in each small neighborhood of $\tau_{j}, j=1, \ldots, 2 m-1$, (1.3) has a one-parameter family of periodic solutions $\left(U_{\varepsilon}(x, t ; \mu), \xi_{\varepsilon}(t ; \mu)\right)$ for $\tau=\tau(\mu)$ defined for $\mu \in\left(-\mu_{0}, \mu_{0}\right)$ bifurcating from $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ at $\tau=\tau_{j}$, i.e., $U_{\varepsilon}(x, t ; \mu)=U_{\varepsilon}(x)+$ $\mathrm{O}(\mu), \xi_{\varepsilon}(t ; \mu)=\xi_{\varepsilon}+\mathrm{O}(\mu), \tau(\mu)=\tau_{j}+\mathrm{O}(\mu)$ as $\mu \rightarrow 0$.

Intuitively speaking, if $\tau$ is small, the inhibitor responds quickly to the change, thus one may expect ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) to be stabilized. On the other hand, if $\tau$ is large, then the response of the inhibitor to changes is slow, suggesting that ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) be unstable. Our results support these intuitions.

It is clear that if the domain $\Omega$ is a ball or an annulus, then the linearized operator $\mathcal{L}_{\varepsilon, \tau}$ of the least-energy pattern ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) always has 0 as an eigenvalue, as rotations generate a continuum of steady states of (1.3) since the single-peak of $u_{\varepsilon}$ is assumed on the boundary. Therefore, in general one could expect at most the weak stability. However, in case $\Omega$ is
a ball or an annulus, the weak stability does imply the nonlinear stability. (See [NTY2], Section 4.)

Although the proofs in [NTY2] rely heavily on the assumption $r=p+1$, the method used in [NTY2] is quite general. We will briefly sketch the main ideas involved. First, observe that, with a suitable scaling argument,

$$
\mathcal{L}_{\varepsilon, \tau}\binom{\xi_{\varepsilon}^{q /(p-1)} \phi}{\xi_{\varepsilon} \eta}=\lambda\binom{\xi^{q /(p-1)} \phi}{\xi_{\varepsilon} \eta}
$$

if and only if

$$
\begin{cases}\varepsilon^{2} \Delta \phi-\phi+p u_{\varepsilon}^{p-1} \phi-q u_{\varepsilon}^{p} \eta=\lambda \phi & \text { in } \Omega  \tag{3.17}\\ r \int_{\Omega} u_{\varepsilon}^{\prime-1} \phi / \int_{\Omega} u_{\varepsilon}^{\prime}-(s+1) \eta=\tau \lambda \eta, & \\ \frac{\partial \phi}{\partial w}=0 & \text { on } \partial \Omega\end{cases}
$$

Since $u_{\varepsilon}$ is the least-energy solution of (1.4), the spectrum of the linearized operator $L_{\varepsilon}=$ $\varepsilon^{2} \Delta-1+p u_{\varepsilon}^{p-1}$ with homogeneous Neumann boundary conditions consists only of the eigenvalues $\left\{\ell_{j, \varepsilon}\right\}_{j=0}^{\infty}$ satisfying $\ell_{0, \varepsilon}>\delta_{0}>0 \geqslant \ell_{1, \varepsilon} \geqslant \cdots \rightarrow-\infty$ where the constant $\delta_{0}$ is independent of $\varepsilon$. Now, denote by $\left\{\varphi_{j, \varepsilon}\right\}_{j=0}^{\infty}$ the corresponding normalized eigenfunctions (with $\varphi_{0, \varepsilon}>0$ ) which form a complete orthonormal system in $L^{2}(\Omega)$. For $\lambda \notin\left\{\ell_{j, \varepsilon}\right\}_{j=0}^{\infty}$, we can solve $\phi$ from the first equation in (3.17)

$$
\begin{equation*}
\phi=q \eta\left(L_{\varepsilon}-\lambda\right)^{-1} u_{\varepsilon}^{p}=q \eta \sum_{j=0}^{\infty} \frac{\left\langle u_{\varepsilon}^{p}, \varphi_{j, \varepsilon}\right\rangle}{\ell_{j, \varepsilon}-\lambda} \varphi_{j, \varepsilon} \tag{3.18}
\end{equation*}
$$

where $\langle\cdot, \cdot\rangle$ denotes the inner product in $L^{2}(\Omega)$. Substituting (3.18) into the second equation in (3.17) we obtain, $\eta \neq 0$ if and only if $\lambda$ satisfies

$$
\begin{align*}
& \frac{q r}{p-1}-(s+1) \\
& \quad+\frac{q r \lambda}{(p-1) \int_{\Omega} u_{\varepsilon}^{r}} \sum_{j=0}^{\infty} \frac{\left\langle u_{\varepsilon}^{r-1}, \varphi_{j, \varepsilon}\right\rangle\left\langle u_{\varepsilon}, \varphi_{j, \varepsilon}\right\rangle}{\ell_{j, \varepsilon}-\lambda}-\tau \lambda=0 \tag{3.19}
\end{align*}
$$

where $\sum^{\prime}$ denotes the summation over $j$ satisfying $\ell_{j, \varepsilon} \neq 0$, since $L_{\varepsilon} u_{\varepsilon}=(p-1) u_{\varepsilon}^{\prime \prime}$ and therefore

$$
\left\langle u_{\varepsilon}^{p}, \varphi_{j, \varepsilon}\right\rangle=\frac{\ell_{j, \varepsilon}}{p-1}\left\langle u_{\varepsilon}, \varphi_{j, \varepsilon}\right\rangle
$$

Thus $\lambda \notin\left\{\ell_{j, \varepsilon}\right\}_{j=0}^{\infty}$ is an eigenvalue of $\mathcal{L}_{\varepsilon, \tau}$ if and only if $\lambda$ satisfies the characteristic equation

$$
\begin{equation*}
\chi(\lambda ; \varepsilon, \tau)=\lambda\left(\sum_{j=0}^{\infty}, \frac{c_{j, \varepsilon}}{\ell_{j, \varepsilon}-\lambda}-\tau\right)+\alpha=0, \tag{3.20}
\end{equation*}
$$

where $c_{j . \varepsilon}$ is given by (3.19) as follows

$$
\begin{equation*}
c_{j, \varepsilon}=\frac{q r}{p-1} \frac{\left\langle u_{\varepsilon}^{r-1}, \varphi_{j, \varepsilon}\right\rangle\left\langle u_{\varepsilon}, \varphi_{j, \varepsilon}\right\rangle}{\int_{\Omega} u_{\varepsilon}^{r}} \tag{3.21}
\end{equation*}
$$

Now it is clear that $c_{0 . \varepsilon}>0$ and, if $r=p+1$, then $c_{j, \varepsilon} \leqslant 0$ for all $j \geqslant 1$, which turns out to be cructial in analyzing the zeros of $\chi(\lambda ; \varepsilon, \tau)$. We refer the interested readers to [NTY2] for details.

Naturally, one would expect a stronger stability result than Theorem 3.10 when the dimension $n=1$. Indeed, when $n=1$, not only we obtain asymptotic stability (instead of weak stability), we are also able to enlarge the range of the parameter $r$ in [NTY1].

THEOREM 3.12 (Asymptotic stability). Suppose that $n=1$. There exists a $\delta_{1}>0$ and an $\varepsilon_{1}>0$ such that, for every $|r-(p+1)|<\delta_{1}$ and $\varepsilon \in\left(0, \varepsilon_{1}\right)$, as long as $\alpha$ does not belong to a certain finite (possibly empty) set $\mathcal{C}$ of the interval $\left(0, \frac{a r}{p-1}-1\right)$, there exist positive numbers $\tau_{1}>\tau_{2}>\cdots>\tau_{2 m-1}>0$, depending on $p, q, r, s, \varepsilon$, for which the following hold:
(i) $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is asymptotically stable if $\tau \in\left(0, \tau_{2 m-1}\right) \cup\left(\tau_{2 m-2}, \tau_{2 m-3}\right) \cup \cdots \cup\left(\tau_{2}, \tau_{1}\right)$;
(ii) $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is unstable if $\tau \in\left(\tau_{2 m-1}, \tau_{2 m-2}\right) \cup \cdots \cup\left(\tau_{3}, \tau_{2}\right) \cup\left(\tau_{1}, \infty\right)$.

If, in addition $\mathcal{C}$ is empty, then $m=1$.
Theorem 3.13 (Asymptotic stability). Suppose that $n=1$. There exists a $\delta_{1}>0$ and an $\varepsilon_{1}>0$ such that for every $|r-2|<\delta_{1}$ and $\varepsilon \in\left(0, \varepsilon_{1}\right)$, there is a $\tau_{1} \geqslant 0$ for which the following hold:
(i) if $\tau_{1}>0$ then $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is asymptotically stable for $\tau \in\left(0, \tau_{1}\right)$;
(ii) if $\tau>\tau_{1}$ then $\left(U_{\varepsilon}, \xi_{\varepsilon}\right)$ is unstable;
(iii) if $1<p<2 r+1$, then $\tau_{1}>0$ provided that $\alpha$ is sufficiently small. On the other hand, if $p>2 r+1$ then $\tau_{1}=0$, provided that $\alpha$ is sufficiently small.

Theorems 3.12 and 3.13 improve Theorem 3.10 in the one-dimensional case $n=1$. Theorem 3.11, which guarantees the existence of periodic solutions, also gets improved in a similar fashion when $n=1$. In fact, Theorems 3.12 and 3.13 hold for a more general activator-inhibitor system which allows self-production of the activator. The basic advantage for the case $n=1$ is that now the linearized operator

$$
\begin{equation*}
L_{\varepsilon} \equiv \varepsilon^{2} \Delta-1+p u_{\varepsilon}^{p-1} \tag{3.22}
\end{equation*}
$$

is invertible, where $u_{\varepsilon}$ is the least-energy solution of (1.4), although the details become much more involved, for which we refer the reader to [NTY1].

### 3.4. Diffusion systems

Stability properties for diffusion systems have been studied for many important models. However, there seems to be no general results. For instance, the counterpart for the property that "stability implies triviality" for single equation, or that "stability implies monotonicity" for shadow systems, has not been established even for $2 \times 2$ diffusion systems. The situation here seems quite complicated.

In this section, instead of surveying various stability and instability results for many diffusion systems, we shall restrict ourselves to mainly the activator-inhibitor system we have discussed in previous sections just to illustrate the methods involved.

The first stability results on spike solutions are due to [NTY1,NTY2]. (See [N2] for the announcement.) Based on the shadow system approach, it seems natural to expect that the stability and instability properties of the $2 \times 2$ diffusion system (3.9) be determined by its shadow system (3.10) when the diffusion coefficient $d_{2}$ is large. This is indeed the case. Again, to simplify our presentation, we deal with the case $n=1$ in the $2 \times 2$ activatorinhibitor system (1.1) and its shadow system (1.3). Denoting $d_{1}=\varepsilon^{2}$, we first obtain the single boundary-peak steady state solution for (1.1) from the least-energy pattern ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) of the shadow system (1.3) given by (3.16).

Theorem 3.14 [T]. Suppose that $n=1$. There exist $\varepsilon_{0}>0$ and $D_{\text {* }}>0$ such that for $0<\varepsilon<\varepsilon_{0}$ and $d_{2}>D_{*}$ the system (1.1) has a steady state solution of the form

$$
\begin{align*}
& U\left(x ; \varepsilon, d_{2}\right)=U_{\varepsilon}(x)+\Phi\left(x ; \varepsilon, d_{2}\right) \quad \text { and }  \tag{3.23}\\
& V\left(x ; \varepsilon, d_{2}\right)=\xi_{\varepsilon}+\Psi\left(x ; \varepsilon, d_{2}\right)
\end{align*}
$$

where ( $U_{\varepsilon}, \xi_{\varepsilon}$ ) is a steady state solution of the shadow system (1.3) given by (3.16) and, $\Phi$ and $\Psi$ satisfy

$$
\left\|\xi_{\varepsilon}^{-q /(p-1)} \Phi\left(\cdot ; \varepsilon, d_{2}\right)\right\|_{L^{\infty}} \leqslant \frac{C}{d_{2}} \quad \text { and } \quad\left\|\xi_{\varepsilon}^{-1} \Psi_{\left(\cdot ; \varepsilon, d_{2}\right)}\right\|_{L^{\infty}} \leqslant \frac{C}{d_{2}}
$$

for some positive constant $C$ independent of $\varepsilon$ and $d_{2}$.

Now, the stability and instability properties of the solution ( $U\left(\cdot ; \varepsilon, d_{2}\right), V\left(\cdot ; \varepsilon, d_{2}\right)$ ) read as follows [NTY1].

Theorem 3.15 (Instability). There is a $\tau_{1} \geqslant 0$ depending on ( $p, q, r, s$ ), $\varepsilon \in\left(0, \varepsilon_{0}\right)$ and $D>D_{*}$ such that $\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right)$ is unstable if $\tau>\tau_{1}$.

THEOREM 3.16 (Stability I). There exist $\delta>0, \varepsilon_{1}>0$ and $D_{2}>0$ such that for each $r$ satisfying $|r-(p+1)|<\delta$ and for $\varepsilon \in\left(0, \varepsilon_{1}\right)$ and $d_{2}>D_{2}$, unless \& belongs to an exceptional set $C$ consisting of at most finitely many points in the interval $[0, r /(p-1)-1)$,
there are positive numbers $0<\tau_{2 m-1}<\tau_{2 m-2}<\cdots<\tau_{2}<\tau_{1}$ for which the following hold:
(i) if $\tau_{2 j}<\tau<\tau_{2 j-1}$ for some $j=1,2, \ldots, m$, then $\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right)$ is asymptotically stable, where $\tau_{2 m}=0$;
(ii) if $\tau_{2 j-1}<\tau<\tau_{2 j-1}$ for some $j=1,2, \ldots, m$, then $\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right)$ is unstable, where $\tau_{0}=+\infty$.
If, in addition, $C$ is empty, then $m=1$.

Theorem 3.17 (Stability II). There exist $\delta_{1}>0, \varepsilon_{1}>0$ and $D_{2}>0$ such that for each $r$ satisfying $|r-2|<\delta_{1}$ and for $\varepsilon \in\left(0, \varepsilon_{1}\right)$ and $d_{2}>D_{2}$, there is a nonnegative number $\tau_{1}$ for which the following hold:
(i) if $\tau_{1}>0$, then $\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right)$ is asymptotically stable for $\tau \in\left(0, \tau_{\|}\right)$;
(ii) if $\tau>\tau_{1}$ then $\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right)$ is unstable;
(iii) suppose that $1<p<2 r+1$, then $\tau_{1}>0$ provided that $\alpha$ is sufficiently small, i.e., $s$ is sufficiently close to $\frac{q r}{p-1}-1$. On the other hand, when $p>2 r+1$, then $\tau_{1}=0$, provided that $\alpha$ is sufficiently small.

Theorem 3.18 (Hopf bifurcation). Let $\delta_{1}, \varepsilon_{1}$ and $D_{2}$ be the positive numbers given by Theorems 3.16 and 3.17. Assume that $0<\varepsilon<\varepsilon_{1}, d_{2}>D_{2}$, and that $r$ satisfies $|r-2|<\delta_{1}$ or $|r-(p+1)|<\delta_{1}$. Moneover, assume that $s \notin \mathcal{C}$ if $|r-(p+1)|<\delta_{1}$, on the other hand, assume that $1<p<2 r+1$ and $\alpha$ is sufficiently small if $|r-2|<\delta_{1}$. Let $\tau_{k}$ be the positive number given by Theorems 3.16 and 3.17, where $1 \leqslant k \leqslant 2 m-1$ if $|r-(p+1)|<\delta_{1}$ and $k=1$ if $|r-2|<\delta_{1}$. Then there is a one-parameter family of periodic solutions $\left\{\left(U\left(x ; t ; \varepsilon, d_{2} ; \mu\right), V\left(x, t ; \varepsilon, d_{2} ; \mu\right)\right)\right\}_{|\mu|<\mu_{0},}$ to (1.1) with $\tau=\tau(\mu)$, satisfying
(a) $\left(U\left(x, t ; \varepsilon, d_{2} ; 0\right), V\left(t ; \varepsilon, d_{2} ; 0\right)\right)=\left(U\left(x ; \varepsilon, d_{2}\right), V\left(x ; \varepsilon, d_{2}\right)\right), \tau(0)=\tau_{k}$;
(b) $U\left(x, t ; \varepsilon, d_{2} ; \mu\right)=U_{\varepsilon}(x)+\mu \xi_{\varepsilon}^{q /(p-1)}\left(1+\mathrm{O}\left(1 / d_{2}\right)\right) \operatorname{Re}\left(\mathrm{e}^{\mathrm{i}\left(\omega_{k}+\mathrm{o}(1)\right) t}\left(L_{\varepsilon}-\mathrm{i} \omega_{k}\right)^{-1} \times\right.$ $\left.\left[q u_{\varepsilon}^{p}\right](x)+o(1)\right)$;
(c) $V\left(x, t ; \varepsilon, d_{2} ; \mu\right)=V\left(x ; \varepsilon, d_{2}\right)+\mu \xi_{\varepsilon}^{q /(p-1)}\left(1+\mathrm{O}\left(1 / d_{2}\right)\right) \operatorname{Re}\left(\mathrm{e}^{\mathrm{i}\left(\omega_{k}+\mathrm{o}(1)\right) t}+\mathrm{o}(1)\right)$, where $\omega_{k}$ is a positive number:

Again, our method of proofs involves a careful analysis of the linearization of (1.1). A similar characteristic equation is derived for this purpose, and the invertibility of the operator: $L_{\varepsilon}$ defined by (3.22) in the case $n=1$ again plays an important role in studying this characteristic equation. (See [NTY1] for details.)

## 4. Symmetry and related properties of solutions

Symmetry of solutions to elliptic problems has been an important subject in mathematics as well as in mathematical physics. It has a long history and the early works dealt mainly with symmetric rearrangements [PS]. Systematic studies of symmetry properties in modern era only seem to have started with the papers [GNN1,GNN2] around 1980.

The basic question here is: If the elliptic equation, the underlying domain and the boundary conditions all possess certain symmetries, then, do all positive solutions have the same symmetries? Or, what kind of symmetries would positive solutions possess?

Spherical symmetry, or radial symmetry, being among the most fundamental symmetries, will be the center of this section.

We shall start with the simplest semilinear elliptic equation

$$
\begin{equation*}
\Delta u+f(u)=0 \quad \text { in } \Omega, \tag{4.1}
\end{equation*}
$$

where $\Omega$ is a ball, an annulus, or the entire Euclidean space $\mathbb{R}^{n}$, with either the homogeneous Dirichlet boundary condition

$$
\begin{equation*}
u=0 \quad \text { on } \partial \Omega, \tag{4.2}
\end{equation*}
$$

or the homogeneous Neumann boundary condition

$$
\begin{equation*}
\frac{\partial u}{\partial \nu}=0 \quad \text { on } \partial \Omega . \tag{4.3}
\end{equation*}
$$

It will become abundantly clear that the Dirichlet condition (4.2) is far more "coercive" or "imposing" than the Neumann boundary condition (4.3). More precisely, the Dirichlet condition (4.2) will "force" all positive solutions of (4.1) to possess the same radial symmetry in the case when $\Omega$ is a ball, while the Neumann condition (4.3) allows many more other possibilities. These are discussed in Section 4.1.

It is interesting to note that although annuli also have the same radial symmetry positive solutions of (4.1) in an annulus even under the Dirichlet boundary condition (4.2) are generally not radially symmetric. In fact, the "least-energy" solutions of (4.1) and (4.2), discussed in Section 1, are often not radially symmetric. This indicates that, for annulus, "natural" solutions (or "ground states") to (4.1) and (4.2) often do not inherit radial symmetry from the domain in order to stay "most stable"; i.e., in order to reduce its "energy". A more detailed explanation and other relevant information are included in Section 4.2.

For the case $\Omega=\mathbb{R}^{n}$, we usually only consider positive solutions which tend to 0 at $\infty$. This, of course, seems weaker than the Dirichlet boundary condition (4.2) for the ball case. Indeed, symmetry properties in this case are generally more difficult to establish. Section 4.3 is devoted to this case.

The main method used in this section is the "moving plane" method, which is based on the maximum principle and a device due to A.D. Alexandroff in 1956 in his proof of the result that all topological spheres in $\mathbb{R}^{n}$ with constant mean curvatures must actually be spheres. This method establishes radial symmetry by first proving mirror symmetry, or, reflection symmetry in an arbitrary direction. In the process it also yields the monotonicity of solutions as a by-product. Since the publication of [GNN1,GNN2], there have been many variants of this "moving plane" method developed by various authors to handle clifferent types of domains, such as half-spaces, and/or to establish related properties of solutions, such as monotonicity properties. One such example is the De Giorgi conjecture, which will be discussed in Section 4.4. This section will also include a brief discussion on the convexity of level sets of positive solutions to the Dirichlet problem (4.1) and (4.2) when the underlying domain $\Omega$ is convex.

In Section 4.5 we shall consider general elliptic operators (other than the usual Laplace operator $\Delta$ ). Those will include from operators of mean curvature type to fully nonlinear operators, and degenerate/singular operators such as the $p$-Laplacian. Positive results as well as counterexamples will be mentioned.

Finally, we include a brief account for symmetry results to elliptic systems in Section 4.6.

### 4.1. Symmetry of semilinear elliptic equations in a ball

In this section, we would like to describe various symmetry properties for positive solutions of the elliptic equation (4.1) for $u>0$ in the case when $\Omega$ is a ball of radius $R$ in $\mathbb{R}^{v t}$, under either the homogeneous Dirichlet boundary condition (4.2) or the homogeneous Neumann boundary condition (4.3), where $v$ again denotes the unit outward normal to $\partial \Omega$. Our goal here is to understand what kind of symmetries are being imposed to all positive solutions of (4.2) by different boundary conditions (4.2) and (4.3).

Our first result says that the Dirichlet boundary condition (4.2) is "rigid and coercive" solutions of (4.1) and (4.2) basically inherit the symmetries of the domain $\Omega$. (See Section 4.2 for exceptions and more discussions.)

THEOREM 4.1 [GNN1]. Let $u$ be a solution of the Dirichlet problem (4.1) and (4.2) where $f$ is locally Lipschitz continuous. Then $u$ must be radially synmetric, i.e., $u(x)=u(|x|)$, and $u^{\prime}(r)<0$ for all $0<r<R$.

Observe that there is essentially no condition imposed on $f$. Therefore, the radial symmetry of solutions to (4.1) and (4.2) seems to result from the symmetry of the domain $\Omega$ and the Dirichlet boundary condition. The proof makes use of the well-known "movingplane" method devised by A.D. Alexandroff in 1956.

For simplicity we will only sketch the proof of Theorem 4.1 in the case $0 \leqslant f \in C^{1}$. The general case can be proved in a similar manner with extra work.

Define

$$
\Sigma_{\lambda}=\left\{x=\left(x_{1}, \ldots, x_{11}\right) \in \Omega \mid x_{1}>\lambda\right\}
$$

and let $T_{\lambda}$ be the hyperplane which is perpendicular to $x_{1}$-axis at $x_{1}=\lambda$. Denote the following statement by $(*)_{\lambda}$ :

$$
\begin{equation*}
u(x)<u\left(x^{\lambda}\right) \quad \text { for all } x \in \Sigma_{\lambda}, \quad \text { and } \quad \frac{\partial u}{\partial x_{1}}<0 \quad \text { on } \Omega \cap T_{\lambda}, \tag{*}
\end{equation*}
$$

where $x^{\lambda}$ is the reflection of $x$ with respect to $T_{\lambda}$.
We claim that the set $\Lambda=\{\lambda \in(0, R) \mid(*) \lambda$ holds $\}$ is nonempty, open and closed in ( $0, R$ ). The fact that $\lambda \in \Lambda$ for all $\lambda<R$ but sufficiently close to $R$ is an easy consequence of Hopf boundary point lemma. The assertion that $\Lambda$ is both open and closed follows from the following lemma.

LEMMA 4.2. Assume that for some $\lambda \in(0, R)$ it holds that $u(x) \leqslant u\left(x^{\lambda}\right)$ for all $x \in \Sigma_{\lambda}$ and $\frac{\partial u}{\partial x_{1}} \leqslant 0$ in $\Sigma_{\lambda}$. Then $(*)_{\lambda}$ holds.

PROOF. Let $\Sigma_{\lambda}^{\prime}$ be the reflection of $\Sigma_{\lambda}$ with respect to $T_{\lambda}$. In $\Sigma_{\lambda}^{\prime}$, set $v(x)=u\left(x^{\lambda}\right)$. Then

$$
\Delta v+f(v)=0
$$

in $\Sigma_{\lambda}^{\prime}$. Considering $w=u-v$ in $\Sigma_{\lambda}^{\prime}$, we see that $w \leqslant 0$ in $\Sigma_{\lambda}^{\prime}$ and $w<0$ on $\partial \Sigma_{\lambda}^{\prime} \backslash T_{\lambda}$. Thus $w \not \equiv 0$ and

$$
\Delta w+c(x) w=0
$$

in $\Sigma_{\lambda}^{\prime}$, where

$$
c(x)= \begin{cases}\frac{f(u(x))-f(v(x))}{u(x)-v(x)} & \text { if } u(x) \neq v(x), \\ f^{\prime}(u(x)) & \text { if } u(x)=v(x) .\end{cases}
$$

Now, $(*)_{\lambda}$ follows from the maximum principle and the Hopf boundary point lemma, and our assertion is proved.

From the assertion we conclude easily that $\Lambda=(0, R)$. Letting $\lambda \rightarrow 0(*)_{\lambda}$ implies that $u(x) \leqslant u\left(x^{o}\right)$ if $x_{1}>0$. Reversing the $x_{1}$-axis, we see that $u(x)=u\left(x^{o}\right)$ if $x_{1}>0$. Since we may replace $x_{1}$-axis by any other direction, Theorem 4.1 is established.

The method above clearly applies to more general domains and equations. In Section 4.5, we shall include some generalizations of Theorem 4.1.

Naturally, one wonders if Theorem 4.1 would hold for solutions to Neumann boundary value problems (4.1) and (4.3). The results in Section 1 clearly show that this is not the case. However, solutions to the homogeneous Neumann problems (4.1)-(4.3), although do not generally inherit the full radial symmetry, do often possess some partial symmetries. For instance, the "least-energy" solution $u_{\varepsilon, N}$ of (1.4) in Theorem 1.1 was shown to have axial symmetry with the axis of symmetry being the diameter passing through the (single) peak of $u_{E, N}$ on $\partial \Omega$. (See [NT2], Appendix.) On the other hand, in [Gr] the single-boundarypeak solution was proved to be unique (in the class of all single-boundary-peak functions) up to rotations. Combining these two results, we see immediately that single-boundarypeak solutions of (1.4) with $\Omega$ being a ball and $\varepsilon$ small must have axial symmetry. This fact was also established Iater in [LT] directly. Moreover, it was also shown in [LT] that, for $\varepsilon>0$ sufficiently small, all single-peak solution of (1.4) with $\Omega$ being a ball must either have its peak located at the center of $\Omega$, in which case the solution must be radially symmetric, or have its peak located on the boundary and the solution must then be axially symmetric.

The proof in [LT] is based on a "rotating plane" technique, which is a variant of the "moving plane" method described above.

Pushing the "rotating plane" technique furhur, Lin, Takagi and Wei ([LT,LW]) proved, for $\varepsilon$ sufficiently small, all double-peak solutions of (1.4) with $\Omega$ being a ball must be axially synmetric with the axis of symmetry being the diameter passing through the two peaks
(and the center of $\Omega$ ). Moreover, these authors also completely classified, for $\varepsilon$ small, all double-peak solutions of (1.4) when $\Omega=B_{R}(0)$ (the ball of radius $R$ centered at the origin): For $\varepsilon$ small, there are only three double-peak solutions of ( 1.4 ) (up to rotations) a solution with two boundary peaks situated at $(-R, 0, \ldots, 0)$ and $(R, 0, \ldots, 0)$, a solution with two interior peaks located at $\left(-\frac{R}{2}, 0, \ldots, 0\right)$ and $\left(\frac{R}{2}, 0, \ldots, 0\right)$, and a solution with two mixed peaks at $(-R, 0, \ldots, 0)$ and $\left(\frac{R}{3}, 0, \ldots, 0\right)$. In [LW] an attempt was made to classify all triple-peak solutions of (1.4) when $\Omega=B_{R}(0)$. We omit the details here.

Thus, due to the fact that the homogeneous Neumaun problems (4.1) and (4.3) tend to allow multiple solutions, we need to "narrow" down specific classes of solutions in studying their symmetry properties.

### 4.2. Symmetry of semilinear elliptic equations in an annulus

In this section, we shall always denote $\Omega=\left\{x \in \mathbb{R}^{\prime \prime}|0<a<|x|<b\}\right.$.
Unlike the case for balls (Theorem 4.1), even solutions to the Dirichlet problem (4.1) and (4.2) do not generally have radial symmetry, although annuli also possess radial symmetry.

To the best of my knowledge, the first such example was due to Schaeffer [Sc]. Similar ideas have been used later by many other authors, $[\mathrm{BrN}, \mathrm{Co}, \mathrm{DN}, \mathrm{L}, \mathrm{NSu}]$. In some sense a "quantitative" version of such ideas for (1.5) is contained in Theorem 1.2 which, in particular, guarantees that a least-energy solution $u_{\varepsilon, D}$ for (1.5) is not radially symmetric in the annulus $\Omega$ when $\varepsilon$ is small.

However, it is worthwhile to remark that the "moving plane" method does imply that any solution of (4.1) and (4.2) must be decreasing in the radial direction in the "outer" half of $\Omega$, i.e., in $\Omega_{0}=\left\{x \in \mathbb{R}^{\prime \prime}\left|\frac{a+b}{2}<|x|<b\right\}\right.$. Thus, the peak $P_{\varepsilon}$ of a least-energy solution $u_{\varepsilon, D}$ of (1.5) must be in the "inner" half of $\Omega$, and it follows from Theorem 1.2 that $P_{\varepsilon}$ approaches the middle circle $|x|=\frac{a+b}{2}$ as $\varepsilon \rightarrow 0$. Finally, we remark that it seems very interesting to compare this result to Theorem 1.9.

### 4.3. Symmetry of semilinear elliptic equations in enture space

Systematically exploring symmetry properties of positive solutions to semilinear elliptic equations in entire space

$$
\left\{\begin{array}{l}
\Delta u+f(u)=0 \quad \text { in } \mathbb{R}^{\prime \prime},  \tag{4.4}\\
u>0 \quad \text { in } \mathbb{R}^{\prime \prime} \quad \text { and } \quad u \rightarrow 0 \text { at } \infty,
\end{array}\right.
$$

where $f(0)=0$, also seems to have started in the papers [GNN1,GNN2] around 1980 . Much has been done since then. Here, for exposition purposes, we will only include results that are simple but not necessarily most general possible.

It turns out that symmetry results for solutions of (4.4) roughly fall into two categories: $f^{\prime} \leqslant 0$ near 0 , or otherwise. ((4.4) does not have any solution if $f^{\prime}(0)>0$.) The case $f^{\prime} \leqslant 0$ near 0 , which includes equations like ( 1.10 ), is relatively easier to handle.

Theorem 4.3 [LiN]. Suppose that

$$
\begin{equation*}
f^{\prime}(s) \leqslant 0 \text { for sufficiently small } s \geqslant 0 \text {. } \tag{4.5}
\end{equation*}
$$

Then all solutions of (4.4) must be radially symmetric about the origin (up to a translation) and $\frac{\partial u}{\partial r}<0$ for all $r=|x|>0$.

It was a common belief that the reason for the case $f^{\prime}(0)<0$ being easier to handle was that the solutions of (4.4) in this case decay rapidly, in fact, exponentially at $\infty$, which makes it possible for us to get the "moving plane" method started at $\infty$. However, this turns out to be unnecessary - solutions of (4.4) under hypothesis (4.5) could have very slow decay at $\infty$. We include such an example here.

EXAMPLE 4.4 [LiN]. Let $m$ be a positive integer and

$$
V_{m}(x)=\log \left[\log \left[\cdots\left(\log \left(M+|x|^{2}\right)\right] \cdots\right]\right.
$$

where $V_{m}$ is the $m$ th iterated logarithmic function, and $M$ is a positive number such that $V_{m}(0)=1$. Obviously, $V_{m}$ is an increasing function of $|x|$ with $\lim _{x \rightarrow \infty} V_{m}(x)=\infty$. Let

$$
u_{m}(x)=\frac{1}{V_{m}(x)}, \quad x \in \mathbb{R}^{2}
$$

Then $u_{m}$ satisfies the following semilinear equation in $\mathbb{R}^{2}$

$$
\Delta u_{m}+f_{m}\left(u_{m}\right)=0
$$

where

$$
\begin{aligned}
f_{m}(s)= & -4 s^{2} \exp \left(-\sum_{j=1}^{m} \exp ^{[j-1]}\left(\frac{1}{s}\right)\right) \\
& \times\left[\left(1-M \exp \left(-\exp ^{[m-1]}\left(\frac{1}{s}\right)\right)\right)\right. \\
& \times\left(2 s \exp \left(-\sum_{j=1}^{m-1} \exp ^{[j-1]}\left(\frac{1}{s}\right)\right)+\sum_{i=1}^{m-1} \exp ^{\left.\left(-\sum_{j=i}^{m-1} \exp ^{[j-1]}\left(\frac{1}{s}\right)\right)\right)}\right. \\
& \left.-M \exp \left(-\exp ^{[m-1]}\left(\frac{1}{s}\right)\right)\right]
\end{aligned}
$$

and $\exp ^{[i]}$ denotes the $i$ th iterated exponential function, i.e.,

$$
\exp ^{[i]}(s)=\exp (\exp (\cdots(\exp (s)) \cdots))
$$

with $\exp ^{|0|}=$ identity. It can be easily verified that $f_{m}(0)=0$ and there exists $r_{m}>0$ such that $f_{m}^{\prime}(s)<0$ in $\left(0, r_{m}\right)$. Therefore the hypotheses of Theorem 4.3 are satisfied. However, as $m$ increases, the decay rate of $u_{m}$ gets slower and slower.

Proof of THEOREM 4.3. In fact, the novelty of Theorem 4.3 is precisely that no decay assumption at $\infty$ is imposed or needed, and the proof is much simpler:

As in Section 4.1, we set $T_{\lambda}=\left\{x=\left(x_{1}, \ldots, x_{n}\right) \in \mathbb{R}^{n \prime} \mid x_{1}=\lambda\right\}, \Sigma_{\lambda}=\left\{x \in \mathbb{R}^{n} \mid x_{1}>\lambda\right\}$, and denote the reflection of $x=\left(x_{1}, \ldots, x_{n}\right)$ with respect to the hyperplane $T_{\lambda}$ by $x^{\lambda}=\left(2 \lambda-x_{1}, x_{2}, \ldots, x_{n}\right)$. We shall denote the reflection of $\Sigma_{\lambda}$ with respect to $T_{\lambda}$ by $\Sigma_{\lambda}^{\prime}=\left\{x \in \mathbb{R}^{\prime 2} \mid x_{1}<\lambda\right\}$, as sometimes it is more convenient to deal with $\Sigma_{\lambda}^{\prime}$.

Let $u$ be a positive solution of (4.4). First, we define

$$
\Lambda=\left\{\lambda \in \mathbb{R} \mid u(x)<u\left(x^{\lambda}\right) \text { for all } x \in \Sigma_{\lambda} \text { and } \frac{\partial u}{\partial x_{1}}<0 \text { on } T_{\lambda}\right\} .
$$

By condition (4.5), there exists $\delta>0$ such that $f^{\prime}(s) \leqslant 0$ for all $0 \leqslant s \leqslant \delta$. Since $u$ tends to 0 at $\infty$, there exist $R_{1}>R_{0}>\frac{1}{\%}$ such that

$$
\begin{equation*}
\max _{\mathbb{P}^{n} \backslash B_{R_{0}}(0)} u<\delta \quad \text { and } \quad \max _{\mathbb{P}^{n} \backslash B_{R_{1}}(0)} u<\frac{\min _{B_{R_{0}}}(0)}{} u \equiv m_{0} . \tag{4.6}
\end{equation*}
$$

As the first step in our proof, we claim that $\left[R_{1}, \infty\right) \leqslant \Lambda$. To this end, we proceed as follows. For each $\lambda \geqslant R_{\emptyset}$, let $v(x)=u\left(x^{\lambda}\right)$ and $w(x)=u(x)-v(x)$, for $x \in \Sigma_{\lambda}^{\prime}$. Then

$$
\Delta w+c(x) w=0 \quad \text { in } \Sigma_{\lambda}^{\prime}
$$

where

$$
c(x)= \begin{cases}\frac{f(u(x))-f(v(x))}{u(x)-v(x)} & \text { if } u(x) \neq v(x), \\ f^{\prime}(u(x)) & \text { if } u(x)=v(x) .\end{cases}
$$

Since $\lambda \geqslant R_{1}, w>0$ on $\overline{B_{R_{0}}(0)}$ by (4.6). On the other hand, from the choice of $\delta$ and (4.6) it follows that $c(x) \leqslant 0$ in $\Sigma_{\lambda}^{\prime} \backslash B_{R_{0}}(0)$. Since $w \geqslant 0$ on $\partial\left(\Sigma_{\lambda}^{\prime} \backslash \overline{B_{R_{0}}(0)}\right)$ and $\lim _{x \rightarrow \infty} w=0$ (for $x \in \Sigma_{\lambda}^{\prime}$ ), we conclude from the maximum principle and the Hopf boundary point lemma that $w>0$ in $\Sigma_{\lambda}^{\prime} \backslash \overline{B_{R_{0}}(0)}$ and $\frac{\partial w}{\partial x_{1}}<0$ on $T_{\lambda}$. Thus $\lambda \in \Lambda$ and our assertion is established.

The rest of the proof proceeds similarly as before, and is therefore omitted here.
Although Theorem 4.3 is already quite general and covers a wide range of equations, the remaining borderline case $f^{\prime}(0)=0$ and $f>0$ in ( $0, \delta$ ) does include some important examples. For instance, the equation

$$
\left\{\begin{array}{l}
\Delta u+u^{p}=0 \quad \text { in } \mathbb{R}^{n},  \tag{4.7}\\
u>0 \quad \text { in } \mathbb{R}^{n} \quad \text { and } \quad u \rightarrow 0 \quad \text { at } \infty,
\end{array}\right.
$$

where the exponent $p \geqslant \frac{n+2}{n-2}, n \geqslant 3$, has attracted the attention of many mathematicians. All the radial solutions of (4.7) have been understood, and they possess remarkable, and perhaps unexpected, properties. (See [Wa,Li,GNW1,GNW2] and [PY].) However, the study of symmetry properties of (4.7) remains a major open problem. Only the critical case of (4.7), where $p=\frac{n+2}{n-2}$, has been resolved.

Theorem 4.5. All solutions of the problem

$$
\begin{equation*}
\Delta u+u^{\frac{n+2}{n-2}}=0 \quad \text { in } \mathbb{R}^{\prime \prime} \quad \text { and } \quad u>0 \quad \text { in } \mathbb{R}^{\prime \prime}, \tag{4.8}
\end{equation*}
$$

must take the form

$$
\begin{equation*}
u(x)=\left(\frac{\sqrt{n(n-2) \lambda^{2}}}{\lambda^{2}+\left|x-x_{0}\right|^{2}}\right)^{\frac{n-2}{2}} \tag{4.9}
\end{equation*}
$$

where $\lambda>0$ and $x_{0} \in \mathbb{R}^{n}$.
Note that no condition on the asymptotic behavior of the solution $u$ is imposed in (4.8). We refer the reader to [CL] for a brief history and a short, ingenious proof of this remarkable theorem originally due to [CGS].

### 4.4. Related monotonicity properties, level sets and more general domains

The publication of [GNN1] in 1979 has stimulated much research in this direction. In particular, there have been many variants of the "moving plane" method applied to various different domains and/or different types of solutions. (We have encountered one in Section 4.1 already.) Part of the conclusion resulting from the "moving plane" method is that the solution must be monotone (in addition to being radially symmetric).

In 199I, a useful "sliding" method was devised by Beréstycki and Nirenberg [BN]. It was used, for instance, to establish the following result in $[\mathrm{BCNI}]$, which deals with more general unbounded domains than just $\mathbb{R}^{\prime \prime}$.

Consider the following problem

$$
\left\{\begin{array}{l}
\Delta u+f(u)=0 \quad \text { in } \Omega,  \tag{4.10}\\
u>0 \quad \text { in } \Omega \quad \text { and } \quad u=0 \quad \text { on } \partial \Omega,
\end{array}\right.
$$

where $\Omega=\left\{x=\left(x_{1}, \ldots, x_{n}\right) \in \mathbb{R}^{n} \mid x_{n}>\varphi\left(x_{1}, \ldots, x_{n-1}\right)\right.$ is an unbounded domain in $\mathbb{R}^{n}$, $\varphi: \mathbb{R}^{n-1} \rightarrow \mathbb{R}$ is a locally Lipschitz continuous function, and $f$ satisfies the following hypothesis:

> There exist $0<s_{0}<s_{1}<\mu$ such that $f(s) \geqslant \delta_{0} s$ on $\left[0, s_{0}\right)$ for some $\delta_{0}>0$, nonincreasing on $\left(s_{1}, \mu\right)$, and $f>0$ on $(0, \mu), f \leqslant 0$ on $(\mu, \infty)$.

THEOREM 4.6. Let $u$ be a bounded solution of (4.10) with $M=$ supu $<\infty$. Suppose that (4.11) holds. Then u must be monotone in $x_{n}$, i.e., $\frac{\partial u}{\partial x_{n}}>0$ in $\Omega$.

In particular, the theorem above applies to domains including half-space. However, in this case, much stronger results for more general $f(u)$ are available. For instance, the following theorem was proved in [BCN1].

THEOREM 4.7. Let u be a bounded solution of

$$
\left\{\begin{array}{l}
\Delta u+f(u)=0 \quad \text { in } H=\left\{x=\left(x_{1}, \ldots, x_{n}\right) \in \mathbb{R}^{n} \mid x_{n}>0\right\}  \tag{4.12}\\
u>0 \quad \text { in } H \quad \text { and } u=0 \quad \text { on } \partial H
\end{array}\right.
$$

where $f$ is locally Lipschitz If $f(M) \leqslant 0$ where $M=\sup u$, then u is a function of $x_{n}$ alone and $\frac{t_{H}}{i_{x} t_{H}}>0$ in $H$.

Incidentally, in [BCN1] it was conjectured that if there is such a solution in Theorem 4.7, then necessarily $f(M)=0$. This conjecture has been verified only in $n=2$ by Jang [J] in 2002.

In this connection we ought to mention a well-known conjecture of De Giorgi in 1978.
Conjecture (De Giorgi). Let u be a solution of

$$
\begin{equation*}
\Delta u+u-u^{3}=0 \tag{4.13}
\end{equation*}
$$

in $\mathbb{R}^{n}$ with $|u| \leqslant 1$ and $\frac{\partial u}{\partial x_{n}}>0$ in $\mathbb{R}^{n}$. Then all level sets $[u=\lambda]$ of $u$ are hyperplanes, at least for $n \leqslant 8$.

This conjecture was proved by Ghoussoub and Gui [GG1] for $n=2$ in 1998, by Ambrosio and Cabré [AmC] for $n=3$ in 2000, and, significant progress was made by [GG2] for $n=4,5$ and the conjecture is established under an extra condition in [S] for $n \leqslant 8$ recently. Here we will describe the basic ideas used in [GGI]. In fact, a much more general result was established in [GGI].

THEOREM 4.8. Let $f \in C^{l}$. Suppose that $u$ is a bounded solution of

$$
\begin{equation*}
\Delta u+f(u)=0 \tag{4.14}
\end{equation*}
$$

on $\mathbb{R}^{2}$ with $\frac{d_{n}}{d_{x_{2}}} \geqslant 0$ in $\mathbb{R}^{2}$. Then $u$ is of the form

$$
u(x)=g\left(a x_{1}+b x_{2}\right)
$$

for some appropriate constants $a, b \in \mathbb{R}$.
This is truly a beautiful theorem. Its proof makes use of the following result of [BCN2].

Proposition 4.9. Let $L=-\Delta-V$ be a Schrödinger operator on $\mathbb{R}^{n}$ with the potential $\checkmark$ being bounded and continuous. If $L u=0$ has a bounded, sign-changing solution, then the first eigenvalue

$$
\lambda_{1}(V)=\inf \left\{\left.\frac{\int_{\mathbb{P}^{n}}\left(|\nabla \psi|^{\underline{2}}-V \psi^{2}\right)}{\int_{\mathbb{R}^{n}} \psi^{2}} \right\rvert\, \psi \in C_{0}^{\infty}\left(\mathbb{R}^{n}\right)\right\}<0
$$

provided that $n=1$ or 2 .
Proof of Theorem 4.8. Following [GG1], we now proceed to prove Theorem 4.8. First, we may assume that $\frac{\partial u}{\partial x_{2}}>0$ in $\mathbb{R}^{2}$; for otherwise, we will have $\frac{\partial u}{\partial x_{2}} \equiv 0$ in $\mathbb{R}^{2}$ by the Maximum principle and we are done.

Next, observe that $\frac{\partial u}{\partial x_{2}}$ satisfies the equation

$$
\begin{equation*}
\Delta \varphi+V(x) \varphi=0 \tag{4.15}
\end{equation*}
$$

in $\mathbb{R}^{2}$, where $V(x)=f^{\prime}(u(x))$ is bounded and continuous. Since $\frac{\partial u}{\partial x_{2}}>0$ in $\mathbb{R}^{2}$, it follows that $\lambda_{1}(V) \geqslant 0$, and (4.15) has no bounded, sign-changing solution (by Proposition 4.9).

On the other hand, given a point $x_{0} \in \mathbb{R}^{2}$, we can choose a direction $v$ such that $v$. $\nabla_{u}\left(x_{0}\right)=0$. Since $\frac{\partial u}{\partial u}$ also satisfies (4.15), we have $\frac{\partial u}{\partial v} \equiv 0$ in $\mathbb{R}^{2}$, i.e., $u$ is constant along the direction $v$ and our proof is complete.

Incidentally, Proposition 4.9 is false for $n \geqslant 3$. (See [GG1] and [B].)
Concerning properties of the level sets of solutions in bounded smooth domains without radial symmetry, some progress has been made as well.

When $\Omega$ is convex, it seems natural to ask if the level sets of positive solutions, namely, $\{x \in \Omega \mid u(x) \geqslant \mu\}$, to the Dirichlet problem (4.1) and (4.2) are convex.

Even for the very special case $f(u)=\lambda_{l} u$, where $\lambda_{l}$ is the first eigenvalue of $-\Delta$ on $\Omega$ under the zero Dirichlet boundary condition, it was a long-standing conjecture that the level sets of the first eigenfunction for a convex domain are convex. This conjecture was proved by Brascamp and Lieb [BL] in 1976 by using the heat equation and log concave functions. Since then, techniques involving Maximum principles for elliptic equations have been developed by several authors, including Korevar [K], Kennington [Ke], Caffarelli and Friedman [CF] and Korevaar and Lewis [KL]. The basic idea is to show that, instead of the solution $u, v=g(u)$ is convex for some properly chosen transformation $g$, which implies that the level sets of $v$ (and therefore that of $u$ ) are convex. The transformation $g$ is suitably chosen so that $v=g(u)$ satisfies the equation

$$
\Delta v=h(v, \nabla v),
$$

where $h$ satisfies

$$
h>0 \text { and }\left(\frac{1}{h}\right)_{v v} \geqslant 0 \text {. }
$$

Then, it was established, in case $n=2$ by [CF] and $n \geqslant 3$ by [KL], that $v=g(u)$ is convex in $\Omega$. The effect of $g$ is to "bend" the graph of $u$ making it nearly vertical near $\partial \Omega$. However, for given $f$, there seems to be no known algorithm for finding $g$.

### 4.5. Generalizations and other types of equations

Many of the symmetry results in previous sections have been generalized to more general nonlinear equations - some may be established by essentially the same arguments, others require new ideas.

Generally speaking, if we replace the term $f(u)$ in (4.1) by $f(r, u)=f(|x|, u)$, then symmetry results Theorems 4.1 and 4.3 still hold provided that $f(r, u)$ is nonincreasing in $r>0$. On the other hand, if $f(r, u)$ is increasing in $r$, one cannot expect solutions to be radially symmetric anymore. For instance, the Dirichlet problem,

$$
\left\{\begin{array}{l}
\Delta u-u+V(|x|) u^{p}=0 \quad \text { in } B_{R} \subseteq \mathbb{R}^{n} \\
u>0 \quad \text { in } B_{R} \quad \text { and } \quad u=0 \quad \text { on } \partial B_{R}
\end{array}\right.
$$

has nonradially symmetric solutions for $R$ large, where $p>1, V(|x|)=1+|x|^{U}$, and $0<$ $\ell<(n-1)(p-1) / 2$. (See, e.g., [DN], Proposition 5.10.) Similarly, so does its counterpart for entire space.

Significant examples involving $f(|x|, u)$ but not covered by the generalization of Theorem 4.3 include the Matukuma equation in astrophysics

$$
\Delta u+\frac{1}{1+|x|^{2}} u^{p}=0
$$

in $\mathbb{R}^{\prime \prime}$. The handling of symmetry properties of positive solutions to this kind of equations often requires a detailed knowledge of the asymptotic behaviors of the solutions at $\infty$ in order to get the "moving plane" process started. (See $[N Y]$ and $[Y]$ for more details.)

One can also replace the Laplace operator in (4.1) by more general operators; e.g., by fully nonlinear operators $F\left(x, u(x), D u(x), D^{2} u(x)\right)=0$, where $F$ satisfies the following:
(F1) $F\left(x, s, p_{i}, p_{i j}\right), 1 \leqslant i, j \leqslant n$, is continuous in all of its variables, $C^{1}$ in $p_{i j}$ and Lipschitz in $s$ and $p_{i}$, where $p_{i j}$ 's are position variables for $\frac{\partial^{2} u}{\partial x_{i} \partial x_{j}}, p_{i}$ for $\frac{\partial u}{\partial x_{i}}$ and $s$ for $u$.
(F2) $F_{p_{i j}}\left(x, s, p_{i}, p_{i j}\right) \xi_{i} \xi_{j} \geqslant \bar{\lambda}\left(s, x, p_{i}, p_{i j}\right)|\xi|^{2}$ for all $\xi \in \mathbb{R}^{n}$, where $\bar{\lambda}>0$ in $\mathbb{R}^{n} \times$ $\mathbb{R} \times \mathbb{R}^{\prime \prime} \times \mathbb{R}^{\prime \prime^{2}}$.
(F3) $F\left(x, s, p_{i}, p_{i j}\right)=F\left(|x|, s, p_{i}, p_{i j}\right)$ and $F$ is nonincreasing in $|x|$,
(F4) $F\left(x, s, p_{1}, \ldots, p_{i_{0}-1},-p_{i_{0}}, p_{i_{0}+1}, \ldots, p_{m}, p_{11}, \ldots,-p_{i_{0}, j_{0}}, \ldots,-p_{j_{0} i_{0}}, \ldots\right.$, $\left.p_{m n}\right)=F\left(x, s, p_{i}, p_{i j}\right)$ for $1 \leqslant i_{0}, j_{0} \leqslant n$ and $i_{0} \neq j_{0}$.

Theorem 4.10 [LiN]. Suppose that $F$ satisfies (FI)-(F4) and $F_{s} \leqslant 0$ for $|x|$ large, and for $s$ small and positive. Let $u$ be a positive $C^{2}$ solution of

$$
\begin{cases}F\left(x, u(x), D u(x), D^{2} u(x)\right)=0 & \text { in } \mathbb{R}^{n}, n \geqslant 2,  \tag{4.16}\\ u(x) \rightarrow 0 & \text { at } \infty .\end{cases}
$$

Then $u$ must be radially symmetric (up to a translation) and $u_{r}<0$ for $r=|x|>0$.
The proof uses essentially the same arguments as in that of Theorem 4.3, thus is omitted here. However, we wish to remark here that the elliptic operator $F$ in Theorem 4.10 is not required to be uniformly elliptic, therefore is quite general. For instance, it includes the minimal surface operator, or, equations of mean-curvature type

$$
\left\{\begin{array}{l}
\operatorname{div}\left(\frac{D u}{\sqrt{1+|D u|^{2}}}\right)+f(u)=0 \quad \text { in } \mathbb{R}^{n},  \tag{4.17}\\
u>0 \quad \text { in } \mathbb{R}^{n} \quad \text { and } \quad u \rightarrow 0 \quad \text { at } \infty .
\end{array}\right.
$$

Consequently, Theorem 4.10 also contains previous work [FL] on (4.17).
In this direction we ought to discuss the $p$-Laplacian

$$
\begin{equation*}
\Delta_{p} u=\operatorname{div}\left(|D u|^{p-2} D u\right) \tag{4.18}
\end{equation*}
$$

where $p>1$, which exhibits certain degeneracy or singularity depending on $p>2$ or $p<2$. (Note that the case $p=2$ gives rise to the usual Laplace operator.) The case $1<$ $p<2$ is studied in [DPR]. It is proved there that essentially under the same hypothesis (4.5) a solution 11 of the problem

$$
\left\{\begin{array}{ll}
\Delta_{p} u+f(u)=0 & \text { in } \mathbb{R}^{n}  \tag{4,19}\\
u>0 & \text { in } \mathbb{R}^{n},
\end{array} \quad u \rightarrow 0 \quad \text { at } \infty,\right.
$$

where $1<p<2$, must be radially synmetric (up to a translation) and $u_{r}<0$ in $r=|x|>0$.

The method of proof in [DPR] still uses the "moving plane" technique, but with a weak comparison principle instead of the usual Maximum principle.

The symmetry of solutions to (4.19) for the degenerate case $p>2$ does not hold in general, however. See [SZ], Section 6, for a counterexample.

### 4.6. Symmetry of nonlinear elliptic systems

Some of the symmetry results described in previous sections have been generalized to positive solutions of nonlinear elliptic systems. In this section, we will only mention two of them: One for balls, the other one for the entire space $\mathbb{R}^{n}$.

It turns out that Theorem 4.1 can be generalized to cooperative elliptic systems in a straightforward manner. (See [Ty].) The following elliptic system,

$$
\left\{\begin{array}{l}
\Delta u_{i}+f_{i}\left(u_{1}, \ldots, u_{m}\right)=0 \quad \text { in } \Omega, i=1, \ldots, m,  \tag{4.20}\\
u_{i}>0 \quad \text { in } \Omega \quad \text { and } \quad u_{i}=0 \quad \text { on } \partial \Omega,
\end{array}\right.
$$

is said to be cooperative if $f_{i}$ is $C^{1}$ and

$$
\begin{equation*}
\frac{\partial f_{i}}{\partial u_{j}} \geqslant 0 \text { for all } i \neq j \text { and } 1 \leqslant i, j \leqslant m . \tag{4.21}
\end{equation*}
$$

THEOREM 4.11. Let $\Omega$ be a ball of radius $R$ in $\mathbb{R}^{n}, f$ satisfy (4.21) and ( $u_{1}, u_{2}, \ldots, u_{m}$ ) be a solution of (4.20). Then for each $i, u_{i}$ is radially symmetric and $u^{\prime}(r)<0$ for $0<r=$ $|x|<R$.

Since the usual Maximum principle for single elliptic equations generalizes to cooperative elliptic systems [PW], the proof of Theorem 4.1 also generalizes naturally to establish Theorem 4.11.

The second result here generalizes Theorem 4.3 for the entire space. This is more involved. Here we are dealing with solutions of the following problem

$$
\left\{\begin{array}{l}
\Delta u_{i}+f_{i}\left(u_{1}, \ldots, u_{m}\right)=0 \text { in } \mathbb{R}^{n}, i=1, \ldots, m,  \tag{4.22}\\
u_{i}>0 \text { in } \mathbb{R}^{n} \text { and } u_{i}(x) \rightarrow 0 \text { as } x \rightarrow \infty .
\end{array}\right.
$$

In addition to (4.21), we will also assume $f_{i}, i=1, \ldots, m$, satisfying the following hypothesis:

$$
\begin{align*}
& \text { There exists } \varepsilon>0 \text { such that the system }(4.22) \text { is fully coupled } \\
& \text { in } 0<u<\varepsilon ; \text { more precisely, for any } I, J \subseteq\{1, \ldots, m\} \text { with } \\
& I \cap J=\phi \text { and } I \cup J=\{1, \ldots, m\} \text {, there exist } i_{0} \in I \text { and } j_{0} \in J  \tag{4.23}\\
& \text { such that } \frac{\partial f_{i_{0}}}{\partial u_{j_{0}}}>0 \text { in } 0<u<\varepsilon \text {. } \\
& \text { All principal minors of }-A\left(u_{1}, \ldots, u_{m}\right) \text { have nonnegative de- } \\
& \text { terminants for } 0<u<\varepsilon, \text { where } \\
& A\left(u_{1}, \ldots, u_{m}\right)=\left(\frac{\partial f_{i}}{\partial u_{j}}\right)_{1 \leqslant i, j \leqslant m} . \tag{4.24}
\end{align*}
$$

Recall that the principal minors of a matrix $\left(m_{i j}\right)_{1 \leqslant i, j \leqslant m}$ are the submatrices

$$
\left(m i_{i j}\right)_{1 \leqslant i, j \leqslant k}, \quad 1 \leqslant k \leqslant m .
$$

Observe that (4.23) is to guarantee that all $u_{i}, i=1, \ldots, m$, are radially symmetric with respect to the same point, while (4.24) reduces to (4.5) in Theorem 4.3 in the single equations case.

In [BS] the following result is proved.
THEOREM 4.12. Suppose that (4.21), (4.23) and (4.24) hold and $u$ is a solution of (4.22). Then $u$ must be radially symmetric (up to a translation), and $u^{\prime}(r)<0$ for $r=|x|>0$.

The proof, still using the "moving plane" method, is more involved. We refer the interested readers to [BS].

### 4.7. Miscellaneous results

In this section, we collect miscellaneous results concerning symmetry properties of solutions to various boundary value problems including singular boundary values, or overdetermined systems.

In [Ta], the following problem was considered

$$
\begin{cases}\Delta u+f(|x|, u)=0 & \text { in } \mathbb{R}^{n}, n \geqslant 3,  \tag{4.25}\\ u \rightarrow \infty & \text { at } \infty .\end{cases}
$$

Under the assumptions that $f$, roughly speaking, is monotone in $u$ with superlinear growth in $u$ when $|x|$ and $u$ both are large and positive, and, $r^{2 n-2} f(r, u)$ is "asymptotically" monotone in $r$ for $u$ large, it is established in [ Ta ] that all solutions of (4.25) are radially symmetric. The proof consists of two parts: First, prove that the difference of any two solutions of (4.25) must tend to 0 as $|x| \rightarrow \infty$; then apply the arguments of [LiN] described in Section 4.3.

In case $n=2$, the method in [Ta] yields a similar result with the "boundary value $u \rightarrow \infty$ as $|x| \rightarrow \infty$ " in (4.25) replaced by

$$
\begin{equation*}
\frac{u(x)}{\log |x|} \rightarrow \infty \quad \text { as }|x| \rightarrow \infty \tag{4.26}
\end{equation*}
$$

and with another technical condition imposed on the monotonicity of $f$ with respect to $r$. It is curious to note that there is an earlier result, due to [CN], asserting that all solutions of (4.25) in $\mathbb{R}^{2}$ with

$$
\begin{equation*}
f(r, u)=K(r) \mathrm{e}^{u} \tag{4.27}
\end{equation*}
$$

where $K \geqslant 0$ and $K \sim|x|^{-\ell}$ at $\infty$, for some $\ell>2$, are radially symmetric. In lact, in this case all solutions are completely understood and classified; in particular, there is no solution having the asymptotic behavior (4.26). Incidentally, the equation in (4.25) with the nonlinearity (4.27) is known as the conformal Gaussian curvature equation with $K$ as the prescribed Gaussian curvature in $\mathbb{R}^{2}$.

To conclude this section, we mention the following over-determined system first considered in [Se] in 1971.

THEOREM 4.13. Let $\Omega$ be a smooth domain in $\mathbb{R}^{n}$. Suppose the over-determined system

$$
\begin{cases}\Delta u=-1 & \text { in } \Omega  \tag{4.28}\\ u=0 & \text { on } \partial \Omega \\ \frac{\partial u}{\partial v}=\text { constant } & \text { on } \partial \Omega\end{cases}
$$

has a solution. Then $\Omega$ must be a ball and

$$
u(x)=\frac{a^{2}-|x|^{2}}{2 n},
$$

where a is the radius of $\Omega$.
Serrin used the "moving plane" method, described in previous subsections of this section, to establish this result. However, there is a much simpler proof for this particular theorem due to Weinberger [W1], also in 1971, using clever integral identities. Integral identity approach to symmetry properties of elliptic equations has also been used to handle p-Laplacian. (See [B].)

## 5. Graphics and visualization ${ }^{1}$

With the advances of computing facilities in recent years, numerical simulations or scientific computations have become an integral part of modern mathematics, especially in the branches of differential equations, applied mathematics and related areas.

One of the most, perhaps the most, direct ways to understand the behavior of solutions to elliptic equations is to visualize the shape of solutions by numerically graphing them. In this section we shall briefly present the graphics numerically obtained for the solutions to some of the equations discussed in previous sections of this chapter. Again, we will focus only on positive solutions; moreover, graphics for positive solutions to nonlinear elliptic equations under homogeneous Dirichlet or: Neumann boundary conditions are included here for comparison purposes.

As far as numerical analysis of nonlinear elliptic equations is concerned, some early papers may be traced back to the 1950 s and the 1960 s [Be,P]. During that period, the mentality for studying nonlinear equations was mostly directed toward establishing the existence and uniqueness of the given system. A major goal was to establish convergence and error estimates of the (unique) numerical solution. Thus, the work was mostly analytical rather than computational in nature, because computers were few and unavailable, and of very limited number crunching power. The nonlinearities were of the kind satisfying the global Lipschitz condition and, thus, they were just perturbations of linear equations. Consequently, much of the work in the early era could not be directly applied to the problems considered here.

Things began to change rapidly during the 1970s and the 1980s when the power of computing accelerated following Moore's law. Supercomputers were made available to mathematicians at universities for computing numerical solutions of partial differential equations. Since the 1990s, powerful desktop workstations have appeared, which possessed the number crunching capability of the supercomputers of the earlier generations. Visualization software packages were also being perfected. Nowadays, medium to large tasks of numerical computation can be handled by a central processor in a mathematics department, with relative ease. Many problems can now be solved by computing on a home computer.

[^1]Three basic types of numerical methods are commonly used to solve elliptic boundary value problems:
(i) FDM (the finite difference method);
(ii) FEM (the finite element method);
(iii) BEM (the boundary element method).

Each has its own advantages and disadvantages. Overall speaking, FEM is the leading and by far the most powerful numerical method among the three in that
(i) it can handle the geometry of the domain very well;
(ii) it has an inherent variational structure;
(iii) many commercial packages are available for automatic mesh generation.

Many nonlinear equations have multiple solutions. For semilinear elliptic boundary value problems, the Monotone Iteration Scheme (MIS), by Amman [A3] and Sattinger [Sa] (but originated much earlier, to Bierberbach [Bi]) and then generalized to various different forms [AC,P2], gives a systematic method for finding and determining multiple solutions of semilinear elliptic equations. The scheme itself is constructive in nature and its algorithmic realization is straightforward. Its numerical implementation can be done throngh FDM, FEM or BEM. Rigorous convergence and error estimates may be found in [CDNZ, DCNZ,HMW,I,P[-P3] along with many examples of profiles of numerical solutions given therein. Thus, the numerical analysis and computation of MIS is now a well-developed and understood subject. However, solutions obtainable through this scheme are all stable solutions.

As far as unstable solutions are concerned, one needs to look beyond MIS in order to find such solutions. The Mountain Pass Lemma (MPL) provides a powerful method for such a purpose. However, the proof of MPL contains ingredients which, we feel, either are not totally constructive in the algorithmic sense, or involve considerable complexity in order to be realized into algorithms. This is the major reason that has held up the numerical realization of MPL. To implement MPL, obviously some adaptation is required.

Choi and McKenna's paper [CM] in 1993 was the first to succeed in the adaptation of MPL to numerical implementation by FEM, twenty years after the result of MPL [AR] was published. The algorithm in [CM] is a min-max iterative method. With the choices of different initial state satisfying the assumptions of MPL, multiple solutions can be computed. A refined version of the min-max method of Choi-McKenna employed by us in [CNZ], called the Mountain Pass Algorithm (MPA), will be given in Section 5.1.

A different idea for computing multiple solutions of semilinear elliptic boundary value problems, which is quite effective especially when the nonlinearity is a power law, utilizes scaling and is called the Scaling Iterative Algorithm (SIA) in [CNZ].

Numerical solutions of semilinear elliptic boundary value problems using MPA and FEM may be found in [CM,DCC,CNPZ], while those obtained by SIA and BEM may be found in [CNZ]. These two different algorithms and the different associated numerical treatments serve to corroborate the correctness and accuracy of the numerical solutions. Such numerical solutions all have Morse index one. To obtain numerical solutions of higher Morse indices, high-linking method [C], can be realized algorithmically and then implemented with FDM, FEM or BEM; see [DCC,CNZ,LZ1].

### 5.1. Mountain-pass and scaling algorithms

We describe MPA and SIA below.

The Mountain Pass Algorithm (MPA). To solve

$$
\begin{equation*}
\Delta u+f(x, u)=0 \quad \text { in } \Omega \tag{5.1}
\end{equation*}
$$

with prescribed homogeneous linear boundary conditions, we consider the problem of finding a critical point of the functional

$$
\begin{equation*}
J(u)=\int_{\Omega}\left[\frac{1}{2}|\nabla u(x)|^{2}-F(x, u(x))\right] \mathrm{d} x+\gamma \int_{\partial \Omega} u^{2}(x) \mathrm{d} \sigma \tag{5.2}
\end{equation*}
$$

in the function space $E=H_{0}^{l}(\Omega)$ or $E=H^{l}(\Omega)$, where $\gamma \geqslant 0(\gamma=0$ if the function space is $H_{0}^{1}(\Omega)$ ), and $F(x, u(x))$ defined by

$$
\frac{\partial}{\partial u} F(x, u)=f(x, u)
$$

satisfies all the assumptions of the MPL. Note that if the underlying Banach space $E$ is $H_{0}^{l}(\Omega)$, then the corresponding boundary condition is $u=0$ on $\partial \Omega$. Otherwise, the associated boundary condition is $(\gamma u+\partial u / \partial \nu)=0$ on $\partial \Omega$. We use (D), (N) and (R) to denote, respectively, the following boundary conditions:
(D) $u=0$ on $\partial \Omega$;
(N) $(\partial u / \partial v)=0$ on $\partial \Omega$;
(R) $(\gamma u+\partial u / \partial v)=0$ on $\partial \Omega$.

## Mountain Pass Algorithm (MPA).

Step 1. Choose an initial state $w_{0} \in E$ sufficiently smooth; set $w_{1}=w_{0}$.
Step 2. If $w_{1}$ satisfies the boundary condition (D), (N) or (R), and if

$$
\left\|\Delta w_{1}+f\left(x, w_{1}\right)\right\|_{L^{2}(\Omega)} \leqslant \varepsilon
$$

for a prescribed small error limit $\varepsilon>0$, stop and exit. Otherwise, from $w$, solve $\hat{v}$ :

$$
\left\{\begin{array}{l}
\Delta \hat{v}=-f\left(x, w_{1}\right) \quad \text { on } \Omega  \tag{5.3}\\
\text { subject to boundary condition (D), (N) or (R). }
\end{array}\right.
$$

Step 3. For $t: T>t>0$, let $\lambda(t)$ be such that

$$
J\left(\lambda(t)\left(w_{1}+t \hat{v}\right)\right)=\max _{\lambda \in\{0,1\}} J\left(\lambda\left(w_{1}+t \hat{v}\right)\right)
$$

Find $\hat{t}: T \geqslant \hat{t} \geqslant 0$ such that

$$
J\left(\lambda(\hat{t})\left(w_{1}+\hat{t} \hat{v}\right)\right)=\min _{T \geq t \geqslant 0} J\left(\lambda(t)\left(w_{1}+t \hat{v}\right)\right)
$$

Step 4. Update:

$$
\begin{equation*}
w_{1}:=\lambda(\hat{t})\left(w_{1}+\hat{t} \hat{v}\right), \quad \Delta w_{1}:=\lambda(\hat{t})\left(\Delta w_{1}+\hat{t} \Delta \hat{v}\right) . \tag{5.4}
\end{equation*}
$$

Go to Step 2.
Scaling Iterative Algorithm. Next, let us look at SIA. It deals with the BVP

$$
\left\{\begin{array}{l}
\Delta u-a u+b u p=0 \quad \text { on } \Omega  \tag{5.5}\\
\text { subject to boundary condition (D), (N) or (R), }
\end{array}\right.
$$

where $a, b>0$ and $p>1$.

## Scaling Iterative Algorithm (SIA).

Step 1. Choose any $v_{0}(x) \geqslant 0$ on $\Omega, v_{0} \not \equiv 0 ; v_{0}$ sufficiently smooth.
Step 2. Find $\alpha_{n+1}>0$ and $v_{n+1}(\cdot)$ such that

$$
\left\{\begin{array}{l}
\Delta v_{n+1}(x)-a v_{n+1}(x)=-\alpha_{n+1} b v_{n}^{p}(x) \text { on } \Omega  \tag{5.6}\\
v_{n+1}\left(x_{0}\right)=1 \\
\text { subject to boundary condition (D), (N) or (R). }
\end{array}\right.
$$

Step 3. If

$$
\tilde{\varepsilon}_{n} \equiv\left\|v_{n+1}-v_{n}\right\|_{H_{0}^{\prime}(\Omega)}<\varepsilon
$$

output and stop. Else go to Step 2.
Then $u=\alpha_{\infty}^{1 /(p-1)} v_{\infty}$ is an approximate solution of (5.5), where $v_{\infty}$ and $\alpha_{\infty}$ are the last iterate for (5.6).

Rigorous proofs of convergence for MPA and SIA are truly challenging. There are good reasons to believe that without more restrictive assumptions convergence will not hold for the general nonlinearity $f(x, u)$ in (5.1) and the general domain $\Omega$. However, some progress has been made recently in establishing the convergence of MPA; see [LZ2,LZ3]. Additional assumptions that the problem be nondegenerate, i.e., $f^{\prime \prime}\left(u^{*}\right)$ is invertible at the critical point $u^{*}$, and that adjustable stepsize (cf. $\lambda(\hat{l})$ in (2.4)) be used are essential for the proof. For SIA, a modified version called OSA (Optimal Scaling Algorithm) has been studied in [CEZ]. Its convergence can be proved using the same ideas as in [LZ2,LZ3]. In spite of all the aforementioned progress in [CEZ,LZ2,LZ3], at present no error estimates are available when MPA, SIA or their variants are implemented by FDM, FEM or BEM. This is certainly an area worth more investigation.

Note that numerical results obtained with MPA and SLA reconcile with total agreements [CNZ]. Thus, in the following section, we will only use SIA for our computational purpose, since the coding of its computer programs is somewhat simpler.

### 5.2. Visualization of solutions of singularly perturbed semilinear elliptic boundary value problems

We compute and exhibit a few examples of multiple positive solutions of singularly perturbed semilinear elliptic boundary value problems in $\mathbb{R}^{2}$. The equations treated here are of the form

$$
\left\{\begin{array}{l}
\varepsilon^{2} \Delta u-u+u^{p}=0 \quad \text { in } \Omega \subseteq \mathbb{R}^{2}, p>1  \tag{5.7}\\
\text { subject to boundary condition (D) or (N), }
\end{array}\right.
$$

where $\varepsilon^{2}>0$ is a small number. Here, we have chosen $\varepsilon^{2}=10^{-3}$. For (5.7), its variational functional is

$$
\begin{equation*}
J(u)=\int_{\Omega}\left[\frac{\varepsilon^{2}}{2}|\nabla u|^{2}+\frac{1}{2} u^{2}-\frac{1}{p+1}|u|^{p+1}\right] \mathrm{d} x, \quad u \in E \tag{5.8}
\end{equation*}
$$

The system in (5.7) constitutes a singularly perturbed nonlinear boundary value problem. Here we have achieved good success with the numerical computation of the (D) and (N) cases, which are actually the situations where the theoretical properties of the solutions of the singularly perturbed problem are known [NT2,NT3,NW]. However, the singularly perturbed Robin boundary value problem remains to be carefully investigated.

We first look at the domain shown in Figure 1. It consists of disk with radius $1 / 2$ on the left, connected through a rectangular corridor to an elliptical domain with an elliptical cavity on the right. The two boundary ellipses are concentric with center at $(2,0)$ and have, respectively, major axes of lengths 1 and $1 / 2$, and minor axes of lengths $1 / 2$ and $1 / 10$. A sample triangulation is also displayed in Figure 1, where noticeably on some parts of the domain, dense meshes are used while elsewhere the meshes are sparser. Our mesh generation (based on the commercial software FEMLAB) has the capability of manual adjustable local mesh refinement. This is important because many solutions of the singularly perturbed problem here have spikes. Numerical data can be properly calculated only if dense mesh refinements are made on the portion of the domain where the spike occurs. This, in our opinion, is the greatest challenge in obtaining high accuracy of mumerical solutions of singularly perturbed boundary value problems (5.7).

For the Dirichlet boundary condition, a total of six single-peak solutions have been captured. They are displayed in ascending order of the energy functional $J$ in Figures 2-6. Note that the least energy solution (i.e., the ground state) as displayed in Figure 2 lives on the "largest open ball" contained in $\Omega$, which is consistent with [NW], Theorem 2.2, p. 734. Also, the solution symmetric to the one in Figure 3 is not displayed. So the solution count for Figure 3 actually is 2.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-68.jpg?height=555&width=1133&top_left_y=315&top_left_x=327)
Fig. 1. The two-dimensional domain formed by a disk connected through a rectangular corridor to an elliptical region with an elliptical cavity. Note that this discretization is just a sample. In the actual computations of the solutions displayed in the following figures, dense grids are chosen in the neighborhoods of the donain where solution spikes occur in order to secure high accuracy of the singularly perturbed boundary value problem.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-68.jpg?height=712&width=1146&top_left_y=1093&top_left_x=324)
Fig. 2. The leastenergy solution of the Dirichlet boundary value problem with $p=3$ in (5.7), $J=5.8663 \times 10^{-3}, \max u=2.2064$, where (and in subsequent figures) max $u$ denotes the maximum of $u(x, y)$ on the domain.

REMARK 5.1. It is not hard to see that the largest possible inscribed balls that would fit into $\Omega$ near the peaks of the solutions in Figures 3 and 4 are of the same size - both have diameters of length 0.5 . Presumably, this should force the numerical results of the two solutions extremely close. However, we do not understand the relatively large discrepancies appeared between the solutions in Figures 3 and 4.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-69.jpg?height=801&width=1217&top_left_y=337&top_left_x=386)
Fig. 3. A positive solution of the Dirichlet boundary value problem with $p=3$ in $(5.7)$, $J=5.8686 \times 10^{-3}$. max $u=2.2047$. The maximum happens at the point $(x, y)=(1.9991,0.7504)$, whose distance to the boundary $\partial \Omega$ is computed to be 0.25 . Note that there is another identical solution obtainable through reflection about the axis of symmetry of the domain.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-69.jpg?height=653&width=1203&top_left_y=1349&top_left_x=398)
Fig. 4. A positive solution of the Dirichlet boundary walle problem with $p=3$ in $(5.7)_{*} J=5.8735 \times 10^{-3}$, max $u=2.2035$. The maximum happens at the point $(x, y)=(1.6521,0.0021)$, whose distance to the boundary $\partial \Omega$ is computed to be 0.23745 . Here, we wish to point out that the errors in this case seem larger than those in the previous cases. We do not know if this is due to the presence of the comers. (See Remark 5.1.)

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-70.jpg?height=828&width=1205&top_left_y=317&top_left_x=295)
Fig. 5. A positive solution of the Dirichlet boundary value problem with $p=3$ in (5.7), $J=5.8923 \times 10^{-3}$, $\max u=2.2048$.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-70.jpg?height=811&width=1213&top_left_y=1285&top_left_x=297)
Fig. 6. A positive solution of the Dirichlet boundary value problem with $p=3$ in (5.7), $j=5.9490 \times 10^{-3}$. $\max \|=2.1937$. This is the only single-peak positive solution living on the corridor.

Next, we display the graphics of three solutions of the Neumann boundary value problem (N) in Figures 7-9, again in ascending order of the energy functional value $J$. Note that the lowest energy solution is given in Figure 7, where the maximum happens at a boundary point with the largest curvature, consistent with the results in [NT2,NT3]. There is another: solution obtained by reflection with respect to the axis of symmetry of the domain. Therefore, the solution count for Figure 7 is two. Similarly, the solution count for Figure 9 is also two.

REMARK 5.2. It seems that there should be a solution, to the Neumann boundary value problem with $p=3$ in (5.7), which has its single-peak located near the far right point ( $2.5,0$ ) and has its energy $J$ lower than that of the solution in Figure 9. However, this solution is more difficult to capture by our numerical schemes.

REMARK 5.3. For a singularly perturbed problem considered in this section, the maximum of the solutions according to [CNZ, (98), p. 1601] is approximated to be 2.206205 . All the positive solutions as displayed in Figures $2-9$ take their max $u$ values within $5 \%$ relative error of this value. Thus, these solutions may be said to lie quite well within the "asymptotic regime" as $\varepsilon^{2} \rightarrow 0$.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-71.jpg?height=848&width=1272&top_left_y=1206&top_left_x=366)
Fig. 7. The least-energy solution of the Neumann boundary value problem with $p=3$ in (5.7), $J=2.7493 \times 10^{-3}, \max u=2.1507$. Another positive solution is obtainable by reflection along the axis of symmetry of the domain.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-72.jpg?height=727&width=1252&top_left_y=320&top_left_x=280)
Fig. 8. A positive solution on the Neumann boundary value problem with $p=3$ in (5.7), $J=2.8578 \times 10^{-3}$, max $u=2.1729$. This is the only positive solution we have found that lives on the disk on the left of the domain.

![](https://cdn.mathpix.com/cropped/2025_08_14_5ec8c90d0a3187d905f8g-72.jpg?height=828&width=1237&top_left_y=1226&top_left_x=297)
Fig. 9. A positive solution of the Neumann boundary value problem with $p=3$ in (5.7), $J=2.9421 \times 10^{-3}$, $\max u=2.2066$. This is the only positive solution we have found that lives on the corridor, up to symmetry. (Another positive solution is obtainable by reflection along the axis of symmetry of the domain.)

### 5.3. Concluding remarks

Numerical results and graphics obtained in this chapter can be extended to domains in $\mathbb{R}^{3}$. (See [CNPZ].) Although we have only included graphics of solutions with single-peaks here, multipeak solutions can be treated as well. (See [CNZ].) However, numerical treatments for solutions with multidimensional concentration sets are very challenging and have not been studied. An obvious difficulty in this direction is that the Morse indices of those solutions are very large; in fact, they tend to infinity as $\varepsilon \rightarrow 0$. There is much to do in this direction numerically.

In this section, we have only treated homogeneous Dirichlet or Neumann boundary value problems. For the Robin boundary value problem

$$
\begin{cases}\varepsilon^{2} \Delta u-u+u^{p}=0 & \text { in } \Omega,  \tag{5.9}\\ \gamma u+\frac{\partial u}{\partial v}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $\gamma \geqslant 0$, very little is known theoretically or numerically. However, given the opposite effects of Dirichlet and Neumann boundary conditions (cf. Section 1.3), it would seem extremely interesting if we could understand, as the parameter $\gamma$ varies from 0 (which corresponds to the homogeneous Neumann boundary condition) to $\infty$ (which conesponds to the homogeneous Dirichlet boundary condition), how the solutions to (5.9) changes their qualitative properties.

## Acknowledgment

Research was supported in part by NSF.

## References

[AI| H. Amann, Dynamic theory of quasilinear parabolic equations-II. Reaction-diffusion systems, Differential Integral Equations 3 (1990), 13-75.
[A2] H. Amam, Nonhomogeneous linear quasilinear elliptic and parabolic boundary walue problems, Function Spaces, Differential Operators and Nonlinear Analysis, H. Schmeisser and II. Triebel, eds, TeubnerTexte Matli., Vol. 13, Teubner, Suttgart (1993), 9-126.
[A3] H. Amam, Supersolution, monorone iteration and stability, J. Differential Equations 21 (1976), 367-377.
[AC] H. Amann and M.G. Crandall, On some existence theorems for semilinear elliptic equations, Indiana Univ. Math. J. 27 (1978), 779-790.
[AMN1] A. Ambrosetti, A. Malchiodi and W.-M. Ni, Solutions concentrating on spheres to symmetric singularly perturbed problems, C. R. Math. Acad. Sci. Paris 335 (2002), 145-150.
[AMN2] A. Ambrosetti, A. Malchiodi and W.-M. Ni, Singularly perturbed elliptic equations with symmetry: Existence of solutions concentrating on spheres, l, Comm. Math. Phys. 235 (2003), 427-466.
[AMN3] A. Ambrosetti, A. Malchiodi and W.-M. Ni, Singularly perturbed elliptic equations with symmery: Existence of solutions concentrating on spheres, II, Indiana Univ. Math. J., to appear.
[AR] A. Ambrosetti and P. Rabinowitz, Dual variational methods in critical point theory and applications, J. Funct. Anal. 14 (1973), 349-381.
[AmC] L. Ambrosio and X. Cabré, Entire solutions of semilinear elliptic equations in $\mathbb{R}^{3}$ and a conjecture of De Giorgi, J. Amer. Math. Soc. 13 (2000), 725-739.
[BCN1] F. Berestycki, L.A. Caffarelli and L. Nirenberg, Symmetry for elliptic equations in a half space, Boundary Value Problems for Partial Differential Equations and Applications, C. Baiocchi, ed, RMA Res. Notes Appl. Math., Vol. 29. Masson, Paris (1993), 27-42.
[BCN2] H. Berestycki. L.A. Caffarelli and L. Nirenberg, Further qualitative properties for elliptic equations in unbornded donains, Ann. Sc. Norm. Sup. Pisa Cl. Sci. (4) 25 (1997), 69-94.
[BN] H. Berestycki and L. Nitenberg, On the method of moving planes and the stiding method, Bol. Soc. Brasil. Mat. (N.S.) 22 (1991), 1-37.
[Be] L. Bers, On mildly nonlinear partial differential equations of elliptic type, J. Res. Natl. Bureau of Standards 51 (1953), 229-236.
[BBH] F. Bethuel, H. Brézis and F. Hélein, Ginzburg-Landau Vortices, Birkhäuser, Basel (1994).
[B] T. Bhattacharya, Radial symmetry of the first eigenfunction for the $p$-Laplacian in the ball, Proc. Amer. Math. Soc. 104 (1988), 169-174.
[Bi] L. Bieberbach, $\Delta n=\mathrm{e}^{\prime \prime}$ und die automorphen Finctionen, Math. Ann. 77 (1916), 173-212.
[BL] H.J. Brascamp and E. Lieb, On extensions of Brun-Minkowski and Prekoph-Leindler theorems, incheding inequalisies for log concave functions and with an application to the diffusion equation, J. Funct. Anal. 22 (1976), 366-389.
[BrN] H. Brézis and L. Nirenberg, Postitue solutions of nonlinear elliptic equations involving critical Sobolev exponents, Comm. Pure Appl. Math. 36 (1983), 437-478.
[BS] J. Busca and B. Sirakov, Symmetry results for semilinear elliptic systems in the whole space, J. Differential Equations 163 (2000), 4.l-56.
[CF] L.A. Caffarelli and A. Friedman, Convexity of solutions of senilinear elliptic equations, Duke Math. J. 52 (1985), 431-456.
[CGS] L.A. Caffarelli, B. Gidas and J. Spruck, Asymptotic symmetry and local behavior of semilimear elliptic equations with crifical Sobolew growth, Comm. Pure Appl. Math. 42 (1989), 271-297.
[CK] T.K. Callahan and E. Knobloch, Pattern formation in three-dinemsional reaction-diffusion system., Phys. D 132, (1999), 339-362.
$[C C]$ R.S. Cantrell and C. Cosner, Spatial Ecology via Reaction-Diffusion Equations, Wiley, New York (2003).
$[\mathrm{CH}]$ R.G. Casten and C.J. Holland, Instability results for a reaction-diffusion equation with Newman boundary conditions, J. Differential Equations 27 (1978), 266-273.
[CDBD] V. Castets, E. Dulos, J. Boissonade and P. De Kepper, Experimental evidence of a sustained Turing-type equilibrium chemical pattern, Phys. Rev. Lett. 64 (1990), 2953-2956.
[CCN] A. Castro, J. Cossio and J.M. Neuberger, A sign-changing solution for a superlinear Dirichlet problem, Rocky Mountain I. Math. 27 (1997), 1041-1053.
[Ch] S. Chandrasekhar, An Introduction to the Study of Stellar Stuwcurres, Univ. Chicago Press (1939).
[C] K.C. Chang, Infinite Dinvensional Morse Theory and Multiple Solution Problems, Birkhäuser, Boston (1993).
[CDNZ] G. Chen, Y. Deng, W.-M. Ni and J. Zhou, Boundary element monotone iteration scheme for semilinear elliptic partial differential equations, Part II: Quasinonotone iteration for compled $2 \times 2$ systems, Math. Comp. 69 (1999), 629-652.
[CNZ] G. Chen, W.-M. Ni and J. Zhou, Algorithms and wisualization for solutions of nonlinear elliptic equations, Internat. J. Bifur. Chaos Appl. Sci. Engrg. 7 (2000), 1565-1612.
[CNPZ] G. Chen, W.-M. Ni, A. Perromet and J. Zhou, Boundary elemem monotone ireration scheme for semilinear elliptic partial differential equations, Part II: Dirichlet, Neumann and Robin boundary conditions and problems in 3D, Internat. J. Bifur. Chaos Appl. Sci. Engrg. 7 (2001), 1781-1799.
[CEZ] G. Chen, B.-G. Englert and J. Zhou, Convergence analysis of an optimal scaling algorithn for semilinear elliptic boundary walue problems, Contemp. Math., to appear.
[CL] W. Chen and C. Li, Qualitative properties of solutions to some nonlinear elliptic equations in $\mathbb{R}^{n}$. Duke Math. J. 71 (1993), 427-439.
[CN] K.-S. Cheng and W.-M. Ni, On the structure of the canformal Gaussian curvaure equation on $\mathbb{R}^{2}$, Duke Math. J. 62 (1991), 721-737.
[CM] Y.S. Choi and P.J. McKenna, A momtain pass method for the numerical solution of semilinear elliptic problems, Nonlinear Analysis 20 (1993), 417-437.
[CoL] E.A. Coddington and N. Levinson, Theory of Ordinary Differential Equations, McGraw-Hill, New York (1955).
[Co] C.V. Coffman, A nomlinear boundary walme problem with many positive solutions, J. Differential Equations 54 (1984), 429-437.
[DPR] L. Damascelli, F. Pacella and M. Ramaswany, Symmeny of grownd states of p-Laplace cquations via the moving plane method, Arch. Ration. Mech. Anal. 148 (1999), 291-308.
[DCNZ] Y. Deng, G. Chen, W.-M. Ni and J. Zhou, Bowndary elemen monotone iterarion scheme for semilinear ellipric partial differential equations, Math. Comp. 65 (1996), 943-982.
[DN] W.-Y. Ding and W.-M. Ni, On the existence of positive entire solutions of a semilizear elliptic equation, Arch. Ration. Mech. Anal. 91 (1986), 283-308.
[DCC] Z. Ding, D. Costa and G. Chen, A high linking method for sign changing solutions of semilinear ellipric equations, Nonlinear Anal. 38 (1999), 151-172.
[DGK] A. Doelman, R.A. Gardner and T.J. Kaper, A stability index analysis of 1-D patterns of the Gray-Scont model, Mem. Amer. Math. Soc. 737 (2002), 1-64.
[FL] B. Franchi and E. Lanconelli, Radial symmetry of the grownd states for a class of quasilinear elliptic equations, Nonlinear Diffusion Equations and Their Equilibrium States, Vol. I, W.-M. Ni, L.A. Peletier and J. Serrin, eds, Springer-Verlag, New York (1988), 287-292.
${ }^{[F]}$ P.C. Fife, Dyncumics of Iniernal Layers and Diffusive Interfaces, CBMS-NSF Regional Conf. Ser. in Appli. Math., Vol. 53, STAM, Philadelphia (1988).
[GGI] N. Ghoussoub and C. Gui, On a conjecture of DeGiorgi and some related problems, Math. Ann. 311 (1998), 481-491.
[GG2] N. Ghoussoub and C. Gui, On DeGiorgi's conjechre in dimensions 4 and 5, Ann. of Math. 157 (2003), 313-334.
[GNN1] B. Gidas, W.-M. Ni and L. Nirenberg, Symmetry and related properties via the maximum principle, Comm. Math. Phys. 68 (1979), 209-243.
[GNN2] B. Gidas, W.-M. Ni and L. Nirenberg, Symmetry of positive solutions of nonlinear elliptic equations in $\mathbf{R}^{\prime \prime}$, Adv. in Math. Suppl. Studies, Vol. 7, Academic Press, New York (1981), 369-402.
[GM] A. Gierer and H. Meinhardt, A theory of biological pattern formation, Kybernetik 12 (1972), 30-39.
[GS] P. Gray and S.K. Scott, Aurocatalytic reactions in the isothernal, continuous stived rank reactor: Osciflations and instabilities in the system $A+2 B \rightarrow 3 B, B \rightarrow C$, Chem. Engrg. Sci. 39 (1984), 1087-1097.
[Gr] M. Grossi, Uniqueness of the least-energy solution for a semilinear Neuman problem, Proc. Amer. Math. Soc. 128 (1999), 1665-1672.
[GPW] M. Grossi, A. Pistoia and J. Wei, Existence of maltipeak solutions for a semilinear Newnam problem via nonsmooth critical point theory, Calc. Var. Partial Differential Equations 11(2000), 143-175.
[G] C. Gui, Multi-peak solntions for a semilinear Neumann problem, Duke Math. J. 84 (1996), 739-769.
|GNW1| C. Guin, W.-M. Ni and X. Wang, On the stability and instability of positive steady states of a semilinear hear equation, Comm. Pure Appl. Math. 45 (1992), 11.53-1181.
[GNW2] C. Gui, W.-M. Ni and X. Wang, Further study on a nonlinear heas equation, J. Differential Equations 169 (2001), 588-613.
[GW1] C. Gui and J. Wei, Multiple interior peak solutions for some singularly perturbed problems, J. Differential Equations 158 (1999), 1-27.
[GW2] C. Gui and J. Wei, On multiple mixed interior and boundary peak solutions for some singalarly perturbed Newmann problems, Canad. J. Math. 52 (2000), 522-538.
[GWW] C. Gui, J. Wei and M. Winter, Multiple boundary peak solutions for some singularly perturbed Neumann problems, Ann. Inst. H. Poincarế Anal. Non Linéajre 17 (2000), 47-82.
[HS] J.K. Hale and K. Sakamoto, Shadow systems and attractors in reaction-diffusion equations, Appl. Anal. 32 (1989), 287-303.
[HV] J.K. Hale and J.M. Vegas, A nonlinear parabolic equation with varying domain, Arch. Ration. Mech. Anal. 86 (1984), 99-1.23.
[Ho] D. Horstmann, From 1970 watil present. The Keller-Segel nodel un chemotaxis and its consequences, Preprint (2003).
[Hu] G.E. Huchinson, An hatrodiucrion ro Population Theory, Yale University Press, New Flaven, CT (1978).
[HMW] C.U. Huy, P.J. McKenna and W. Walter, Finite difference approximations to the Drichler problem for elliptic syrrems, Numer. Mally. 49 (1986), 227-237.
[1] K. Ishihara, Monotone explicit itexations of the finite element approximations for the nonlinear bowndary value problews, Numer. Math. 45 (1984), 419-437.
[J] J. Jang, Symmetry of positive solutions to semilinear elliptic problems in half space, Nonlinear Anal. 49 (2002), 613-621.
[JNT] J. Jang, W.-M. Ni and M. Tang, Global bifurcation and stracture of Turing patterns in $1-D$ LenguetEprein model, Preprint.
[JM] S. Jimbo and Y. Morita, Remarks on the behavior of certain eigenvalues on a singularly perrubed domain with several thin chamels, Comm. Partial Differential Equations 17 (1992), 523-552.
[JS] S.L. Judd and M. Silber, Simple and superlatice Turing patrems in reaction-diffusion systems: Bifurcation, bistability, and parameter collapse, Phys. D 136 (2000), 45-65.
[KN] Y. Kabeya and W.-M. Ni, Stationary Keller-Segel model with linear senstituity, Publ. Res. Insil. Math. Sci. 1025 (1998), 44-65.
[KS] E.F. Keller and L.A. Segel, miltation of slime mold aggregation viewed as an instability, J. Theoret. Biol. 26 (1970), 399-415.
[Ke] A. Kennington, Power concavity and boundary value problems, Indiana Univ. Math. J. 34 (1985), 688-704.
[K] N. Korewaar, Convex solutions so nonlinear elliptic and parabolic bonadary value problems, Indiana Univ. Math. J. 32 (1983), 603-61.4.
[KL] N. Korevaar and J. Lewis, Convex solutions of cerrain elliptic equations have constant rank Hessians, Arch. Ration. Mech. Anal. 97 (1987), 19-32.
[LMPS] K.J. Lee, W.D. McCormick, J.E. Pearson and H.L. Swinney. Experimental observation of selfreplicating spots in a reaction-diffision system, Nature 369 (1994), 215-218.
[LE1] I. Lengyel and I.R. Epstein, Modeling of Turing structures in the chlorite-iodide-malonic-acid-starch reaction system, Science 251(1991), 650-652.
[LE2] I. Lengyel and I.R. Epstein, A chemical approach to designing Turing parrerns in reaction-diffusion systems, Proc. Natl. Acad. Sci. USA 89 (1992), 3977-3979.
[L] Yanyan Li, Existence of nany positive solutions of semilinear elliptic equations on amulus, J. Differential Equations 83 (1990), 348-367.
[Li] Yi Li, Asymptotic behavior of positive solutions of equation $\Delta u+K(x) u^{p}=0$ in $\mathbb{R}^{n}$, J. Differential Equations 95 (1992), 304-330.
[LiN] Yi Li and W.-M. Ni, Radial symmetry of positive solutions of nonlinear ellipric equations in $\left[\mathbb{R}^{\prime \prime}\right.$, Comm. Partial Differential Equations 18 (1993), 1043-1054.
[LZ1] Y. Li and J. Zhou, Local characterizations of saddle points and their Morse indices, Control Nonlinear Distributed Parameter Systems, G. Chen, I. Lasiecka and J. Zhou, eds, Lecture Notes in Pure and Appl. Malh., Vol. 218, Marcel Dekker, New York (2001), 233-251 (Chap. 11).
[LZ2] Y. Li and J. Zhou, A minimax method for finding multiple critical points and its applications to semilinear PDE, SIAM J. Sci. Comput. 23 (2001), 840-865.
[LZ3] Y. Li and J. Zhou, Convergence results of a local minimax method for finding multiple critical points, STAM J. Sci. Comput. 24 (2002), 865-885.
[LinN] C.-S. Lin and W.-M. Ni, Stability of solutions of semilinear diffusion equations, Preprint (1986).
[LNT] C-S. Lin, W.-M. Ni and I. Takagi, Large amplitude stationary solutions to a chemotaxis system, J. Differential Equations (1988), 1-27.
[LT] C.-S. Lin and I. Takagi, Method of rotating planes applied to a singularly perfurbed Neunamn problem, Calic. Var. Partial Differential Equations 13 (2001), 519-536.
[LW] C.-S. Lin and J. Wei, Uniqueness of multiple-spike solutions via the method of mowing planes, Preprint.
[Lin] F.H. Lin, Complex Ginzburg-Landar equations and dynanics of vortices, filaments and codimension 2 submanifolds, Comm. Pure Appl. Math. 51 (1998), 385-441.
[LR] F.H. Lin and T. Rivière, A quantization property for mowing line vortices, Comm. Pure Appl. Math. 54 (2001), 826-850.
[LN1] Y. Lou and W.-M. Ni, Diffusion, self-diffusion and cross-diffusion, J. Differential Equations 131 (1996), 79-131.
[LN2] Y. Lou and W.-M. Ni, Diffision vs. cross-diffision: An elliptic approach, J. Differential Equations 154 (1999), 157-190.
[LNY] Y. Lou, W.-M. Ni and S. Yotsutani, On a limiting system in the Lotha-Volferra competition mith crossdiffusion, Discrete and Continuous Dynamical Systems, to appear.
[Mg] K. Maginu, Siability of starionary solutions of a semilimear parabolic partial differential equation. J. Math. Anal. Appl. 63 (1978), 224-243.
[M] A. Malchiodi, Concentration at curves for a singularly perfurbed Newman problem in threedimensional donians, Preprint (2004).
[MM1] A. Malchiodi and M. Montenegro, Bondary concentration pienowena for a singularly perrarbed elliptic problem, Comm. Pure Appl. Math. 55 (2002), 1507-1508.
[MM2] A. Malchiodi and M. Montenegro, Multidimensional bowndary-layers for a singularly periarbed Neumann problem, Duke Mauh. J., to appear.
[MNW] A. Malchiodi, W.-M. Ni and J. Wei, Multiple clussered layer solutions for semilinear Neumam problems, Ann. Inst. H. Poincaré Anal. Non Linéaire, to appear.
[Mal] H. Matano, Asymptotic behavior and stability of solutions of semilinear diffision equations, Publ. Res. Inst. Math. Sci. 15 (1979), 401-454.
[Ma2] H. Matano, private communication.
[NS] T. Nagai and T. Senba, Global existence and blow-up of radial solutions to a parabolic-ellipric system of chemotaris, Adv. Math. Sci. Appl. 8 (1998), 145-156.
[NSu] K. Nagasaki and T. Suzuki, Radial and nonradial solutions for the nonlinear eigenvalue problem $\Delta u+$ $\lambda \mathrm{e}^{n}=0$ as ammuli in $\mathbb{R}^{2}$, J. Differential Equations 87 (1990), 144-168.
[Ne] Z. Nehari, On a class of nonlinear second-order differential equations, Trans. Amer. Math. Soc. 95 (1960), 101-123.
[N1] W.-M. Ni, Recent progress in semilinear elliptic equarions, Publ. Res. Inst. Math. Sci. 679 (1989), 1-39.
[N2] W.-M. Ni, Diffusion, cross-diffusion, and heir spike-laver steady states, Notices Amer. Math. Soc. 45 (1998), 9-18.
[NPY] W.-M. Ni, P. Polacik and E. Yanagida, Monotonicity of suable solutions in shadow systems, Trans. Amer. Math. Soc. 353 (2001), 5057-5069.
[NTI] W.-M. Ni and I. Takagi, On the Neumenn problem for wome semilinear elliptic equations and systems of activall-inhibitor ype, Trans. Amer. Math. Soc. 297 (1986), 351-368.
[NT2] W.-M. Ni and I. Takagi, On the shape of teasi-energy solutions to a semilinear Neumann problem. Comm. Pure Appl. Math. 44 (1991), 819-851.
[NT3] W.-M. Ni and I. Takagi, Locating the peaks of least-energy solutions to a senilinear Nemmann problem, Duke Math. J. 70 (1.993), 247-281.
[NT4] W.-M. Ni and I. Takagi, Point condensation generated by a reacsion-diffusion system in axially symmetric domatiss, Japan J. Indust. Appl. Math. 12 (1995), 327-365.
[NTY1] W.-M. Ni, I. Takagin and E. Yanagida, Stability analysis of point-condensation solutions to a reactiondiffusion system, Tohoku Math. J., submitted.
[NTY2] W.-M. Ni, I. Takagi and E. Yanagida, Stability of leastenergy porterns in a shadow system of on acrivator-inhibitor model, Japan J. Indust. Appl. Math. 18 (2001), 259-272.
[NTa] W.-M. Ni and M. Tang, Turing patterns in Lengyel-Epstein system for the CIMA reacrion, Preprint (2003).
[NW] W.-M. Ni and J. Wei, On the location and profile of spike-layer solutions to singalarly perturbed semilinear Dirichlet problems, Comm. Pure Appl. Math. 48 (1995), 731-768.
[NY] W.-M. Ni and S. Yotsulani, Semilinear elliplic equations of Matukuma-tope and related topics, Japan J. Indust. Appl. Math. 5 (1988), 1-32.
[Pan] X. Pan, Surface superconductivisy in applied magnetic fields above $H_{C 2}$, Comm. Math. Phys. 228 (2002), 327-370.
[PI] C.V. Pao, Numerical solutions for some coupled systems of nonlinear boundary walse problems, Numer Math. 51 (1987), 381-394.
[P2] C.V. Pao, Nonlinear Parabolic and Elliptic Equations, Plenum Press, New York (1992).
[P3] C.V. Pao, Block monotone itarative methods for mumerical solutions of nonlinear elliptic equations, Numer. Math. 72 (1995), 239-262.
[P] S.V. Parter, Mildy nonlinear elliptic partial differential equations and their numerical solutions $I$, Numer. Math. 7 (1965), 113-128.
[Pe] J.E. Pearson, Complex patterns in a simple system. Science 261 (1993), 189-192.
[PY] P. Polacik and E. Yanagida, On bounded and mbounded global solutions of a supercritical semilinear heat equation, Math. Ann. 327 (2003), 745-771.
[PS] G. Polya and G. Szegö, Isoperimetric Inequalities in Mathematical Physics, Ann. of Math. Stud., Vol. 27, Princeton University Press, Princeton, NJ (1951).
[PW] M.H. Protten and H.F. Weinberger, Maximum Principles in Differential Equations, Prentice-Hall, (1967).
[Sa] D.H. Sattinger, Monolone methods in nonlinear elliptic and parabolic boundary value problems, Indiana Univ. Math. J. 21 (1972), 979-1000.
[S] O. Savin, Phase transitions: Regularity of flar level sets, Preprint (2003).
[Sc] D.G. Schaeffer, An example of the plasma problem with infinitely many solutions, Preprim (1976).
[Se] J. Serrin, A symmetry problem in potential theory, Arch. Ration. Mech. Anal. 43 (1971), 304-318.
[SKT] N. Shigesada, K. Kawasaki and E. Teramoto, Spatial segregation of interacting species, J. Theoret. Biology 79 (1979), 83-99.
[SZ] J. Serrin and H. Zou, Symmenty of grownd states of quasilinear elliptic equations, Arch. Ration. Mech. Anal. 148 (1.999), 265-290.
[Sw] G. Sweers, A sign-changing global minimizer on a convex domain, Progress in Partial Differential Equations: Elliptic and Parabolic Problems, C. Bandle et al.., eds, Pitman Res. Notes in Math., Vol. 266, Longman, Harlow (1991) 251-258.
[T] I. Takagi, Point-condensation for a reaction-diffusion system, J. Differential Equations 61 (1986), 208-249.
[Ta] S.D. Taliaferro, Radial symmetry of large solutions of nonlinear elliptic equations, Proc. Amer. Math. Soc. 124 (1996), 447-455.
[Tr] A. Trembley, Menoires pour servir a l'histoire d'un genre de polypes d'eau donce a bras en forme de connes, Leyden (1744).
[Ty] W.C. Troy, Symmetry properties in systems of semilinear elliptic equations, J. Differential Equations 42 (1981), 400-413.
[Tu] A.M. Turing, The chemical basis of morphogenesis, Philos. Trans. Roy. Soc. London B 237 (1952), 37-72.
[Wm] P.E. Waltman, Competition Models in Population Biology, CBMS-NSF Regional Conf. Ser. in Appl. Math., Vol. 45, SIAM, Philadelphia (1983).
[Wat] X. Wang, On the Carchy problem for reaction-diffusion equations, Trans. Amer. Math. Soc. 337 (1993), 549-589.
[W1] J. Wei, On the boundary spike layer solutions of singularty perfurbed senilivear Neawam problem, J. Differential Equations 134 (1997), 104-133.
[W2] J. Wei, On the interior spike layer solutions to a singularly perturbed Neumann problem, Tohoku Math. J. 50 (1998), 159-178.
[W3] J. Wej, Pattern formations in two-dimensional Gray-Scon model: Existence of single-spon solutions and their stability, Phys. D 148 (2001), 20-48.
[W4] J. Wei, Conditions for two-peaked solutions of singularly perturbed elliptic equations, Manuscripta Math. 96 (1998), 113-131.
[WWI] J. Wei and M. Winter, Spikes for the two-dimensional Gierer-Meinhardt system: The weak compling case, J. Nonlinear Sci. 11 (2001), 415-458.
[WW2] J. Wei and M. Winter, Spikes for the Gierer-Meinhardt system in two dimensions: The strong coupling case, J. Differential Equations 178 (2002), 478-518.
[WW3] J. Wei and M. Winter, Existence and stability of multiple-spot solutions for the Gray-Scon model in $R^{2}$, Phys. D 176 (2003), 147-180.
[Y] E. Yanagida, Sturcturc of positive radial solutions of Maukuma's equation, Japan J. Indust. Appl. Math. 8 (1991), 165-173.


[^0]:    HANDBOOK OF DIFFERENTIAL EQUATIONS
    Stationary Partial Differential Equations, volume 1
    Edited by M. Chipot and P. Quittner
    © 2004 Elsevier B.V. All rights reserved

[^1]:    ${ }^{1}$ This section is written in collaboration with $G$. Chen at Texas A\&M University, A. Perromet at Université Pierre el Marie Curie and J. Zhou, also at Texas A\&M University.

