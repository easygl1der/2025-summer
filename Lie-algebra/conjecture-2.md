Conjecture 3.11 指出，对于一个 Weyl 群元素 $w$ 和一个反射 $t$，如果 $wt$ 的长度比 $w$ 的长度至少少 2（即 $l(wt) < l(w)-1$），那么 $w$ 存在一个特定形式的简化表达式。这个简化表达式是 $w=s_{i_1} \dots s_i s_{i_l} s_i \ldots s_{i_r}$，其中 $i_{l-1}=i_{l+1}=i$。在这个表达式中，$wt$ 是通过移除因子 $s_{i_l}$ 得到的。

根据提供的文件，**可分解根** (decomposable root) 是相对于 Weyl 群元素 $w$ 的正根集合 $\check{R}^{+}(w)$ 中的一个元素 $\check{\eta}$。

如果 $\check{\eta}$ 可以表示为 $\check{\eta}=\frac{1}{c}\left(\check{\mu}+\check{\mu}^{\prime}\right)$ 的形式，其中 $\check{\mu}$ 和 $\check{\mu}^{\prime}$ 是 $\check{R}^{+}(w)$ 中两个不同的元素，且 $c$ 是一个正整数，那么 $\check{\eta}$ 就被称为在 $\check{R}^{+}(w)$ 中是**可分解的** (decomposable in $\check{R}^{+}(w)$)。

根据 Proposition 3.4，在一个 Weyl 群元素 $w$ 中，根 $\check{\eta} \in \check{R}^{+}(w)$ 的长度满足 $l\left(w s_{\check{\eta}}\right)=l(w)-1$ 当且仅当 $\check{\eta}$ 在 $\check{R}^{+}(w)$ 中是不可分解的。

因此，集合 $\check{R}_{w, B}^{+}$（也称为覆盖反演根集，cover inversion set of coroots）就是 $\check{R}^{+}(w)$ 中不可分解元素的子集。

$$
\check{\alpha}_{12345}=\sum_{i=1}^{5} \check{\alpha}_i
$$

> [!def]
> 对于一个根系 $\Phi$ 中的根 $\alpha$, 其对应的 **coroot** $\check{\alpha}$ 通常定义为:
> $$
> \check{\alpha}=\frac{2 \alpha}{(\alpha, \alpha)}
> $$
> 其中 $(\cdot, \cdot)$ 是定义在根空间上的不变双线性形式 (例如, Killing 形式的对偶形式).

为了给出 Lie 代数 $\mathfrak{t}$ 的详细定义，我们首先需要理解它所关联的 Lie 群 $T$ 的性质。在给定的文献中，$T$ 被定义为 Borel 子群 $B$ 和其对立 Borel 子群 $B_-$ 的交集，即 $T := B \cap B_-$. 这个 $T$ 是一个**极大环面（maximal torus）**.

现在，让我们来详细定义它的 Lie 代数 $\mathfrak{t}$:

> [!def]
> 对于一个 Lie 群 $G$（例如这里的 $T$），它的 **Lie 代数** $\mathfrak{g}$（例如这里的 $\mathfrak{t}$）可以被定义为该 Lie 群在单位元 $e$ 处的**切空间（tangent space）**.

更具体地说:

1.  **切空间作为向量空间:** Lie 代数首先是一个实或复向量空间，其维度与 Lie 群相同。对于 $T$ 来说，$\mathfrak{t}$ 是一个向量空间。
2.  **Lie 括号（Lie bracket）:** Lie 代数除了作为向量空间外，还配备了一个额外的双线性运算，称为 **Lie 括号**，通常记为 $[X, Y]$. 这个括号运算满足以下性质：
    *   **反对称性:** $[X, Y] = -[Y, X]$
    *   **Jacobi 恒等式:** $[X, [Y, Z]] + [Y, [Z, X]] + [Z, [X, Y]] = 0$

对于代数群 $T$ 的 Lie 代数 $\mathfrak{t}$，有几种等价的理解方式:

