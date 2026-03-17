# Foundations of Dynamical Systems Theory

> **Essential Background for Lyapunov Functions**  
> This document provides the mathematical foundations of dynamical systems theory required to understand Lyapunov functions and their applications to Markov processes.

## 1. Introduction to Dynamical Systems

### 1.1 What is a Dynamical System?

A **dynamical system** is a mathematical model that describes the time evolution of a system in its state space. It consists of:

1. **State Space** $\mathcal{X}$: The set of all possible states
2. **Evolution Rule**: A rule that determines how states change over time
3. **Time Domain**: Either discrete ($\mathbb{Z}$ or $\mathbb{N}$) or continuous ($\mathbb{R}$ or $\mathbb{R}_+$)

### 1.2 Types of Dynamical Systems

#### Deterministic Systems
- **Discrete-time**: $x_{n+1} = f(x_n)$ where $f: \mathcal{X} \to \mathcal{X}$
- **Continuous-time**: $\frac{dx}{dt} = f(x)$ where $f: \mathcal{X} \to \mathbb{R}^d$

#### Stochastic Systems
- **Discrete-time**: $X_{n+1} = F(X_n, Z_n)$ where $Z_n$ are random variables
- **Continuous-time**: $dX_t = f(X_t)dt + g(X_t)dW_t$ (stochastic differential equation)
  - Here $W_t$ is a **Wiener process** (Brownian motion), a continuous-time stochastic process with:
    - $W_0 = 0$
    - Independent increments: $W_{t+s} - W_t$ is independent of $\{W_u : u \leq t\}$
    - Gaussian increments: $W_{t+s} - W_t \sim \mathcal{N}(0, s)$
    - Continuous paths but nowhere differentiable

### 1.3 Key Concepts

> [!def] Orbit/Trajectory
> The **orbit** or **trajectory** of a point $x_0$ is the sequence of states:
> - Discrete: $\{x_0, f(x_0), f^2(x_0), \ldots\}$
> - Continuous: $\{x(t) : t \geq 0\}$ where $x(0) = x_0$

> [!def] Invariant Set
> A set $S \subseteq \mathcal{X}$ is **invariant** if trajectories starting in $S$ remain in $S$ for all time.

## 2. Stability Theory

### 2.1 Equilibrium Points

> [!def] Equilibrium Point
> A point $x^* \in \mathcal{X}$ is an **equilibrium point** (fixed point) if:
> - Discrete: $f(x^*) = x^*$
> - Continuous: $f(x^*) = 0$

### 2.2 Types of Stability

Let $x^*$ be an equilibrium point and consider trajectories starting near $x^*$.

> [!def] Stability (Lyapunov)
> $x^*$ is **stable** if for every $\varepsilon > 0$, there exists $\delta > 0$ such that:
> $$\|x_0 - x^*\| < \delta \implies \|x_t - x^*\| < \varepsilon \text{ for all } t \geq 0$$

> [!def] Asymptotic Stability
> $x^*$ is **asymptotically stable** if it is stable and additionally:
> $$\lim_{t \to \infty} x_t = x^* \text{ for all } x_0 \text{ in some neighborhood of } x^*$$

> [!def] Exponential Stability
> $x^*$ is **exponentially stable** if there exist constants $C > 0$ and $\alpha > 0$ such that:
> $$\|x_t - x^*\| \leq C\|x_0 - x^*\|e^{-\alpha t}$$

### 2.3 Global vs Local Stability

- **Local stability**: Properties hold in a neighborhood of $x^*$
- **Global stability**: Properties hold for all initial conditions in $\mathcal{X}$

## 3. Lyapunov Functions in Deterministic Systems

### 3.1 The Lyapunov Function Concept

> [!def] Lyapunov Function (Deterministic)
> For a dynamical system with equilibrium $x^*$, a function $V: \mathcal{X} \to \mathbb{R}$ is a **Lyapunov function** if:
> 1. $V(x^*) = 0$ and $V(x) > 0$ for $x \neq x^*$ (positive definite)
> 2. $V$ is continuous
> 3. $\frac{dV}{dt} \leq 0$ along trajectories (non-increasing)

### 3.2 The Lyapunov Stability Theorem

