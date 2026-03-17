> [!thm]
> 对于任意一个 $n \times n$ 的矩阵 $A$，都存在一个置换矩阵 $P$、一个单位下三角矩阵 $L$（对角线元素全为1）和一个上三角矩阵 $U$，使得 $PA = LU$。

我们将对矩阵的阶数 $n$ 进行归纳。

#### 1. 基准情形 (Base Case): $n=1$

当 $n=1$ 时，$A$ 是一个标量 $A=[a_{11}]$。我们可以选择：
- $P = [1]$ (置换矩阵)
- $L = [1]$ (单位下三角矩阵)
- $U = [a_{11}]$ (上三角矩阵)

此时，$PA = [1][a_{11}] = [a_{11}]$，并且 $LU = [1][a_{11}] = [a_{11}]$。
所以 $PA=LU$ 成立。基准情形得证。

#### 2. 归纳假设 (Inductive Hypothesis)

假设对于任意 $(n-1) \times (n-1)$ 的矩阵，该定理都成立。也就是说，对于任意 $(n-1) \times (n-1)$ 矩阵 $A'$，都存在置换矩阵 $P'$、单位下三角矩阵 $L'$ 和上三角矩阵 $U'$ 使得 $P'A' = L'U'$。

#### 3. 归纳步骤 (Inductive Step)

现在我们来证明该定理对于 $n \times n$ 矩阵 $A$ 也成立。
我们可以将 $n \times n$ 矩阵 $A$ 写成分块矩阵的形式：
$$A = \begin{pmatrix} a_{11} & \mathbf{w}^T \\ \mathbf{v} & A' \end{pmatrix}$$
其中 $a_{11}$ 是一个标量，$\mathbf{w}^T$ 是一个 $1 \times (n-1)$ 的行向量，$\mathbf{v}$ 是一个 $(n-1) \times 1$ 的列向量，$A'$ 是一个 $(n-1) \times (n-1)$ 的子矩阵。

我们需要考虑两种情况：

**情况一：A 的第一列全为零**

如果 $A$ 的第一列所有元素都为 0，即 $a_{11}=0$ 且 $\mathbf{v} = \mathbf{0}$。
$$A = \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & A' \end{pmatrix}$$
根据归纳假设，存在 $P', L', U'$ 使得 $P'A' = L'U'$。
现在，我们构造 $P, L, U$ 如下：
$$P = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & P' \end{pmatrix}, \quad L = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & L' \end{pmatrix}, \quad U = \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & U' \end{pmatrix}$$
我们可以验证：
$$PA = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & P' \end{pmatrix} \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & A' \end{pmatrix} = \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & P'A' \end{pmatrix} = \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & L'U' \end{pmatrix}$$
$$LU = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & L' \end{pmatrix} \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & U' \end{pmatrix} = \begin{pmatrix} 0 & \mathbf{w}^T \\ \mathbf{0} & L'U' \end{pmatrix}$$
$P, L, U$ 均满足要求，所以此情况下定理成立。

**情况二：A 的第一列不全为零**

1.  **选取主元 (Pivoting):** 在 $A$ 的第一列中找到一个非零元素。为了数值稳定性，通常选择绝对值最大的元素，但对于证明，任何非零元即可。假设 $a_{k1} \neq 0$ 是第一列中的一个非零元。我们构造一个置换矩阵 $P_1$ 来交换第 1 行和第 $k$ 行。
    令 $A_1 = P_1 A$。那么 $A_1$ 的 $(1,1)$ 位置的元素非零。我们可以将 $A_1$ 写成：
    $$A_1 = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{v'} & A'_{22} \end{pmatrix}$$
    其中 $a'_{11} = a_{k1} \neq 0$。

2.  **消元 (Elimination):** 我们的目标是消除 $A_1$ 第一列中除了第一个元素外的所有其他元素。这可以通过左乘一个初等矩阵 $M_1$ 来实现。
    令 $\mathbf{m} = \frac{1}{a'_{11}} \mathbf{v'}$。构造一个单位下三角矩阵 $L_1$：
    $$L_1 = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{m} & I_{n-1} \end{pmatrix}$$
    其中 $I_{n-1}$ 是 $(n-1)$ 阶单位矩阵。它的逆是 $L_1^{-1} = \begin{pmatrix} 1 & \mathbf{0}^T \\ -\mathbf{m} & I_{n-1} \end{pmatrix}$。
    现在计算 $L_1^{-1} A_1$：
    $$L_1^{-1} A_1 = \begin{pmatrix} 1 & \mathbf{0}^T \\ -\mathbf{m} & I_{n-1} \end{pmatrix} \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{v'} & A'_{22} \end{pmatrix} = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ -\mathbf{m}a'_{11} + \mathbf{v'} & -\mathbf{m}\mathbf{w'}^T + A'_{22} \end{pmatrix}$$
    根据 $\mathbf{m}$ 的定义，$-\mathbf{m}a'_{11} + \mathbf{v'} = -\mathbf{v'} + \mathbf{v'} = \mathbf{0}$。
    所以我们得到：
    $$L_1^{-1} P_1 A = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & A_{schur} \end{pmatrix}$$
    其中 $A_{schur} = A'_{22} - \mathbf{m}\mathbf{w'}^T$ 是一个 $(n-1) \times (n-1)$ 矩阵（称为舒尔补）。

