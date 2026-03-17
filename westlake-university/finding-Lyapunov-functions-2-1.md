Lorenz system $(X, Y, Z)\in \mathbb{R}^{3}$
$$
\begin{cases}
\dot{X} & =\sigma(Y-X) \\
\dot{Y} & =X(\rho -  Z)-Y \\
\dot{Z} & =XY-\beta Z+\underbrace{ \widehat{\alpha}\xi }_{ \text{like }dB_{t} }
\end{cases}
$$

^2e7ff2

Properties:
- Globally stable if $\rho<1$
- $z$ -axis is stable


The problem is that if the starting point is not on the $z$ -axis, what the system will do?

The solution wont go very far away. But does it converges to points on $z$ -axis?

> [!thm] Cote Zelati, Hairer, 2022
> Suppose $\rho<1$ and $\beta>0$, then
> - unique IM (on $z$ -axis) if $\widehat{\alpha}\ll 1$;
> - exactly two IMs if $\widehat{\alpha}\gg 1$.


By affine change of parameters, the [[#^2e7ff2]] becomes
$$
\begin{cases}
\dot{x} & =y \\
\dot{y} & =x(z-2)-2y  \\
\dot{z} & =-\gamma(z-z_{*})+\alpha \xi-x(x+\eta y)
\end{cases}
$$
Note that $z_{*}=2$ iff $\rho=1$, and $z_{*}<2$ iff $\rho<1$. $\xi$ is the noise.

You must fix the parameter $z$ and analysis how $x$, $y$ moves according to $z$ (whether $(x,y)\to(0,0)$).

For fixed $z$, the system becomes
$$
d\begin{pmatrix}
x  \\
y 
\end{pmatrix}=\begin{pmatrix}
 0 & 1 \\
z-2 & -2
\end{pmatrix}\begin{pmatrix}
x \\
y
\end{pmatrix}dt
$$
It has two eigenvalues $\lambda_{\pm}=-1\pm \sqrt{ z-1 }$.

If $2>z>1$, $\lambda_{\pm}$ are negative. If $z<1$, then spiral. What happen if $z>2$? (one $\lambda$ is positive while the other is negative) on $y=x$, it goes to $\infty$, on $y=-x$, it goes to $0$. (unstable)

Polar coordinates: $(\gamma,\theta)\in \mathbb{R}^{1}\times S^{1}$; $x=e^{ \gamma }\sin\theta,y=e^{ \gamma }(\cos\theta-\sin\theta)$.
$$
\begin{cases}
\dot{\gamma} & =-1+\frac{z}{2}\sin(2\theta) \\
\dot{\theta} & =1-z\sin ^{2}\theta \\
\dot{z} &=-\gamma(z-z_{*})+\alpha \xi+(\dots)
\end{cases}
$$
Let $\mu_{\alpha}$ be the unique IM for $(\theta,z)$ without $(\dots)$. 

Let $v_{\alpha}\coloneqq \int z\sin(2\theta)\mu_{\alpha}(d\theta,dz )$.
> [!thm]
> If $v_{\alpha}<2$, hten unique IM on $z$ -axis. If $v_{\alpha}>2$, then exactly 2 IM's.

> [!thm]
> $v_{\alpha}=c\sqrt{ \alpha }+O(\alpha^{1/3 })$ for $\alpha\gg 1$; $v_{\alpha}=2\sqrt{ z_{*}-1 }\cdot \mathbb{1}_{\{ z_{*}>1 \}}+O(\alpha^{3/4 })$ for $\alpha\ll 1$.
> 


For $v_{\alpha}>2$, we want to find a Lyapunov function $V$ on $\mathbb{R}^{3}\setminus z\text{-axis}$.

Maybe
$$
V(x,y,z)=(x^{2}+y^{2})^{-\kappa }
$$
$$
\mathcal{L}=\frac{\alpha^{2}}{2}\partial^{2}_{z}-\gamma(z-z_{*})\partial_{z}+(1-z\sin ^{2}\theta)\partial_{\theta}+\left( \frac{z}{2}\sin(2\theta)-1 \right)\partial_{r}
$$
Maybe
$$
V(r)=e^{ -\kappa r }
$$
$$
\mathcal{L}V=-\kappa\left( \frac{z}{2}\sin(2\theta)-1 \right)\cdot V
$$
The idea is replace the part of $\frac{z}{2}\sin(2\theta)-1$ by its average under $\mu_{\alpha}$ which is $\frac{1}{2}(v_{\alpha}-2)$.
$$
\widetilde{V}=e^{ -\kappa r }(1+\lambda g)
$$
We hope to find $g$ s.t. 
$$
\mathcal{Lou}\ g=v_{\alpha}-2-(z\sin(2\theta)-2)=v_{\alpha}-z\sin(2\theta)
$$




























