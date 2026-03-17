https://doi.org/10.1007/s41884-018-0004-6

For general phi，how to find divisive normalization is an open problem that is worth a PhD thesis. Anyone who'd like to take on the challenge, based upon an understanding of the 2018 paper, please communicate with me via junz_umich_edu@163.com.

The $\phi$ -exponential model 
$$
p^{\theta}(x)=\exp_{\phi}\left[ \sum _k\theta^{k}F_k(x)-\alpha(\theta) \right]
$$
The model using divisive normalization is ? 
$$
p^{\theta}(x)=\frac{1}{\beta(\theta)}\exp_{\phi}\left[ \sum _k\theta^{k}F_k(x) \right]
$$
We need to find good properties of $\beta(\theta)$ similar to those of $\alpha(\theta)$. 

I guess $\beta(\theta)$ is related to $\Phi(\theta)$, which is defined to satisfy $\partial _i\Phi(\theta)=\eta _i=\mathbb{E}_{\theta}F_i$. 

By some simple calculation, we have
$$
\beta(\theta)=\int_{\mathcal{X}}^{} \exp_{\phi}\left[ \sum _k\theta^{k}F_k(x) \right] \, \mathrm{d}x \implies \partial _i\beta(\theta)=\int_{\mathcal{X}}^{} \underbrace{ \phi\left( \exp_{\phi}\left[ \sum _k\theta^{k}F_k(x) \right] \right) }_{ =\phi(\beta(\theta )p^{\theta}(x)) }\cdot F_i(x) \, \mathrm{d}x 
$$
This expression may be meaningless since $\beta(\theta)$ appears at the right hand side. We consider another expression.
$$
\beta(\theta)=\int_{\mathcal{X}}^{} \prod _k\exp_{\phi}[\theta^{k}F_k(x)] \, \mathrm{d}x\implies \partial _i\beta(\theta)=\int_{\mathcal{X}}^{} \left( \prod _{k\neq i}\exp_{\phi}[\theta^{k}F_k(x)] \right)\phi(\exp_{\phi}(\theta^{i}F_i(x)))F_i(x) \, \mathrm{d}x 
$$
Thus 
$$
\partial _i(\log\beta(\theta))=\int_{\mathcal{X}}^{} p^{\theta}(x)\frac{\phi(\exp_{\phi}(\theta^{i}F_i(x)))}{\exp_{\phi}(\theta^{i}F_i(x))}F_i(x) \, \mathrm{d}x =\mathbb{E}_{\theta}[\partial _i(\exp_{\phi }[\theta^{i}F_i(x)])]
$$
This may be closer to what I want. If we set the boundary value of $p^{\theta}(x)$ to be zero, then
$$
\partial _i(\log\beta(\theta))=-\int_{\mathcal{X}}^{} \exp_{\phi}[\theta^{i}F_i(x)]\cdot \partial _i(p^{\theta}(x)) \, \mathrm{d}x 
$$
This may not be good because of the existence of $\theta^{i}$ in $\exp_{\phi}[\theta^{i}F_i(x)]$  ?










---

Our goal is to provide a unified theory of monotone embedding whihc generalizes that of logaritheoremic embedding and the classic $\alpha$ -geometry. We revisit the divergence function, cross-entropy and entropy determined by rho-tau embedding, their induced $\alpha$ -geometry w.r.t. the phi-deformed exponential families and show a unification of the "deformed" approach and conjugate embedding approach.

It is also shown that the independently proposed $U$ -embedding it identical with phi-embedding in terms of divergence function and entropy functions, both being subsumed by the rho-tau embedding. 

Section 2:

$\log_{\phi}$ and $\exp_{\phi}$ are noting but an arbitrary pair of mutually inverse monotone functions, and can be represented as derivatives of a pair of conjugate convex functions $f$, $f^{*}$. The deformed divergence $D_{\phi}(p,q)$ is precisely th Bregman divergence $D_{f}(p,q)$ associated with $f$. The construction of deformed entropy and cross-entropy is reviewed from the $U$ -embedding. Then we review the rho-tau embedding, which provides two independently chosen embedding functions. 

Naudts defines the phi-deformed logaritheorem
$$
\log_{\phi}(u)=\int_{1}^{u} \frac{1}{\phi(v)} \, \mathrm{d}v
$$
Here $\phi(v)$ is a strictly positive function such that $1/\phi(v)$ is integrable. The inverse of the phi-logaritheorem is denoted $\exp_{\phi}(u)$, and call the phi-exponential function:
$$
\exp_{\phi}(\log_{\phi}(u))=u
$$
The phi-exponential has an integral expression 
$$
\exp_{\phi}(u)=1+\int_{0}^{u}  \, \mathrm{d}v \,\psi(v) 
$$
where 
$$
\psi(u)= \frac{\mathrm{d}}{\mathrm{d}u}\exp_{\phi}(u)=\frac{\mathrm{d}}{\mathrm{d}u}(\log_{\phi})^{-1}(u)
$$
In terms of $\phi,\psi$, we have the following relations:
$$
\begin{aligned}
\psi(u) & =\phi(\exp_{\phi}(u))  & u\in \text{range}(\log_{\phi}) \\
\phi(u) & =\psi(\log_{\phi}(u)) & u>0.
\end{aligned}
$$

^38b7d9

