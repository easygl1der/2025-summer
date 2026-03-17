*We* need to find some suitable norm for the vector space $(\Delta _n,\oplus;\mathbb{R},\odot)$, since the inner product $\left< p,q \right>=\sum\text{clr}_i(p)\text{clr}_i(q)$ forms a Hilbert space (with $L^{2}$ norm), which is isometric isomorphism to its dual space, but $(\Delta _n,\oplus;\mathbb{R},\odot) \not\cong(\mathbb{R},+,\cdot)$. 

---

# Complete Analysis of Norms for Aitchison Geometry

## 1. Introduction and Basic Definitions

### 1.1 The Probability Simplex

The **probability simplex** $\Delta_n$ is the set of all probability distributions over $n+1$ outcomes:
$$\Delta_n = \left\{(p_0, p_1, \ldots, p_n) : p_i \geq 0 \text{ for all } i, \text{ and } \sum_{i=0}^n p_i = 1\right\}$$

For example, if $n=2$, then $\Delta_2$ consists of all probability distributions over 3 outcomes, like $(0.2, 0.3, 0.5)$ or $(1/3, 1/3, 1/3)$.

### 1.2 The Aitchison Geometry

In ordinary arithmetic, we add numbers and multiply by scalars. But probability distributions live on a constrained space (they must sum to 1), so we need special operations. The **Aitchison geometry** provides a way to treat the simplex as a vector space with operations that respect this constraint.

**Vector Addition** $\oplus$:
$$p \oplus q = \left[ \frac{p_i q_i}{\sum_{j=0}^n p_j q_j} \right]_{i=0}^n$$

**Intuition**: We multiply corresponding components and then renormalize to get a probability distribution.

**Example**: Let $p = (0.2, 0.3, 0.5)$ and $q = (0.1, 0.6, 0.3)$. Then:
- First multiply: $(0.2 \times 0.1, 0.3 \times 0.6, 0.5 \times 0.3) = (0.02, 0.18, 0.15)$
- Sum: $0.02 + 0.18 + 0.15 = 0.35$
- Normalize: $p \oplus q = (0.02/0.35, 0.18/0.35, 0.15/0.35) \approx (0.057, 0.514, 0.429)$

**Scalar Multiplication** $\odot$:
$$c \odot p = \left[ \frac{(p_i)^c}{\sum_{j=0}^n (p_j)^c} \right]_{i=0}^n$$

**Intuition**: We raise each component to the power $c$ and renormalize.

**Example**: Let $p = (0.2, 0.3, 0.5)$ and $c = 2$. Then:
- First power: $(0.2^2, 0.3^2, 0.5^2) = (0.04, 0.09, 0.25)$
- Sum: $0.04 + 0.09 + 0.25 = 0.38$
- Normalize: $2 \odot p = (0.04/0.38, 0.09/0.38, 0.25/0.38) \approx (0.105, 0.237, 0.658)$

**Zero Element**: $\mathbf{o} = \left(\frac{1}{n+1}, \ldots, \frac{1}{n+1}\right)$ (the uniform distribution)

### 1.3 The Centered Log-Ratio (clr) Transform

The **clr transform** is the key to understanding this geometry. It maps probability distributions to vectors in Euclidean space:

$$\text{clr}_i(p) = \log\frac{p_i}{g(p)} \quad \text{where } g(p) = \left(\prod_{j=0}^n p_j\right)^{1/(n+1)}$$

Here $g(p)$ is the **geometric mean** of the components of $p$.

**Example**: For $p = (0.2, 0.3, 0.5)$:
- Geometric mean: $g(p) = (0.2 \times 0.3 \times 0.5)^{1/3} = 0.03^{1/3} \approx 0.311$
- clr transform: $\text{clr}(p) = (\log(0.2/0.311), \log(0.3/0.311), \log(0.5/0.311)) \approx (-0.442, -0.036, 0.475)$

**Key Property**: The clr transform linearizes the Aitchison operations:
- $\text{clr}(p \oplus q) = \text{clr}(p) + \text{clr}(q)$ (vector addition becomes ordinary addition)
- $\text{clr}(c \odot p) = c \cdot \text{clr}(p)$ (scalar multiplication becomes ordinary multiplication)

**Important**: The clr vectors always sum to zero: $\sum_{i=0}^n \text{clr}_i(p) = 0$.

## 2. What is a Norm?

A **norm** on a vector space is a function $\|\cdot\|$ that measures the "size" or "length" of vectors. It must satisfy three properties:

1. **Positive definiteness**: $\|v\| \geq 0$ for all vectors $v$, and $\|v\| = 0$ if and only if $v$ is the zero vector
2. **Homogeneity**: $\|\lambda v\| = |\lambda| \|v\|$ for any scalar $\lambda$ and vector $v$
3. **Triangle inequality**: $\|u + v\| \leq \|u\| + \|v\|$ for any vectors $u, v$

## 3. Valid Norms on the Aitchison Space

### 3.1 The $L^p$ Norms (Complete Analysis)

#### Definition
For $1 \leq p < \infty$:
$$\|q\|_p = \left( \sum_{i=0}^n |\text{clr}_i(q)|^p \right)^{1/p}$$

For $p = \infty$:
$$\|q\|_\infty = \max_{i=0,\ldots,n} |\text{clr}_i(q)|$$

#### Complete Proof that $\|\cdot\|_p$ is a Norm

**Proof of Positive Definiteness**:
- Step 1: Since $|\text{clr}_i(q)|^p \geq 0$ for all $i$, we have $\|q\|_p \geq 0$.
- Step 2: If $\|q\|_p = 0$, then $\sum_{i=0}^n |\text{clr}_i(q)|^p = 0$.
- Step 3: Since each term is non-negative, this means $|\text{clr}_i(q)|^p = 0$ for all $i$.
- Step 4: Therefore $\text{clr}_i(q) = 0$ for all $i$.
- Step 5: This means $\log\frac{q_i}{g(q)} = 0$, so $q_i = g(q)$ for all $i$.
- Step 6: Since $\sum q_i = 1$ and all $q_i$ are equal, we must have $q_i = \frac{1}{n+1}$ for all $i$.
- Step 7: Therefore $q = \mathbf{o}$ (the zero element).
- Conversely, if $q = \mathbf{o}$, then $\text{clr}_i(\mathbf{o}) = \log\frac{1/(n+1)}{1/(n+1)} = 0$ for all $i$, so $\|\mathbf{o}\|_p = 0$.