3.  **应用归纳假设:**
    根据归纳假设，对于 $(n-1) \times (n-1)$ 矩阵 $A_{schur}$，存在 $P', L', U'$ 使得 $P'A_{schur} = L'U'$。
    我们将这个分解应用到我们的方程中。定义一个分块置换矩阵：
    $$P_2 = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & P' \end{pmatrix}$$
    将它左乘到方程 $L_1^{-1} P_1 A = \dots$ 的两边：
    $$P_2 (L_1^{-1} P_1 A) = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & P' \end{pmatrix} \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & A_{schur} \end{pmatrix} = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & P'A_{schur} \end{pmatrix} = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & L'U' \end{pmatrix}$$
    
4.  **组合结果:**
    方程的右侧可以写成一个单位下三角矩阵和一个上三角矩阵的乘积：
    $$\begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & L'U' \end{pmatrix} = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & L' \end{pmatrix} \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & U' \end{pmatrix}$$
    令 $U = \begin{pmatrix} a'_{11} & \mathbf{w'}^T \\ \mathbf{0} & U' \end{pmatrix}$，这显然是一个上三角矩阵。
    现在我们来处理方程的左侧 $P_2 L_1^{-1} P_1 A$。
    $$P_2 L_1^{-1} P_1 A = (\text{我们期望的 L}) U$$
    这里的 $P_2 L_1^{-1} P_1$ 看起来很复杂。关键一步是做一个聪明的变换：
    $$P_2 L_1^{-1} P_1 = P_2 L_1^{-1} (P_2^{-1} P_2) P_1 = (P_2 L_1^{-1} P_2^{-1}) (P_2 P_1)$$
    我们来计算 $(P_2 L_1^{-1} P_2^{-1})$ 这一项：
    $$P_2 L_1^{-1} P_2^{-1} = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & P' \end{pmatrix} \begin{pmatrix} 1 & \mathbf{0}^T \\ -\mathbf{m} & I \end{pmatrix} \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & (P')^{-1} \end{pmatrix} = \begin{pmatrix} 1 & \mathbf{0}^T \\ -P'\mathbf{m} & I \end{pmatrix}$$
    这个矩阵是一个单位下三角矩阵！令 $L_{new}^{-1} = P_2 L_1^{-1} P_2^{-1}$。
    我们的方程现在变成了：
    $$L_{new}^{-1} (P_2 P_1) A = L_{final} U$$
    其中 $L_{final} = \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & L' \end{pmatrix}$ 是一个单位下三角矩阵。

    整理一下，我们得到：
    $$(P_2 P_1) A = L_{new} L_{final} U$$
    -   令 $P = P_2 P_1$。两个置换矩阵的乘积仍然是一个置换矩阵。
    -   令 $L = L_{new} L_{final} = \begin{pmatrix} 1 & \mathbf{0}^T \\ P'\mathbf{m} & I \end{pmatrix} \begin{pmatrix} 1 & \mathbf{0}^T \\ \mathbf{0} & L' \end{pmatrix} = \begin{pmatrix} 1 & \mathbf{0}^T \\ P'\mathbf{m} & L' \end{pmatrix}$。
        由于 $L'$ 是单位下三角矩阵，所以 $L$ 也是一个单位下三角矩阵。

最终，我们找到了满足 $PA = LU$ 的置换矩阵 $P$、单位下三角矩阵 $L$ 和上三角矩阵 $U$。

归纳步骤完成。

### 结论

通过数学归纳法，我们证明了对于任意 $n \times n$ 矩阵 $A$，都存在一个置换矩阵 $P$、一个单位下三角矩阵 $L$ 和一个上三角矩阵 $U$，使得 $PA = LU$ 成立。