> [!thm] Lyapunov's Direct Method
> Consider the system $\dot{x} = f(x)$ with equilibrium $x^* = 0$. If there exists a Lyapunov function $V$ such that:
> 1. $V(0) = 0$ and $V(x) > 0$ for $x \neq 0$
> 2. $\dot{V}(x) = \nabla V(x) \cdot f(x) \leq 0$
> 
> Then the equilibrium is **stable**.
> 
> If additionally $\dot{V}(x) < 0$ for $x \neq 0$, then the equilibrium is **asymptotically stable**.

**Proof Idea**: The function $V$ acts like an "energy" function that never increases. Level sets $\{x: V(x) = c\}$ form barriers that trajectories cannot cross outward.

### 3.3 Construction of Lyapunov Functions

#### Method 1: Quadratic Forms
For linear systems $\dot{x} = Ax$, try $V(x) = x^T P x$ where $P > 0$.

The condition $\dot{V} < 0$ becomes:
$$\dot{V} = x^T(A^T P + PA)x < 0$$

This requires $A^T P + PA < 0$, which is the **Lyapunov equation**.

#### Method 2: Physical Intuition
- **Mechanical systems**: Total energy $V = \frac{1}{2}mv^2 + U(x)$
- **Circuit systems**: Total energy stored in capacitors and inductors
- **Economic systems**: Cost or utility functions

#### Method 3: Gradient Systems
For systems of the form $\dot{x} = -\nabla U(x)$, the function $V(x) = U(x) - U(x^*)$ is a natural Lyapunov function.

### 3.4 Examples

#### Example 1: Harmonic Oscillator with Damping
Consider:
$$
\begin{cases}
\dot{x} = y \\
\dot{y} = -kx - cy
\end{cases}
$$

**Lyapunov function**: $V(x,y) = \frac{1}{2}ky^2 + \frac{1}{2}x^2$ (total energy)

**Verification**:
$$\dot{V} = ky\dot{y} + x\dot{x} = ky(-kx - cy) + xy = -cy^2 \leq 0$$

Since $\dot{V} < 0$ when $y \neq 0$, the origin is asymptotically stable.

#### Example 2: Pendulum
For the damped pendulum $\ddot{\theta} + c\dot{\theta} + \sin\theta = 0$:

**State variables**: $x_1 = \theta$, $x_2 = \dot{\theta}$
**System**: 
$$
\begin{cases}
\dot{x}_1 = x_2 \\
\dot{x}_2 = -\sin x_1 - cx_2
\end{cases}
$$

**Lyapunov function**: $V(x_1, x_2) = \frac{1}{2}x_2^2 + (1 - \cos x_1)$

**Verification**:
$$\dot{V} = x_2\dot{x}_2 + \sin x_1 \dot{x}_1 = x_2(-\sin x_1 - cx_2) + \sin x_1 x_2 = -cx_2^2 \leq 0$$

## 4. Extension to Stochastic Systems

### 4.1 Stochastic Differential Equations

Consider the SDE:
$$dX_t = f(X_t)dt + g(X_t)dW_t$$

where $W_t$ is a Wiener process.

### 4.2 Itô's Formula

For a function $V(x,t)$ and the SDE above:
$$dV(X_t,t) = \left[\frac{\partial V}{\partial t} + \frac{\partial V}{\partial x} \cdot f(X_t) + \frac{1}{2}\text{tr}(g^T(X_t) \nabla^2 V g(X_t))\right]dt + \frac{\partial V}{\partial x} \cdot g(X_t)dW_t$$

### 4.3 Lyapunov Functions for SDEs

> [!def] Lyapunov Function (Stochastic)
> A function $V: \mathbb{R}^d \to \mathbb{R}_+$ is a **Lyapunov function** for the SDE if:
> 1. $V(x) \geq 0$ with $V(x) = 0$ iff $x = 0$
> 2. $\mathcal{L}V(x) \leq 0$ where $\mathcal{L}$ is the generator:
>    $$\mathcal{L}V(x) = \frac{\partial V}{\partial x} \cdot f(x) + \frac{1}{2}\text{tr}(g^T(x) \nabla^2 V g(x))$$

### 4.4 Stability in Probability

> [!thm] Stochastic Stability
> If there exists a Lyapunov function $V$ with $\mathcal{L}V \leq 0$, then the solution is **stable in probability**.
> 
> If additionally $\mathcal{L}V \leq -cV$ for some $c > 0$, then the solution is **exponentially stable in mean square**.

