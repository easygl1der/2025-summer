# Finding Lyapunov Functions for Markov Chains

> **Lecture Notes**  
> **Speaker**: Weijun Xu, Peking University  
> **Title**: Finding Lyapunov functions  
> **Abstract**: Existence of invariant measures for Markov processes are often established by finding suitable Lyapunov functions. In practice, constructing such a function is often more of an art than science. We introduce some techniques in finding Lyapunov functions, and demonstrate their usage in one particularly interesting example.

## Introduction

Finding Lyapunov functions is a fundamental technique in the study of Markov processes, yet it remains one of the most challenging aspects of the theory. While the theoretical framework is well-established, the actual construction of these functions often requires creativity, intuition, and experience. 

### Why Lyapunov Functions Matter

Lyapunov functions serve multiple crucial purposes in Markov chain theory:

1. **Proving Existence of Invariant Measures**: Through the Krylov-Bogoliubov theorem, Lyapunov functions establish tightness of empirical measures, which implies existence of invariant measures.

2. **Quantifying Convergence Rates**: Different forms of drift conditions yield different convergence speeds:
   - $PV - V \leq -cV$ gives geometric (exponential) convergence
   - $PV - V \leq -cV^{\beta}$ with $\beta < 1$ gives polynomial convergence
   - The function $\Phi$ in $PV - V \leq -\Phi(V)$ directly determines the convergence rate

3. **Establishing Moment Bounds**: If $\mathbb{E}_\nu[V] < \infty$ for the invariant measure $\nu$, then $V$ provides moment bounds for the stationary distribution.

4. **Designing Efficient Algorithms**: In MCMC, Lyapunov functions guide the choice of proposal distributions and adaptation strategies.

### The Core Challenge

The fundamental difficulty lies in the conflicting requirements:

- **Too Weak**: If $V$ grows too slowly (e.g., $V(x) = \log(1 + |x|)$), it may not provide useful moment bounds or fast convergence rates.
- **Too Strong**: If $V$ grows too quickly (e.g., $V(x) = e^{|x|^2}$), the drift condition $PV \leq \lambda V + b$ may be impossible to verify.
- **Just Right**: We need $V$ to grow at exactly the right rate to both control the chain and satisfy the drift condition.

### Systematic Approaches

Rather than relying purely on intuition, we'll explore systematic techniques:

1. **Start with the Chain's Structure**: 
   - Linear chains → quadratic Lyapunov functions
   - Polynomial noise → polynomial Lyapunov functions  
   - Exponential tails → exponential Lyapunov functions

2. **Work Backwards from Desired Properties**:
   - Want geometric ergodicity? Need $PV - V \leq -cV$
   - Want finite $p$-th moments? Try $V(x) = 1 + |x|^p$
   - Want to prove recurrence? Any unbounded $V$ with negative drift suffices

3. **Use Physical Intuition**:
   - Energy functions in physics often make good Lyapunov functions
   - Distance to equilibrium in optimization problems
   - Potential functions from gradient flows

4. **Exploit Problem-Specific Features**:
   - Symmetries can simplify the search
   - Conservation laws suggest natural candidates
   - Known invariant measures hint at appropriate growth rates

### A Concrete Example: The Art in Practice

Consider a simple nonlinear autoregression: $X_{n+1} = \theta X_n + \sigma(X_n) Z_n$ where $Z_n$ are i.i.d. standard normal.

**First Attempt**: Try $V(x) = 1 + x^2$
- Compute: $PV(x) = 1 + \theta^2 x^2 + \sigma(x)^2$
- Need: $\theta^2 x^2 + \sigma(x)^2 \leq \lambda x^2 + b$ for some $\lambda < 1$

**The Art**: 
- If $\sigma(x) = \sigma_0$ (constant), this works when $|\theta| < 1$
- If $\sigma(x) = \sigma_0 \sqrt{1 + x^2}$, we need to modify $V$
- If $\sigma(x) = \sigma_0 |x|$, we might need $V(x) = 1 + |x|^p$ for some $p < 2$