**Proof of Homogeneity**:
- Step 1: We need to show $\|\lambda \odot q\|_p = |\lambda| \|q\|_p$.
- Step 2: First, let's find $\text{clr}_i(\lambda \odot q)$.
- Step 3: $(\lambda \odot q)_i = \frac{(q_i)^\lambda}{\sum_{j=0}^n (q_j)^\lambda}$
- Step 4: The geometric mean of $\lambda \odot q$ is:
  $$g(\lambda \odot q) = \left(\prod_{i=0}^n \frac{(q_i)^\lambda}{\sum_{j=0}^n (q_j)^\lambda}\right)^{1/(n+1)} = \frac{\left(\prod_{i=0}^n (q_i)^\lambda\right)^{1/(n+1)}}{\sum_{j=0}^n (q_j)^\lambda}$$
- Step 5: Therefore:
  $$\text{clr}_i(\lambda \odot q) = \log\frac{(\lambda \odot q)_i}{g(\lambda \odot q)} = \log\frac{(q_i)^\lambda}{\left(\prod_{j=0}^n (q_j)^\lambda\right)^{1/(n+1)}} = \lambda \log\frac{q_i}{g(q)} = \lambda \cdot \text{clr}_i(q)$$
- Step 6: Now:
  $$\|\lambda \odot q\|_p = \left(\sum_{i=0}^n |\lambda \cdot \text{clr}_i(q)|^p\right)^{1/p} = \left(|\lambda|^p \sum_{i=0}^n |\text{clr}_i(q)|^p\right)^{1/p} = |\lambda| \|q\|_p$$

**Proof of Triangle Inequality**:
- Step 1: We need to show $\|p \oplus q\|_p \leq \|p\|_p + \|q\|_p$.
- Step 2: Using the linearity of clr: $\text{clr}(p \oplus q) = \text{clr}(p) + \text{clr}(q)$.
- Step 3: Therefore:
  $$\|p \oplus q\|_p = \left(\sum_{i=0}^n |\text{clr}_i(p) + \text{clr}_i(q)|^p\right)^{1/p}$$
- Step 4: By the Minkowski inequality (which is the triangle inequality for $L^p$ spaces in $\mathbb{R}^{n+1}$):
  $$\left(\sum_{i=0}^n |a_i + b_i|^p\right)^{1/p} \leq \left(\sum_{i=0}^n |a_i|^p\right)^{1/p} + \left(\sum_{i=0}^n |b_i|^p\right)^{1/p}$$
- Step 5: Applying this with $a_i = \text{clr}_i(p)$ and $b_i = \text{clr}_i(q)$:
  $$\|p \oplus q\|_p \leq \|p\|_p + \|q\|_p$$

**Special Cases**:
- $p = 1$: The "taxicab" norm, $\|q\|_1 = \sum_{i=0}^n |\text{clr}_i(q)|$
- $p = 2$: The Euclidean norm, $\|q\|_2 = \sqrt{\sum_{i=0}^n [\text{clr}_i(q)]^2}$ (induces the Aitchison inner product)
- $p = \infty$: The maximum norm, $\|q\|_\infty = \max_i |\text{clr}_i(q)|$

### 3.2 The Dual Norm

For any norm $\|\cdot\|$ on a vector space $V$, the **dual norm** $\|\cdot\|_*$ on the dual space $V^*$ is defined by:
$$\|f\|_* = \sup_{\|v\| \leq 1} |\langle f, v \rangle|$$

where $\langle f, v \rangle$ is the pairing between $f \in V^*$ and $v \in V$.

**For $L^p$ norms**: The dual of $\|\cdot\|_p$ is $\|\cdot\|_q$ where $\frac{1}{p} + \frac{1}{q} = 1$.

**Example**: 
- The dual of $\|\cdot\|_2$ is $\|\cdot\|_2$ itself (self-dual)
- The dual of $\|\cdot\|_1$ is $\|\cdot\|_\infty$
- The dual of $\|\cdot\|_\infty$ is $\|\cdot\|_1$

### 3.3 Weighted $L^p$ Norms

#### Definition
For fixed weights $w_i > 0$:
$$\|q\|_{p,w} = \left( \sum_{i=0}^n w_i |\text{clr}_i(q)|^p \right)^{1/p}$$

**Intuition**: Different components can have different importance. For instance, if we're more interested in changes to certain probabilities, we can weight them more heavily.

The proof that this is a norm follows the same steps as for the unweighted case, with the weights carried through.

**Dual norm**: $\|f\|_{p,w,*} = \left( \sum_{i=0}^n w_i^{-q/p} |f_i|^q \right)^{1/q}$ where $\frac{1}{p} + \frac{1}{q} = 1$.

### 3.3 Weighted $L^p$ Norms (Complete Analysis)

#### Definition and Motivation
For fixed weights $w = (w_0, w_1, \ldots, w_n)$ with $w_i > 0$:
$$\|q\|_{p,w} = \left( \sum_{i=0}^n w_i |\text{clr}_i(q)|^p \right)^{1/p}$$

**Intuition**: In many applications, different probability components have different significance:
- In medical diagnosis, certain conditions might be more critical
- In financial portfolios, some assets might be more important
- In ecological systems, certain species might be keystone species

The weights $w_i$ allow us to emphasize these differences.

#### Complete Proof that $\|\cdot\|_{p,w}$ is a Norm

