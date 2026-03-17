See 随机过程基础 Basic Stochastic Processes (Zdzisław Brzeźniak, Tomasz Zastawniak) (Z-Library).

Bachelier assumed the relative infinitesimal price increments $dX(t)$ are proportional to the increments $dW(t)$ of the Wiener process,
$$
\frac{dX(t)}{X(t)} =\sigma dW(t)\iff X(t)=X(0)+\sigma \int_{0}^{t} X(t) \, \mathrm{d}W(t)  
$$
where $\sigma$ is a positive constant, the right hand side is called the Ito integral. The solution is expected to be $xe^{ W(t) }$, but in fact
$$
X(t)=xe^{ W(t) }e^{ -\frac{t}{2} }
$$
due to the non-differentiability of the paths of the Wiener process. 

We define Ito integral from the same spirit of Riemann integral, but the convergence is in $L^{2}$ instead of $\mathbb{R}$, and Riemann integral
$$
\sum_{i=1}^{n} f(s_i)(x_i-x_{i-1})
$$
does not depend on $s_i\in[x_{i-1},x_i]$, but in stochastic case,
$$
\sum_{i=1}^{n} f(s_i)(W(x_i)-W(x_{i-1}))
$$
it does.

![[Pasted image 20250723145517.png]]
`\begin{proof}`
$$
\begin{aligned}
\sum W(t_j^{n})(W(t_{j+1}^{n})-W(t_j^{n})) & =\sum \frac{1}{2}(W(t_{j+1}^{n})^{2}-W(t_j^{n})^{2})-\frac{1}{2}\underbrace{ (W(t_j^{n})-W(t_{j+1}^{n}))^{2} }_{ =(\Delta _i^{n}W)^{2} } \\
 & =\frac{1}{2}W(t_{n}^{n})^{2}-\frac{1}{2}W(t_0^{n})^{2}-\frac{1}{2}\sum(\Delta _i^{n}W)^{2} \\
 & =\frac{1}{2}(W(T)^{2}-W(0)^{2})-\frac{1}{2}\sum(\Delta _i^{n}W)^{2} \\
 & \to\frac{1}{2}(W(T)^{2}-W(0)^{2})-\frac{1}{2}T
\end{aligned}
$$
$$
\begin{aligned}
\sum W(t_{j+1}^{n})(W(t_{j+1}^{n})-W(t_j^{n})) & =\sum \frac{1}{2}(W(t_{j+1}^{n})^{2}-W(t_j^{n})^{2})+\frac{1}{2}\underbrace{ (W(t_j^{n})-W(t_{j+1}^{n}))^{2} }_{ =(\Delta _i^{n}W)^{2} }  \\
 & \to\frac{1}{2}(W(T)^{2}-W(0)^{2})+\frac{1}{2}T
\end{aligned}
$$
`\end{proof}`


![[1-ito-stochastic-calculus-2025072314.png]]
![[2-ito-stochastic-calculus-2025072314.png]]
![[ito-stochastic-calculus-2025072314.png]]

The choice of $s_j$ makes difference. To ensure that the process adapted to $\mathcal{F}_{t}$, we have to take $s_j=t_j$. 

![[ito-stochastic-calculus-2025072315.png]]
![[1-ito-stochastic-calculus-2025072315.png]]

![[2-ito-stochastic-calculus-2025072315.png]]
![[3-ito-stochastic-calculus-2025072315.png]]
`\begin{proof}`
Expand both sides.
`\end{proof}`

![[4-ito-stochastic-calculus-2025072315.png]]
`\begin{proof}`
Trivial.
`\end{proof}`

![[5-ito-stochastic-calculus-2025072315.png]]
`\begin{proof}`
Trivial.
`\end{proof}`
![[6-ito-stochastic-calculus-2025072315.png]]

![[7-ito-stochastic-calculus-2025072315.png]]

The Ito stochastic integral is defined by approximation.


![[8-ito-stochastic-calculus-2025072315.png]]
`\begin{proof}`
Prove by approximation in $L^{2}$ and $M^{2}$.
`\end{proof}`

![[9-ito-stochastic-calculus-2025072315.png]]

We define the Ito integral over $[0,T]$.

![[10-ito-stochastic-calculus-2025072315.png]]

![[12-ito-stochastic-calculus-2025072315.png]]

`\begin{proof}`
![[13-ito-stochastic-calculus-2025072315.png]]
![[14-ito-stochastic-calculus-2025072315.png]]
`\end{proof}`

To verify the existence of integral, it's not always easy to find the approximation of step functions. Similar to Riemann integral, "continuous functions are always integrable", there is a corresponding argument for Ito integral.
![[15-ito-stochastic-calculus-2025072315.png]]

`\begin{proof}`
Omitted.
`\end{proof}`

![[16-ito-stochastic-calculus-2025072315.png]]



![[17-ito-stochastic-calculus-2025072315.png]]
![[18-ito-stochastic-calculus-2025072315.png]]

![[20-ito-stochastic-calculus-2025072315.png]]
![[1-ito-stochastic-calculus-2025072316.png]]

![[ito-stochastic-calculus-2025072316.png]]
`\begin{proof}`
Use Jensen's formula.
`\end{proof}`
![[2-ito-stochastic-calculus-2025072316.png]]

Next we consider the stochastic differentiation, which is different from the classical calculus for smooth function.

![[3-ito-stochastic-calculus-2025072316.png]]
![[4-ito-stochastic-calculus-2025072316.png]]

![[5-ito-stochastic-calculus-2025072316.png]]
![[6-ito-stochastic-calculus-2025072316.png]]
![[7-ito-stochastic-calculus-2025072316.png]]

$$
F_{t}'(t,x)=-\frac{1}{2}e^{ x-\frac{t}{2} },\quad F_{xx}''(t,x)=e^{ x-\frac{t}{2} },\quad F_{x}'(t,x)=e^{ x-\frac{t}{2} }
$$
are continnuous for all $t\geq0$ and $x\in \mathbb{R}$. Assume that $F_{x}' (t,W (t))\in M_{T}^{2}$ for all $T\geq0$. Then $F(t,W(t))$ is Ito process and
$$
dF(t,W(t)) = \underbrace{ \left( -\frac{1}{2}e^{ W(t) }e^{ -\frac{t}{2} }+\frac{1}{2}e^{ W(t) }e^{ -\frac{t}{2} } \right) }_{ =0 }dt+\underbrace{ e^{ W(t) }e^{ -\frac{t}{2} } }_{ =F(t,W(t)) }dW(t) 
$$
i.e. 
$$
dX(t)=X(t)dW(t)
$$
![[8-ito-stochastic-calculus-2025072316.png]]

Then we consider the Stochastic Differential Equations.

$$
d\xi(t)=f(\xi(t))dt+g(\xi(t))dW(t)
$$
![[9-ito-stochastic-calculus-2025072316.png]]
![[10-ito-stochastic-calculus-2025072316.png]]

![[11-ito-stochastic-calculus-2025072316.png]]
![[12-ito-stochastic-calculus-2025072316.png]]

We have Existence and Uniqueness theorem.

![[13-ito-stochastic-calculus-2025072316.png]]