*   **右不变向量场:** $\mathfrak{t}$ 可以被视为 $T$ 上所有右不变（right-invariant）光滑向量场构成的向量空间。Lie 括号则由向量场的交换子（commutator）给出。
*   **伴随表示的导数:** 对于一个线性代数群 $T$（它作为 Lie 群也是线性的），它的 Lie 代数可以看作是 $T$ 的伴随表示（Adjoint representation）在单位元处的导数。
*   **指数映射:** Lie 代数 $\mathfrak{t}$ 与 Lie 群 $T$ 通过指数映射 $\exp: \mathfrak{t} \to T$ 联系起来。对于环面 $T$，这意味着 $T$ 可以被视为 $\mathfrak{t}$ 模去一个格（lattice）所得的商空间。

在您的文件中，$\mathfrak{t} = Lie(T)$ 是一个既定事实，它作为进一步定义根和 coroot 的基础。简单根 $\alpha_i$ 属于 $\mathfrak{t}^*$（$\mathfrak{t}$ 的对偶空间），而简单 coroot $\check{\alpha}_i$ 属于 $\mathfrak{t}$ 本身。这强调了 $\mathfrak{t}$ 作为 Lie 群 $T$ 结构中心的线性空间角色。

> [!def]
> - **$<$ (Bruhat 序)**：对于 Weyl 群 $W$ 中的元素 $u, w$，我们有 $u < w$ 当且仅当 $w$ 的某个简化表达式的子串可以构成 $u$ 的一个简化表达式。
> - **$\prec$ (Bruhat 序中的覆盖关系)**：我们进一步写 $u \prec w$ 如果 $w$ 在 Bruhat 序中覆盖 $u$。这意味着 $u < w$ 且 $l(u) = l(w) - 1$。

$\Pi=\{ \alpha _i:i\in I \}\subset \mathfrak{t}^{*}$, $\check{\Pi}=\{ \check{\alpha}_i:i\in I \}\subset \mathfrak{t}$.

$s_{\check{\eta}}$ 表示针对 coroot $\check{\eta}$ 的反射。

在 Lie 理论和根系中，反射是一种线性变换，它将向量空间中的向量沿着一个特定的方向（由一个根或 coroot 决定）进行反射。对于一个 coroot $\check{\eta}$, 反射 $s_{\check{\eta}}$ 会将另一个 coroot $\check{\alpha}_j$ 映射到 $\check{\alpha}_j - \langle \check{\eta}, \check{\alpha}_j \rangle \check{\eta}$. 其中, $\langle \check{\eta}, \check{\alpha}_j \rangle$ 是 coroot $\check{\eta}$ 和根 $\check{\alpha}_j$ 之间的配对。

在文件中，这个反射通常应用于 coroot 空间中的元素，或者在 Weyl 群的上下文中被使用，例如在 $\check{R}^+(w)$ 的定义中，$w(\check{\eta}) < 0$ 表示 $w$ 将正 coroot $\check{\eta}$ 反射为负 coroot。在 Proposition 3.4 中，$l(ws_{\check{\eta}})=l(w)-1$ 也提到了反射 $s_{\check{\eta}}$ 对 Weyl 群元素长度的影响。

$s_i$ 表示 Weyl 群 $W$ 中的一个**简单反射**。 Weyl 群是由简单反射 $s_i$ 生成的，即 $W=\langle s_i|i\in I\rangle$。 每个简单反射 $s_i$ 与一个简单根 $\alpha_i$ （或对应的简单 coroot $\check{\alpha}_i$）相关联。

简单反射 $s_i$ 的具体作用是在 Lie 代数的对偶空间中，沿着与简单根 $\alpha_i$ 垂直的超平面进行反射。 更准确地说，它作用于根 $\beta$ 的方式是：
$$
s_i(\beta) = \beta - \langle \beta, \check{\alpha}_i \rangle \alpha_i
$$
其中 $\langle \beta, \check{\alpha}_i \rangle$ 是根 $\beta$ 和 coroot $\check{\alpha}_i$ 之间的配对（通常是 $\frac{2(\beta, \alpha_i)}{(\alpha_i, \alpha_i)}$）。

在文献中，也提到了 $s_i$ 的提升 $\dot{s}_i$ 在极大环面 $T$ 的正规化子 $N_G(T)$ 中的作用，使得 $s_i \mapsto \dot{s}_i T$ 定义了一个同构 $W \cong N_G(T)/T$。