**Proof of Positive Definiteness**:
- Step 1: Since $w_i > 0$ and $|\text{clr}_i(q)|^p \geq 0$, we have $w_i|\text{clr}_i(q)|^p \geq 0$ for all $i$.
- Step 2: Therefore $\|q\|_{p,w} \geq 0$.
- Step 3: If $\|q\|_{p,w} = 0$, then $\sum_{i=0}^n w_i|\text{clr}_i(q)|^p = 0$.
- Step 4: Since each term $w_i|\text{clr}_i(q)|^p \geq 0$, we must have $w_i|\text{clr}_i(q)|^p = 0$ for all $i$.
- Step 5: Since $w_i > 0$, this implies $|\text{clr}_i(q)|^p = 0$, hence $\text{clr}_i(q) = 0$ for all $i$.
- Step 6: As shown before, this means $q = \mathbf{o}$.
- Conversely, if $q = \mathbf{o}$, then $\text{clr}_i(\mathbf{o}) = 0$ for all $i$, so $\|\mathbf{o}\|_{p,w} = 0$.

**Proof of Homogeneity**:
- Step 1: We know that $\text{clr}_i(\lambda \odot q) = \lambda \cdot \text{clr}_i(q)$.
- Step 2: Therefore:
  $$\|\lambda \odot q\|_{p,w} = \left(\sum_{i=0}^n w_i |\lambda \cdot \text{clr}_i(q)|^p\right)^{1/p}$$
- Step 3: Factor out $|\lambda|^p$:
  $$= \left(|\lambda|^p \sum_{i=0}^n w_i |\text{clr}_i(q)|^p\right)^{1/p}$$
- Step 4: Take the $p$-th root:
  $$= |\lambda| \left(\sum_{i=0}^n w_i |\text{clr}_i(q)|^p\right)^{1/p} = |\lambda| \|q\|_{p,w}$$

**Proof of Triangle Inequality**:
- Step 1: We have $\text{clr}(p \oplus q) = \text{clr}(p) + \text{clr}(q)$.
- Step 2: By the weighted Minkowski inequality (generalization of the standard Minkowski inequality):
  $$\left(\sum_{i=0}^n w_i |a_i + b_i|^p\right)^{1/p} \leq \left(\sum_{i=0}^n w_i |a_i|^p\right)^{1/p} + \left(\sum_{i=0}^n w_i |b_i|^p\right)^{1/p}$$
- Step 3: Apply this with $a_i = \text{clr}_i(p)$ and $b_i = \text{clr}_i(q)$:
  $$\|p \oplus q\|_{p,w} \leq \|p\|_{p,w} + \|q\|_{p,w}$$

#### Derivation of the Dual Norm

**Theorem**: The dual norm of $\|\cdot\|_{p,w}$ is $\|f\|_{p,w,*} = \left( \sum_{i=0}^n w_i^{-q/p} |f_i|^q \right)^{1/q}$ where $\frac{1}{p} + \frac{1}{q} = 1$.

**Proof**:
- Step 1: By definition, $\|f\|_{p,w,*} = \sup_{\|x\|_{p,w} \leq 1} |\langle f, x \rangle|$.
- Step 2: Using Hölder's inequality with weights, for any $x$ with $\|x\|_{p,w} \leq 1$:
  $$|\langle f, x \rangle| = \left|\sum_{i=0}^n f_i x_i\right| \leq \sum_{i=0}^n |f_i| |x_i|$$
- Step 3: Rewrite using the weights:
  $$= \sum_{i=0}^n (w_i^{1/p} |x_i|) \cdot (w_i^{-1/p} |f_i|)$$
- Step 4: Apply Hölder's inequality:
  $$\leq \left(\sum_{i=0}^n w_i |x_i|^p\right)^{1/p} \left(\sum_{i=0}^n w_i^{-q/p} |f_i|^q\right)^{1/q}$$
- Step 5: Since $\|x\|_{p,w} \leq 1$, the first factor is at most 1:
  $$|\langle f, x \rangle| \leq \left(\sum_{i=0}^n w_i^{-q/p} |f_i|^q\right)^{1/q}$$
- Step 6: This bound is achieved when $x_i = \text{sign}(f_i) \cdot w_i^{-1/p} |f_i|^{q-1} / \|f\|_{p,w,*}^{q-1}$.
- Step 7: Therefore $\|f\|_{p,w,*} = \left(\sum_{i=0}^n w_i^{-q/p} |f_i|^q\right)^{1/q}$.

**Key Insight**: The weights appear with negative exponents in the dual norm, reflecting an inverse relationship between primal and dual weights.

### 3.4 Orlicz Norms (Advanced Topic)

#### What is a Young Function?

A **Young function** $\Phi: \mathbb{R} \to [0, \infty)$ is a function that:
1. Is convex (curves upward)
2. Is even: $\Phi(-x) = \Phi(x)$
3. Satisfies $\Phi(0) = 0$
4. Goes to infinity: $\Phi(x) \to \infty$ as $|x| \to \infty$

**Examples**:
- $\Phi(x) = |x|^p$ for $p \geq 1$ (gives $L^p$ norms)
- $\Phi(x) = e^{|x|} - 1$ (gives exponential growth)
- $\Phi(x) = |x| \log(1 + |x|)$ (between linear and quadratic)

#### Definition of Orlicz Norm

$$\|q\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k}\right) \leq 1 \right\}$$

**Intuition**: We scale down the clr vector by a factor $k$ until the sum of $\Phi$ applied to each scaled component is at most 1. The smallest such $k$ is the norm.

### 3.4 Orlicz Norms (Complete Analysis)

#### What is a Young Function?

A **Young function** $\Phi: \mathbb{R} \to [0, \infty)$ is a function satisfying:
1. **Convexity**: $\Phi(\alpha x + (1-\alpha)y) \leq \alpha\Phi(x) + (1-\alpha)\Phi(y)$ for $\alpha \in [0,1]$
2. **Even**: $\Phi(-x) = \Phi(x)$
3. **Zero at origin**: $\Phi(0) = 0$
4. **Growth condition**: $\lim_{|x| \to \infty} \Phi(x) = \infty$
5. **Superlinearity**: $\lim_{|x| \to \infty} \frac{\Phi(x)}{|x|} = \infty$

