See 姜伯驹同调伦

![[1-simplex-2025070814.png]]

![[2-simplex-2025070814.png]]
![[3-simplex-2025070814.png]]

> [!proposition]
> ![[4-simplex-2025070814.png]]

`\begin{proof}`
对于标准单形，$(e_0\dots e_{q})$ 是 $\Delta_{q}$ 的顶点，则
$$
\begin{aligned}
\partial_{q-1} \circ \partial_q\left(e_0 \cdots e_q\right) & =\sum_{i=0}^q(-1)^i \partial_{q-1}\left(e_0 \cdots \hat{e}_i \cdots e_q\right) \\
 & =\sum_{i=0}^q(-1)^i\left\{\sum_{j<i}(-1)^j\left(e_0 \cdots \hat{e}_j \cdots \hat{e}_i \cdots e_q\right)+\sum_{j>i}(-1)^{j-1}\left(e_0 \cdots \hat{e}_i \cdots \hat{e}_j \cdots e_q\right)\right\} \\
 & =0
\end{aligned}
$$
对于奇异单形 $\sigma:\Delta _q\to X$，它的边界定义为
$$
\partial_{q}(\sigma)=\sum_{i=0}^{q} (-1)^{i}\sigma \circ d_{i}^{q}
$$
其中 $d_i^{q}:\Delta_{q-1}\to\Delta_{q}$ 是将标准 $q-1$ 单形嵌入到 $\Delta_{q}$ 的第 $i$ 个面上的连续映射，即 $(e_0\dots \widehat{e_i}\dots e_n)$. 进而
$$
\partial_{q-1}\circ \partial_{q}(\sigma)=\partial_{q-1}\left( \sum_{i=0}^{q} (-1)^{i}\sigma \circ d_i^{q} \right)\overset{ \partial_{q-1}\text{ is linear} }{ = }\sum_{i=0}^{q} (-1)^{i}\partial_{q-1}(\sigma \circ d_i^{q})
$$
边界算子和连续映射可交换 (why?) 于是
$$
\begin{aligned}
\partial_{q-1}\circ \partial_{q}(\sigma) & =\sum_{i=0}^{q}(-1)^{i}\sigma \circ \partial_{q-1}(d_i^{q})  \\
 & =\sum_{i=0}^{q} (-1)^{i}\sigma\left( \sum_{j<i}(-1)^j\left(e_0 \cdots \hat{e}_j \cdots \hat{e}_i \cdots e_q\right)+\sum_{j>i}(-1)^{j-1}\left(e_0 \cdots \hat{e}_i \cdots \hat{e}_j \cdots e_q\right) \right) \\
 & =\sigma \circ \underbrace{ \left[ \sum_{i=0}^{q} (-1)^{i}\left( \sum_{j<i}(-1)^j\left(e_0 \cdots \hat{e}_j \cdots \hat{e}_i \cdots e_q\right)+\sum_{j>i}(-1)^{j-1}\left(e_0 \cdots \hat{e}_i \cdots \hat{e}_j \cdots e_q\right) \right) \right] }_{ =0 } \\
 & =0
\end{aligned}
$$


`\end{proof}`
![[5-simplex-2025070814.png]]
![[6-simplex-2025070814.png]]
![[7-simplex-2025070814.png]]

> [!proposition] 
> $$H_{*}(pt)=\begin{cases}
\mathbb{Z}   & q=0 \\
0 & q>0
\end{cases}$$


`\begin{proof}`
对于 $q\geq0$，只存在**唯一**奇异单形 $\sigma_{q}:\Delta_{q}\to pt$, 由于 $S_{q}(pt)$ 是由所有奇异 $q$ 单形为基生成的自由 Abel 群，于是 $S_{q}(pt)= \mathbb{Z}$. 根据边缘定义，当 $q$ 为奇数或 $q=0$ 时，$\partial_{q}\sigma_{q}=\sum_{i=0}^{q}(-1)^{q}\sigma_{q}\circ d_i^{q}$，其中 $\sigma_{q}\circ d_i^{q}:\Delta_{q-1}\to\Delta_{q}\to pt$ 唯一确定，故与 $i$ 无关，从而 $\partial_{q}\sigma_{q}=0$. 当 $q$ 为偶数，$\partial_{q}\sigma_{q}=\sigma_{q-1}$. 基于上述边界同态的计算，链复形变为：

$$
\ldots \xrightarrow{\delta_5=0} \mathbb{Z} \xrightarrow{\delta_4=i d} \mathbb{Z} \xrightarrow{\delta_3=0} \mathbb{Z} \xrightarrow{\delta_2=i d} \mathbb{Z} \xrightarrow{\delta_1=0} \mathbb{Z} \xrightarrow{\delta_0=0}\{0\}
$$


其中 $i d$ 表示恒等映射（即将 $\mathbb{Z}$ 上的生成元映射到 $\mathbb{Z}$ 上的生成元）。计算 $H_{q}(pt)=\ker(\partial_{q})/\text{Im }(\partial_{q+1})$ 即可.

`\end{proof}`

![[8-simplex-2025070814.png]]

1 维奇异单形 $\sigma:\Delta_1\to X$，边界为 $\partial_1(\sigma)=\sum(-1)^{i}\sigma \circ d_i^{1}=\sigma (e_1)-\sigma ( e_0)$, 它的 Kronecker 指数为 $\epsilon(\partial_1)(\sigma)=1-1=0$，因此 0 维边界链