This interplay between the chain's dynamics and the choice of $V$ exemplifies why finding Lyapunov functions is "more art than science."

### Roadmap of This Lecture

We will proceed systematically through:

1. **Theoretical Foundations**: Adjoint operators, Krylov-Bogoliubov theorem, and the connection to supermartingales
2. **Basic Techniques**: Quadratic forms, distance-based functions, and the test function method
3. **Advanced Methods**: Small sets, polynomial rates, and adaptive MCMC
4. **Case Studies**: Detailed examples showing the thought process behind choosing $V$
5. **Common Pitfalls**: What goes wrong and how to fix it

By the end, you'll have both theoretical understanding and practical tools for finding Lyapunov functions in your own research.

## Setup

- State space $\mathcal{X}$ 
- Feller Markov chain $(X_n)_{n\geq0}$ on $\mathcal{X}$
- Markov operator $P:\mathcal{G}(\mathcal{X})\to \mathcal{G}(\mathcal{X})$.
- $(Pf)(x)\coloneqq \mathbb{E}(f(X_1)\mid X_0=x)=\mathbb{E}^{x}(f(X_1))$.

Question:
- Existence of IM (invariant measure)?
- Speed of convergence?

## Adjoint of Markov Operators

For a Markov operator $P: \mathcal{G}(\mathcal{X}) \to \mathcal{G}(\mathcal{X})$ acting on functions, its adjoint $P^*$ acts on measures and is defined by the duality relation:

$$\langle Pf, \mu \rangle = \langle f, P^*\mu \rangle$$

or equivalently:
$$\int (Pf)(x) \, \mu(dx) = \int f(x) \, (P^*\mu)(dx)$$

### Key Properties:
- If $\mu$ is the distribution of $X_0$, then $P^*\mu$ is the distribution of $X_1$
- For Dirac measure: $(P^*\delta_x)(A) = P(x,A) = \mathbb{P}^x(X_1 \in A)$
- The $k$-th power: $(P^*)^k\mu$ is the distribution of $X_k$ given initial distribution $\mu$

> [!thm] krytov-Bogotioubov
> Let $P^{*}$ be the adjoint of $P$ and $(P^{*})^{k}=P^{*}_k$, if $\exists x\in \mathcal{X}$ s.t.  $\mu _n\coloneqq \frac{1}{n}\sum_{k=0}^{n-1}P^{*}_k\delta_{x}$ is tight in $n$ then (Feller) $\Rightarrow$ existence of IM.

> [!def] Tight
> A family of probability measures $\left\{\mu_\alpha\right\}_{\alpha \in I}$ on a metric space $S$ (often $\mathbb{R}^d$) is called **tight** if for every $\varepsilon>0$, there exists a compact set $K_\varepsilon \subset S$ such that for all $\alpha \in I$,
> $$
> \mu_\alpha(K_\varepsilon) > 1 - \varepsilon.
> $$

`\begin{proof}`
Tightness implies that $\exists T_m\to +\infty$ s.t. $\nu _m\coloneqq \frac{1}{T_m}\sum_{k=0}^{T_m-1}P^{*}_k\delta_{x}$ converges weakly to $\nu$. Then 
$$
\begin{aligned}
P^{*}\nu & =P^{*}(\lim_{ m \to \infty }\nu _m)\overset{ \text{Feller} }{ = }\lim_{ m \to \infty }P^{*}\nu _m=\lim_{ m \to \infty } \frac{1}{T_m}\sum_{k=0}^{T_m-1} P^{*}_{k+1}\delta_{x} \\
 & =\lim_{ m \to \infty } \frac{1}{T_m}\sum_{k=1}^{T_m} P^{*}_{k}\delta_{x} \\
 & = \lim_{ m \to \infty } \frac{1}{T_m}\left(\sum_{k=0}^{T_m-1} P^{*}_{k}\delta_{x} + P^{*}_{T_m}\delta_{x} - P^{*}_0\delta_{x}\right) \\
 & = \lim_{ m \to \infty } \left(\nu_m + \frac{1}{T_m}P^{*}_{T_m}\delta_{x} - \frac{1}{T_m}\delta_{x}\right)