**Examples with Properties**:
- $\Phi(x) = |x|^p$ for $p > 1$: Grows polynomially
- $\Phi(x) = e^{|x|} - 1$: Grows exponentially fast
- $\Phi(x) = |x| \log(1 + |x|)$: Between linear and quadratic growth
- $\Phi(x) = \begin{cases} 0 & \text{if } |x| \leq 1 \\ \infty & \text{if } |x| > 1 \end{cases}$: Gives the $\ell^\infty$ norm

#### Definition and Alternative Characterizations

The **Orlicz norm** can be defined in three equivalent ways:

1. **Gauge form** (what we use):
   $$\|q\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k}\right) \leq 1 \right\}$$

2. **Amemiya form**:
   $$\|q\|_\Phi = \inf_{k > 0} \left\{ k + \frac{1}{k} \sum_{i=0}^n \Phi(|\text{clr}_i(q)|) \right\}$$

3. **Luxemburg form**:
   $$\|q\|_\Phi = \inf \left\{ \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{\lambda}\right) \leq 1 \right\}$$

#### Complete Proof that $\|\cdot\|_\Phi$ is a Norm

**Proof of Positive Definiteness**:
- Step 1: Clearly $\|q\|_\Phi \geq 0$ since it's an infimum over positive numbers.
- Step 2: If $q = \mathbf{o}$, then $\text{clr}_i(q) = 0$ for all $i$.
- Step 3: Thus $\Phi(0/k) = \Phi(0) = 0$ for any $k > 0$.
- Step 4: So $\sum \Phi(|\text{clr}_i(\mathbf{o})|/k) = 0 \leq 1$ for any $k > 0$.
- Step 5: Therefore $\|\mathbf{o}\|_\Phi = \inf\{k > 0\} = 0$.
- Step 6: Conversely, suppose $\|q\|_\Phi = 0$.
- Step 7: This means for any $\epsilon > 0$, there exists $k < \epsilon$ with $\sum \Phi(|\text{clr}_i(q)|/k) \leq 1$.
- Step 8: As $k \to 0$, if any $\text{clr}_i(q) \neq 0$, then $\Phi(|\text{clr}_i(q)|/k) \to \infty$ by the growth condition.
- Step 9: This would make the sum exceed 1, a contradiction.
- Step 10: Therefore all $\text{clr}_i(q) = 0$, so $q = \mathbf{o}$.

**Proof of Homogeneity**:
- Step 1: We need to show $\|\lambda \odot q\|_\Phi = |\lambda| \|q\|_\Phi$.
- Step 2: Since $\text{clr}_i(\lambda \odot q) = \lambda \cdot \text{clr}_i(q)$:
  $$\|\lambda \odot q\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\lambda \cdot \text{clr}_i(q)|}{k}\right) \leq 1 \right\}$$
- Step 3: Substitute $k = |\lambda| k'$:
  $$= \inf \left\{ |\lambda|k' > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k'}\right) \leq 1 \right\}$$
- Step 4: Factor out $|\lambda|$:
  $$= |\lambda| \inf \left\{ k' > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k'}\right) \leq 1 \right\} = |\lambda| \|q\|_\Phi$$

**Proof of Triangle Inequality**:
- Step 1: We need to show $\|p \oplus q\|_\Phi \leq \|p\|_\Phi + \|q\|_\Phi$.
- Step 2: Let $k_1 = \|p\|_\Phi + \epsilon$ and $k_2 = \|q\|_\Phi + \epsilon$ for small $\epsilon > 0$.
- Step 3: By definition, $\sum \Phi(|\text{clr}_i(p)|/k_1) \leq 1$ and $\sum \Phi(|\text{clr}_i(q)|/k_2) \leq 1$.
- Step 4: For $\theta = k_1/(k_1 + k_2)$, by convexity of $\Phi$:
  $$\Phi\left(\frac{|\text{clr}_i(p) + \text{clr}_i(q)|}{k_1 + k_2}\right) \leq \theta \Phi\left(\frac{|\text{clr}_i(p)|}{k_1}\right) + (1-\theta) \Phi\left(\frac{|\text{clr}_i(q)|}{k_2}\right)$$
- Step 5: Sum over $i$:
  $$\sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(p \oplus q)|}{k_1 + k_2}\right) \leq \theta \cdot 1 + (1-\theta) \cdot 1 = 1$$
- Step 6: Therefore $\|p \oplus q\|_\Phi \leq k_1 + k_2 = \|p\|_\Phi + \|q\|_\Phi + 2\epsilon$.
- Step 7: Since this holds for any $\epsilon > 0$, we get $\|p \oplus q\|_\Phi \leq \|p\|_\Phi + \|q\|_\Phi$.

#### The Conjugate Young Function and Dual Norm

**Definition**: For a Young function $\Phi$, its **conjugate** (or complementary) Young function is:
$$\Psi(y) = \sup_{x \geq 0} \{xy - \Phi(x)\}$$

**Examples of Conjugate Pairs**:
1. If $\Phi(x) = |x|^p/p$ with $p > 1$, then $\Psi(y) = |y|^q/q$ where $1/p + 1/q = 1$
2. If $\Phi(x) = e^{|x|} - 1$, then $\Psi(y) = |y|\log|y| - |y| + 1$ for $|y| > 1$
3. If $\Phi(x) = |x|\log(1 + |x|)$, then $\Psi(y) \approx e^{|y|} - 1$

**Theorem**: The dual norm of $\|\cdot\|_\Phi$ is $\|\cdot\|_\Psi$.

**Proof Sketch**:
- Step 1: By the Young inequality: $xy \leq \Phi(x) + \Psi(y)$ for all $x, y$.
- Step 2: For any $f$ and $x$ with $\sum \Phi(|x_i|) \leq 1$:
  $$|\langle f, x \rangle| \leq \sum_{i=0}^n |f_i||x_i| \leq \sum_{i=0}^n [\Phi(|x_i|) + \Psi(|f_i|)] \leq 1 + \sum_{i=0}^n \Psi(|f_i|)$$