## 5. Connection to Markov Chains

### 5.1 Discrete-Time Markov Chains

A sequence $(X_n)_{n \geq 0}$ is a **Markov chain** if:
$$\mathbb{P}(X_{n+1} = j | X_0, X_1, \ldots, X_n) = \mathbb{P}(X_{n+1} = j | X_n)$$

### 5.2 Markov Operators

> [!def] Markov Operator
> The **Markov operator** $P$ acts on functions $f$ as:
> $$(Pf)(x) = \mathbb{E}[f(X_1) | X_0 = x] = \sum_y P(x,y)f(y)$$

### 5.3 Lyapunov Functions for Markov Chains

> [!def] Lyapunov Function (Markov Chain)
> A function $V: \mathcal{X} \to [0,\infty)$ is a **Lyapunov function** if:
> 1. $V$ has compact sublevel sets
> 2. There exist $\lambda \in (0,1)$ and $b < \infty$ such that:
>    $$PV(x) \leq \lambda V(x) + b$$

This is the **Foster-Lyapunov drift condition**.

### 5.4 Applications to Ergodicity

> [!thm] Ergodic Theorem
> If a Markov chain has a Lyapunov function, then:
> 1. The chain has an invariant measure $\pi$
> 2. The chain converges to $\pi$ geometrically fast
> 3. The invariant measure has finite moments: $\mathbb{E}_\pi[V] < \infty$

## 6. Mathematical Tools and Techniques

### 6.1 Supermartingales

> [!def] Supermartingale
> A sequence $(M_n)$ is a **supermartingale** if:
> $$\mathbb{E}[M_{n+1} | \mathcal{F}_n] \leq M_n$$

**Connection to Lyapunov functions**: If $V$ is a Lyapunov function for a Markov chain, then $V(X_n)$ is a supermartingale.

### 6.2 Optional Stopping Theorem

> [!thm] Optional Stopping
> For a supermartingale $(M_n)$ and a stopping time $\tau$:
> $$\mathbb{E}[M_\tau] \leq \mathbb{E}[M_0]$$

**Application**: Gives bounds on expected hitting times and exit probabilities.

### 6.3 Concentration Inequalities

#### Azuma-Hoeffding Inequality
For a martingale $(M_n)$ with bounded differences:
$$\mathbb{P}(M_n - M_0 \geq t) \leq e^{-t^2/(2\sum_{i=1}^n c_i^2)}$$

#### Chernoff Bound
For sums of independent random variables:
$$\mathbb{P}(S_n \geq t) \leq e^{-\lambda t}\mathbb{E}[e^{\lambda S_n}]$$

### 6.4 Functional Analysis Tools

#### Banach Spaces
- **Completeness**: Every Cauchy sequence converges
- **Norms**: $\|f\|_\infty = \sup_x |f(x)|$, $\|f\|_p = (\int |f|^p)^{1/p}$

#### Operators
- **Bounded operators**: $\|Pf\| \leq C\|f\|$
- **Compact operators**: Map bounded sets to relatively compact sets
- **Spectral theory**: Eigenvalues and eigenfunctions

## 7. Advanced Topics

### 7.1 Generators of Markov Processes

For a continuous-time Markov process $(X_t)$:
$$(\mathcal{L}f)(x) = \lim_{t \to 0} \frac{1}{t}[\mathbb{E}^x[f(X_t)] - f(x)]$$

### 7.2 Resolvent and Potential Theory

The **resolvent** operator:
$$R_\lambda = (\lambda I - \mathcal{L})^{-1}$$

**Green's function**: $G(x,y) = \int_0^\infty p_t(x,y)dt$

### 7.3 Large Deviations

> [!thm] Cramér's Theorem
> For i.i.d. random variables with moment generating function $M(\lambda)$:
> $$\lim_{n \to \infty} \frac{1}{n}\log \mathbb{P}(S_n \geq na) = -\sup_\lambda(\lambda a - \log M(\lambda))$$

### 7.4 Ergodic Theory

#### Birkhoff's Ergodic Theorem
For an ergodic transformation $T$:
$$\lim_{n \to \infty} \frac{1}{n}\sum_{k=0}^{n-1} f(T^k x) = \int f d\mu$$