\end{aligned}
$$

Since $P^{*}_{T_m}\delta_{x}$ is a probability measure and $T_m \to +\infty$, we have:
$$\frac{1}{T_m}P^{*}_{T_m}\delta_{x} \to 0 \text{ and } \frac{1}{T_m}\delta_{x} \to 0$$

Therefore:
$$P^{*}\nu = \lim_{ m \to \infty } \nu_m = \nu$$

This shows that $\nu$ is an invariant measure (IM) for the Markov chain.
`\end{proof}`

## Lyapunov Functions and Convergence

Once we have established the existence of an invariant measure, the next question is about the speed of convergence. Lyapunov functions provide a powerful tool for this analysis.

> [!def] Lyapunov Function
> A function $V: \mathcal{X} \to [0,+\infty]$ is called a **Lyapunov function** for the Markov operator $P$ if:
> 1. $V$ is lower semi-continuous
> 2. The sublevel sets $\{x: V(x) \leq r\}$ are compact for all $r \geq 0$
> 3. There exist constants $\lambda \in (0,1)$ and $b < \infty$ such that:
>    $$PV(x) \leq \lambda V(x) + b$$

### Foster-Lyapunov Criteria

The existence of a Lyapunov function implies:
- **Geometric ergodicity**: If $V$ is bounded on compact sets, then the chain converges exponentially fast to its invariant measure
- **Moment bounds**: $\mathbb{E}_\nu[V] < \infty$ where $\nu$ is the invariant measure

### Connection to Tightness

The Lyapunov function provides a direct way to verify tightness:
- If $PV \leq \lambda V + b$ with $\lambda < 1$, then the empirical measures $\mu_n = \frac{1}{n}\sum_{k=0}^{n-1}P^*_k\delta_x$ are tight
- This is because the sublevel sets of $V$ provide the required compact sets for the tightness condition

### Lyapunov Functions and Supermartingales

Let $V: \mathcal{X} \to [1,+\infty)$ be a Lyapunov function. The drift condition has a deep connection to martingale theory.

> [!thm] Foster's Theorem (Supermartingale Characterization)
> If there exists $\Phi: [1,+\infty) \to \mathbb{R}$ with $\Phi(v) \to +\infty$ as $v \to +\infty$, and the drift condition:
> $$PV(x) - V(x) \leq -\Phi(V(x))$$
> Then the process
> $$M_n = V(X_n) + \sum_{k=0}^{n-1} \Phi(V(X_k))$$
> is a supermartingale with respect to the natural filtration.

**Proof**: We need to show $\mathbb{E}[M_{n+1} \mid \mathcal{F}_n] \leq M_n$. We have:
$$\mathbb{E}[M_{n+1} \mid \mathcal{F}_n] = \mathbb{E}[V(X_{n+1}) \mid \mathcal{F}_n] + \sum_{k=0}^{n} \Phi(V(X_k))$$

Since $\mathbb{E}[V(X_{n+1}) \mid \mathcal{F}_n] = PV(X_n)$:
$$= PV(X_n) + \sum_{k=0}^{n} \Phi(V(X_k))$$

Using the drift condition $PV(X_n) \leq V(X_n) - \Phi(V(X_n))$:
$$\leq V(X_n) - \Phi(V(X_n)) + \sum_{k=0}^{n} \Phi(V(X_k)) = V(X_n) + \sum_{k=0}^{n-1} \Phi(V(X_k)) = M_n$$

Therefore $\mathbb{E}[M_{n+1} \mid \mathcal{F}_n] \leq M_n$, making $(M_n)$ a supermartingale.

### Applications