- Step 3: This gives $\|f\|_* \leq \|f\|_\Psi$.
- Step 4: The reverse inequality follows from the fact that equality in Young's inequality can be achieved.

**Geometric Interpretation**: 
- The primal Orlicz norm measures size according to the growth rate of $\Phi$
- The dual norm measures size according to the complementary growth rate $\Psi$
- Fast growth in the primal (e.g., exponential) corresponds to slow growth in the dual (e.g., logarithmic)

## 4. Connection to Information Geometry

### 4.1 What are Exponential and Mixture Families?

#### Exponential Families (e-families)

An **exponential family** is a family of probability distributions whose log-probabilities are linear in some parameters.

**Example**: Consider categorical distributions on $\{0, 1, \ldots, n\}$. We can write:
$$\log p_i = \theta_i - \psi(\theta)$$
where $\theta = (\theta_0, \ldots, \theta_n)$ are the **natural parameters** and $\psi(\theta)$ is a normalization factor ensuring $\sum p_i = 1$.

**Key insight**: The clr transform gives us exactly these natural parameters! 
$$\text{clr}_i(p) = \log p_i - \frac{1}{n+1}\sum_{j=0}^n \log p_j \approx \theta_i - \text{constant}$$

#### Mixture Families (m-families)

A **mixture family** consists of distributions formed by taking weighted averages (convex combinations) of other distributions:
$$p = \sum_{j} w_j q^{(j)} \quad \text{where } w_j \geq 0, \sum w_j = 1$$

**Example**: If we have three "pure" strategies with distributions $q^{(1)}, q^{(2)}, q^{(3)}$, then any mixture like $0.5 q^{(1)} + 0.3 q^{(2)} + 0.2 q^{(3)}$ is in the mixture family.

### 4.2 The Duality

In information geometry, these two families are **dual** to each other:
- **e-flat coordinates**: The natural parameters $\theta$ (what clr gives us)
- **m-flat coordinates**: The expectation parameters $\eta$ (mixture weights)

The **Fisher information metric** provides the Riemannian structure that makes these two coordinate systems dual.

### 4.3 The Deep Connection: How Norm Duality Reflects e/m Duality

#### 4.3.1 The Fundamental Theorem

**Theorem**: The duality between norms $\|\cdot\|_p$ and $\|\cdot\|_q$ (where $\frac{1}{p} + \frac{1}{q} = 1$) on the clr-transformed space is geometrically equivalent to the duality between e-flat and m-flat coordinate systems in information geometry.

**Proof Strategy**:
1. Show that the clr transform maps the simplex to the e-flat coordinate system
2. Demonstrate that the dual space corresponds to the m-flat coordinate system
3. Prove that the Legendre transform relating e/m coordinates corresponds to the norm duality

#### 4.3.2 The clr Transform as e-flat Coordinates

**Detailed Construction**:

Consider the exponential family of categorical distributions:
$$p_i(\theta) = \frac{\exp(\theta_i)}{\sum_{j=0}^n \exp(\theta_j)}$$

The **log-partition function** is:
$$\psi(\theta) = \log\left(\sum_{j=0}^n \exp(\theta_j)\right)$$

Taking the logarithm:
$$\log p_i(\theta) = \theta_i - \psi(\theta)$$

**Connection to clr**:
The clr transform gives us:
$$\text{clr}_i(p) = \log p_i - \frac{1}{n+1}\sum_{j=0}^n \log p_j$$

This is precisely the natural parameter $\theta_i$ up to a constant shift! More precisely:
$$\text{clr}_i(p) = \theta_i - \frac{1}{n+1}\sum_{j=0}^n \theta_j$$

**Key Insight**: The clr space is exactly the e-flat coordinate system, and our norms $\|\cdot\|_p$ on clr space are measuring distances in the natural parameter space.

#### 4.3.3 The Dual Space as m-flat Coordinates

**The Expectation Parameters**:
For the exponential family $p_i(\theta) = \frac{\exp(\theta_i)}{\sum_j \exp(\theta_j)}$, the **expectation parameters** are:
$$\eta_i = \mathbb{E}[T_i] = \frac{\partial \psi(\theta)}{\partial \theta_i} = \frac{\exp(\theta_i)}{\sum_j \exp(\theta_j)} = p_i$$

**Crucial Observation**: The expectation parameters $\eta$ are exactly the probability values $p$ themselves!

**The Dual Pairing**:
The duality between e-flat and m-flat coordinates is expressed through the **dual pairing**:
$$\langle \theta, \eta \rangle = \sum_{i=0}^n \theta_i \eta_i = \sum_{i=0}^n \theta_i p_i$$

In clr coordinates, this becomes:
$$\langle \text{clr}(p), p \rangle = \sum_{i=0}^n \text{clr}_i(p) \cdot p_i$$

#### 4.3.4 The Fisher Information Metric and $L^2$ Norm

**The Fisher Information Matrix**:
For the categorical exponential family, the Fisher information matrix is:
$$G_{ij}(\theta) = \frac{\partial^2 \psi(\theta)}{\partial \theta_i \partial \theta_j} = \delta_{ij} p_i - p_i p_j$$

where $\delta_{ij}$ is the Kronecker delta.

**In clr coordinates**, this becomes:
$$G_{ij}^{\text{clr}} = \delta_{ij} p_i + \frac{1}{n+1} \sum_{k=0}^n p_k$$

**The Induced Metric**:
The Fisher information metric in clr coordinates is:
$$\langle u, v \rangle_{\text{Fisher}} = \sum_{i,j=0}^n u_i G_{ij}^{\text{clr}} v_j$$

**Remarkable Fact**: When we restrict to the subspace where $\sum u_i = 0$ (which is exactly the clr constraint), this reduces to:
$$\langle u, v \rangle_{\text{Fisher}} = \sum_{i=0}^n u_i v_i$$

This is precisely the standard Euclidean inner product, which induces the $L^2$ norm!

**Theorem**: The Aitchison $L^2$ norm $\|q\|_2 = \sqrt{\sum_{i=0}^n [\text{clr}_i(q)]^2}$ is the natural Riemannian distance induced by the Fisher information metric on the probability simplex.

