![[inner-product-2025070721.png]]

We need to show that 
- The conjugate symmetry: $\left< p,q \right>=\overline{\left< q,p \right>}$.
- Linearity in the first argument: $\left< (a\odot p)\oplus (b\odot q),r \right>=a\left< p,r \right>+b\left< q,r \right>$.
- Prositive definiteness: if $p$ is nonzero, then $\left< p,p \right>>0$.

Clearly, 
$$
\left< p,q \right> =\sum_{i=0}^{n} \text{clr}_i(p)\text{clr}_i(q)=\sum_{i=0}^{n} \text{clr}_i(q)\text{clr}_i(p)= \underbrace{ \left< q,p \right> }_{ \text{is real} } =\overline{\left< q,p \right> }
$$
And
$$
\begin{aligned}
\sum_{i=0}^{n} \text{clr}_i(p)\text{clr}_i(q) & =\sum_{i=0}^{n} \log\frac{p_i}{\left( \prod_{j=0}^{n} p_j \right)^{1/(n+1)}}\cdot \log\frac{q_i}{\left( \prod_{j=0}^{n} q_j \right)^{1/(n+1)}} \\
 & =\sum_{i=0}^{n} \left( \log p_i-\frac{1}{n+1}\sum_{j=0}^{n} \log p_j \right)\left( \log q_i-\frac{1}{n+1}\sum_{j=0}^{n} \log q_j \right) \\
 & =\sum_{i=0}^{n} \log p_i\log q_i -\frac{1}{n+1}\left( \sum_{i=0}^{n} \log p_i \right)\left( \sum_{i=0}^{n} \log q_i \right)
\end{aligned}
$$
$$
\begin{aligned}
\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \log\frac{p_i}{p_j}\log\frac{q_i}{q_j} & =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} (\log p_i-\log p_j)(\log q_i-\log q_j) \\
 & =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} (\log p_i\log q_i-\log p_i\log q_j-\log p_j\log q_i+\log p_j\log q_j) \\
 & =\sum_{i=0}^{n} \log p_i\log q_i-\frac{1}{n+1}\left( \sum_{i=0}^{n} \log p_i \right)\left( \sum_{i=0}^{n} \log q_i \right) \\
 & =\sum_{i=0}^{n} \text{clr}_i(p)\text{clr}_i(q)
\end{aligned}
$$
Then
$$
\begin{aligned}
(a\odot p)\oplus (b\odot q) & =\left[ \frac{(p_0)^{a}}{\sum_{i=0}^{n} (p_i)^{a}},\dots,\frac{(p_n)^{a}}{\sum_{i=0}^{n} (p_i)^{a}} \right]\oplus \left[ \frac{(q_0)^{b}}{\sum_{i=0}^{n} (q_i)^{b}},\dots,\frac{(q_n)^{b}}{\sum_{i=0}^{n} (q_i)^{b}} \right] \\
 & =\left[ \frac{\frac{(p_0)^{a}}{\sum_{i=0}^{n} (p_i)^{a}}\cdot\frac{(q_0)^{b}}{\sum_{i=0}^{n} (q_i)^{b}}}{\sum_{j=0}^{n} \left[ \frac{(p_j)^{a}}{\sum_{i=0}^{n} (p_i)^{a}}\cdot\frac{(q_j)^{a}}{\sum_{i=0}^{n} (q_i)^{a}} \right]},\dots, \frac{\frac{(p_n)^{a}}{\sum_{i=0}^{n} (p_i)^{a}}\cdot\frac{(q_n)^{b}}{\sum_{i=0}^{n} (q_i)^{b}}}{\sum_{j=0}^{n} \left[ \frac{(p_j)^{a}}{\sum_{i=0}^{n} (p_i)^{a}}\cdot\frac{(q_j)^{a}}{\sum_{i=0}^{n} (q_i)^{a}} \right]}\right]
\end{aligned}
$$
Thus
$$
\begin{aligned}
\left< (a\odot p)\oplus (b\odot q),r \right> & =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \log\frac{(p_i)^{a}\cdot(q_i)^{b}}{(p_j)^{a}\cdot(q_j)^{b}}\log\frac{r_i}{r_j} \\
 & =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \left( a\log\frac{p_i}{p_j}+b\log\frac{q_i}{q_j} \right)\log\frac{r_i}{r_j} \\
 & =a\left< p,r \right> +b\left< q,r \right> 
\end{aligned}
$$
And for nonzero $p\in\Delta _n$ (nonzero means $p\neq o$, where $o=\left( \frac{1}{n+1},\dots,\frac{1}{n+1} \right)$)
$$
\left< p,p \right> =\frac{1}{2(n+1)}\sum_{i=0}^{n} \sum_{j=0}^{n} \left( \log\frac{p_i}{p_j} \right)^{2}\geq 0
$$
The equality holds only when $p_i=p_j,\forall i,j$, i.e. $p=o$. Then for $p\neq o$, 
$$
\left< p,p \right> >0
$$
Hence $\left< \cdot,\cdot  \right>$ is an inner product.