1. **Moment Bounds**: Since $(M_n)$ is a supermartingale and $M_n \geq V(X_n)$, we have $\mathbb{E}^x[V(X_n)] \leq V(x)$ when $\Phi(v) \geq 0$.

2. **Recurrence**: If $\Phi(v) > 0$ for all $v > v_0$ for some $v_0$, then the chain returns to the set $\{x: V(x) \leq v_0\}$ in finite expected time.

3. **Geometric Ergodicity**: If $\Phi(v) = cv$ for some $c > 0$ (i.e., $PV - V \leq -cV$), then the chain has geometric convergence rate.

4. **Tail Bounds**: The supermartingale property combined with concentration inequalities gives exponential tail bounds on hitting times.

### Example: Classical Drift Condition

For the standard drift condition $PV \leq \lambda V + b$, we can rewrite:
$$PV(x) - V(x) \leq (\lambda - 1)V(x) + b$$

When $V(x) > \frac{b}{1-\lambda}$, we have $PV(x) - V(x) < 0$. More generally, if we define:
$$\Phi(v) = (1-\lambda)v - b$$

Then for $v$ large enough, $\Phi(v) > 0$ and the supermartingale becomes:
$$M_n = V(X_n) + \sum_{k=0}^{n-1}\max\{0, (1-\lambda)V(X_k) - b\}$$

## Methods for Finding Lyapunov Functions

### 1. Quadratic Forms (for Linear Systems)

For linear Markov chains on $\mathbb{R}^d$, try $V(x) = x^T Q x$ where $Q$ is positive definite:
- Solve the Lyapunov equation: $A^T Q A - Q = -I$ where $A$ is the transition matrix
- If solvable with $Q > 0$, then $V(x) = x^T Q x$ is a Lyapunov function

### 2. Distance-Based Functions

Common choices include:
- $V(x) = 1 + |x|^p$ for $p \geq 1$
- $V(x) = e^{\alpha |x|}$ for some $\alpha > 0$
- $V(x) = \log(1 + |x|^2)$

### 3. Test Functions Method

Start with a candidate $V$ and verify:
$$PV(x) - V(x) = \mathbb{E}^x[V(X_1)] - V(x)$$

If this is negative for large $|x|$, adjust parameters to achieve the drift condition.

### 4. Coupling Method

If you can couple the chain with a simpler process:
- Find Lyapunov function for the simpler process
- Transfer to the original chain via the coupling

## Convergence Rates from Lyapunov Functions

> [!thm] Geometric Ergodicity
> If $V \geq 1$ is a Lyapunov function with $PV \leq \lambda V + b$, and $V$ is bounded on compact sets, then:
> $$\|P^n(x,\cdot) - \nu(\cdot)\|_{TV} \leq C V(x) \rho^n$$
> for some $C < \infty$ and $\rho \in (\lambda, 1)$.

### Proof Sketch:
1. The drift condition implies $\mathbb{E}^x[V(X_n)] \leq \lambda^n V(x) + \frac{b}{1-\lambda}$
2. This gives exponential moment bounds
3. Apply coupling arguments to get TV convergence

## Examples

### Example 1: Random Walk with Drift

Consider $X_{n+1} = \theta X_n + Z_n$ where $|\theta| < 1$ and $Z_n$ are i.i.d. bounded.

**Lyapunov function**: $V(x) = 1 + x^2$

**Verification**:
$$PV(x) = 1 + \mathbb{E}[(θx + Z)^2] = 1 + θ^2 x^2 + \mathbb{E}[Z^2] \leq θ^2 V(x) + (1 + \mathbb{E}[Z^2])$$

Since $θ^2 < 1$, this gives geometric ergodicity.

### Example 2: Metropolis-Hastings Algorithm

For target density $\pi(x) \propto e^{-U(x)}$ with $U(x) \to \infty$ as $|x| \to \infty$:

**Lyapunov function**: $V(x) = e^{\delta U(x)}$ for small $\delta > 0$

Under appropriate conditions on the proposal, one can show $PV \leq \lambda V + b$.