#### 4.3.5 Norm Duality and Coordinate System Duality

**The Legendre Transform**:
The relationship between e-flat and m-flat coordinates is given by the **Legendre transform**:
$$\psi^*(\eta) = \sup_\theta \{\langle \theta, \eta \rangle - \psi(\theta)\}$$

This is the **convex conjugate** of the log-partition function.

**Connection to Norm Duality**:
The duality between $\|\cdot\|_p$ and $\|\cdot\|_q$ is also expressed through a supremum:
$$\|f\|_q = \sup_{\|x\|_p \leq 1} |\langle f, x \rangle|$$

**Theorem**: The norm duality $\|\cdot\|_p \leftrightarrow \|\cdot\|_q$ is the functional analytic manifestation of the Legendre transform duality between e-flat and m-flat coordinates.

**Proof Sketch**:
1. The constraint $\|x\|_p \leq 1$ in clr space corresponds to a constraint on the natural parameters $\theta$
2. The supremum $\sup_{\|x\|_p \leq 1} |\langle f, x \rangle|$ corresponds to the Legendre transform $\sup_\theta \{\langle \theta, \eta \rangle - \psi(\theta)\}$
3. The dual norm $\|f\|_q$ measures distance in the expectation parameter space (m-flat coordinates)

#### 4.3.6 Specific Examples of the Duality

**Example 1: $L^1$ and $L^\infty$ Duality**

- **$L^1$ norm on clr space**: $\|q\|_1 = \sum_{i=0}^n |\text{clr}_i(q)|$
  - **Geometric meaning**: Measures "taxicab distance" in natural parameter space
  - **Information theoretic meaning**: Related to the total variation distance
  
- **$L^\infty$ norm on clr space**: $\|q\|_\infty = \max_i |\text{clr}_i(q)|$
  - **Geometric meaning**: Measures "maximum deviation" in natural parameter space
  - **Information theoretic meaning**: Related to the maximum likelihood principle

**The Duality**: 
$$\|f\|_\infty = \sup_{\|x\|_1 \leq 1} |\langle f, x \rangle|$$

This reflects the fact that extreme points of the $L^1$ ball correspond to coordinate directions, which are exactly the pure strategies in the mixture family.

**Example 2: Weighted Norms and Importance Sampling**

- **Weighted $L^p$ norm**: $\|q\|_{p,w} = \left( \sum_{i=0}^n w_i |\text{clr}_i(q)|^p \right)^{1/p}$
  - **Geometric meaning**: Different importance weights $w_i$ for different outcomes
  - **Information theoretic meaning**: Corresponds to importance sampling with weights $w_i$

- **Dual weighted norm**: $\|f\|_{q,w^{-1}} = \left( \sum_{i=0}^n w_i^{-q/p} |f_i|^q \right)^{1/q}$
  - **Geometric meaning**: Inverse weighting in the expectation parameter space
  - **Information theoretic meaning**: Reflects the bias-variance tradeoff in importance sampling

#### 4.3.7 Orlicz Norms and Divergences

**The Connection to f-Divergences**:
Orlicz norms with Young function $\Phi$ are intimately connected to **f-divergences** in information theory.

**Definition**: The f-divergence between distributions $p$ and $q$ is:
$$D_f(p\|q) = \sum_{i=0}^n q_i f\left(\frac{p_i}{q_i}\right)$$

**Theorem**: The Orlicz norm $\|p\|_\Phi$ is related to the f-divergence $D_\Phi(p\|\mathbf{o})$ where $\mathbf{o}$ is the uniform distribution.

**Proof**:
$$\|p\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(p)|}{k}\right) \leq 1 \right\}$$

Setting $f(x) = \Phi(\log x)$ and using the fact that $\text{clr}_i(p) = \log p_i - \log g(p)$:
$$\|p\|_\Phi \approx \sqrt{D_f(p\|\mathbf{o})}$$

**Examples**:
1. **$\Phi(x) = |x|^2/2$**: Gives the $L^2$ norm, corresponds to the $\chi^2$ divergence
2. **$\Phi(x) = e^{|x|} - 1$**: Gives exponential Orlicz norm, corresponds to the exponential divergence
3. **$\Phi(x) = |x|\log(1+|x|)$**: Gives logarithmic Orlicz norm, related to the Hellinger distance

**The Duality**: The conjugate Young function $\Psi$ corresponds to the conjugate f-divergence, reflecting the duality between primal and dual divergences in information geometry.

### 4.4 Summary of the Deep Connection

The connection between suitable norms and e/m duality can be summarized as follows:

1. **Structural Correspondence**:
   - clr space ↔ e-flat coordinates (natural parameters)
   - Dual of clr space ↔ m-flat coordinates (expectation parameters)
   - Norm duality ↔ Legendre transform duality

2. **Metric Correspondence**:
   - $L^2$ norm ↔ Fisher information metric
   - $L^p$ norms ↔ $L^p$ Banach space structure on parameter spaces
   - Orlicz norms ↔ f-divergences

3. **Functional Correspondence**:
   - $\|\cdot\|_p$ measures distance in natural parameter space
   - $\|\cdot\|_q$ (dual norm) measures distance in expectation parameter space
   - Weighted norms ↔ Importance sampling and bias corrections

4. **Geometric Correspondence**:
   - Convex hull in clr space ↔ m-flat submanifolds
   - Affine subspaces in clr space ↔ e-flat submanifolds
   - Dual norm balls ↔ Dual coordinate neighborhoods

This deep connection explains why the norms we identified are not just mathematically valid, but are the **natural** choices from the perspective of information geometry. They reflect the fundamental duality structure of statistical manifolds and provide the appropriate geometric framework for analyzing probability distributions.

## 5. Why Other "Natural" Candidates Fail

Several seemingly natural choices fail to be norms:

### 5.1 Fisher Information Weighted Norm
$$\|q\|_F = \sqrt{\sum_{i=0}^n \frac{[\text{clr}_i(q)]^2}{q_i}} \quad \text{(FAILS!)}$$