We have to check [[#^38b7d9]]. 
$$
\exp_{\phi}(\log_{\phi}(u))=u\implies 1=\frac{\mathrm{d}}{\mathrm{d}u} \exp_{\phi}(\log_{\phi}(u))=\left( \frac{\mathrm{d}}{\mathrm{d}u} \exp_{\phi} \right)(\log_{\phi}(u))\left( \frac{\mathrm{d}}{\mathrm{d}u}  \log_{\phi}(u)\right)
$$
Then
$$
\phi(u)=\left( \frac{\mathrm{d}}{\mathrm{d}u} \exp_{\phi} \right)(\log_{\phi}(u))=\psi(\log_{\phi}(u))
$$
Replace $u$ by $\exp_{\phi}(u)$ then 
$$
\psi(u)=\left( \frac{\mathrm{d}}{\mathrm{d}u} \exp_{\phi} \right)(u)=\phi(\exp_{\phi}(u))
$$

Section 3:

We explore the freedom of choosing $\rho$ and $\tau$, such that they lead to the same weighting function associated with the Riemannian metric. We call it the *gauge freedom*. Two prominent gauges, plus their duals, are studied.

Section 4:

We study the Riemannian metric induced from the rho-tau divergence and from the entropy and dual entropy functions. The metric tensor absorbs only one of the two degrees of freedom offered by the independent choice of two strictly increasing functions rho and tau. We then prove a characterization of conditions under which rho-tau metric is Hessian.





Section 5:

We study the deformed exponential family of probability models, and show the Riemannian geometry they induce. We show that each phi-exponential family is associated with two special rho-tau metrics:
1. A Hessian one related to its entropy;
2. A non-Hessian one that is conformally equivalent to the Hessian of a normalization function.

We shown how these models are related to the maximum entropy principle.

Fix an arbitrary monotone $\phi$ along with real r.v. $F_1,\dots,F_n$. These functions determine a model $\theta\to p^{\theta}$ belonging to the phi-exponential family by the relation
$$
p^{\theta}(x)=\exp_{\phi}\left[ \sum _k\theta^{k}F_k(\theta)-\alpha(\theta) \right]
$$
provided that one can prove that the normalization function $\alpha(\theta)$ exists. Normalization of $p^{\theta}$ leads to 
$$
\partial _i\alpha(\theta)=\widetilde{\mathbb{E}}_{\theta}F_i
$$
where the so-called *excort expectation*, denoted $\widetilde{\mathbb{E}}_{\theta}$,
$$
\widetilde{\mathbb{E}}_{\theta}\{ \cdot \}=\int_{\mathcal{X}}^{}  \, \mathrm{d}x \widetilde{p}^{\theta}\{ \cdot \}
$$
is with respect to the *escort family* of probability distributions $\widetilde{p}^{\theta}$ as defined by 
$$
\widetilde{p}^{\theta}(x)=\frac{1}{z(\theta)}\phi(p^{\theta}(x))
$$
Here the integral
$$
z(\theta)=\int_{\mathcal{X}}^{}  \, \mathrm{d}x \phi(p^{\theta}(x))
$$
is assumed to converge. Using the properties of the deformed exponetial function one obtains
$$
\partial _ip^{\theta}(x)=z(\theta)\widetilde{p}^{\theta}(x)[F_i-\partial _i\alpha(\theta)]=\phi(p^{\theta}(x))[F_i(x)-\partial _i\alpha(\theta)]
$$
For later convenience, we also derive the first derivative of the $z(\theta)$ function
$$
\begin{aligned}
\partial _jz(\theta) & =\int_{\mathcal{X}}^{}  \, \mathrm{d}x  \phi'(p^{\theta}(x))\partial _jp^{\theta}(x) \\
 & =\int_{\mathcal{X}}^{}  \, \mathrm{d}x \phi'(p^{\theta}(x))\phi(p^{\theta}(x))[F_j(x)-\partial _j\alpha(\theta)]
\end{aligned}
$$
and the second derivatives of the $\alpha$ function
$$
\begin{aligned}
& \partial_i \partial_j \alpha(\theta)=\partial_j\left(\frac{1}{z(\theta)} \int_{\mathcal{X}} \mathrm{d} x \phi\left(p^\theta(x)\right) F_i(x)\right) \\
& \quad=\frac{1}{z(\theta)} \int_{\mathcal{X}} \mathrm{d} x \partial_j \phi\left(p^\theta(x)\right) F_i(x)-\left[\partial_i \alpha(\theta)\right] \frac{1}{z(\theta)} \partial_j z(\theta) \\
& \quad=\frac{1}{z(\theta)} \int_{\mathcal{X}} \mathrm{d} x \phi^{\prime}\left(p^\theta(x)\right) \phi\left(p^\theta(x)\right)\left(F_j(x)-\partial_j \alpha(\theta)\right) F_i(x) \\
& \quad-\left[\partial_i \alpha(\theta)\right] \frac{1}{z(\theta)} \int_{\mathcal{X}} \mathrm{d} x \phi^{\prime}\left(p^\theta(x)\right) \phi\left(p^\theta(x)\right)\left[F_j(x)-\partial_j \alpha(\theta)\right] \\
& \quad=\frac{1}{z(\theta)} \int_{\mathcal{X}} \mathrm{d} x \phi^{\prime}\left(p^\theta(x)\right) \phi\left(p^\theta(x)\right)\left[F_j(x)-\partial_j \alpha(\theta)\right]\left[F_i(x)-\partial_i \alpha(\theta)\right]
\end{aligned}
$$


Section 6:

Summary and discussions.