### Underdamped Langevin Dynamics

Consider the second-order Langevin equation (also known as kinetic Langevin or underdamped Langevin):

$$
\begin{cases}
dX_{t}=v_{t}dt \\
dv_{t}=-W'(X_{t})dt-v_{t}dt+\sqrt{2}dB_{t} 
\end{cases}
$$

This system describes:
- $X_t$: position of a particle
- $v_t$: velocity of the particle  
- $W(x)$: potential energy function
- $-v_t dt$: friction/damping term
- $\sqrt{2} dB_t$: random thermal noise

Then
$$
\mathcal{L}=\partial^{2}_{v}-v\partial_{v}-W'(x)\partial_{v}+v\partial_{x}
$$

**Derivation**: To find the generator, we apply Itô's formula to a test function $f(x,v)$. For the system:
$$
\begin{cases}
dX_{t}=v_{t}dt \\
dv_{t}=-W'(X_{t})dt-v_{t}dt+\sqrt{2}dB_{t} 
\end{cases}
$$

We have:
$$df(X_t, v_t) = \frac{\partial f}{\partial x} dX_t + \frac{\partial f}{\partial v} dv_t + \frac{1}{2} \frac{\partial^2 f}{\partial v^2} (dv_t)^2$$

Substituting the dynamics:
- $\frac{\partial f}{\partial x} dX_t = v \frac{\partial f}{\partial x} dt$
- $\frac{\partial f}{\partial v} dv_t = \frac{\partial f}{\partial v}[-W'(x) - v]dt + \sqrt{2} \frac{\partial f}{\partial v} dB_t$
- $(dv_t)^2 = (\sqrt{2})^2 dt = 2 dt$ (using $(dB_t)^2 = dt$)

Therefore:
$$df = \left[v \frac{\partial f}{\partial x} - W'(x)\frac{\partial f}{\partial v} - v\frac{\partial f}{\partial v} + \frac{\partial^2 f}{\partial v^2}\right]dt + \sqrt{2} \frac{\partial f}{\partial v} dB_t$$

The generator is the drift coefficient:
$$\mathcal{L}f = v\partial_x f - W'(x)\partial_v f - v\partial_v f + \partial_{vv}^2 f$$

This gives us the generator: $\mathcal{L} = v\partial_x - W'(x)\partial_v - v\partial_v + \partial_{vv}^2$.

### Finding a Lyapunov Function

For this system, a natural candidate is the total energy (Hamiltonian):
$$H(x,v) = \frac{1}{2}v^2 + W(x)$$

Let's check if this satisfies a Lyapunov condition. Computing $\mathcal{L}H$:

$$\begin{aligned}
\mathcal{L}H &= v\partial_x H - W'(x)\partial_v H - v\partial_v H + \partial_{vv}^2 H \\
&= v \cdot W'(x) - W'(x) \cdot v - v \cdot v + 0 \\
&= -v^2
\end{aligned}$$

So we have $\mathcal{L}H = -v^2 \leq 0$. This shows energy dissipation but isn't quite a Lyapunov function yet.

**Modified Lyapunov Function**: Try 
$$V(x,v) = H(x,v) + \epsilon xv = \frac{1}{2}v^2 + W(x) + \epsilon xv$$

for small $\epsilon > 0$. Computing:
$$\mathcal{L}V = -v^2 + \epsilon(v^2 - xW'(x) - xv)$$

Under appropriate growth conditions on $W$ (e.g., $W(x) \geq c_1|x|^2 - c_2$ and $|W'(x)| \leq c_3(1 + |x|)$), we can show:
$$\mathcal{L}V \leq -c V + d$$

for some constants $c, d > 0$, giving us a proper Lyapunov function.

**Key Insight**: The cross term $\epsilon xv$ couples position and velocity to create the necessary drift. This is a common technique for second-order systems.

## Practical Considerations

### Choosing the Right Lyapunov Function

1. **Start simple**: Try $V(x) = 1 + |x|^2$ first
2. **Match the tail behavior**: If the chain has polynomial tails, use polynomial $V$; if exponential tails, use exponential $V$
3. **Use problem structure**: Exploit symmetries or conservation properties

### Verifying the Drift Condition

To check $PV(x) \leq \lambda V(x) + b$:

1. **Compute $PV(x)$ explicitly** when possible
2. **Use bounds**: Often easier to bound $PV(x)$ than compute exactly
3. **Split the state space**: Different bounds for $|x| \leq R$ and $|x| > R$

### Common Pitfalls

- **Too weak $V$**: If $V$ grows too slowly, may not get moment bounds
- **Too strong $V$**: If $V$ grows too fast, drift condition may fail
- **Forgetting the compact set condition**: Need sublevel sets to be compact

## Advanced Topics

### Small Sets and Drift Conditions

> [!def] Small Set
> A set $C \subseteq \mathcal{X}$ is called a **small set** if there exists $n \geq 1$, $\epsilon > 0$, and a probability measure $\nu$ such that:
> $$P^n(x,A) \geq \epsilon \nu(A) \quad \forall x \in C, A \in \mathcal{B}(\mathcal{X})$$

**Drift and Minorization**: Combine Lyapunov functions with small sets:
- Drift condition: $PV \leq \lambda V + b \mathbf{1}_C$
- Minorization on $C$: Lower bound on transition probabilities

### Polynomial Convergence

When geometric ergodicity fails, look for polynomial rates:

**Polynomial Lyapunov function**: $V(x) = 1 + |x|^{\alpha}$ for $\alpha < 1$

**Drift condition**: $PV(x) \leq V(x) - c V(x)^{\beta} + b \mathbf{1}_C$ for $\beta < 1$

This gives convergence rate $O(n^{-r})$ for some $r > 0$.

### Adaptive MCMC

For adaptive MCMC algorithms, Lyapunov functions help prove:
- Containment: The adaptation doesn't destabilize the chain
- Diminishing adaptation: The adaptation effect vanishes

### Lyapunov Functions for Continuous-Time Chains

For continuous-time Markov processes with generator $\mathcal{L}$:

**Lyapunov condition**: $\mathcal{L}V(x) \leq -c V(x) + d$

This is the continuous analog of the discrete drift condition.

## Summary

Lyapunov functions are fundamental tools for:
1. **Proving existence** of invariant measures (via tightness)
2. **Establishing convergence rates** (geometric or polynomial)
3. **Obtaining moment bounds** for the invariant measure
4. **Designing efficient MCMC algorithms**

The key is finding the right balance: $V$ should grow fast enough to control the chain but slowly enough to satisfy the drift condition.

## References

1. **Meyn, S. P., & Tweedie, R. L. (2009)**. *Markov Chains and Stochastic Stability* (2nd ed.). Cambridge University Press.
   - The definitive reference for Lyapunov function methods in Markov chain theory

2. **Hairer, M., & Mattingly, J. C. (2011)**. Yet another look at Harris' ergodic theorem for Markov chains. *Seminar on Stochastic Analysis, Random Fields and Applications VI*, 109-117.
   - Modern treatment of ergodicity using Lyapunov functions

3. **Douc, R., Fort, G., Moulines, E., & Soulier, P. (2004)**. Practical drift conditions for subgeometric rates of convergence. *The Annals of Applied Probability*, 14(3), 1353-1377.
   - Extends Lyapunov methods to polynomial convergence rates

4. **Roberts, G. O., & Rosenthal, J. S. (2004)**. General state space Markov chains and MCMC algorithms. *Probability Surveys*, 1, 20-71.
   - Excellent survey with practical MCMC applications

5. **Fort, G., & Moulines, E. (2003)**. Polynomial ergodicity of Markov transition kernels. *Stochastic Processes and their Applications*, 103(1), 57-99.
   - Comprehensive treatment of polynomial convergence