**Why it fails**: Under $\lambda \odot q$, the denominator $q_i$ transforms to $\frac{(q_i)^\lambda}{\sum (q_j)^\lambda}$, which doesn't scale properly with $\lambda$.

### 5.2 Bregman-Exponential Norm
$$\|q\|_{Breg} = \sqrt{\sum_{i=0}^n [\text{clr}_i(q)]^2 \cdot \exp(\text{clr}_i(q))} \quad \text{(FAILS!)}$$

**Why it fails**: The exponential term $\exp(\lambda \cdot \text{clr}_i(q)) \neq \lambda \cdot \exp(\text{clr}_i(q))$, breaking homogeneity.

### 5.3 KL-Divergence Based Norm
$$\|q\|_{KL} = \sqrt{D_{KL}(q\|\mathbf{o}) + D_{KL}(\mathbf{o}\|q)} \quad \text{(FAILS!)}$$

**Why it fails**: KL divergence doesn't scale linearly with the Aitchison scalar multiplication.

**Key Lesson**: Valid norms must work with the linear structure after clr transformation. Quantities that depend non-linearly on the original probability values typically fail.

## 6. The Most Suitable Norms: Weighted $L^p$ and Orlicz Norms

### 6.1 Why the Standard $L^2$ Norm is Insufficient

While the inner product $\langle p,q \rangle = \sum \text{clr}_i(p)\text{clr}_i(q)$ forms a Hilbert space, the standard $L^2$ norm has fundamental limitations in the Aitchison geometry:

1. **Constraint Violation**: The clr constraint $\sum_{i=0}^n \text{clr}_i(p) = 0$ means we're working in a proper subspace of $\mathbb{R}^{n+1}$, not the full space
2. **Isomorphism Problem**: $(\Delta_n,\oplus;\mathbb{R},\odot) \not\cong (\mathbb{R},+,\cdot)$ due to the geometric constraints
3. **Uniform Weighting Issue**: The standard $L^2$ norm treats all probability components equally, ignoring their relative importance and natural variability

### 6.2 Weighted $L^p$ Norms: The Natural Generalization

#### 6.2.1 Why Weighted $L^p$ Norms are More Suitable

**Definition**: 
$$\|q\|_{p,w} = \left( \sum_{i=0}^n w_i |\text{clr}_i(q)|^p \right)^{1/p}$$

**Key Advantages**:

1. **Adaptive Scaling**: The weights $w_i$ can account for the natural variability of different probability components
2. **Information-Theoretic Motivation**: Weights can reflect the Fisher information or other importance measures
3. **Flexibility**: Different choices of $p$ and weights $w$ capture different aspects of the geometry

#### 6.2.2 Detailed Interpretations of Weighted $L^p$ Norms

**Case 1: $p = 1$ (Weighted $L^1$ Norm)**
$$\|q\|_{1,w} = \sum_{i=0}^n w_i |\text{clr}_i(q)|$$

**Geometric Interpretation**: 
- Measures weighted "taxicab distance" in the natural parameter space
- The unit ball is a weighted cross-polytope (hyperoctahedron)
- Promotes sparsity in the clr representation

**Information-Theoretic Interpretation**:
- Related to weighted total variation distance
- Optimal for robust estimation when some components are more reliable
- Connection to $L^1$ regularization in high-dimensional statistics

**Practical Applications**:
- **Ecological data**: Weight rare species more heavily to prevent extinction bias
- **Financial portfolios**: Weight volatile assets more to account for risk
- **Medical diagnosis**: Weight critical symptoms more heavily

**Example**: For ecological data where species $i$ has baseline abundance $\pi_i$, choose weights $w_i = 1/\pi_i$ to give equal importance to relative changes.

**Case 2: $p = \infty$ (Weighted $L^\infty$ Norm)**
$$\|q\|_{\infty,w} = \max_{i=0,\ldots,n} w_i |\text{clr}_i(q)|$$

**Geometric Interpretation**:
- Measures the maximum weighted deviation in natural parameter space
- The unit ball is a weighted hypercube
- Ensures all weighted components stay within bounds

**Information-Theoretic Interpretation**:
- Related to the maximum likelihood principle with weights
- Optimal for minimax estimation
- Connection to robust statistics and outlier detection

**Practical Applications**:
- **Quality control**: Ensure no component exceeds its weighted tolerance
- **Risk management**: Control maximum weighted exposure
- **Fairness constraints**: Ensure equitable treatment across groups

**Case 3: $1 < p < \infty$ (Interpolating Cases)**

**Geometric Interpretation**:
- Interpolates between $L^1$ sparsity and $L^\infty$ uniformity
- The unit ball has intermediate geometry
- Provides balance between robustness and efficiency

**Information-Theoretic Interpretation**:
- Optimal for different noise models and loss functions
- $p = 2$: Gaussian noise (but with proper weighting)
- $p$ close to 1: Heavy-tailed noise, robust estimation
- $p$ close to $\infty$: Uniform noise, minimax estimation

#### 6.2.3 Choosing Optimal Weights

**Fisher Information Weighting**:
For categorical distributions, the Fisher information gives natural weights:
$$w_i = \frac{1}{p_i} \quad \text{(inverse probability weighting)}$$

This choice makes the weighted norm scale-invariant with respect to the natural variability of each component.

**Minimum Variance Weighting**:
If we have estimates $\hat{p}_i$ with variances $\sigma_i^2$, choose:
$$w_i = \frac{1}{\sigma_i^2} \quad \text{(inverse variance weighting)}$$

**Importance Sampling Weighting**:
For importance sampling with proposal distribution $q$, choose:
$$w_i = \frac{p_i}{q_i} \quad \text{(likelihood ratio weighting)}$$

### 6.3 Orlicz Norms: The Most General Suitable Framework

#### 6.3.1 Why Orlicz Norms are Superior

**Definition**: 
$$\|q\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k}\right) \leq 1 \right\}$$

**Key Advantages**:

1. **Ultimate Flexibility**: Can capture any growth behavior through the Young function $\Phi$
2. **Robust to Outliers**: Non-polynomial growth functions provide natural robustness
3. **Information-Theoretic Optimality**: Direct connection to f-divergences and optimal estimation

#### 6.3.2 Detailed Interpretations of Specific Orlicz Norms

**Case 1: Exponential Orlicz Norm**
$$\Phi(x) = e^{|x|} - 1$$

**Geometric Interpretation**:
- Extremely sensitive to large deviations
- Unit ball has exponentially decaying boundary
- Promotes extreme concentration around the origin

**Information-Theoretic Interpretation**:
- Connected to exponential families and maximum entropy
- Optimal for sub-Gaussian distributions
- Related to concentration inequalities and large deviations

**Practical Applications**:
- **High-frequency trading**: Extreme penalty for large position changes
- **Real-time systems**: Exponential penalty for delays
- **Safety-critical applications**: Exponential cost for failures

**Conjugate Norm**: $\Psi(y) = |y|\log|y| - |y| + 1$ (logarithmic growth)

**Case 2: Logarithmic Orlicz Norm**
$$\Phi(x) = |x|\log(1 + |x|)$$

**Geometric Interpretation**:
- Intermediate between polynomial and exponential growth
- More tolerant of moderate deviations than exponential
- Promotes concentration but allows some spread

**Information-Theoretic Interpretation**:
- Connected to entropy and mutual information
- Optimal for distributions with logarithmic tails
- Related to information-theoretic learning theory

**Practical Applications**:
- **Natural language processing**: Logarithmic penalty for word frequency deviations
- **Network analysis**: Logarithmic cost for degree deviations
- **Economic modeling**: Logarithmic utility functions

**Case 3: Power-Law Orlicz Norm**
$$\Phi(x) = \frac{|x|^p}{p} \quad \text{for } p > 1$$

This reduces to weighted $L^p$ norms, showing that $L^p$ norms are special cases of Orlicz norms.

**Case 4: Huber-Type Orlicz Norm**
$$
\Phi(x) = \begin{cases}
\frac{x^2}{2} & \text{if } |x| \leq \delta \\
\delta|x| - \frac{\delta^2}{2} & \text{if } |x| > \delta
\end{cases}
$$

**Geometric Interpretation**:
- Quadratic for small deviations, linear for large ones
- Provides robustness while maintaining efficiency
- Unit ball is a "rounded octahedron"

**Information-Theoretic Interpretation**:
- Optimal for contaminated Gaussian distributions
- Provides robust estimation with bounded influence
- Connected to M-estimation and robust statistics

**Practical Applications**:
- **Signal processing**: Robust to outliers and noise
- **Computer vision**: Robust to occlusions and artifacts
- **Bioinformatics**: Robust to measurement errors

#### 6.3.3 Choosing Optimal Young Functions

**Tail Behavior Matching**:
Choose $\Phi$ to match the tail behavior of the underlying distribution:
- Light tails: $\Phi(x) = e^{|x|^2}$ (super-Gaussian)
- Heavy tails: $\Phi(x) = |x|^p$ with $p < 2$ (sub-Gaussian)
- Exponential tails: $\Phi(x) = e^{|x|} - 1$

**Robustness Requirements**:
- High robustness: Use $\Phi$ with linear growth for large $|x|$
- High efficiency: Use $\Phi$ with quadratic growth for small $|x|$
- Balanced: Use Huber-type functions

**Computational Considerations**:
- Simple forms: $\Phi(x) = |x|^p$ for computational efficiency
- Smooth forms: $\Phi(x) = |x|\log(1 + |x|)$ for differentiability
- Separable forms: $\Phi(x) = \sum_i \phi_i(x_i)$ for decomposability

### 6.4 Practical Guidelines for Norm Selection

#### 6.4.1 Decision Framework

**Step 1: Assess the Problem Context**
- **Sparse data**: Use weighted $L^1$ norm
- **Robust estimation**: Use Huber-type Orlicz norm
- **Extreme value problems**: Use exponential Orlicz norm
- **Balanced performance**: Use weighted $L^2$ norm with proper weights

**Step 2: Choose Appropriate Weights**
- **Equal importance**: $w_i = 1$ (unweighted)
- **Inverse variance**: $w_i = 1/\text{Var}(p_i)$
- **Fisher information**: $w_i = 1/p_i$
- **Domain-specific**: Choose based on application requirements

**Step 3: Validate the Choice**
- **Theoretical**: Check optimality conditions
- **Empirical**: Cross-validation and performance testing
- **Robustness**: Sensitivity analysis

#### 6.4.2 Computational Algorithms

**For Weighted $L^p$ Norms**:
- **$p = 1$**: Linear programming
- **$p = 2$**: Quadratic programming  
- **$p = \infty$**: Linear programming with auxiliary variables
- **General $p$**: Iteratively reweighted least squares

**For Orlicz Norms**:
- **Gauge form**: Bisection method on $k$
- **Amemiya form**: Convex optimization
- **Proximal algorithms**: For regularization problems

## 7. Summary

The most suitable norms for the Aitchison geometry $(\Delta_n,\oplus;\mathbb{R},\odot)$ are:

1. **Weighted $L^p$ Norms**: $\|q\|_{p,w} = \left( \sum_{i=0}^n w_i |\text{clr}_i(q)|^p \right)^{1/p}$
   - Provide adaptive scaling and information-theoretic optimality
   - Cover the range from sparse ($p=1$) to uniform ($p=\infty$) behaviors
   - Essential for handling heteroscedastic and importance-weighted data

2. **Orlicz Norms**: $\|q\|_\Phi = \inf \left\{ k > 0 : \sum_{i=0}^n \Phi\left(\frac{|\text{clr}_i(q)|}{k}\right) \leq 1 \right\}$
   - Provide ultimate flexibility through Young functions
   - Enable robust estimation and tail-behavior matching
   - Connect directly to f-divergences and information theory

These norms are not just mathematically valid but are the **natural** choices that respect the geometric and probabilistic structure of the probability simplex, while providing the flexibility needed for real-world applications where uniform treatment of all components is insufficient.

---
