#### Mixing Properties
- **Strong mixing**: $\lim_{n \to \infty} \mathbb{P}(A \cap T^{-n}B) = \mathbb{P}(A)\mathbb{P}(B)$
- **Weak mixing**: $\lim_{n \to \infty} \frac{1}{n}\sum_{k=0}^{n-1} |\mathbb{P}(A \cap T^{-k}B) - \mathbb{P}(A)\mathbb{P}(B)| = 0$

## 8. Connections to Other Areas

### 8.1 Optimization Theory

**Gradient descent**: $x_{k+1} = x_k - \alpha \nabla f(x_k)$

**Lyapunov function**: $V(x) = f(x) - f(x^*)$

### 8.2 Control Theory

**Optimal control**: Minimize $J = \int_0^\infty L(x,u)dt$ subject to $\dot{x} = f(x,u)$

**Lyapunov-based control**: Design $u$ so that $V$ is a Lyapunov function for the closed-loop system.

### 8.3 Machine Learning

**Stochastic gradient descent**: $\theta_{k+1} = \theta_k - \alpha \nabla L(\theta_k, \xi_k)$

**Convergence analysis**: Use Lyapunov functions to prove convergence to minima.

## 9. Computational Aspects

### 9.1 Numerical Methods

#### Euler-Maruyama Method
For SDE $dX_t = f(X_t)dt + g(X_t)dW_t$:
$$X_{n+1} = X_n + f(X_n)\Delta t + g(X_n)\Delta W_n$$

#### Milstein Method
Higher-order scheme:
$$X_{n+1} = X_n + f(X_n)\Delta t + g(X_n)\Delta W_n + \frac{1}{2}g(X_n)g'(X_n)[(\Delta W_n)^2 - \Delta t]$$

### 9.2 Simulation Techniques

#### Monte Carlo Methods
- **Importance sampling**: Change of measure to reduce variance
- **Markov Chain Monte Carlo**: Sample from complex distributions
- **Multilevel Monte Carlo**: Reduce computational cost

#### Quasi-Monte Carlo
Use low-discrepancy sequences instead of random numbers.

### 9.3 Verification of Lyapunov Conditions

#### SOS (Sum of Squares) Programming
Express $V$ and $-\dot{V}$ as sums of squares of polynomials.

#### Semidefinite Programming
Relaxation of polynomial optimization problems.

## 10. Historical Notes and Further Reading

### 10.1 Historical Development

- **1892**: A.M. Lyapunov introduces the direct method
- **1931**: A.N. Kolmogorov formalizes probability theory
- **1953**: K.L. Chung develops Markov chain theory
- **1960s**: R.L. Dobrushin and others develop ergodic theory
- **1993**: S.P. Meyn and R.L. Tweedie unify the theory

### 10.2 Key References

#### Foundational Texts
1. **Khalil, H.K.** (2002). *Nonlinear Systems* (3rd ed.). Prentice Hall.
2. **Meyn, S.P. & Tweedie, R.L.** (2009). *Markov Chains and Stochastic Stability*. Cambridge University Press.
3. **Øksendal, B.** (2003). *Stochastic Differential Equations*. Springer.

#### Advanced Topics
4. **Ethier, S.N. & Kurtz, T.G.** (1986). *Markov Processes: Characterization and Convergence*. Wiley.
5. **Revuz, D. & Yor, M.** (1999). *Continuous Martingales and Brownian Motion*. Springer.
6. **Durrett, R.** (2019). *Probability: Theory and Examples*. Cambridge University Press.

### 10.3 Modern Applications

- **Financial mathematics**: Risk management, portfolio optimization
- **Biology**: Population dynamics, epidemiology
- **Engineering**: Control systems, signal processing
- **Computer science**: Algorithm analysis, machine learning
- **Physics**: Statistical mechanics, quantum systems

## Summary

This foundation provides the essential mathematical background for understanding:

1. **Deterministic stability theory** and classical Lyapunov functions
2. **Stochastic processes** and their stability properties
3. **Markov chain theory** and the Foster-Lyapunov drift conditions
4. **Connections between** different areas of mathematics and applications

The key insight is that Lyapunov functions provide a unified framework for analyzing stability and convergence across deterministic and stochastic systems, with applications ranging from classical mechanics to modern machine learning algorithms.

**Next Steps**: With this foundation, you can now dive deeper into the specific techniques for finding Lyapunov functions for Markov chains, as covered in your other lecture notes.
