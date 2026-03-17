## Lecture Notes on Mathematical Modelling in the Life Sciences

## King-Yeung Lam Yuan Lou

## Introduction to Reaction-Diffusion Equations

Theory and Applications to Spatial Ecology and Evolutionary Biology

## Lecture Notes on Mathematical Modelling in the Life Sciences

Editors-in-Chief<br>Yoichiro Mori, Department of Mathematics, University of Pennsylvania, Philadelphia, USA<br>Benoît Perthame, Laboratoire J.-L. Lions, Sorbonne University, Paris, France<br>Angela Stevens, Applied Mathematics: Institute for Analysis und Numerics, University of Münster, Münster, Germany<br>Series Editors<br>Martin Burger, Department of Mathematics, Friedrich-Alexander-Universität Erlangen-Nürnberg, Erlangen, Germany<br>Maurice Chacron, Department of Physiology, McGill University, Montréal, QC, Canada<br>Odo Diekmann, Department of Mathematics, Utrecht University, Utrecht, The Netherlands<br>Anita Layton, Department of Applied Mathematics, University of Waterloo, Waterloo, ON, Canada<br>Jinzhi Lei, School of Mathematical Sciences, Tiangong University, Tianjin, China<br>Mark Lewis, Department of Mathematical and Statistical Sciences and Department of Biological Science, University of Alberta, Edmonton, AB, Canada<br>L. Mahadevan, Departments of Physics and Organismic and Evolutionary Biology, and School of Engineering and Applied Sciences, Harvard University, Cambridge, MA, USA<br>Sylvie Méléard, Centre de Mathématiques Appliquées, École Polytechnique, Palaiseau Cedex, France<br>Claudia Neuhauser, Division of Research, University of Houston, Houston, TX, USA<br>Hans G. Othmer, School of Mathematics, University of Minnesota, Minneapolis, MN, USA<br>Mark Peletier, Eindhoven University of Technology, Eindhoven, The Netherlands<br>Alan Perelson, Los Alamos National Laboratory, Los Alamos, NM, USA<br>Charles S. Peskin, Courant Institute of Mathematical Sciences, New York University, New York, USA<br>Luigi Preziosi, Department of Mathematics, Politecnico di Torino, Torino, Italy<br>Jonathan E. Rubin, Department of Mathematics, University of Pittsburgh, Pittsburgh, PA, USA<br>Moisés Santillán Zerón, Centro de Investigación y de Estudios Avanzados del IPN Unidad Monterrey, Apodaca, Nuevo León, Mexico<br>Christof Schütte, Department of Mathematics and Computer Science, Freie Universität Berlin, Berlin, Germany<br>James Sneyd, Department of Mathematics, University of Auckland, Auckland, New Zealand<br>Peter Swain, School of Biological Sciences, The University of Edinburgh, Edinburgh, UK<br>Marta Tyran-Kamińska, Institute of Mathematics, University of Silesia, Katowice, Poland<br>Jianhong Wu, Department of Mathematics and Statistics, York University, Toronto, ON, Canada

The rapid pace and development of new methods and techniques in mathematics and in biology and medicine creates a natural demand for up-to-date, readable, possibly short lecture notes covering the breadth and depth of mathematical modelling, mathematical analysis and numerical computations in the life sciences, at a high scientific level.

The volumes in this series are written in a style accessible to graduate students. Besides monographs, we envision the series to also provide an outlet for material less formally presented and more anticipatory of future needs due to novel and exciting biomedical applications and mathematical methodologies.

The topics in LMML range from the molecular level through the organismal to the population level, e.g. gene sequencing, protein dynamics, cell biology, developmental biology, genetic and neural networks, organogenesis, tissue mechanics, bioengineering and hemodynamics, infectious diseases, mathematical epidemiology and population dynamics.

Mathematical methods include dynamical systems, partial differential equations, optimal control, statistical mechanics and stochastics, numerical analysis, scientific computing and machine learning, combinatorics, algebra, topology and geometry, etc., which are indispensable for a deeper understanding of biological and medical problems.

Wherever feasible, numerical codes must be made accessible.
Founding Editors:
Michael C. Mackey, McGill University, Montreal, QC, Canada
Angela Stevens, University of Münster, Münster, Germany

# Introduction to ReactionDiffusion Equations 

Theory and Applications to Spatial Ecology and Evolutionary Biology

King-Yeung Lam<br>Department of Mathematics<br>The Ohio State University<br>Columbus, OH, USA

Yuan Lou<br>School of Mathematical Sciences<br>Shanghai Jiao Tong University<br>Shanghai, China

This work was supported by the National Science Foundation [DMS-1853561].
ISSN 2193-4789 ISSN 2193-4797 (electronic)
Lecture Notes on Mathematical Modelling in the Life Sciences
ISBN 978-3-031-20421-0 ISBN 978-3-031-20422-7 (eBook)
https://doi.org/10.1007/978-3-031-20422-7
Mathematics Subject Classification (2020): 35B40, 35K57, 47H07, 92D15, 37L30, 37C65
© The Editor(s) (if applicable) and The Author(s), under exclusive license to Springer Nature Switzerland AG 2022
This work is subject to copyright. All rights are solely and exclusively licensed by the Publisher, whether the whole or part of the material is concerned, specifically the rights of translation, reprinting, reuse of illustrations, recitation, broadcasting, reproduction on microfilms or in any other physical way, and transmission or information storage and retrieval, electronic adaptation, computer software, or by similar or dissimilar methodology now known or hereafter developed.
The use of general descriptive names, registered names, trademarks, service marks, etc. in this publication does not imply, even in the absence of a specific statement, that such names are exempt from the relevant protective laws and regulations and therefore free for general use.
The publisher, the authors, and the editors are safe to assume that the advice and information in this book are believed to be true and accurate at the date of publication. Neither the publisher nor the authors or the editors give a warranty, expressed or implied, with respect to the material contained herein or for any errors or omissions that may have been made. The publisher remains neutral with regard to jurisdictional claims in published maps and institutional affiliations.

This Springer imprint is published by the registered company Springer Nature Switzerland AG
The registered company address is: Gewerbestrasse 11, 6330 Cham, Switzerland

For our families
Wendy and Hazel, Jianling and Ankai

## Preface

This set of lecture notes is based on the mini-courses given by the authors at the Center for Partial Differential Equations, East China Normal University in 2013, Séminaire de Mathématiques Supérieures at the University of Alberta in 2016, the Center for Applied Mathematics at Guangzhou University in 2021 and 2022, and most recently, at Institut Henri Poincaré, Paris in 2022. Several modern mathematical theories have found broad and profound applications at the intersection of reaction-diffusion equations and mathematical biology in recent years. Our goal is to present, in a selfcontained manner, some of these theories and tools to interested readers, especially beginning graduate students. We also want to connect these theories with biological concepts and to illustrate their usefulness in tackling various mathematical problems motivated by ecology and evolution. The selection of the material is subjective and has been influenced by the authors' own research interests.

Population distributions change dynamically in space either by movement or dispersal. The question of how different species survive and interact in space, and how they choose their dispersal strategies, generates many fascinating problems in biology. Since the seminal work of Fisher, Kolmogorov-Petrovsky-Piskunov, Okubo, Murray, Turing, Skellam, Aronson and Weinberger, and many others, the theory of reaction-diffusion equations has become a major mathematical tool in the field of mathematical biology. The interplay between reaction-diffusion equations and biology works in both directions: On the one hand, mathematical models are used to quantitatively describe and study biological concepts such as population persistence and critical patch size, competitive and cooperative interactions, and asymptotic speed of invasion, among others. On the other hand, the biological point of view suggests new and often challenging mathematical problems, and promote new areas for mathematical analysis and new ways of thinking. For instance, research developments in the theory of monotone dynamical systems, pattern formation, and traveling wave solutions have been propelled by their intersection with biology, to name a few. The purpose of this work is to introduce the readers to several aspects of the mathematical theory of reaction-diffusion equations as guided by their applications in ecology and evolution.

By now there is a tremendous research literature devoted to reaction-diffusion equations in biology. Although mathematical tools such as the comparison principle, the concept of principal eigenvalue, and the theory of monotone dynamical systems are relatively "user-friendly", it is a nontrivial task to understand their proofs. One of the motivations in writing this set of lecture notes grew out of our practical need to teach the theory to our graduate students. The materials we wish to cover are often scattered in the literature, and some areas are even still under development. As such, there are very limited sources where the theory is developed in a selfcontained manner that are accessible to beginners. The monographs by Ye et al. ${ }^{1}$, Cantrell and Cosner ${ }^{2}$ and Perthame ${ }^{3}$ on the theory of reaction-diffusion equations, are some excellent sources. So are the monographs of Zhao ${ }^{4}$, and Smith and Thieme ${ }^{5}$ on dynamical systems approaches to problems in biology. However, their focus is different from ours, which is outlined below.

This set of lecture notes is divided into four parts. Part I concerns the theory of linear elliptic and parabolic equations; Parts II and III cover applications to ecological and evolutionary dynamics, respectively; while Part IV contains the proofs of the Krein-Rutman Theorem and elements of the theory of monotone dynamical systems. We strive to provide a self-contained account of the theory in Parts I and IV, and to illustrate how to use them to study reaction-diffusion models from mathematical biology in Parts II and III. Below we describe the contents in more details.

Part I, consisting of Chapters 1 to 4, is devoted to the linear theory of elliptic and parabolic PDEs, with emphasis on the maximum principle. Chapter 1 begins with scalar parabolic equations with oblique boundary conditions, which include the biologically interesting cases of Neumann, and no-flux boundary conditions. We introduce a concept of super- and subsolutions in a generalized sense which enables the gluing of classical super- or subsolutions. This is a simplified version of the usual weak super- and subsolutions for divergence form operators, and the solution concept in the viscosity sense. Next, we derive the existence of the principal eigenvalue by applying the Krein-Rutman Theorem. We will also determine the limit of the principal eigenvalue as the diffusion rate tends to zero or infinity. A characterization of the maximum principle based on the existence of a strict positive supersolution is also proved. Chapter 2 is devoted to the principal eigenvalue of periodic-parabolic problems, where we study the effects of both spatial and temporal heterogeneity by giving various asymptotic estimates of the principal eigenvalues, and show the monotone dependence of the principal eigenvalue in frequency. The corresponding

[^0]theory for the cooperative systems of equations is contained in Chapter 3. Chapter 4 concerns the notion of the principal Floquet bundle, which is a generalization of the principal eigenvalue to space-time varying environments that are not necessarily periodic in time. We present its basic theory and a recent result concerning the smooth dependence of the principal Floquet bundle on the coefficients of parabolic operators. In subsequent chapters, the consequences of these analytical results on the persistence and stability questions in single and multiple species models will be extensively discussed.

Part II of these lecture notes, consisting of Chapters 5 to 8, is devoted to applications in ecological dynamics. In Chapter 5, we present some general theory for semilinear equations modeling a single population, including the monotone iteration method due to Sattinger, and the relationship of linear and nonlinear stability of equilibria. Then we specialize to the case of diffusive logistic equations, and discuss the convergence to equilibria, the asymptotic behavior of equilibria as the diffusion rate tends to zero or infinity, as well as the concept of the critical domain size. In Chapter 6, we discuss the Fisher-KPP equation on the real line. We introduce the notion of spreading speed, and give an elementary proof of the classical result for the homogeneous case, based on constructing generalized super/subsolutions. We also discuss some recent results concerning the shifting habitat, and the possibility of nonlocal selection of the spreading speed. Chapter 7 is devoted to the diffusive Lotka-Volterra model of two competing species in bounded domains. We first cast these equations into the setting of the strongly monotone dynamical systems and derive some general conclusions. Next, we investigate the large time dynamics by way of constructing Lyapunov functions and applying LaSalle's invariance principle. Particular attention is given to the problem of evolution of dispersal, where the selection of slow dispersal due to Hastings is discussed in the broader context of possibly weak competition. In the latter case, the full dynamics can still be characterized by a brilliant result of He and Ni which demonstrates the linear stability and uniqueness of the positive equilibrium, whenever one exists. The outcome of the competition dynamics may be reversed with the addition of advection. We illustrate this by showing that faster dispersal becomes advantageous in some circumstances. In Chapter 8, we discuss the dynamics of phytoplankton populations in a water column. Here the individuals are engaged in a nonlocal competition for light via shading. Surprisingly, in the two-species case the nonlocal PDE model is in fact order-preserving, albeit with respect to a nonstandard cone. This result facilitates the classification of phytoplankton dynamics. When the number of species is greater than two, the system is no longer order-preserving. Here we present a method to analyze the population dynamics for a large number of interacting species, based on the theory of normalized principal Floquet bundles.

Evolutionary dynamics is the subject of Part III, which consists of Chapters 9 to 10. In Chapter 9, we discuss the adaptive dynamics framework, which is a conceptual framework enabling the exploration of evolutionary questions using ecological models. We discuss the framework of adaptive dynamics in the context of a river population model, hoping to offer to the readers a PDE viewpoint of the theory. Specifically, we introduce in concrete terms the key notions of invasion exponent,
selection gradient, singular strategy, convergence stable strategy, evolutionary stable strategy (ESS), continuously stable strategy, neighborhood invader strategy, dimorphism (coexistence of strategies) and evolutionary branching point. In Chapter 10, we discuss the so-called selection-mutation models, which describes population structured by a continuous trait. They can be regarded as the analogue of $N$-species competition models, as $N$ tends to infinity. We start with a model without spatial structure, due to Magal and Webb, and show the convergence to equilibrium, then we move to discuss the continuous-trait model with spatial structure, due to Perthame and Souganidis, on the evolution of dispersal in spatially varying but temporally constant environment. These results suggest the relationship of selection-mutation models with the framework of adaptive dynamics.

Part IV consists of Appendices A to E. We introduce to the readers several useful tools from nonlinear functional analysis and dynamical systems. These analytical tools are well known but their proofs are developed in different separate sources. Here, we give a relatively self-contained treatment of these topics, by combining materials from selected research papers and monographs in these areas, with some of our own modifications. In Appendix A, we derive the fixed point index from the well known Leray Schauder degree. In Appendix B, we introduce the concept of a positive cone, and that of an ordered Banach space. We present a self-contained proof of the Krein-Rutman Theorem for positively homogeneous maps of degree one $f$ : $K \rightarrow K$ that are monotone with respect to $K$, and then derive from that the classical Krein-Rutman Theorem for compact positive linear operators. In Appendix C, we discuss dynamical systems in ordered Banach spaces that are generated by monotone and subhomogeneous maps. We show that such a system has a globally attracting fixed point. We will also prove an analogous result for continuous-time semiflows. In Appendix D, we consider general monotone dynamical systems and prove the Dancer-Hess Lemma concerning the existence of a connecting orbit between two ordered fixed points, and prove the limit set trichotomy. We then extend the result to continuous semiflows. In Appendix E, we present the theory of abstract competitive systems, and develop the trichotomy result due to Hsu, Smith and Waltman. In the case when the mapping (or semiflow) is continuously differentiable, we present a new condition to achieve a stronger trichotomy result.

We have benefited tremendously from communications and collaborations with many colleagues and friends during the preparation of this set of lecture notes and we thank all of them. First of all, we thank our common thesis advisor, Wei-Ming Ni for his support through these many years. We are grateful to Benoît Perthame for suggesting the publication of this work. We learned a great deal from the works of our friends and our collaborators, Robert Stephen Cantrell, Xinfu Chen, Chris Cosner, Yihong Du, Avner Friedman, Alan Hastings, Sze-Bi Hsu, Vivian Hutson, Mark Lewis, Suzanne Lenhart, Frithjof Lutscher, Konstantin Mischaikow, Peter Poláčik, Wenxian Shen, Xuefeng Wang, Michael Winkler, Yaping Wu, Youshan Tao, Eiji Yanagida, Shoji Yotsutani and Qixiao Ye, to whom we are very grateful. We would like to acknowledge Zhucheng Jin, Alexis Leculier, Shuang Liu, and Xiao Yu for reading parts of the manuscript, and the US National Science Foundation for its support via the grant DMS-1853561. KYL is also supported by the European Union's

Horizon 2020 research and innovation programme via grant agreement No. 740623, and he would like to thank the Institut Henri Poincaré for providing an excellent environment where part of this manuscript was completed. YL is also supported by the research funds from Shanghai Jiao Tong University, the Shanghai Frontier Research Center on Modern Analysis (CMA-Shanghai), the National Science Foundation of China and MOE-LSC.

Last but not the least, KYL thanks his wife Wendy Xu and daughter Hazel, YL thanks his wife Jianling Huang and son Ankai, for their unconditional support and understanding throughout this endeavor.

Columbus, Ohio, USA
King-Yeung Lam
Shanghai, China
Yuan Lou
August 2022

## Contents

Part I Linear Theory
1 The Maximum Principle and the Principal Eigenvalues for Single Equations ..... 3
1.1 The Maximum Principle for Single Parabolic Equations ..... 3
1.2 The Comparison Principle for Semilinear Equations ..... 9
1.3 The Principal Eigenvalue for Linear Elliptic Operators ..... 13
1.4 Further Reading ..... 27
Problems ..... 28
References ..... 30
2 The Principal Eigenvalue for Periodic-Parabolic Problems ..... 33
2.1 Existence of the Principal Eigenvalue for Periodic-Parabolic Problems ..... 33
2.2 Qualitative Properties of Periodic Principal Eigenvalues ..... 36
2.2.1 The Hutson-Shen-Vickers Lemma ..... 39
2.2.2 Small diffusion limit ..... 40
2.2.3 Large diffusion limit ..... 43
2.2.4 Monotonicity in frequency ..... 45
2.3 Applications to Two-Species Competition Models in a Spatially and Temporally Varying Environment ..... 50
2.4 Further Reading ..... 54
Problems ..... 55
References ..... 56
3 The Maximum Principle and the Principal Eigenvalue for Systems ..... 59
3.1 Comparison Principle of Cooperative Parabolic Systems ..... 59
3.2 The Principal Eigenvalue of Cooperative Systems ..... 62
3.2.1 Existence results ..... 62
3.2.2 Asymptotic behavior of the principal eigenvalue ..... 65
3.3 Comparison Principle and Principal Eigenvalue for Competitive Parabolic Systems ..... 69
3.4 Further Reading ..... 71
Problems ..... 71
References ..... 72
4 The Principal Floquet Bundle for Parabolic Equations ..... 75
4.1 Existence Results for Non-Divergence Form Parabolic Equations ..... 75
4.2 Existence Results for Divergence Form Parabolic Equations ..... 80
4.3 The Generalized Relative Entropy ..... 85
4.4 Further Reading ..... 90
Problems ..... 91
References ..... 92
Part II Ecological Dynamics
5 The Logistic Equation With Diffusion ..... 95
5.1 A Reaction-Diffusion Model for a Single Species ..... 95
5.2 The Logistic Equation ..... 100
5.3 Critical Domain Size ..... 105
5.4 Further Reading ..... 109
Problems ..... 111
References ..... 112
6 Spreading in Homogeneous and Shifting Environments ..... 115
6.1 The Fisher-KPP Equation and the Definition of Spreading Speed ..... 115
6.2 A Maximum Principle for Unbounded Domains ..... 116
6.3 Homogeneous Environments ..... 118
6.4 Shifting Environments ..... 125
6.5 Further Reading ..... 132
Problems ..... 134
References ..... 134
7 The Lotka-Volterra Competition-Diffusion Systems for Two Species ..... 139
7.1 Elements from the Theory of Monotone Dynamical Systems ..... 139
7.2 Lotka-Volterra Systems with Constant Coefficients ..... 147
7.3 Lotka-Volterra Systems with Heterogeneous Coefficients ..... 152
7.3.1 Slow vs fast diffusing populations ..... 157
7.3.2 Weak competition in a heterogeneous environment ..... 158
7.4 Competition in an Advective Environment ..... 163
7.5 Further Reading ..... 168
Problems ..... 170
References ..... 173
8 Dynamics of Phytoplankton Populations ..... 177
8.1 Introduction ..... 177
8.2 Single Species in a Eutrophic Water Column ..... 179
8.2.1 Monotonicity of the single species model ..... 179
8.2.2 Long-time dynamics of the single species model ..... 183
8.3 Dynamics for Two Competing Phytoplankton Species ..... 187
8.4 The $N$-Species Model - Application of the Principal Floquet Bundle ..... 193
8.4.1 A priori estimates ..... 194
8.4.2 A rough estimate ..... 197
8.4.3 The normalized principal bundle ..... 198
8.4.4 A general exclusion criterion ..... 200
8.5 Further Reading ..... 202
Problems ..... 204
References ..... 205
Part III Evolutionary Dynamics
9 Elements of Adaptive Dynamics ..... 209
9.1 Introduction ..... 209
9.2 Evolution of Dispersal in Advective Environments ..... 211
9.3 Further Reading ..... 221
Problems ..... 224
References ..... 225
10 Selection-Mutation Models ..... 229
10.1 Populations Structured by a Phenotypic Trait ..... 229
10.2 Populations Structured by Space and a Phenotypic Trait ..... 235
10.3 Further Reading ..... 243
Problems ..... 244
References ..... 245
Appendices
A The Fixed Point Index ..... 251
A. 1 Properties of the Leray-Schauder Degree ..... 251
A. 2 The Fixed Point Index ..... 252
References ..... 254
B The Krein-Rutman Theorem ..... 255
B. 1 Introduction ..... 255
B. 2 Cones and Orderings ..... 255
B. 3 The Classical Krein-Rutman theorem ..... 258
B. 4 The Generalized Krein-Rutman theorem for Homogeneous Maps ..... 260
B. 5 Further Reading ..... 268
Problems ..... 269
References ..... 270
C Subhomogeneous Dynamics ..... 273
C. 1 Subhomogeneous Maps ..... 273
C. 2 Subhomogeneous Semiflows ..... 276
C. 3 Further Reading ..... 278
Problems ..... 278
References ..... 280
D Existence of Connecting Orbits ..... 281
D. 1 Discrete-Time Monotone Dynamical Systems ..... 281
D. 2 Continuous-Time Monotone Dynamical Systems ..... 286
References ..... 289
E Abstract Competition Systems in Ordered Banach Spaces ..... 291
E. 1 Discrete-Time Competition Systems ..... 292
E. 2 Continuous-Time Competition Systems ..... 304
E. 3 Further Reading ..... 309
Problems ..... 309
References ..... 309
Index ..... 311

# Part I <br> Linear Theory 

## Chapter 1

# The Maximum Principle and the Principal Eigenvalues for Single Equations 


#### Abstract

In this chapter we will discuss the maximum principle for single parabolic and elliptic equations, where we introduce the useful concept of super- and subsolutions in a generalized sense which enables the gluing of families super- or subsolutions. Next, we derive the existence of principal eigenvalue by applying the Krein-Rutman theorem. We will also determine the limit of principal eigenvalue as the diffusion rate tends to zero or infinity. Finally, we will give a characterization of the maximum principle based on the existence of a strict positive supersolution.


### 1.1 The Maximum Principle for Single Parabolic Equations

Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$, and let $\mathbf{n}=\left(n_{i}\right)_{i=1}^{N}$ be the unit outward normal vector on $\partial \Omega$. For $T>0$, define

$$
\Omega_{T}=\Omega \times(0, T], \quad \bar{\Omega}_{T}=\bar{\Omega} \times[0, T], \quad S \Omega_{T}=\partial \Omega \times(0, T], \quad P \Omega_{T}=\bar{\Omega}_{T} \backslash \Omega_{T} .
$$

Consider the linear parabolic operator in non-divergence form with continuous coefficients

$$
\begin{equation*}
u_{t}+\mathcal{L} u \equiv u_{t}-a^{i j} D_{i j} u-b^{i} D_{i} u-c u=f \quad \text { in } \Omega_{T}, \tag{1.1}
\end{equation*}
$$

endowed with the oblique boundary condition

$$
\begin{equation*}
\mathcal{B} u \equiv p^{i} D_{i} u+p^{0} u=g \quad \text { on } S \Omega_{T}, \tag{1.2}
\end{equation*}
$$

where we adopt the convention to sum over repeated indices. For each $i, p^{i}$ satisfies

$$
p^{i}(x, t) n_{i}(x)>0 \quad \text { and } \quad p^{0} \geq 0 \quad \text { on } \partial \Omega \times[0, T] .
$$

Setting $\left(p_{i}\right)_{i=1}^{N}$ to be the outward unit normal vector $\mathbf{n}$ on $\partial \Omega$, (1.2) reduces to

$$
\mathbf{n} \cdot \nabla u+p^{0} u=g \quad \text { on } S \Omega_{T},
$$

and we obtain the Neumann boundary condition when $p^{0}=0$, or the Robin boundary condition when $p^{0} \geq 0$ is nontrivial. We note that most of the results in this chapter continue to hold for the Dirichlet boundary condition.

In this chapter, we assume $a^{i j}, b^{i}, c \in C^{0}\left(\bar{\Omega}_{T}\right)$ and the uniform ellipticity condition; i.e. there exists some constant $\lambda_{0}>0$ such that

$$
\begin{equation*}
\lambda_{0}|\xi|^{2} \leq a^{i j}(x, t) \xi_{j} \xi_{j} \quad \text { for all } \xi \in \mathbb{R}^{N}, \quad(x, t) \in \Omega_{T} \tag{1.3}
\end{equation*}
$$

We define the notions of classical and generalized super- and subsolutions for the initial-boundary-value problem

$$
\begin{equation*}
u_{t}+\mathcal{L} u=f(x, t, u, D u) \quad \text { in } \Omega_{T}, \quad \text { and } \quad \mathcal{B} u=g(x, t) \quad \text { on } S \Omega_{T} . \tag{1.4}
\end{equation*}
$$

Definition 1.1.1 1 . We say that $u \in C^{2,1}\left(\Omega_{T}\right)$ satisfies

$$
\begin{equation*}
u_{t}+\mathcal{L} u \leq f(x, t, u, D u) \quad \text { in } \Omega_{T} \tag{1.5}
\end{equation*}
$$

in the classical sense if the inequality is satisfied everywhere in $\Omega_{T}$. In this case, we call $u$ a classical subsolution of $u_{t}+\mathcal{L} u=f$ in $\Omega_{T}$. We similarly define the notion of classical supersolution by reversing the inequality (1.5).
2 . We say that $u \in C^{1,0}\left(\bar{\Omega}_{T}\right)$ satisfies

$$
\mathcal{B} u(x, t) \leq g(x, t) \quad(\text { resp. } \mathcal{B} u \geq g(x, t)) \quad \text { on } S \Omega_{T},
$$

in the classical sense if the inequality is satisfied everywhere on $S \Omega_{T}$.
3. We say that $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies (1.5) in the generalized sense if, for each $\left(x_{0}, t_{0}\right) \in$ $\Omega_{T}$, there exist a neighborhood $U$ of ( $x_{0}, t_{0}$ ) in $\Omega_{T}$, and $\tilde{u} \in C^{2,1}(\bar{U})$ such that $\tilde{u} \leq u$ in $U, \tilde{u}\left(x_{0}, t_{0}\right)=u\left(x_{0}, t_{0}\right)$ and

$$
\begin{equation*}
\tilde{u}_{t}\left(x_{0}, t_{0}\right)+\mathcal{L} \tilde{u}\left(x_{0}, t_{0}\right) \leq f\left(x_{0}, t_{0}, \tilde{u}\left(x_{0}, t_{0}\right), D \tilde{u}\left(x_{0}, t_{0}\right)\right) . \tag{1.6}
\end{equation*}
$$

In such a case, we say that $u$ is a generalized subsolution of $u_{t}+\mathcal{L} u=f$ in $\Omega_{T}$.
4. We say that $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies

$$
u_{t}+\mathcal{L} u \geq f(x, t, u, D u) \quad \text { in } \Omega_{T}
$$

in the generalized sense if, for each $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, there exist a neighborhood $U$ of ( $x_{0}, t_{0}$ ) in $\Omega_{T}$, and $\tilde{u} \in C^{2,1}(\bar{U})$ such that $\tilde{u} \geq u$ in $U, \tilde{u}\left(x_{0}, t_{0}\right)=u\left(x_{0}, t_{0}\right)$ and

$$
\begin{equation*}
\tilde{u}_{t}\left(x_{0}, t_{0}\right)+\mathcal{L} \tilde{u}\left(x_{0}, t_{0}\right) \geq f\left(x_{0}, t_{0}, \tilde{u}\left(x_{0}, t_{0}\right), D \tilde{u}\left(x_{0}, t_{0}\right)\right) . \tag{1.7}
\end{equation*}
$$

In such a case, we say that $u$ is a generalized supersolution of $u_{t}+\mathcal{L} u=f$ in $\Omega_{T}$. 5. We say that $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies

$$
\begin{equation*}
u_{t}+\mathcal{L} u \leq f(x, t, u, D u) \quad \text { in } \Omega_{T} \quad \text { and } \quad \mathcal{B} u \leq g(x, t) \quad \text { on } S \Omega_{T} \tag{1.8}
\end{equation*}
$$

in the generalized sense if for each $\left(x_{0}, t_{0}\right) \in \bar{\Omega} \times(0, T]$, there exist a neighborhood $U$ of $\left(x_{0}, t_{0}\right)$ in $\bar{\Omega}_{T}$ and a function $\tilde{u} \in C^{2,1}(\bar{U})$ such that $\tilde{u} \leq u$ in $U, \tilde{u}\left(x_{0}, t_{0}\right)=$
$u\left(x_{0}, t_{0}\right)$, and $\tilde{u}$ satisfies (1.6) if $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, or

$$
\mathcal{B} \tilde{u}\left(x_{0}, t_{0}\right) \leq g\left(x_{0}, t_{0}\right) \quad \text { if }\left(x_{0}, t_{0}\right) \in S \Omega_{T} .
$$

In such a case, we say that $u$ is a generalized subsolution of (1.4).
6 . We say that $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies

$$
\begin{equation*}
u_{t}+\mathcal{L} u \geq f(x, t, u, D u) \quad \text { in } \Omega_{T} \quad \text { and } \quad \mathcal{B} u \geq g(x, t) \quad \text { on } S \Omega_{T} \tag{1.9}
\end{equation*}
$$

in the generalized sense if for each $\left(x_{0}, t_{0}\right) \in \bar{\Omega} \times(0, T]$, there exist a neighborhood $U$ of $\left(x_{0}, t_{0}\right)$ in $\bar{\Omega}_{T}$ and a function $\tilde{u} \in C^{2,1}\left(\bar{\Omega}_{T}\right)$ such that $\tilde{u} \geq u$ in $U, \tilde{u}\left(x_{0}, t_{0}\right)=$ $u\left(x_{0}, t_{0}\right)$, and $\tilde{u}$ satisfies (1.7) if $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, or

$$
\mathcal{B} \tilde{u}\left(x_{0}, t_{0}\right) \geq g\left(x_{0}, t_{0}\right) \quad \text { if }\left(x_{0}, t_{0}\right) \in S \Omega_{T} .
$$

In such a case, we say that $u$ is a generalized supersolution of (1.4).
Remark 1.1.2 1. We define $u_{t}+\mathcal{L} u<f(x, t, u, D u)$ in $\Omega_{T}$ in the generalized sense if statement 3 in the above definition holds with the inequality in (1.6) being replaced by a strict inequality. We also define $u_{t}+\mathcal{L} u>f(x, t, u, D u)$ analogously.
2. If $u_{t}+\mathcal{L} u \leq f(x, t, u, D u)$ in $\Omega_{T}$ (resp. $u_{t}+\mathcal{L} u<f(x, t, u, D u)$ in $\Omega_{T}$ or $\mathcal{B} u \leq 0$ in $S \Omega_{T}$ ) in the classical sense, then it automatically holds in the generalized sense.
3. Let $u_{i}(i=1,2)$ be two classical subsolutions of $u_{t}+\mathcal{L} u=f(x, t, u, D u)$ in $\Omega_{T}$, then $u=\max \left\{u_{1}, u_{2}\right\}$ is a generalized subsolution of the same equation in $\Omega_{T}$.
4. Let $u_{i}(i=1,2)$ be two classical supersolutions of $u_{t}+\mathcal{L} u=f(x, t, u, D u)$ in $\Omega_{T}$, then $u=\min \left\{u_{1}, u_{2}\right\}$ is a generalized supersolution of the same equation in $\Omega_{T}$.
5 . Let $A_{1}, A_{2}$ be relatively open subsets in $\bar{\Omega}_{T}$ such that $\bar{\Omega}_{T} \subset A_{1} \cup A_{2}$. Suppose
a. $u_{i}(i=1,2)$ are generalized subsolutions of $u_{t}+\mathcal{L} u=f(x, t, u, D u)$ in $A_{i} \cap \Omega_{T}$, and
b. $u_{1}<u_{2}$ on $\left(\partial A_{1}\right) \cap A_{2} \cap \Omega_{T} \quad$ and $\quad u_{1}>u_{2}$ on $A_{1} \cap\left(\partial A_{2}\right) \cap \Omega_{T}$,
then $u=\max \left\{u_{1}, u_{2}\right\}$ belongs to $C\left(\Omega_{T}\right)$ and is a generalized subsolution of the same equation in $\Omega_{T}$. A similar statement holds if $u_{i}$ are subsolutions of $u_{t}+\mathcal{L} u=f(x, t, u, D u)$ in $A_{i} \cap \Omega_{T}$ and $\mathcal{B}=g$ on $A_{i} \cap S \Omega_{T}$. A similar statement holds for generalized supersolutions.
6. For operators in divergence form with measurable coefficients, the notion of weak super- and subsolutions can be defined by integration by parts with nonnegative test functions. See [2] and [11] (and also Problem 1.4.4) for gluing of the weak super- and subsolutions in the $H^{1}$ framework. For operators in non-divergence form with continuous coefficients, a general theory has been developed for superand subsolutions in the viscosity sense [10]. Here we simply observe that the classical notions of super- and subsolutions can be somewhat generalized (with no change to the proofs) without using more technical machinery. This covers many common constructions [8,26].

Theorem 1.1.3 (Weak Maximum Principle) Let $u \in C\left(\bar{\Omega}_{T}\right)$ be given.

1. If $u_{t}+\mathcal{L} u \leq 0$ holds in the generalized sense in $\Omega_{T}$ and $u \leq 0$ in $P \Omega_{T}$, then

$$
u \leq 0 \quad \text { in } \Omega_{T} .
$$

2. If $u_{t}+\mathcal{L} u \leq 0$ holds in the generalized sense in $\Omega_{T}$ and $c \leq 0$ in $\Omega_{T}$, then

$$
\max _{\bar{\Omega}_{T}} u \leq \max _{P \Omega_{T}} u^{+},
$$

where $u^{+}:=\max \{u, 0\}$.
Remark 1.1.4 Let $u \in C\left(\bar{\Omega}_{T}\right)$ be given. Suppose $u_{t}+\mathcal{L} u \leq 0$ and $u_{t}+\mathcal{L} u \geq 0$ in $\Omega_{T}$ in the generalized sense, and that $c \leq 0$. Then

$$
\max _{\bar{\Omega}_{T}}|u| \leq \max _{P \Omega_{T}}|u| \quad \text { in } \Omega_{T} .
$$

See Problem 1.4.1.
Remark 1.1.5 For the weak maximum principle when $\Omega$ is an unbounded domain, or the entire space, an additional growth condition at infinity has to be imposed. See Section 6.2 in Chapter 6 for the counterpart of Theorem 1.1.3 in that setting.

Proof First, we prove the second assertion. It is enough to prove that

$$
\max _{\bar{\Omega}_{T}}(u-\epsilon t) \leq \max _{P \Omega_{T}}(u-\epsilon t)^{+} \quad \text { for each } \epsilon>0 .
$$

Suppose to the contrary that there exist $\epsilon>0$ and $\left(x_{0}, t_{0}\right) \in \Omega_{T}$ such that $\max _{\bar{\Omega}_{T}}(u-\epsilon t)=u\left(x_{0}, t_{0}\right)-\epsilon t_{0}>\max _{P \Omega_{T}}(u-\epsilon t)^{+} \geq 0$. For the point $\left(x_{0}, t_{0}\right)$, take the smooth function $\tilde{u}$ according to the definition of generalized subsolution, so that

$$
\left\{\begin{array}{l}
\tilde{u} \leq u \quad \text { in a neighborhood of }\left(x_{0}, t_{0}\right),  \tag{1.10}\\
\tilde{u}\left(x_{0}, t_{0}\right)=u\left(x_{0}, t_{0}\right)>0 \quad \text { and } \quad \tilde{u}_{t}+\mathcal{L} \tilde{u} \leq 0 \quad \text { at }\left(x_{0}, t_{0}\right) .
\end{array}\right.
$$

Since $u(x, t)-\epsilon t$ has a local maximum at ( $x_{0}, t_{0}$ ), it follows that $\tilde{u}(x, t)-\epsilon t$ also has a local maximum at $\left(x_{0}, t_{0}\right)$. Hence,

$$
\tilde{u}_{t} \geq \epsilon, \quad a^{i j} D_{i j} \tilde{u}+b^{j} D_{j} \tilde{u} \leq 0, \quad c \tilde{u} \leq 0, \quad \text { at }\left(x_{0}, t_{0}\right),
$$

so that

$$
\tilde{u}_{t}+\mathcal{L} \tilde{u} \geq \epsilon>0 \quad \text { at }\left(x_{0}, t_{0}\right),
$$

which is in contradiction with (1.10). This proves the second assertion.
For the first assertion, let $v(x, t)=\mathrm{e}^{-t \sup c} u(x, t)$, then $v$ satisfies

$$
v_{t}-a^{i j} D_{i j} v-b^{j} D_{j} v-\tilde{c} v \leq 0 \quad \text { in } \Omega_{T}
$$

in the generalized sense, where $\tilde{c}=c-\sup _{\Omega_{T}} c \leq 0$ in $\Omega_{T}$. We can then repeat the previous step to deduce that

$$
\max _{\bar{\Omega}_{T}} v(x, t) \leq \max _{P \Omega_{T}} v(x, t)=\max _{P \Omega_{T}} \mathrm{e}^{t \sup _{\Omega_{T}} c} u(x, t) \leq 0 .
$$

This is equivalent to $u(x, t) \leq 0$ in $\Omega_{T}$. This proves the first assertion.
We also prove that, when $c<0$ everywhere, then a generalized subsolution $u$ cannot attain a positive local maximum in the interior.

Lemma 1.1.6 Let $\Omega$ be a domain in $\mathbb{R}^{N}$ which is possibly unbounded. Suppose $u$ satisfies $u_{t}+\mathcal{L} u \leq 0$ in the generalized sense in $\Omega_{T}$, where $a^{i j}, b^{i}, c \in C_{\text {loc }}\left(\Omega_{T}\right)$ such that $a^{i j} \xi_{i} \xi_{j}>0$ for all $\xi=\left(\xi_{i}\right) \in \mathbb{R}^{N}$. If $c<0$ in $\Omega_{T}$ (but not necessarily bounded from below), then $u$ cannot attain a positive local maximum at an interior point.

Proof Suppose to the contrary that $u$ has a local maximum point $\left(x_{0}, t_{0}\right) \in \Omega_{T}$ such that $u\left(x_{0}, t_{0}\right)>0$. Then by the definition of generalized subsolution, there exists a smooth function $\tilde{u}$ such that $\tilde{u} \leq u$ in a neighborhood of ( $x_{0}, t_{0}$ ) and equality holds at ( $x_{0}, t_{0}$ ). Hence, $\tilde{u}$ also attains a positive local maximum value at ( $x_{0}, t_{0}$ ), so that

$$
\tilde{u}_{t} \geq 0, \quad a^{i j} D_{i j} \tilde{u}+b^{i} D_{i} \tilde{u} \leq 0, \quad c \tilde{u}<0 \quad \text { at }\left(x_{0}, t_{0}\right) .
$$

This contradicts the fact that $\tilde{u}_{t}+\mathcal{L} u \leq 0$.
Having proved the weak maximum principle for generalized super- and subsolutions, we can derive the Boundary Point Lemma and Strong Maximum Principle, and Growth Lemma, since they are all predicated on being able to compare $u$ with a suitable classical barrier function via the weak maximum principle.

Theorem 1.1.7 (Boundary Point Lemma) Let $R>0$ and $Y=(y, s) \in \mathbb{R}^{N+1}$ be given. Consider the lower paraboloid

$$
P_{R}=P_{R}(Y)=\left\{X=(x, t):|x-y|^{2}+(s-t)<R^{2}, \text { and } t<s\right\} .
$$

Suppose $u \in C\left(\bar{P}_{R}\right)$ satisfies $u_{t}+\mathcal{L} u \leq 0$ in $P_{R}$ in the generalized sense, and that there is an $X_{1}=\left(x_{1}, s\right)$ with $\left|x_{1}-y\right|=R$ such that

$$
\begin{equation*}
u\left(X_{1}\right)>u(X) \quad \text { and } \quad c(X) u\left(X_{1}\right) \leq 0 \quad \text { for all } X \in P_{R} . \tag{1.11}
\end{equation*}
$$

Then $\beta \cdot \nabla_{x} u\left(X_{1}\right)>0$ for any vector $\beta$ such that $\beta \cdot\left(x_{1}-y\right)>0$, in the sense that

$$
\liminf _{h \rightarrow 0+} \frac{u\left(x_{1}, s\right)-u\left(x_{1}-\beta h, s\right)}{h}>0 .
$$

Proof This is originally due to Nirenberg [32], who used an ellipsoid instead of a paraboloid. See [28, Chap. II, Lemma 2.8] for the proof. Here we observe that the proof works not only for classical subsolutions, but also generalized subsolutions. This is based on observing that $u\left(X_{1}\right)-u$ and the auxiliary function $h_{R}(r)=$
$\mathrm{e}^{-\alpha r^{2}}-\mathrm{e}^{-\alpha R^{2}}$ form a super- and sub-solution pair in the domain $P_{R} \backslash \overline{P_{R / 2}}$, in the generalized sense. Here

$$
\left\{\begin{array}{l}
X=\left(x_{1}, \ldots, x_{N}, t\right) \quad \text { and } \quad X_{1}=\left(x_{1,1}, \ldots, x_{N, 1}, t_{1}\right), \\
r^{2}=\left|t-t_{1}\right|+\sum_{i=1}^{N}\left|x_{i}-x_{i, 1}\right|^{2} .
\end{array}\right.
$$

Therefore, fixing $\epsilon>0$ so that

$$
u\left(x_{1}, s\right)-u(x, t) \geq \epsilon h_{R}(r) \quad \text { on }\left\{X \in \partial P_{R / 2}, t<s\right\}
$$

and recalling that $u\left(x_{1}, s\right)-u(x, t) \geq 0=\epsilon h_{R}(r)$ on $\left\{X \in \partial P_{R}, t<s\right\}$, one may apply the weak maximum principle to obtain

$$
u\left(x_{1}, s\right)-u(x, s) \geq \epsilon h_{R}(r)
$$

for all $(x, s) \in P_{R} \backslash P_{R / 2}$.
Lemma 1.1.8 (Growth Lemma due to Krylov-Safonov) Let $R>0$ and $\alpha>0$ be positive constants and set

$$
Q=\left\{(x, t):|x|<R,-\alpha R^{2}<t<0\right\} .
$$

Then there exists a uniform positive constant $\kappa$ such that for each
$u \in\left\{\tilde{u} \in C\left(\bar{\Omega}_{T}\right): \tilde{u} \geq 0\right.$ in $Q$, and $\tilde{u}_{t}+\mathcal{L} \tilde{u} \leq 0$ in $Q$ in the generalized sense $\}$ if

$$
u \geq h \quad \text { in }\left\{|x|<\epsilon R, t=-\alpha R^{2}\right\}, \quad \text { for some } h>0,0<\epsilon<1,
$$

then

$$
u \geq \frac{\epsilon^{\kappa} h}{2} \quad \text { in }\{|x|<R / 2, t=0\}
$$

Proof See [28, Lemma 2.6].
Theorem 1.1.9 (Strong Maximum Principle) Assume

$$
u_{t}+\mathcal{L} u \leq 0 \quad \text { in } \Omega_{T}, \quad \mathcal{B} u \leq 0 \quad \text { on } S \Omega_{T}, \quad \text { in the generalized sense. }
$$

1. If $u(x, 0) \leq 0$ in $\Omega$, then $u \leq 0$ in $\Omega_{T}$.
2. If, in addition, $u\left(x_{0}, t_{0}\right)=0$ for some $\left(x_{0}, t_{0}\right) \in \bar{\Omega} \times(0, T]$, then

$$
u \equiv 0 \quad \text { in } \bar{\Omega} \times\left(0, t_{0}\right]
$$

Proof We first show part 1 . By replacing $u(x, t)$ with $\mathrm{e}^{-t \sup c} u(x, t)$ if necessary, we may assume $c \leq 0$ in $\Omega_{T}$. Suppose $u(x, 0) \leq 0$ in $\Omega$, we need to show that $u \leq 0$ in $\Omega_{T}$. It suffices to show that $v(x, t)=u(x, t)-\epsilon t$ is negative in $\Omega_{T}$ for each $\epsilon>0$.

Suppose to the contrary that there exists an $\epsilon>0$ such that $\sup _{\Omega_{T}} v=v\left(x_{0}, t_{0}\right)>0$ for some $\left(x_{0}, t_{0}\right) \in \bar{\Omega}_{T}$, then necessarily $t_{0}>0$.
Step 1. We first discuss the case $x_{0} \in \operatorname{Int} \Omega$. In this case, there exist a neighborhood $U$ of ( $x_{0}, t_{0}$ ) and a smooth function $\tilde{u}$ satisfying

$$
\begin{equation*}
\tilde{u}_{t}+\mathcal{L} \tilde{u} \leq 0 \quad \text { at }\left(x_{0}, t_{0}\right) \tag{1.12}
\end{equation*}
$$

and that

$$
v(x, t)=u(x, t)-\epsilon t \geq \tilde{u}(x, t)-\epsilon t, \text { such that equality holds at }\left(x_{0}, t_{0}\right) .
$$

Since $v$ attains a positive local maximum point at $\left(x_{0}, t_{0}\right)$, the smooth function $\tilde{u}(x, t)-\epsilon t$ also attains a positive maximum value at $\left(x_{0}, t_{0}\right)$, i.e.

$$
\tilde{u}_{t} \geq \epsilon, \quad a^{i j} D_{i j} \tilde{u}+b^{j} D_{j} \tilde{u} \leq 0, \quad c \tilde{u} \leq 0, \quad \text { at }\left(x_{0}, t_{0}\right),
$$

so that

$$
\tilde{u}_{t}+\mathcal{L} \tilde{u} \geq \epsilon>0 \quad \text { at }\left(x_{0}, t_{0}\right),
$$

which is in contradiction with (1.12).
Step 2. Suppose $\sup _{\Omega_{T}} v>0$ and $v<\sup _{\Omega_{T}} v$ in $\Omega_{T}$, i.e. $v$ attains its positive maximum at some $\left(x_{0}, t_{0}\right) \in \partial \Omega \times(0, T]$. By applying the Boundary Point Lemma (Theorem 1.1.7) we deduce that

$$
p^{j} D_{j} \tilde{u} \geq p^{j} D_{j} v>0 \quad \text { at }\left(x_{0}, t_{0}\right) .
$$

But this is impossible since, according to the definition of generalized subsolutions,

$$
p^{0} \tilde{u} \geq 0 \quad \text { and } \quad p^{j} D_{j} \tilde{u}+p^{0} \tilde{u} \leq 0 \quad \text { at }\left(x_{0}, t_{0}\right) .
$$

Step 3. By Steps 1 and 2, $v(x, t)=u(x, t)-\epsilon t \leq 0$ in $\Omega_{T}$ for all $\epsilon>0$. Letting $\epsilon \rightarrow 0$, we conclude that $u \leq 0$ in $\Omega_{T}$. In summary, $u(x, 0) \leq 0$ in $\Omega$ implies $u \leq 0$ in $\Omega_{T}$. This proves assertion 1 .
Step 4. Suppose that $u\left(x_{0}, t_{0}\right)=0$ for some $\left(x_{0}, t_{0}\right) \in \Omega \times(0, T]$. Then the Growth Lemma implies $u(x, t) \equiv 0$ in $\Omega \times\left[0, t_{0}\right)$. By continuity, we have $u(x, t) \equiv 0$ in $\bar{\Omega} \times\left[0, t_{0}\right]$.
Step 5. Suppose that $u\left(x_{0}, t_{0}\right)=0$ for some $\left(x_{0}, t_{0}\right) \in S \Omega_{T}$ and $u<0$ in $\Omega \times\left[0, t_{0}\right]$. We may repeat the arguments in Step 2 to obtain a contradiction. This completes the proof.

### 1.2 The Comparison Principle for Semilinear Equations

Consider the semilinear parabolic equation:

$$
\begin{equation*}
u_{t}+\mathcal{L} u=f(x, t, u, D u) \quad \text { in } \Omega_{T}, \quad \mathcal{B} u=0 \quad \text { on } S \Omega_{T}, \tag{1.13}
\end{equation*}
$$

where $\mathcal{L}$ is a non-divergence form operator with continuous coefficients, $f(x, t, s, p$ ) is $C^{\alpha}$ in $x, C^{\alpha / 2}$ in $t$ with $\alpha \in(0,1)$, and $C^{1}$ in ( $s, p$ ); $\mathcal{B} u$ is the oblique boundary operator.

Corollary 1.2.1 Suppose $u, v \in C\left(\bar{\Omega}_{T}\right)$ satisfies

$$
\begin{cases}u_{t}+\mathcal{L} u \leq f(x, t, u, D u) & \text { and } \quad v_{t}+L v \geq f(x, t, v, D v)  \tag{1.14}\\ \mathcal{B}(u-v) \leq 0 & \text { in } \Omega_{T} \\ & \text { in } S \Omega_{T}\end{cases}
$$

in the generalized sense. If $u(x, 0) \leq v(x, 0)$ in $\Omega$, then $u \leq v$ in $\Omega_{T}$.
Proof Suppose $u, v \in C^{2,1}\left(\bar{\Omega}_{T}\right)$ and satisfies (1.14) in the classical sense. It suffices to observe that $w=u-v$ satisfies

$$
w_{t}+\mathcal{L} w \leq b(x, t) \cdot D w+c(x, t) w \quad \text { in } \Omega_{T}, \quad \mathcal{B} w \leq 0 \quad \text { on } S \Omega_{T}
$$

in the generalized sense, where

$$
\left\{\begin{array}{l}
b(x, t)=\int_{0}^{1} D_{4} f(x, t, u(x, t), \xi D u(x, t)+(1-\xi) D v(x, t)) \mathrm{d} \xi \\
c(x, t)=\int_{0}^{1} D_{3} f(x, t, \xi u(x, t)+(1-\xi) v(x, t), D v(x, t)) \mathrm{d} \xi
\end{array}\right.
$$

and $D_{i} f$ is the partial derivative of $f$ with respect to the $i$-th variable. The conclusion follows from part 1 of Theorem 1.1.9. We leave the general case as an exercise (see Problem 1.4.2).

Definition 1.2.2 Suppose $f$ is independent of $t$, i.e. $f=f(x, u, D u)$. We say that $\underline{\theta} \in C^{2}(\Omega) \cap C^{1}(\bar{\Omega})$ is a subequilibrium of (1.13) in the classical sense if it satisfies in the classical sense the following:

$$
\begin{equation*}
\mathcal{L} \underline{\theta} \leq f(x, \underline{\theta}, D \underline{\theta}) \quad \text { in } \Omega, \quad \mathcal{B} \underline{\theta} \leq 0 \quad \text { on } \partial \Omega . \tag{1.15}
\end{equation*}
$$

And we say that $\underline{\theta} \in C(\bar{\Omega})$ is a subequilibrium of (1.13) in the generalized sense if for each $x_{0} \in \bar{\Omega}$, there exist a neighborhood $U$ of $x_{0}$ in $\bar{\Omega}$ and a function $\tilde{\theta} \in C^{2,1}(\bar{\Omega})$ such that $\underline{\theta} \geq \tilde{\theta}$ in $U, \underline{\theta}\left(x_{0}\right)=\tilde{\theta}\left(x_{0}\right)$, and $\tilde{\theta}$ satisfies

$$
\mathcal{L} \tilde{\theta}\left(x_{0}\right) \leq f\left(x_{0}, \tilde{\theta}\left(x_{0}\right), D \tilde{\theta}\left(x_{0}\right)\right) \quad \text { if } x_{0} \in \Omega,
$$

or

$$
\mathcal{B} \tilde{\theta}\left(x_{0}\right) \leq 0 \quad \text { if } x_{0} \in \partial \Omega .
$$

Analogously, we define the notion of superequilibrium in the classical and generalized sense by reversing the above inequalities.

Remark 1.2.3 Suppose $f$ is independent of $t$. If $\underline{\theta}$ is a subequilibrium of (1.13) in the classical sense (resp. generalized sense), then it is automatically a subsolution of (1.13) in the classical sense (resp. generalized sense). A similar statement holds for superequilibrium.

Corollary 1.2.4 (Monotone iteration method due to D. Sattinger [34]) Assume that $f=f(x, u, p)$ is independent of t. Suppose $u \in C^{2,1}\left(\Omega_{T}\right) \cap C^{1,0}(\bar{\Omega} \times(0, T]) \cap$ $C\left(\bar{\Omega}_{T}\right)$ is a classical solution of $u_{t}+\mathcal{L} u=f(x, u, D u)$ and $u_{0}(x)$ is a subequilibrium (resp. superequilibrium) in the generalized sense, then $t \mapsto u(x, t)$ is nondecreasing (resp. nonincreasing) for every $x \in \Omega$. Moreover, if $T=\infty$, and

$$
\sup _{t \geq 0}\|u(\cdot, t)\|_{L^{\infty}(\Omega)}<+\infty, \quad \limsup _{t \rightarrow \infty}\|f(\cdot, u(\cdot, t), D u(\cdot, t))\|_{L^{\infty}(\Omega)}<+\infty
$$

then $u_{\infty}(x):=\lim _{t \rightarrow \infty} u(x, t)$ converges in $C(\bar{\Omega})$, such that $u_{\infty} \in W^{2, p}(\Omega)$ satisfies $\mathcal{B} u_{\infty}=0$ in the classical sense, and is a strong solution of

$$
\begin{equation*}
\mathcal{L} u_{\infty}=f\left(x, u_{\infty}, D u_{\infty}\right) \quad \text { in } \Omega . \tag{1.16}
\end{equation*}
$$

Proof By Corollary 1.2.1, we have

$$
u\left(x, t_{0}\right) \geq u_{0}(x) \quad \text { for any }\left(x, t_{0}\right) \in \Omega \times(0, T) .
$$

Next, fix $t_{0} \in(0, T)$ and apply the comparison principle to the solutions to $u_{t}+\mathcal{L} u=$ $f(x, u)$ with initial conditions $u_{0}(x)$ and $u\left(x, t_{0}\right)$. We deduce that

$$
u\left(x, t+t_{0}\right) \geq u(x, t) \quad \text { for any } x \in \Omega, t \in\left(0, T-t_{0}\right]
$$

This proves the first part.
For the second part, observe first that since $u(x, t)$ is monotone and bounded as $t \rightarrow \infty$, the limit $u_{\infty}(x):=\lim _{t \rightarrow \infty} u(x, t)$ exists in the pointwise sense and belongs to $L^{\infty}(\Omega)$. Next, by the boundedness of $u$ and $f(x, t, u, D u)$ in $L^{\infty}(\Omega \times[0, \infty))$, we can apply the $L^{p}$ estimates to deduce that

$$
\sup _{t \geq 1}\|u\|_{W^{2,1, p}(\Omega \times[t, t+1])}<\infty
$$

This means $u(x, t+k)-u_{\infty}(x) \rightarrow 0$ as $k \rightarrow \infty$ weakly in $W^{2,1, p}(\Omega \times[0,1])$ and (thanks to Sobolev embedding) strongly in $C^{1+\alpha,(1+\alpha) / 2}(\bar{\Omega} \times[0,1])$. It is standard to check that $u_{\infty}$ is a strong solution of (1.16), and classical solution of $\mathcal{B} u_{\infty}=0$ on $\partial \Omega$.

Theorem 1.2.5 (Interior Harnack's inequality) Let $u \in W_{N+1, \text { loc }}^{2,1}(\Omega \times(0, T)) \cap$ $C\left(\bar{\Omega}_{T}\right)$ be a strong solution of $u_{t}+\mathcal{L} u=0$ in $\Omega \times(0, T)$ on $\Omega_{T}$. Suppose $u$ is nonnegative on $\Omega_{T}$. For each compact set $K \subset \Omega$ and $\delta>0$, there exists a $C_{1}=C_{1}(K)$ such that

$$
\begin{equation*}
\sup _{K} u(\cdot, s) \leq C_{1} \inf _{K} u(\cdot, t) \quad \text { for every } s, t \in[0, T] \text { satisfying } s \geq \delta, t-s \geq \delta \tag{1.17}
\end{equation*}
$$

If we further assume that $u \in C^{1,0}\left(\bar{\Omega}_{T}\right)$ and $\mathcal{B} u=0$ on $S \Omega_{T}$ in the classical sense, then $C_{1}$ can be chosen independent of $K$, i.e.

$$
\begin{equation*}
\sup _{\Omega} u(\cdot, s) \leq C_{1} \inf _{\Omega} u(\cdot, t) \quad \text { for every } s, t \in[0, T] \text { satisfying } s \geq \delta, t-s \geq \delta \tag{1.18}
\end{equation*}
$$

Proof For the proof of (1.17) see, e.g. [13, Theorem 2.2]. The estimate (1.18) is contained in the proof of [22, Theorem 2.5] (which is, in turn, based on the weak Harnack's inequalities [22, Lemma 3.5] and [29, Theorem 7.10]). Here, we shall give a quick proof of (1.18) for the special case of $u$ being a nonnegative solution of the Neumann problem

$$
\begin{cases}u_{t}-\Delta u=c(x, t) u & \text { in } \Omega_{T}  \tag{1.19}\\ \partial_{n} u:=n_{i}(x) D_{i} u=0 & \text { on } S \Omega_{T} \\ u(x, 0)=u_{0}(x) & \text { in } \Omega\end{cases}
$$

where $\Delta$ is the Laplace operator; $\Omega$ is a bounded domain with smooth boundary $\partial \Omega$; $\mathbf{n}(x)=\left(n_{i}(x)\right)$ is the outward unit normal vector on $\partial \Omega$; and $c \in L^{\infty}\left(\Omega_{T}\right)$. In this case, let $\tilde{u}$ be an extension of $u$ obtained via reflecting across the spatial boundary $S \Omega_{T}$. It is a standard fact that $\tilde{u}$ satisfies a uniformly parabolic equation in $\tilde{\Omega} \times[0, T]$, for some bounded open set $\tilde{\Omega}$ containing the closure of $\Omega$. Now, we may deduce (1.18) from (1.17).

Next, we give a useful result due to J. Húska [22, Theorem 2.5], for nonnegative strong solutions. Note that classical solutions are automatically strong solutions.
Theorem 1.2.6 (Harnack principle) Let $c \in L^{\infty}\left(\Omega_{T}\right), T \geq \delta_{0}$. Then there exists a $C$ (depending on $\delta_{0}$ among other things, but independent of $\underline{T}$ ) such that for every nonnegative strong solution $u \in W_{N+1, \text { loc }}^{2,1}(\Omega \times(0, T)) \cap C^{0,1}\left(\bar{\Omega}_{T}\right)$ of $u_{t}+\mathcal{L} u=0$ in $\Omega \times(0, T)$, which satisfies $\mathcal{B} u=0$ on $S \Omega_{T}$ in the classical sense, we have

$$
\sup _{x \in \Omega} u(x, t) \leq C \inf _{x \in \Omega} u(x, t) \quad \text { for each } t \in\left[\delta_{0}, T\right] .
$$

Proof By comparing the solution $u$ with the supersolution $\bar{u}=\mathrm{e}^{\|c\|_{\infty}\left(t-t_{1}\right)}$ over the set $\Omega \times\left[t_{1}, t_{2}\right]$, we deduce

$$
\begin{equation*}
\sup _{x \in \Omega} u\left(x, t_{2}\right) \leq \mathrm{e}^{\|c\|_{\infty}\left(t_{2}-t_{1}\right)} \sup _{x \in \Omega} u\left(x, t_{1}\right) \quad \text { for every } 0 \leq t_{1}<t_{2} \leq T . \tag{1.20}
\end{equation*}
$$

Next, we apply (1.18) of Theorem 1.2.5 and obtain

$$
\begin{equation*}
\sup _{\Omega} u\left(\cdot, t-\delta_{0}\right) \leq C \inf _{\Omega} u(\cdot, t) \tag{1.21}
\end{equation*}
$$

Finally, we combine (1.20) and (1.21) to deduce that there exists $C^{\prime}=C \mathrm{e}^{\|c\|_{\infty} \delta_{0}}$ such that

$$
\begin{equation*}
\sup _{\Omega} u(\cdot, t) \leq \mathrm{e}^{\|c\|_{\infty} \delta_{0}} \sup _{\Omega} u\left(\cdot, t-\delta_{0}\right) \leq C^{\prime} \inf _{\Omega} u(\cdot, t) . \tag{1.22}
\end{equation*}
$$

This completes the proof.
Fix $X_{0}=\left(x_{0}, t_{0}\right)$. Define

$$
Q\left(X_{0}, R\right)=\left\{(x, t):\left|x-x_{0}\right|<R, t_{0}-R^{2}<t<t_{0}\right\} .
$$

Theorem 1.2.7 (Local maximum principle) If $u \in W_{N+1}^{2,1}\left(Q\left(X_{0}, R\right)\right)$ satisfies $u_{t}+$ $\mathcal{L} u \leq f$ in $Q\left(X_{0}, R\right)$ in the strong sense, then for any $p>0$ and $r \in(0,1)$, there is a constant $C$ determined only by $p, r$ and bounds of the coefficients such that

$$
\sup _{Q\left(X_{0}, r R\right)} u \leq C\left[\left(R^{-N-2} \int_{Q\left(X_{0}, R\right)}\left(u^{+}\right)^{p} \mathrm{~d} X\right)^{1 / p}+R^{N /(N+1)}\|f\|_{L^{N+1}\left(Q\left(X_{0}, R\right)\right)}\right] .
$$

Proof See [28, Theorem 7.36].
Corollary 1.2.8 Suppose $u \in W_{N+1}^{2,1}\left(\Omega_{T}\right)$ satisfies $u_{t}-\Delta u+b^{i} D_{i} u+c u \leq f$ in $\Omega_{T}$ in the strong sense, and satisfies the Neumann boundary condition $n_{i} D_{i} u=0$ on $S \Omega_{T}$ in the classical sense. Then for any $p>0$ and $t_{0} \in(0, T)$, there is a constant $C$ determined by $p$, the domain $\Omega_{T}$, and bounds of the coefficients such that

$$
\sup _{\Omega \times\left(t_{0}, T\right]} u \leq C\left[\left\|u^{+}\right\|_{L^{p}\left(\Omega_{T}\right)}+\|f\|_{L^{N+1}\left(\Omega_{T}\right)}\right] .
$$

Proof This follows by first reflecting across the spatial boundary, to extend $u$ such that it is a strong solution to $u_{t}+\Delta u \leq f$ in a larger cylinder domain $\Omega_{T}^{\prime}$, and such that

$$
\sup _{\Omega_{T}^{\prime}} u^{+} \leq C \sup _{\Omega_{T}} u^{+} .
$$

The conclusion follows from the local maximum principle (Theorem 1.2.7). We omit the details.

### 1.3 The Principal Eigenvalue for Linear Elliptic Operators

We recall the classical Krein-Rutman theorem for positive compact linear operators.
Definition 1.3.1 Let $K$ be a subset of a Banach space $X$.

1. The set $K$ is a cone if (i) $K$ is closed and convex, (ii) $\mu K \subset K$ for all $\mu \geq 0$, and (iii) $K \cap(-K)=\{0\}$.
2. $K$ is a total cone if it is a cone and $K-K=\{x-y: x, y \in K\}$ is dense in $X$.
3. $K$ is a solid cone if it is a cone with nonempty interior.

Note that a cone $K$ is total if it is solid.
Definition 1.3.2 The cone $K$ in $X$ induces a partial ordering of $X$. For $x, y \in X$, we write

$$
x \leq y \quad(\text { resp. } \quad x<y, \quad x \ll y)
$$

if

$$
y-x \in K \quad(\text { resp. } y-x \in K \backslash\{0\}, \quad y-x \in \operatorname{Int} K) .
$$

In such a case, we say that $X$ is an ordered Banach space with order induced by the cone $K$.

We state the classical theorems due to Krein and Rutman [25]. The proofs can be found in Appendix B.

Theorem 1.3.3 (Krein and Rutman, weak form) Suppose that $X$ is a real ordered Banach space with order induced by a total cone $K$, and $T: X \rightarrow X$ is a compact linear operator with spectral radius $r(T)$. If $T(K) \subset K$ and $r(T)>0$, then there exist $x_{0} \in K \backslash\{0\}$ and $f_{0} \in K^{*} \backslash\{0\}$ such that

$$
T x_{0}=r x_{0} \quad \text { and } \quad T^{*} f_{0}=r f_{0}
$$

where $r=r(T), T^{*}$ is the adjoint of $T$, and $K^{*}$ is the adjoint cone

$$
K^{*}=\left\{f \in X^{*}: f(x) \geq 0 \quad \text { for all } x \in K\right\} .
$$

If $K$ is a solid cone in $X$ and $T$ is strongly monotone, then a stronger version of the theorem holds.

Theorem 1.3.4 (Krein and Rutman, strong form) Suppose that $X$ is a real ordered Banach space with order induced by the cone $K$. If $K$ is a solid cone and $T: X \rightarrow X$ is a compact linear operator which is strongly monotone, i.e. $T(K \backslash\{0\}) \subset \operatorname{Int} K$, then the following statements hold.

1. The spectral radius $r(T)$ is positive and is a simple eigenvalue with an eigenvector $v \in \operatorname{Int} K$. Moreover, there is no other eigenvalue with an eigenvector in $K \backslash\{0\}$. 2. There exists an $\epsilon>0$ such that $|\lambda|<r(T)-\epsilon$ for all eigenvalues $\lambda \in \mathbb{C} \backslash\{r(T)\}$.

In the following section, we will choose to work with eigenfunctions in the strong sense. This is consistent with our applying the Krein-Rutman theorem to the inverse of the elliptic operator $\mathcal{L}$ in the space $C(\bar{\Omega})$ of continuous function on $\bar{\Omega}$. Precisely, the eigenfunctions for the elliptic problem thus belong to $\cap_{p>1} W^{2, p}(\Omega)$. We remark that if all the coefficients are assumed to be Hölder continuous, then the eigenfunctions will be classical by virtue of the Schauder theory.

We will need the following touching lemma for strong solutions to elliptic problems with oblique derivative conditions.

Lemma 1.3.5 Let $a^{i j}, b^{i}, c, p^{i}, p^{0}$ be independent of time, and let $p>N$. Suppose $w \in W^{2, p}(\Omega)$ is a nonnegative, strong solution to

$$
\begin{cases}\mathcal{L} w \geq 0 & \text { in } \Omega, \\ \mathcal{B} w \geq 0 & \text { on } \partial \Omega .\end{cases}
$$

If $\inf _{\Omega} w=0$, then $w \equiv 0$ in $\bar{\Omega}$.
Note that by Sobolev imbedding, $w$ satisfies $\mathcal{B} w \geq 0$ in the classical sense on $\partial \Omega$.
Proof By the interior Harnack's inequality for nonnegative strong supersolutions [16, Theorem 9.22] asserts that, for each $x_{0}$ and $R>0$ such that $B_{2 R}\left(x_{0}\right) \subset \Omega$,

$$
\left(\frac{1}{\left|B_{R}\right|} \int_{B_{R}} w^{p}\right)^{1 / p} \leq C \inf _{B_{R}} w,
$$

where $p$ and $C$ are positive constants independent of $w$. It follows that the set $A=\{x \in \Omega: w(x)=0\}$ is open in $\Omega$. Since $w \in C(\bar{\Omega})$, we see that $A$ is also closed. Hence $A=\Omega$ or $A$ is empty. In the first case, $w \equiv 0$ and we are done. In the latter case $w>0$ in $\Omega$ and $w\left(x_{0}\right)=0$ for some $x_{0} \in \partial \Omega$. By the Hopf boundary lemma ${ }^{1}$, this implies that $\mathcal{B} w=p^{i} D_{i} w>0$ at $x_{0}$, which is a contradiction. Hence it must hold that $w \equiv 0$.

Theorem 1.3.6 If $a^{i j}, b^{i}, c, p^{i}, p^{0}$ are independent of time, then the elliptic eigenvalue problem

$$
\begin{cases}\mathcal{L} \phi=\mu \phi & \text { in } \Omega,  \tag{1.23}\\ \mathcal{B} \phi=0 & \text { on } \partial \Omega\end{cases}
$$

has a principal eigenvalue $\mu_{1}$, in the sense that

1. $\mu_{1} \in \mathbb{R}$ is a simple eigenvalue of (1.23).
2. $\mu_{1}<\inf \operatorname{Re} \mu$, where the infimum is taken over all eigenvalues $\mu$ of (1.23) which are distinct from $\mu_{1}$.
3. The eigenfunction $\phi_{1}(x)$ corresponding to $\mu_{1}$ can be chosen such that $\phi_{1}>0$ in $\bar{\Omega}$.
4. If $\mu$ is an eigenvalue of (2.1) with a nonnegative eigenfunction, then $\mu=\mu_{1}$.

Remark 1.3.7 It follows from Theorem 1.3.6 that if the boundary value problem

$$
\mathcal{L} w=\mu_{0} w \quad \text { in } \Omega, \quad \mathcal{B} w=0 \quad \text { on } \partial \Omega
$$

has a positive solution for some $\mu_{0} \in \mathbb{R}$, then $\mu_{0}$ is necessarily the principal eigenvalue of (1.23).

[^1]Remark 1.3.8 In fact, the same conclusion holds for the weighted eigenvalue problem:

$$
\begin{cases}\mathcal{L} \phi=\mu \beta \phi & \text { in } \Omega,  \tag{1.24}\\ \mathcal{B} \phi=0 & \text { on } \partial \Omega,\end{cases}
$$

where $\beta \in C(\bar{\Omega})$ is strictly positive on $\bar{\Omega}$. See Problem 1.4.3.
Proof In the following, we present a proof based on applying the Krein-Rutman theorem to the inverse of elliptic operator $\mathcal{L}$. A shorter proof is possible by considering the semigroup operator of the parabolic problem; this will be presented in Chapter 2. If the elliptic problem is not linear (e.g. $\mathcal{L}$ is only positively homogeneous of degree one and is well-defined only in a cone), then it may be necessary to use the proof based on the semigroup operator; see [19] for an example in this situation.

Recall that $\mathcal{L}=-a^{i j} D_{i j}-b^{i} D_{i}-c$, where $a^{i j}, b^{i}, c \in C^{0}(\bar{\Omega})$ satisfy the ellipticity condition (1.3). Replacing $\mu$ by $\mu-\|c\|_{C(\bar{\Omega})}-1$ in (1.23), we may assume without loss of generality that $c \leq-1$ in $\Omega$.

Consider the inhomogeneous linear problem

$$
\begin{cases}\mathcal{L} v=f & \text { in } \Omega,  \tag{1.25}\\ \mathcal{B} v=0 & \text { on } \partial \Omega .\end{cases}
$$

Given $f \in C(\bar{\Omega})$, it is well-known that (1.25) has a unique solution $v \in \cap_{p>1} W^{2, p}(\Omega)$ (see, e.g. [30, Theorem 6.30]). Hence, we can define the linear operator $T: C(\bar{\Omega}) \rightarrow$ $C(\bar{\Omega})$ such that $T f=v$. Moreover, for each $p>1$, there exists a $C$ such that

$$
\|v\|_{W^{2, p}(\Omega)} \leq C\|f\|_{L^{p}(\Omega)} \leq C^{\prime}\|f\|_{C(\bar{\Omega})} .
$$

The Sobolev embedding theorem (see [16, Chapter 7]) asserts that $W^{2, p}(\Omega)$ is compactly embedded in $C^{1}(\bar{\Omega})$ for $p>N$. We can therefore take $p>N$ in the above inequality and deduce that the linear operator $T$ is compact.

Next, we remark that $T$ is strongly monotone, by the classical maximum principle for elliptic equations. Indeed, this can be derived from the maximum principle for parabolic equations by observing that, by Duhamel's principle, we have

$$
T f=\int_{0}^{\infty} \Phi_{t}[f] \mathrm{d} t
$$

where $\Phi_{t}: C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$ is the semigroup operator so that $\Phi_{t}\left[u_{0}\right]=u(\cdot, t)$, with $u(x, t)$ being the unique solution to the initial boundary value problem

$$
\begin{cases}u_{t}+\mathcal{L} u=0 & \text { in } \Omega_{T}, \\ B u=0 & \text { on } S \Omega_{T}, \\ u(x, 0)=u_{0}(x) & \text { in } \Omega .\end{cases}
$$

Since $\Phi_{t}$ is strongly monotone for each $t>0$ (thanks to the Strong Maximum Principle for linear parabolic equations), so is $T$.

Finally, we invoke the strong version of the Krein-Rutman theorem (Theorem 1.3.4) to deduce that $T$ has a principal eigenvalue $\Lambda_{1}$, in the sense that (i) $\Lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of $T$; (ii) $\Lambda_{1}>\sup |\Lambda|$, where the supremum is taken over all other eigenvalues of $T$; (iii) the eigenfunction $\phi_{1}$ corresponding to $\Lambda_{1}$ can be chosen so that $\phi_{1}>0$ in $\bar{\Omega}$; (iv) if $\Lambda$ is an eigenvalue of $T$ with a nonnegative eigenfunction, then $\Lambda=\Lambda_{1}$. By the definition of $T$, we deduce that the problem (1.23) has the principal eigenvalue $\mu_{1}=\frac{1}{\Lambda_{1}}$ with the desired properties, except for assertion 2 .

We prove assertion 2 by adapting an argument from [12, Chapter 6]. Given any other eigenvalue $\mu \in \mathbb{C}$ of (1.23) such that $\operatorname{Re} \mu \leq \mu_{1}$, we will show that $\mu=\mu_{1}$.

Indeed, let $\mathcal{L} u=\mu u$ for some $u \not \equiv 0$, set

$$
v=\frac{u}{\phi_{1}},
$$

then direct computation yields

$$
\begin{equation*}
\mu v=\frac{1}{\phi_{1}} \mathcal{L}\left(v \phi_{1}\right)=\mathcal{L} v+c v-\frac{2}{\phi_{1}} a^{i j} D_{j} \phi_{1} D_{i} v+\frac{v}{\phi_{1}} \mathcal{L} \phi_{1} . \tag{1.26}
\end{equation*}
$$

Writing $\tilde{b}^{i}=b^{i}+\frac{1}{\phi_{1}} a^{i j} D_{j} \phi_{1}$ and

$$
K v:=-a^{i j} D_{i j} v-\tilde{b}^{i} D_{i} v
$$

we deduce from (1.26) that

$$
\begin{equation*}
K v=\left(\mu-\mu_{1}\right) v \quad \text { in } \Omega . \tag{1.27}
\end{equation*}
$$

Taking the complex conjugate, we also derive

$$
\begin{equation*}
K \bar{v}=\left(\bar{\mu}-\mu_{1}\right) \bar{v} \quad \text { in } \Omega . \tag{1.28}
\end{equation*}
$$

Next, we compute

$$
\begin{equation*}
K\left(|v|^{2}\right)=K(v \bar{v})=\bar{v} K v+v K \bar{v}-2 a^{i j} D_{i} v D_{j} v \leq \bar{v} K v+v K \bar{v}-2 \lambda_{0}|D v|^{2}, \tag{1.29}
\end{equation*}
$$

where we used

$$
a^{i j} \xi_{i} \bar{\xi}_{j}=a^{i j}\left[\operatorname{Re} \xi_{i} \operatorname{Re} \xi_{j}+\operatorname{Im} \xi_{i} \operatorname{Im} \xi_{j}\right] \geq \lambda_{0}|\xi|^{2}
$$

Substituting (1.27) and (1.28) into (1.29), we obtain

$$
K\left(|v|^{2}\right) \leq 2\left(\operatorname{Re} \mu-\mu_{1}\right)|v|^{2}-2 \lambda_{0}|D v|^{2} \quad \text { in } \Omega .
$$

If $\operatorname{Re} \mu \leq \mu_{1}$, we claim that $v$ is constant, i.e. $u \in \operatorname{span}\left\{\phi_{1}\right\}$. Indeed, let $w=$ $\left(\sup _{\Omega}|v|^{2}\right)-|v|^{2}$, then $w$ satisfies

$$
\left\{\begin{array}{lll}
K w \geq 2 \lambda_{0}|D v|^{2} \geq 0 & \text { and } & w \geq, \not \equiv 0  \tag{1.30}\\
p^{j} D_{j} w=0 & & \text { in } \Omega, \\
& & \text { on } \partial \Omega .
\end{array}\right.
$$

By construction, $\inf _{\Omega} w=0$. By the touching lemma (see Lemma 1.3.5), it follows that $w \equiv 0$ in $\Omega$. Substituting this back into (1.30), we have that $|D v| \equiv 0$ in $\Omega$. This implies that $u \in \operatorname{span}\left\{\phi_{1}\right\}$. Hence, $\mu=\mu_{1}$ and the proof is complete.

The following lemma gives a characterization of the maximum principle by the existence of a positive strict supersolution. The reader may skip the proof on first reading.

Lemma 1.3.9 Suppose that the assumptions of Theorem 1.3.6 hold. Let $\Omega$ be a bounded domain with smooth boundary $\partial \Omega$, and let $\Omega^{\prime} \subset \Omega$ be a proper subdomain. Suppose there exists a $w \in C\left(\bar{\Omega}^{\prime}\right)$ such that $w>0$ in $\bar{\Omega}^{\prime}$ and

$$
\begin{cases}\mathcal{L} w \geq 0 & \text { in } \Omega^{\prime}  \tag{1.31}\\ \mathcal{B} w \geq 0 & \text { in }\left(\partial \Omega^{\prime}\right) \cap(\partial \Omega)\end{cases}
$$

in the generalized sense. Then for any $u \in C(\bar{\Omega})$ such that

$$
\begin{cases}\mathcal{L} u \leq 0 & \text { in } \Omega^{\prime}  \tag{1.32}\\ \mathcal{B} u \leq 0 & \text { in }\left(\partial \Omega^{\prime}\right) \cap(\partial \Omega) \\ u \leq 0 & \text { on }\left(\partial \Omega^{\prime}\right) \cap \Omega\end{cases}
$$

in the generalized sense, we have

$$
u \equiv 0 \quad \text { in } \Omega^{\prime}, \quad \text { or } \quad u<0 \quad \text { in } \Omega^{\prime} \cup\left[\left(\partial \Omega^{\prime}\right) \cap(\partial \Omega)\right] .
$$

## Proof Let

$$
\partial \Omega^{\prime}=\Gamma_{1} \cup \Gamma_{2}, \quad \text { where } \Gamma_{1}=\left(\partial \Omega^{\prime}\right) \cap(\partial \Omega), \quad \Gamma_{2}=\left(\partial \Omega^{\prime}\right) \cap \Omega .
$$

Since $\Omega^{\prime}$ is a proper subset of $\Omega$, and both are connected, $\Gamma_{2}$ is a nonempty set on which $w>0 \geq u$. Hence $u \neq k w$ for all $k>0$. By the strong maximum principle, it suffices to show that $u \leq 0$ in $\Omega^{\prime}$. Suppose not, then there exists a constant $k>0$ such that $v=u-k w$ satisfies

$$
v \leq 0 \quad \text { in } \Omega^{\prime}, \quad \text { and } v\left(x_{0}\right)=0 \quad \text { for some } x_{0} \in \bar{\Omega}^{\prime},
$$

and also satisfies (1.32) in the generalized sense. On the one hand, the strong maximum principle implies $x_{0} \notin \Omega^{\prime}$. On the other hand, $w>0$ on $\bar{\Gamma}_{2}$, so that $v<0$ on $\bar{\Gamma}_{2}$ and hence $x_{0} \notin \bar{\Gamma}_{2}$. Hence, $v<0$ in $\Omega^{\prime}$ and $v\left(x_{0}\right)=0$ for some $x_{0} \in \partial \Omega^{\prime} \backslash \bar{\Gamma}_{2}$. Therefore, $x_{0}$ lies on the interior of $\Gamma_{1}$, which is the smooth part of $\partial \Omega^{\prime}$. The Hopf Boundary Lemma implies

$$
\mathcal{B} v=p^{i} D_{i} v+p^{0} v=p^{i} D_{i} v>0 \quad \text { at } x_{0}
$$

This is a contradiction, since $\mathcal{B} v=\mathcal{B} u-k \mathcal{B} w \leq 0$.
Corollary 1.3.10 Suppose that the assumptions of Theorem 1.3.6 hold. Let $\Omega$ be a bounded domain with smooth boundary $\partial \Omega$. Suppose there exists a $w \in C(\bar{\Omega})$ such that $w>0$ in $\bar{\Omega}$ and

$$
\begin{cases}\mathcal{L} w \geq 0 & \text { in } \Omega  \tag{1.33}\\ \mathcal{B} w \geq 0 & \text { in } \partial \Omega\end{cases}
$$

in the generalized sense. Then for any $u \in C(\bar{\Omega})$ such that

$$
\begin{cases}\mathcal{L} u \leq 0 & \text { in } \Omega,  \tag{1.34}\\ \mathcal{B} u \leq 0 & \text { in } \partial \Omega\end{cases}
$$

in the generalized sense, one of the following holds.

- $u<0$ in $\bar{\Omega}$;
- $u \equiv 0$ in $\bar{\Omega}$;
- $u \equiv k w$ in $\Omega$, and equalities hold in (1.33) in the classical sense.

Remark 1.3.11 If $w$ is a strict positive supersolution, then it must hold that $u \leq 0$, i.e. the maximum principle holds. If there are no strict positive supersolutions, then it must hold that $\mu_{1} \leq 0$, where $\mu_{1}$ is the principal eigenvalue of (1.23) (otherwise the corresponding eigenfunction $\phi_{1}>0$ is a strict positive supersolution). In such a case the maximum principle fails as

$$
\mathcal{L} \phi_{1} \leq 0 \quad \text { in } \Omega, \quad \mathcal{B} \phi_{1}=0
$$

but $\phi_{1}>0$ in $\bar{\Omega}$.
Proof If $u \leq 0$ in $\Omega$, then the strong maximum principle asserts that either $u \equiv 0$ or $u<0$ in $\bar{\Omega}$. If $u>0$ somewhere in $\Omega$, repeat the proof of Lemma 1.3.9 with $\Omega^{\prime}=\underline{\Omega}$, then there exists a $k>0$ such that $v=u-k w$ satisfies either $v \equiv 0$ or $v<0$ in $\bar{\Omega}$. By the choice of $k$, we must have $v \equiv 0$. This implies that $u \in \operatorname{span}\{w\}$.

One can estimate the principal eigenvalue by constructing appropriate super/subsolutions, as the following two lemmas illustrate. For simplicity, we assume in addition that $a^{i j}, b^{i}, c \in C^{\alpha}(\bar{\Omega})$ and $p^{i} \in C^{1+\alpha}(\bar{\Omega})$, so that the principal eigenfunction $\phi \in C^{2+\alpha}(\bar{\Omega})$ thanks to the Schauder theory (see [30, Chapter 2]).

Lemma 1.3.12 Suppose that the assumptions of Theorem 1.3.6 hold and let $\mu_{1}$ be the principal eigenvalue of (1.23). Suppose, in addition, that there exist a function $w \in C(\bar{\Omega})$ and a constant $\underline{\mu}$ such that $w>0$ in $\bar{\Omega}$ is a supersolution in the sense that

$$
\begin{equation*}
\mathcal{L} w \geq \underline{\mu} w \quad \text { in } \Omega, \quad \text { and } \quad \mathcal{B} w \geq 0 \quad \text { on } \partial \Omega \tag{1.35}
\end{equation*}
$$

in the generalized sense. Then $\mu_{1} \geq \mu$ and equality holds if and only if $w$ is the corresponding eigenfunction, i.e. equalities hold in (1.35).

Proof Let $\mu_{1}$ and $\phi>0$ be the principal eigenvalue and positive eigenfunction of (1.23). Define $u=\phi-k w$, where $k>0$ is the least real number such that $\phi-k w \leq 0$.

Suppose that $\mu_{1} \leq \mu$. It remains to show that $\mu_{1}=\mu$ and $w$ satisfies (1.23) in the classical sense. Indeed, Corollary 1.3.10 implies that $\bar{u}=\phi-k w \in \operatorname{span}\{\phi\}$. By the choice of $k$, we must have $u=0$. Hence $w \in \operatorname{span}\{\phi\}$.

Lemma 1.3.13 Suppose that the assumptions of Theorem 1.3.6 hold and let $\mu_{1}$ be the principal eigenvalue of (1.23). Suppose, in addition, that there exist a nonnegative and nontrivial function $w \in C(\bar{\Omega})$ and a constant $\bar{\mu}$ such that $w$ is a subsolution of (1.23), i.e.

$$
\begin{equation*}
\mathcal{L} w \leq \bar{\mu} w \quad \text { in } \Omega, \quad \text { and } \quad \mathcal{B} w \leq 0 \quad \text { on } \partial \Omega, \tag{1.36}
\end{equation*}
$$

in the generalized sense. Then $\mu_{1} \leq \bar{\mu}$, and equality holds if and only if $w$ is the corresponding eigenfunction, i.e. equality holds in (1.36).

Proof Let $\mu_{1}$ and $\phi>0$ be the principal eigenvalue and positive eigenfunction of (1.23). Define $u=w-k \phi$, where $k>0$ is the least real number such that $\phi-k w \leq 0$.

Suppose that $\mu_{1} \geq \bar{\mu}$, it remains to show that $\mu_{1}=\bar{\mu}$ and $w$ satisfies (1.23) in the classical sense. Indeed, Corollary 1.3.10 implies that $u=w-k \phi \in \operatorname{span}\{\phi\}$. By the choice of $k$, we must have $u=0$. Hence $w \in \operatorname{span}\{\phi\}$.

We end this chapter with a classical result: the monotonicity dependence of eigenvalue on the growth rate $c(\cdot)$ and the diffusion rate $d$. Consider the following elliptic eigenvalue problem.

$$
\begin{cases}-d \Delta \phi-c \phi=\mu \phi & \text { in } \Omega,  \tag{1.37}\\ \mathbf{n} \cdot \nabla \phi+p^{0} \phi=0 & \text { on } \partial \Omega,\end{cases}
$$

where $d>0$ and $c \in C^{\alpha}(\bar{\Omega})$ and $0 \leq p^{0} \in C^{1+\alpha}(\bar{\Omega})$ for some $\alpha \in(0,1)$. It follows that the principal eigenfunction $\phi_{1} \in C^{2+\alpha}(\bar{\Omega})$ satisfies (1.37) in the classical sense.

Lemma 1.3.14 Let $\mu_{1}(c)$ be the principal eigenvalue of (1.37), and let $\mu_{1}\left(c^{\prime}\right)$ be the principal eigenvalue of (1.37) with $c$ replaced by $c^{\prime}$. If $c \leq c^{\prime}$ in $\Omega$, then $\mu_{1}(c) \geq \mu_{1}\left(c^{\prime}\right)$.

Proof This follows from Lemma 1.3.12.
We prove the well-known results concerning the monotonicity of eigenvalue with respect to the diffusion rate. Note that this monotonicity fails in general when the drift is nonzero.

Proposition 1.3.15 Let $\mu_{1}$ be the principal eigenvalue of (1.37). Then $\mu_{1}=\mu_{1}(d)$ is smooth and nondecreasing in the diffusion rate $d>0$. If, in addition, $c$ is nonconstant or $p^{0} \not \equiv 0$, then $\frac{\partial}{\partial d} \mu_{1}>0$ for $d>0$.

Proof By scaling, we may assume without loss of generality that $|\Omega|=1$. Fix a positive eigenfunction $\phi_{1}$ corresponding to $\mu_{1}$ and normalize it by $\int_{\Omega}\left|\phi_{1}\right|^{2}=1$.

Assuming smoothness, we denote by ' the partial derivative with respect to the diffusion rate $d$, and differentiate (1.37) to obtain

$$
\begin{cases}d \Delta \phi_{1}^{\prime}+c \phi_{1}^{\prime}+\mu_{1} \phi_{1}^{\prime}+\Delta \phi_{1}=-\mu_{1}^{\prime} \phi_{1} & \text { in } \Omega,  \tag{1.38}\\ \mathbf{n} \cdot \nabla \phi_{1}^{\prime}+p^{0} \phi_{1}^{\prime}=0 & \text { on } \partial \Omega .\end{cases}
$$

We claim that

$$
\begin{equation*}
\int_{\Omega} \phi_{1} \Delta \phi_{1}^{\prime}=\int_{\Omega} \phi_{1}^{\prime} \Delta \phi_{1} \tag{1.39}
\end{equation*}
$$

Indeed,

$$
\begin{aligned}
\int_{\Omega} \phi_{1} \Delta \phi_{1}^{\prime} & =-\int_{\Omega} \nabla \phi_{1} \cdot \nabla \phi_{1}^{\prime}+\int_{\partial \Omega} \phi_{1}\left(\mathbf{n} \cdot \nabla \phi_{1}^{\prime}\right) \\
& =\int_{\Omega} \phi_{1}^{\prime} \Delta \phi_{1}+\int_{\partial \Omega}\left[\phi_{1}\left(\mathbf{n} \cdot \nabla \phi_{1}^{\prime}\right)-\phi_{1}^{\prime}\left(\mathbf{n} \cdot \nabla \phi_{1}\right)\right] \\
& =\int_{\Omega} \phi_{1}^{\prime} \Delta \phi_{1}+\int_{\partial \Omega}\left[\phi_{1}\left(-p^{0} \phi_{1}^{\prime}\right)-\phi_{1}^{\prime}\left(-p^{0} \phi_{1}\right)\right]=\int_{\Omega} \phi_{1}^{\prime} \Delta \phi_{1}
\end{aligned}
$$

where we used the homogeneous Robin boundary condition.
Multiplying (1.38) by $\phi_{1}$ and using (1.39), we obtain

$$
\begin{aligned}
-\mu_{1}^{\prime} \int_{\Omega}\left|\phi_{1}\right|^{2} & =\int_{\Omega} \phi_{1}\left(d \Delta \phi_{1}^{\prime}+c \phi_{1}^{\prime}+\mu_{1} \phi_{1}^{\prime}\right)+\int_{\Omega} \phi_{1} \Delta \phi_{1} \\
& =\int_{\Omega} \phi_{1}\left(d \Delta \phi_{1}^{\prime}+c \phi_{1}^{\prime}+\mu_{1} \phi_{1}^{\prime}\right)-\int_{\Omega}\left|\nabla \phi_{1}\right|^{2}+\int_{\partial \Omega} \phi_{1}\left(\mathbf{n} \cdot \nabla \phi_{1}\right) \\
& =\int_{\Omega} \phi_{1}^{\prime}\left(d \Delta \phi_{1}+c \phi_{1}+\mu_{1} \phi_{1}\right)-\int_{\Omega}\left|\nabla \phi_{1}\right|^{2}-\int_{\partial \Omega} p^{0}\left|\phi_{1}\right|^{2} \\
& =-\int_{\Omega}\left|\nabla \phi_{1}\right|^{2}-\int_{\partial \Omega} p^{0}\left|\phi_{1}\right|^{2} \leq 0
\end{aligned}
$$

This proves that $\mu_{1}^{\prime} \geq 0$ for all $d>0$, i.e. $d \mapsto \mu_{1}$ is nondecreasing. If, in addition, either $c$ is nonconstant, or $p^{0} \not \equiv 0$, then $\phi_{1}$ is nonconstant, so that $\mu_{1}^{\prime}>0$ for all $d>0$.

It remains to prove the smooth dependence of $\left(\mu_{1}, \phi_{1}\right)$ on $d$. We use an idea due to A. Lazer (see [4, Lemma 1.2]) via the Implicit Function Theorem by regarding ( $\mu_{1}, \phi_{1}$ ) as the unique solution of the mapping $\mathcal{F}: \mathbb{R} \times Y \times(0, \infty) \rightarrow C^{\alpha}(\bar{\Omega})$, given by

$$
\mathcal{F}\left(\begin{array}{c}
\mu \\
\phi \\
d
\end{array}\right)=\binom{d \Delta \phi+c \phi+\mu \phi}{\frac{1}{2} \int_{\Omega}|\phi|^{2} \mathrm{~d} x}
$$

where

$$
Y=\left\{\phi \in C^{2+\alpha}(\bar{\Omega}): \mathbf{n} \cdot \nabla \phi+p^{0} \phi=0 \text { on } \partial \Omega\right\}
$$

For each $d>0$, Theorem 1.3.6 asserts the existence of $\left(\mu_{1}, \phi_{1}\right)=\left(\mu_{1}(d), \phi_{1}(x ; d)\right)$ such that

$$
\mathcal{F}\left(\mu_{1}(d), \phi_{1}(\cdot ; d), d\right)=0
$$

To prove the smooth dependence of ( $\mu_{1}, \phi_{1}$ ) on $d$, it suffices to show that for each fixed $d>0$, the linear mapping

$$
D_{(\mu, \phi)} \mathcal{F}\left(\mu_{1}(d), \phi_{1}(\cdot ; d), d\right): \mathbb{R} \times Y \rightarrow C^{\alpha}(\bar{\Omega}) \times \mathbb{R}
$$

is invertible. To this end, given $(f, \bar{g}) \in C^{\alpha}(\bar{\Omega}) \times \mathbb{R}$, we need to prove the existence and uniqueness of $(\bar{h}, w) \in \mathbb{R} \times Y$ such that

$$
\begin{cases}d \Delta w+c w+\mu_{1} w+\bar{h} \phi_{1}=f & \text { in } \Omega  \tag{1.40}\\ \mathbf{n} \cdot \nabla w+p^{0} w=0 & \text { on } \partial \Omega \\ \int_{\Omega} \phi_{1} w=\bar{g} & \end{cases}
$$

First we show the existence. To this end, we choose $\bar{h}=\int_{\Omega} f \phi_{1}$, so that

$$
\begin{equation*}
\int_{\Omega}\left(f-\bar{h} \phi_{1}\right) \phi_{1}=\left(\int_{\Omega} f \phi_{1}\right)-\bar{h}=0 . \tag{1.41}
\end{equation*}
$$

Next, we define $\hat{w} \in W^{1,2}(\Omega)$ to be the unique weak solution to

$$
\begin{cases}d \Delta \hat{w}+c \hat{w}+\mu_{1} \hat{w}=f-\bar{h} \phi_{1} & \text { in } \Omega, \\ \mathbf{n} \cdot \nabla \hat{w}+p^{0} \hat{w}=0 & \text { on } \partial \Omega, \\ \int_{\Omega} \hat{w} \phi_{1}=0 . & \end{cases}
$$

Such a choice of $\hat{w}$ is well-defined in view of the Fredholm alternative [16, Theorem 5.11], thanks to (1.41) and the fact that $\mu_{1}$ is a simple eigenvalue with eigenfunction $\phi_{1}$. Furthermore, $\hat{w} \in C^{2+\alpha}(\bar{\Omega})$ according to elliptic regularity theory [30, Theorem 4.40]. Finally, define $w=\hat{w}+\bar{g} \phi_{1}$, and observe that ( $\bar{h}, w$ ) satisfies (1.40). This proves the existence.

To show uniqueness, we set $(f, \bar{g})=(0,0)$ in (1.40) and proceed to show $(\bar{h}, w)=$ $(0,0)$. Indeed, multiplying the first equation of (1.40) by $\phi_{1}$, and integrating, we have

$$
-\bar{h} \int_{\Omega}\left|\phi_{1}\right|^{2}=\int_{\Omega} \phi_{1}\left(d \Delta w+c w+\mu_{1} w\right)=\int_{\Omega} w\left(d \Delta \phi_{1}+c \phi_{1}+\mu_{1} \phi_{1}\right)=0
$$

where we used the Robin boundary condition of $w$ and $\phi_{1}$, as we integrate by parts twice for the second equality. Thus $\bar{h}=0$ and (1.40) becomes

$$
\left\{\begin{array}{cl}
d \Delta w+c w+\mu_{1} w=0 & \text { in } \Omega, \\
\mathbf{n} \cdot \nabla w+p^{0} w=0 & \text { on } \partial \Omega, \\
\int_{\Omega} w \phi_{1}=0 . &
\end{array}\right.
$$

Since $\mu_{1}$ is a simple eigenvalue, it follows that $w=k \phi_{1}$ for some $k \in \mathbb{R}$, so that the integral condition becomes $\int_{\Omega} k\left|\phi_{1}\right|^{2}=0$. Since $\phi_{1} \neq 0$, we have $k=0$. i.e. $w=0$. This completes the proof of the smooth dependence of ( $\mu_{1}, \phi_{1}$ ) on $d$.

Proposition 1.3.16 Let $\mu_{1}$ be the principal eigenvalue of (1.37), where $p^{0} \geq 0$. Then

$$
\begin{equation*}
\mu_{1} \geq-\max _{\bar{\Omega}} c . \tag{1.42}
\end{equation*}
$$

Furthermore, we have

$$
\begin{equation*}
\lim _{d \rightarrow 0+} \mu_{1}=-\max _{\bar{\Omega}} c . \tag{1.43}
\end{equation*}
$$

Proof First, we integrate the first equation of

$$
\begin{cases}-d \Delta \phi_{1}-c \phi_{1}=\mu_{1} \phi_{1} & \text { in } \Omega  \tag{1.44}\\ \mathbf{n} \cdot \nabla \phi_{1}+p^{0} \phi_{1}=0 & \text { on } \partial \Omega\end{cases}
$$

over $\Omega$ to obtain

$$
\begin{equation*}
-\int_{\Omega} c \phi_{1} \leq \mu_{1} \int_{\Omega} \phi_{1} \tag{1.45}
\end{equation*}
$$

In particular, (1.42) holds. Note that (1.42) can also be established by applying Lemma 1.3.12, which is the comparison principle for the principal eigenvalues; see Problem 1.4.9.

Next, we show (1.43). For this purpose, fix $x_{0} \in \Omega$ and $0<r<\operatorname{dist}\left(x_{0}, \partial \Omega\right)$, and let $\tilde{\lambda}$ and $\tilde{\phi}$ be the principal eigenvalue and the positive eigenfunction of

$$
-\Delta \tilde{\phi}=\tilde{\lambda} \tilde{\phi} \quad \text { in } B_{r}\left(x_{0}\right), \quad \tilde{\phi}=0 \quad \text { on } \partial B_{r}\left(x_{0}\right) .
$$

Since $\phi_{1}>0$ in $\overline{B_{r}\left(x_{0}\right)}$ and $\tilde{\phi}=0$ on $\partial B_{r}\left(x_{0}\right)$, up to multiplication of $\tilde{\phi}$ by a positive constant, we may assume that

$$
\phi_{1} \geq \tilde{\phi} \quad \text { in } B_{r}\left(x_{0}\right) \quad \text { and } \quad \phi_{1}\left(x_{0}^{\prime}\right)=\tilde{\phi}\left(x_{0}^{\prime}\right)>0 \quad \text { for some } x_{0}^{\prime} \in B_{r}\left(x_{0}\right) .
$$

Therefore, $\Delta \phi_{1}\left(x_{0}^{\prime}\right) \geq \Delta \tilde{\phi}\left(x_{0}^{\prime}\right)$. Evaluating (1.44) at the point $x_{0}^{\prime}$, we have

$$
d \tilde{\lambda} \tilde{\phi}\left(x_{0}^{\prime}\right)=-d \Delta \tilde{\phi}\left(x_{0}^{\prime}\right) \geq\left(c\left(x_{0}^{\prime}\right)+\mu_{1}\right) \tilde{\phi}\left(x_{0}^{\prime}\right) .
$$

Dividing by $\tilde{\phi}\left(x_{0}^{\prime}\right)>0$, we have

$$
\mu_{1} \leq-c\left(x_{0}^{\prime}\right)+d \tilde{\lambda} \leq-\inf _{B_{r}\left(x_{0}\right)} c+d \tilde{\lambda}
$$

Taking lim sup as $d \rightarrow 0$, and then sending $r \rightarrow 0$, we have

$$
\limsup _{d \rightarrow 0} \mu_{1} \leq-c\left(x_{0}\right) \quad \text { for each } x_{0} \in \Omega .
$$

Since $x_{0} \in \Omega$ is arbitrary, we obtain

$$
\begin{equation*}
\limsup _{d \rightarrow 0} \mu_{1} \leq-\max _{\bar{\Omega}} c . \tag{1.46}
\end{equation*}
$$

Combining with the first inequality in (1.42), we obtain (1.43).

Next, we prove an elementary result of semi-classical analysis.
Proposition 1.3.17 Let $\mu_{1}$ be the principal eigenvalue of (1.37), where $p^{0} \geq 0$. Let $\phi_{1}$ be a positive eigenfunction associated with $\mu_{1}$, which is normalized by $\sup _{\Omega} \phi_{1}=$ 1 , then as $d \rightarrow 0$,

$$
\phi_{1} \rightarrow 0 \quad \text { locally uniformly in } \Omega_{0},
$$

where $\Omega_{0}=\left\{x \in \bar{\Omega}: c(x)<\sup _{\Omega} c\right\}$.
Remark 1.3.18 In particular, the principal eigenfunction $\phi_{1}$ (normalized by $\sup _{\Omega} \phi_{1}=$ 1) concentrates on the set where $c$ attains its global maximum value.

Proof Set $d=\epsilon^{2}$, then $\phi_{1}$ and $\mu_{1}$ satisfies

$$
-\epsilon^{2} \Delta \phi_{1}=\left(c(x)+\mu_{1}\right) \phi_{1} \quad \text { in } \Omega .
$$

Next, we introduce the WKB-ansatz (see [14])

$$
w_{\epsilon}=-\epsilon \log \phi_{1} .
$$

Then $w_{\epsilon} \geq 0$, and satisfies

$$
\begin{cases}-\epsilon \Delta w_{\epsilon}+\left|\nabla_{x} w_{\epsilon}\right|^{2}+c(x)+\mu_{1}=0 & \text { in } \Omega  \tag{1.47}\\ \mathbf{n} \cdot \nabla w_{\epsilon} \geq 0 & \text { on } \partial \Omega \\ \inf _{\Omega} w_{\epsilon}=0 & \end{cases}
$$

Define the semi-relaxed limit

$$
w_{*}(x):=\liminf _{\substack{\epsilon \rightarrow 0 \\ x^{\prime} \rightarrow x}} w_{\epsilon}\left(x^{\prime}\right)
$$

Since $w_{\epsilon}$ are nonnegative, we deduce that $w_{*}$ is a well-defined nonnegative function in $\bar{\Omega}$, if we allow the possibility that $w_{*}=+\infty$ at certain points. The following claim uses the concept of viscosity solution implicitly.

Claim $w_{*}: \bar{\Omega} \rightarrow[0, \infty]$ is lower semicontinuous ${ }^{2}$ in $\bar{\Omega}, \inf _{\bar{\Omega}} w_{*}=0$, and satisfies

$$
\begin{equation*}
w_{*}(x)>0 \quad \text { in } \Omega_{0}=\left\{x \in \bar{\Omega}: c(x)<\sup _{\Omega} c\right\} . \tag{1.48}
\end{equation*}
$$

The lower semicontinuity follows by construction. Next, choose a point $x_{\epsilon} \in \bar{\Omega}$ such that $w_{\epsilon}\left(x_{\epsilon}\right)=0$, we can then pass to a sequence such that $x_{\epsilon} \rightarrow x_{1}$ for some

[^2]$x_{1} \in \bar{\Omega}$. It then follows that $w_{*}\left(x_{1}\right) \leq 0$. Since $w_{*}$ is nonnegative, this proves that $\inf _{\bar{\Omega}} w_{*}=0$.

Next, suppose to the contrary that there exists an $x_{0} \in \bar{\Omega}$ such that $c\left(x_{0}\right)<\sup _{\Omega} c$ and $w_{*}\left(x_{0}\right)=0$. Then $w_{*}+\left|x-x_{0}\right|^{2}$ has a strict local minimum at $x_{0}$. By construction, there exists a $y_{\epsilon} \in \bar{\Omega}$ such that $y_{\epsilon} \rightarrow x_{0}$ and such that $w_{\epsilon}+\left|x-x_{0}\right|^{2}$ attains a local minimum at $y_{\epsilon}$. We first consider the case when $x_{0}$ is an interior point, wherein $y_{\epsilon}$ are interior points as well. Then

$$
\nabla\left(w_{\epsilon}+\left|x-x_{0}\right|^{2}\right)=0 \quad \text { and } \quad \Delta\left(w_{\epsilon}+\left|x-x_{0}\right|^{2}\right) \geq 0 \quad \text { at } y_{\epsilon},
$$

so that

$$
c\left(y_{\epsilon}\right)+\mu_{1}=-\left|\nabla_{x} w_{\epsilon}\left(y_{\epsilon}\right)\right|^{2}+\epsilon \Delta w_{\epsilon}\left(y_{\epsilon}\right) \geq-\left|2\left(y_{\epsilon}-x_{0}\right)\right|^{2}-2 N \epsilon,
$$

where $N$ is the dimension of $\Omega$. Letting $\epsilon \rightarrow 0$, then $\mu_{1} \rightarrow-\sup _{\Omega} c$ (in view of Proposition 1.3.16) and we obtain

$$
c\left(x_{0}\right)-\sup _{\Omega} c \geq 0 .
$$

This contradicts $c\left(x_{0}\right)<\sup _{\Omega} c$. Hence, (1.48) holds if $x_{0} \in \Omega$. If $x_{0} \in \partial \Omega$, we consider instead the local minimum point $y_{\epsilon}$ of $w_{\epsilon}(x)+\left|x-x_{0}+\epsilon n_{0}\right|^{2}$, where $n_{0}$ is the outer unit normal vector at $x_{0}$. Using the boundary condition of $w_{\epsilon}$, there exists an $r>0$ such that for all $\epsilon$ small,

$$
\mathbf{n} \cdot \nabla\left(w_{\epsilon}(x)+\left|x-x_{0}+\epsilon n_{0}\right|^{2}\right)>0 \quad \text { on } \partial \Omega \cap B_{r}\left(x_{0}\right) .
$$

It follows that the local minimum $y_{\epsilon}$ is attained in the interior, and one can argue similarly as in the case $x_{0} \in \Omega$. Hence, (1.48) holds and the claim is proved.

Next, define

$$
\Omega_{0}^{\delta}=\left\{x \in \Omega: c(x)<\sup _{\Omega} c-\delta\right\}
$$

where $\delta>0$ is the same as in the beginning of the proof. By the lower semicontinuity of $w_{*}$, the following positive number is well-defined.

$$
\eta:=\frac{1}{2} \inf _{\Omega_{0}^{\delta}} w_{*}>0 .
$$

Hence, there exists a $\delta^{\prime} \in(0, \delta)$ such that for $\epsilon \in\left(0, \delta^{\prime}\right)$, we have $\inf _{\Omega_{0}^{\delta}} w_{\epsilon} \geq \eta$. Hence, we deduce that

$$
\sup _{\{x \in \Omega: c(x)<\sup c-\delta\}} \phi_{1} \leq \mathrm{e}^{-\frac{\eta}{\epsilon}} \quad \text { for all } 0<\epsilon \ll 1
$$

Since $\delta$ is arbitrary, this proves that $\phi_{1} \rightarrow 0$ in $C_{\text {loc }}\left(\left\{x \in \bar{\Omega}: c(x)<\max _{\bar{\Omega}} c\right\}\right)$.

Proposition 1.3.19 Let $\mu_{1}$ and $\phi_{1}$ be the principal eigenvalue and positive eigenfunction of (1.37). If $p^{0} \equiv 0$, then

$$
\begin{equation*}
-\max _{\bar{\Omega}} c \leq \mu_{1} \leq-\frac{1}{|\Omega|} \int_{\Omega} c \tag{1.49}
\end{equation*}
$$

Furthermore, we have

$$
\begin{align*}
\lim _{d \rightarrow 0+} \mu_{1} & =-\max _{\bar{\Omega}} c  \tag{1.50}\\
\lim _{d \rightarrow \infty} \mu_{1} & =-\frac{1}{|\Omega|} \int_{\Omega} c \tag{1.51}
\end{align*}
$$

and that, as $d \rightarrow \infty, \phi_{1} \rightarrow 1$ weakly in $W^{2, p}(\Omega)$ and strongly in $C^{1}(\bar{\Omega})$.
Proof First, we integrate

$$
\begin{cases}-d \Delta \phi_{1}-c \phi_{1}=\mu_{1} \phi_{1} & \text { in } \Omega,  \tag{1.52}\\ \mathbf{n} \cdot \nabla \phi_{1}=0 & \text { on } \partial \Omega\end{cases}
$$

over $\Omega$ to obtain

$$
\begin{equation*}
-\int_{\Omega} c \phi_{1}=\mu_{1} \int_{\Omega} \phi_{1} \tag{1.53}
\end{equation*}
$$

In particular,

$$
\begin{equation*}
-\max _{\bar{\Omega}} c \leq \mu_{1} \leq-\min _{\bar{\Omega}} c \tag{1.54}
\end{equation*}
$$

Next, divide (1.52) by $\phi_{1}$ (note that $\phi_{1}>0$ in $\bar{\Omega}$ ) and integrate by parts,

$$
\begin{equation*}
|\Omega| \mu_{1}=-d \int_{\Omega} \frac{\left|\nabla \phi_{1}\right|^{2}}{\left|\phi_{1}\right|^{2}}-\int_{\Omega} c \leq-\int_{\Omega} c \tag{1.55}
\end{equation*}
$$

Combining (1.54) and (1.55), we derive (1.49). We also note that (1.50) is proved in Proposition 1.3.19.

To show (1.51), we normalize the principal eigenfunction $\phi_{1}$ by $\sup _{\Omega} \phi_{1}=1$. Dividing (1.52) by $d$, we have

$$
\begin{equation*}
-\Delta \phi_{1}=\frac{1}{d}\left(c+\mu_{1}\right) \phi_{1} \tag{1.56}
\end{equation*}
$$

By using elliptic $L^{p}$ estimates, we can pass to a subsequence to get $\phi_{1} \rightarrow \phi_{\infty}$ weakly in $W^{2, p}(\Omega)$ and strongly in $C^{1}(\bar{\Omega})$, where $\phi_{\infty}$ is a strong solution of

$$
-\Delta \phi_{\infty}=0 \quad \text { in } \Omega, \quad \text { and } \quad \mathbf{n} \cdot \nabla \phi_{\infty}=0 \quad \text { on } \partial \Omega .
$$

i.e. $\phi_{\infty}$ is a constant. Since $\phi_{1} \rightarrow \phi_{\infty}$ uniformly and $\sup _{\Omega} \phi=1$, it follows that $\phi_{\infty} \equiv 1$. In conclusion, $\phi_{1} \rightarrow 1$ in $C(\bar{\Omega})$ as $d \rightarrow \infty$. Letting $d \rightarrow \infty$ in (1.53), we obtain the desired result.

To close the chapter, we consider the one-dimensional domain $\Omega=(0, L)$, and state a result concerning the dependence on drift.

## Lemma 1.3.20 Let $\mu_{1}$ be the principal eigenvalue of

$$
d \psi^{\prime \prime}+\alpha \psi^{\prime}+c \psi+\mu_{1} \psi=0 \quad \text { in }(0, L), \quad \text { and } \quad \psi^{\prime}(0)=\psi^{\prime}(L)=0 .
$$

If $c(x)$ is nonconstant and nonincreasing, then $\frac{\partial}{\partial \alpha} \mu_{1}>0$ for $\alpha \in \mathbb{R}$.
Proof Refer to [20, Lemma 5.2] or Lemma 8.3.7 in Chapter 8.

### 1.4 Further Reading

In this text, we assume the knowledge of the regularity theory for elliptic and parabolic equations. A nice overview of the basic theory can be found in [21] with complete references to find specific proofs. The classical reference for regularity of elliptic equations is [16], and a more recent account of the oblique derivative problem can be found in [30]; see also [9]. For the regularity theory of parabolic equations, see [15, 28]. An alternative to construct solutions to parabolic equations is via semigroup theory, which is based on the variation of constants formulation. This latter approach relies only on elliptic regularity estimates; see [17, 31].

An influential paper on monotone methods for elliptic and parabolic equations is [34], which contains in particular Corollary 1.2.4.

The classical reference for maximum principles is [33], in which the maximum principle in more general, noncylindrical domains, are treated for both elliptic and parabolic equations.

We applied the Krein-Rutman theorem 1.3.3, for compact linear operator preserving a cone, to derive the principal eigenvalue for elliptic problems; see Appendix B for the proof of various versions of the Krein-Rutman theorem. Our estimate for the spectral gap (assertion 2 of Theorem 1.3.6) is taken from [12, Chapter 6]. The characterization of maximum principle by principal eigenvalue is a classical result; see, e.g. [3] for the Dirichlet case in general bounded domains. A more practical "rule of thumb" can be stated as follows: for a given linear elliptic boundary value problem, the validity of the maximum principle is equivalent to the existence of a strict positive supersolution; see Corollary 1.3.10. Eigenvalue problems with integral operators arise when studying persistence questions in nonlocal diffusion models; see, e.g. [5, 27] for the spectral theory.

We also mention here the recent work by Chang et al. [6], where the authors prove in an elementary way the strong version of the Krein-Rutman theorem for semi-strongly positive operators (including strongly positive operators), and study the relationship between the semi-strong positivity and the ideal-irreducibility in a Banach lattice, as well as the upper and lower spectral radii for reducible linear positive operators. For reducible operators, they prove that the lower spectral radius always serves as the least upper bound of the set of eigenvalues pertaining to positive
eigenvectors, and the upper spectral radius the greatest lower bound of the set. Moreover, they apply these abstract results on some PDE examples.

The smooth dependence of the principal eigenvalue, proved in Proposition 1.3.15, is due to an idea of Lazer, which appeared in [4]. See also Chapter 4 for the recent generalization to the principal Floquet bundle.

In the absence of advection, we proved the monotonicity of the principal eigenvalue in diffusion rate in Proposition 1.3.15. This is connected to the so-called reduction principle due to L . Altenberg [1] concerning the monotonicity of the spectral bound $s(\rho A+Q)$ in $\rho \in \mathbb{R}_{+}$, where $A$ is a compact linear operator in a Banach space with positive resolvents, and $Q$ is a multiplicative operator. This, in turn, is a generalization of a theorem due to Karlin [23] for the finite-dimensional case; see also [7, 24].

In Proposition 1.3.17, we use the WKB-ansatz to show that the eigenfunction of (1.37), when normalized in $L^{1}$, tends to a measure $\mu$ supported on the set of global maximum points of the zero-th order coefficient. The determination of this measure is known as the semi-classical limits; see [18] and the references therein. In general, if the zero-th order coefficient is a Morse function, then the set of global maximum points is finite and the weight of $\mu$ at each of these point is determined by the associated Hessian.

## Problems

1.4.1 Let $\mathcal{L}=-a^{i j} D_{i j}-b^{j} D_{j}-c$ be uniformly elliptic and have continuous coefficients. Suppose $c \leq 0$ and $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies $u_{t}+\mathcal{L} u \leq 0$ and $u_{t}+\mathcal{L} u \geq 0$ in $\Omega_{T}$ in the generalized sense, then

$$
\max _{\bar{\Omega}_{T}}|u| \leq \max _{P \Omega_{T}}|u| \quad \text { in } \Omega_{T}
$$

1.4.2 Prove Corollary 1.2.1 by adopting the following steps.
(a) By the transformation $\tilde{u}(x, t)=\mathrm{e}^{-M t} u(x, t)$, one may assume without loss of generality that $u \mapsto f(x, t, u, p)$ is strictly decreasing.
(b) Suppose there exists an $\epsilon>0$ such that $u-v-\epsilon t$ attains a positive local maximum at some $\left(x_{0}, t_{0}\right) \in \Omega \times(0, T]$, then there exist smooth functions $\tilde{u}, \tilde{v}$ such that $\tilde{w}=\tilde{u}-\tilde{v}$ attains a local maximum at ( $x_{0}, t_{0}$ ), whence

$$
0>f\left(x_{0}, t_{0}, \tilde{u}, \nabla u\right)-f\left(x_{0}, t_{0}, \tilde{v}, \nabla v\right)=\tilde{w}_{t}-\mathcal{L} \tilde{w} \geq \epsilon,
$$

which is impossible.
(c) Suppose $u-v$ attains a positive local maximum at some $\left(x_{0}, t_{0}\right) \in \partial \Omega \times(0, T]$, and $(u-v)(x, t)<(u-v)\left(x_{0}, t_{0}\right)$ for all $(x, t) \in \Omega \times(0, T]$, then one can similarly choose smooth functions $\tilde{u}, \tilde{v}$ such that $\tilde{w}=\tilde{u}-\tilde{v}$ satisfies $\tilde{w}_{t}-\mathcal{L} \tilde{w} \geq \epsilon$ at $\left(x_{0}, t_{0}\right)$. Apply the Boundary Point Lemma to obtain a contradiction.
1.4.3 [Generalization of Theorem 1.3.6 to the elliptic eigenvalue problem with a positive weight.] Suppose $a^{i j}, b^{i}, c, p^{i}, p^{0}, \beta$ are independent of time, and $\inf _{\Omega} \beta>$ 0 . Show that the elliptic eigenvalue problem (1.24) has a principal eigenvalue $\mu_{1}$, in the sense that the conclusions of Theorem 1.3.6 hold.
1.4.4 [This problem provides a justification of constructing a global subsolution by gluing local subsolutions, in the $H^{1}$ framework.] Consider the elliptic equation in divergence form

$$
\begin{cases}-D_{i}\left(a^{i j} D_{j} u+b u\right)+c^{i} D_{i} u+d u=f & \text { in } \Omega \\ n_{i} \cdot\left(a^{i j} D_{j} u+b u\right)=g & \text { on } \partial \Omega\end{cases}
$$

where $\mathbf{n}=\left(n_{i}\right)$ is the unit outer normal vector on $\partial \Omega$. Prove that if $\Omega$ can be partitioned such that $\Omega=\cup \bar{A}_{i}$, and $\bar{A}_{i} \subset B_{i}$, where $A_{i}, B_{i}$ are open sets, if $u_{i}$ is a weak subsolution in $B_{i}$ for each $i$, and if $u:=\max \left\{u_{i}\right\}$ satisfies $u=u_{i}$ in $A_{i}$, then $u$ is a weak subsolution in $\Omega$. [Hint: First, by approximation one can assume without loss of generality that $u_{i}$ is $C^{1}$ for all $i$. In this case, the conclusion holds if zero is a regular value of $u_{i}-u_{j}$. By approximating $u_{i}$ by $u_{i}+\epsilon_{i}$, we can always assume that zero is a regular value of $u_{i}-u_{j}$, for all $i \neq j$.]
1.4.5 Let $\mu_{1}$ be the principal eigenvalue of

$$
\begin{cases}-d \partial_{i}\left(a^{i j}(x) D_{j} \phi\right)-c(x) \phi=\mu \phi & \text { in } \Omega,  \tag{1.57}\\ n_{i}(x) a^{i j}(x) D_{j} \phi+p^{0} \phi=0 & \text { on } \partial \Omega,\end{cases}
$$

where $\mathbf{n}(x)=\left(n_{i}(x)\right)$ is the outward unit normal vector on $\partial \Omega, d$ is a positive constant, $a^{i j}, c, p^{0} \in C(\bar{\Omega})$ are such that $a^{i j}$ is uniformly elliptic and $p^{0} \geq 0$. Show that $\mu_{1}$ is nondecreasing in $d$. Also, show that $\mu_{1}$ is strictly increasing in $d$ if either $c$ is nonconstant or $p^{0}$ is nontrivial.
1.4.6 Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary, and let $\mathcal{L}$ be an elliptic operator satisfying the condition in the beginning of the chapter, with $a^{i j}, b^{j}, c \in C^{\alpha}(\bar{\Omega})$. Let $\lambda_{N}$ be the principal eigenvalue of the Laplacian

$$
\mathcal{L} \varphi+\lambda \varphi=0 \quad \text { in } \Omega, \quad \mathbf{n} \cdot \nabla \varphi=0 \text { on } \partial \Omega,
$$

and $\lambda_{D}$ be the principal eigenvalue of the same equation with the zero Dirichlet boundary condition $\varphi=0$ on $\partial \Omega$. Show that $\lambda_{D}>\lambda_{N}$.
1.4.7 Under the assumptions of Theorem 1.2.6, show that for each $\delta_{0}, M>0$, there exists a $C$ depending on $\delta_{0}, M$ such that

$$
\sup _{\Omega} u\left(\cdot, t_{1}\right) \leq C \inf _{\Omega} u\left(\cdot, t_{2}\right) \quad \text { for any } t_{1}, t_{2} \in\left[\delta_{0}, T\right], \text { such that }\left|t_{1}-t_{2}\right| \leq M .
$$

(Note that the constant $C$ is independent of $T$, and also that $t_{1}$ can be greater than, equal to, or less than $t_{2}$.)
1.4.8 Let $\theta(x)$ be a positive equilibrium of

$$
\begin{cases}\partial_{t} u+\mathcal{L} u=u F(x, u) & \text { in } \Omega \times(0, \infty),  \tag{1.58}\\ \mathcal{B} u=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) & \text { in } \Omega .\end{cases}
$$

Suppose $\bar{\theta}$ is a positive superequilibrium, i.e.

$$
\mathcal{L} \bar{\theta} \geq \bar{\theta} F(x, \bar{\theta}) \text { in } \Omega, \quad \text { and } \quad \mathcal{B} \bar{\theta} \geq 0 \text { on } \partial \Omega .
$$

If $s \mapsto F(x, s)$ is strictly decreasing in $s$, show that

$$
\theta(x) \leq \bar{\theta}(x) \quad \text { in } \Omega .
$$

Similarly, one can also show $\theta(x) \geq \underline{\theta}(x)$ in $\Omega$ for each nonnegative subequilibrium $\underline{\theta}$. [Hint: Apply Corollary 1.3.10 and Remark 1.3.11 by choosing $w$ and $u$ in the statement of the corollary as $w=\theta$ and $u=\theta-\bar{\theta}$.]
1.4.9 Let $\mu_{1}$ be the principal eigenvalue of (1.37), where $d>0$ and $c \in C^{\alpha}(\bar{\Omega})$ and $0 \leq p^{0} \in C^{1+\alpha}(\bar{\Omega})$ for some $\alpha \in(0,1)$. Show that $\mu_{1} \geq-\sup _{\Omega} c$ by applying Lemma 1.3.12.

## References

1. L. Altenberg, Resolvent positive linear operators exhibit the reduction phenomenon, Proc. Natl. Acad. Sci. USA, 109 (2012), pp. 3705-3710.
2. H. Berestycki and P.-L. Lions, Some applications of the method of super and subsolutions, in Bifurcation and nonlinear eigenvalue problems (Proc., Session, Univ. Paris XIII, Villetaneuse, 1978), vol. 782 of Lecture Notes in Math., Springer, Berlin, 1980, pp. 16-41.
3. H. Berestycki, L. Nirenberg, and S. R. S. Varadhan, The principal eigenvalue and maximum principle for second-order elliptic operators in general domains, Comm. Pure Appl. Math., 47 (1994), pp. 47-92.
4. R. S. Cantrell and C. Cosner, On the steady-state problem for the Volterra-Lotka competition model with diffusion, Houston J. Math., 13 (1987), pp. 337-352.
5. R. S. Cantrell, C. Cosner, and K.-Y. Lam, Resident-invader dynamics in infinite dimensional systems, J. Differential Equations, 263 (2017), pp. 4565-4616.
6. K.-C. Chang, X. Wang, and X. Wu, On the spectral theory of positive operators and PDE applications, Discrete Contin. Dyn. Syst., 40 (2020), pp. 3171-3200.
7. S. Chen, J. Shi, Z. Shuai, and Y. Wu, Two novel proofs of spectral monotonicity of perturbed essentially nonnegative matrices with applications in population dynamics, SIAM Journal on Applied Mathematics, 82 (2022), pp. 654-676.
8. X. Chen, K.-Y. Lam, and Y. Lou, Dynamics of a reaction-diffusion-advection model for two competing species, Discrete Contin. Dyn. Syst., 32 (2012), pp. 3841-3859.
9. Y.-Z. Chen and L.-C. Wu, Second order elliptic equations and elliptic systems, vol. 174 of Translations of Mathematical Monographs, American Mathematical Society, Providence, RI, 1998. Translated from the 1991 Chinese original by Bei Hu.
10. M. G. Crandall, H. Ishii, and P.-L. Lions, User's guide to viscosity solutions of second order partial differential equations, Bull. Amer. Math. Soc. (N.S.), 27 (1992), pp. 1-67.
11. Y. Du, Order structure and topological methods in nonlinear partial differential equations. Vol. 1: Maximum principles and applications, vol. 2 of Series in Partial Differential Equations and Applications, World Scientific Publishing Co. Pte. Ltd., Hackensack, NJ, 2006.
12. L. C. Evans, Partial differential equations, vol. 19 of Graduate Studies in Mathematics, American Mathematical Society, Providence, RI, second ed., 2010.
13. E. B. Fabes, M. V. Safonov, and Y. Yuan, Behavior near the boundary of positive solutions of second order parabolic equations. II, Trans. Amer. Math. Soc., 351 (1999), pp. 4947-4961.
14. M. I. Freidlin and A. D. Wentzell, Random perturbations of dynamical systems, vol. 260 of Grundlehren der mathematischen Wissenschaften [Fundamental Principles of Mathematical Sciences], Springer, Heidelberg, third ed., 2012. Translated from the 1979 Russian original by Joseph Szücs.
15. A. Friedman, Partial differential equations of parabolic type, Prentice-Hall, Inc., Englewood Cliffs, N.J., 1964.
16. D. Gilbarg and N. S. Trudinger, Elliptic partial differential equations of second order, Classics in Mathematics, Springer-Verlag, Berlin, 2001. Reprint of the 1998 edition.
17. D. Henry, Geometric theory of semilinear parabolic equations, vol. 840 of Lecture Notes in Mathematics, Springer-Verlag, Berlin-New York, 1981.
18. D. Holcman and I. Kupka, Singular perturbation for the first eigenfunction and blow-up analysis, Forum Math., 18 (2006), pp. 445-518.
19. S.-B. Hsu, K.-Y. Lam, and F.-B. Wang, Single species growth consuming inorganic carbon with internal storage in a poorly mixed habitat, J. Math. Biol., 75 (2017), pp. 1775-1825.
20. S.-B. Hsu and Y. Lou, Single phytoplankton species growth with light and advection in a water column, SIAM J. Appl. Math., 70 (2010), pp. 2942-2974.
21. B. Hu, Blow-up theories for semilinear parabolic equations, vol. 2018 of Lecture Notes in Mathematics, Springer, Heidelberg, 2011.
22. J. Húska, Harnack inequality and exponential separation for oblique derivative problems on Lipschitz domains, J. Differential Equations, 226 (2006), pp. 541-557.
23. S. Karlin, Classifications of selection-migration structures and conditions for a protected polymorphism, Evol. Biol, 14 (1982), pp. 61-204.
24. S. Kirkland, C.-K. Li, and S. J. Schreiber, On the evolution of dispersal in patchy landscapes, SIAM J. Appl. Math., 66 (2006), pp. 1366-1382.
25. M. G. Kreĭn and M. A. Rutman, Linear operators leaving invariant a cone in a Banach space, Uspehi Matem. Nauk (N. S.), 3 (1948), pp. 3-95.
26. K.-Y. Lam, Y. Lou, and F. Lutscher, The emergence of range limits in advective environments, SIAM J. Appl. Math., 76 (2016), pp. 641-662.
27. F. Li, J. Coville, and X. Wang, On eigenvalue problems arising from nonlocal diffusion models, Discrete Contin. Dyn. Syst., 37 (2017), pp. 879-903.
28. G. M. Lieberman, Second order parabolic differential equations, World Scientific Publishing Co., Inc., River Edge, NJ, 1996.
29. —, Pointwise estimates for oblique derivative problems in nonsmooth domains, J. Differential Equations, 173 (2001), pp. 178-211.
30. —, Oblique derivative problems for elliptic equations, World Scientific Publishing Co. Pte. Ltd., Hackensack, NJ, 2013.
31. A. Lunardi, Analytic semigroups and optimal regularity in parabolic problems, Modern Birkhäuser Classics, Birkhäuser/Springer Basel AG, Basel, 1995. [2013 reprint of the 1995 original] [MR1329547].
32. L. Nirenberg, A strong maximum principle for parabolic equations, Comm. Pure Appl. Math., 6 (1953), pp. 167-177.
33. M. H. Protter and H. F. Weinberger, Maximum principles in differential equations, Springer-Verlag, New York, 1984. Corrected reprint of the 1967 original.
34. D. H. Sattinger, Monotone methods in nonlinear elliptic and parabolic boundary value problems, Indiana Univ. Math. J., 21 (1971/72), pp. 979-1000.

## Chapter 2

## The Principal Eigenvalue for Periodic-Parabolic Problems


#### Abstract

In this chapter, we establish the existence of the principal eigenvalue for periodic-parabolic operators. We study some qualitative properties of the principal eigenvalues, including their small and large diffusion limits and monotonicity. As an application of the principal eigenvalue theory, we investigate the evolution of dispersal in spatially and temporally varying environments. Finally we present some references for the principal eigenvalue theory and other applications.


### 2.1 Existence of the Principal Eigenvalue for Periodic-Parabolic Problems

In the following section, we will choose to work with eigenfunctions that satisfy the PDE in the strong sense. This is consistent with our applying the Krein-Rutman Theorem to the semigroup operator $\Phi_{t}=\mathrm{e}^{-t \mathcal{L}}$ in the space $C(\bar{\Omega})$ of continuous functions on $\bar{\Omega}$. In such a case, the eigenfunctions for the parabolic problem (resp. elliptic problem) belong to $\cap_{p>1} W_{p}^{2,1}\left(\Omega_{T}\right)$ (resp. $\cap_{p>1} W^{2, p}(\Omega)$ ). We remark that if all the coefficients are assumed to be Hölder continuous, then the eigenfunctions will be classical by virtue of the Schauder theory [22, Chapter IV].

Theorem 2.1.1 If $a^{i j}, b^{i}, c, p^{i}, p^{0}$ are $T$-periodic and continuous, then the periodicparabolic eigenvalue problem

$$
\begin{cases}\varphi_{t}+\mathcal{L} \varphi=\lambda \varphi & \text { in } \Omega_{T}  \tag{2.1}\\ \mathcal{B} \varphi=0 & \text { on } S \Omega_{T} \\ \varphi(x, 0)=\varphi(x, T) & \text { for } x \in \Omega\end{cases}
$$

has a principal eigenvalue $\lambda_{1}$, in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of (2.1).
2. $\lambda_{1}<\inf _{\lambda \neq \lambda_{1}} \operatorname{Re} \lambda$, where the infimum is taken over all eigenvalues $\lambda$ of (2.1) which are distinct from $\lambda_{1}$.
3. The eigenfunction corresponding to $\lambda_{1}$ can be chosen strictly positive in $\bar{\Omega}_{T}$.
4. If $\lambda$ is an eigenvalue of (2.1) with a nonnegative eigenfunction, then $\lambda=\lambda_{1}$.

Proof For each $t>0$, consider the evolution operator $\Phi_{t}: C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$, which for any solution $u(x, t)$ to

$$
\begin{cases}u_{t}+\mathcal{L} u=0 & \text { in } \Omega_{T} \\ \mathcal{B} u=0 & \text { on } S \Omega_{T} \\ u(x, 0)=u_{0}(x) & \text { in } \Omega\end{cases}
$$

satisfies

$$
\Phi_{t}\left[u_{0}\right]=u(\cdot, t) \quad \text { for } t>0 .
$$

We claim that $\lambda$ is an eigenvalue of (2.1) with eigenfunction $\varphi(x, t)$ if and only if $\mathrm{e}^{\lambda T}$ is an eigenvalue of $\Phi_{T}$ with eigenfunction $\varphi(x, 0)$. Indeed, suppose ( $\lambda, \varphi(x, t)$ ) is an eigenpair of (2.1), then it follows that

$$
\Phi_{t}[\varphi(\cdot, 0)]=\mathrm{e}^{-\lambda t} \varphi(\cdot, t) \quad \text { for all } t \in[0, T] .
$$

In particular,

$$
\Phi_{T}[\varphi(\cdot, 0)]=\mathrm{e}^{-\lambda T} \varphi(\cdot, T)=\mathrm{e}^{-\lambda T} \varphi(\cdot, 0),
$$

i.e. $\varphi(\cdot, 0)$ is an eigenfunction of $\Phi_{T}$ associated with the eigenvalue $\mathrm{e}^{-\lambda T}$. On the other hand, suppose $\Phi_{T}[\phi]=\Lambda \phi$, then

$$
\begin{equation*}
\lambda=-\frac{\log \Lambda}{T} \quad \text { and } \quad \varphi(\cdot, t)=\mathrm{e}^{\lambda t} \Phi_{t}[\phi] \tag{2.2}
\end{equation*}
$$

defines an eigenpair of (2.1).
Next, observe that the operator $\Phi_{T}: C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$ is compact, and strongly monotone. The compactness follows from the parabolic $L^{p}$ estimate, whereas the strong monotonicity follows from the strong maximum principle for linear parabolic equations with oblique boundary conditions (Theorem 1.1.9).

Finally, we invoke Theorem 1.3.4 to deduce that $\Phi_{T}$ has a principal eigenvalue $\Lambda_{1}$, in the sense that (i) $\Lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of $\Phi_{T}$; (ii) $\Lambda_{1}>\sup |\Lambda|$, where the supremum is taken over all other eigenvalues of $\Phi_{T}$; (iii) the eigenfunction $\phi_{1}$ corresponding to $\Lambda_{1}$ can be chosen strictly positive in $\bar{\Omega}$; and (iv) if $\Lambda$ is an eigenvalue of $\Phi_{T}$ with a nonnegative eigenfunction, then $\Lambda=\Lambda_{1}$. By virtue of the correspondence (2.2), we deduce that the problem (2.1) has the principal eigenvalue $\lambda_{1}=\frac{1}{T} \log \Lambda_{1}$ with the desired properties.

An alternative proof of the existence of principal eigenvalue for the elliptic problem can be given via the semigroup operator $\Phi_{t}$.

Proof (Alternative proof of Theorem 1.3.6) Let $\Phi_{t}: C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$ be the semigroup operator which for any solution $u(x, t)$ to

$$
\begin{cases}u_{t}+\mathcal{L} u=0 & \text { in } \Omega_{T} \\ \mathcal{B} u=0 & \text { on } S \Omega_{T} \\ u(x, 0)=u_{0}(x) & \text { in } \Omega\end{cases}
$$

where all coefficients are independent of $t$, satisfies

$$
\Phi_{t}\left[u_{0}\right]=u(\cdot, t) \quad \text { for } t>0 .
$$

Then $\Phi_{t}$ is strongly monotone, by the strong maximum principle for linear parabolic equations.
Step 1. Suppose (1.23) has a real eigenvalue $\mu_{1}$ with a nonnegative, nontrivial eigenfunction $\phi_{1}$, then it is easy to see that

$$
\Phi_{t}\left[\phi_{1}\right]=\mathrm{e}^{-\mu_{1} t} \phi_{1} \quad \text { for each } t>0
$$

Since $\phi_{1}$ is nonnegative and nontrivial, it follows from the Krein-Rutman Theorem (Theorem 1.3.4 applied to the linear operator $\Phi_{t}$ ) that $\phi_{1}>0$ in $\bar{\Omega}, r\left(\Phi_{t}\right)=\mathrm{e}^{-\mu_{1} t}$ for each $t>0$, and $\mu_{1}$ satisfies the properties 1 to 4 as stated in the theorem.

Step 2. It remains to show the existence of an eigenvalue $\mu_{1}$ corresponding to a strictly positive eigenfunction $\phi_{1}$. For this purpose, let $\Phi_{1}=\left.\Phi_{t}\right|_{t=1}$. By the KreinRutman Theorem (Theorem 1.3.4), $r\left(\Phi_{1}\right)>0$ and has a principal eigenfunction $\phi_{1}$ such that $\phi_{1}>0$ in $\bar{\Omega}$. Define $\mu_{1}=-\log r_{1}$.
Step 3. Let $u(x, t)=\Phi_{t}\left[\phi_{1}\right]$. It remains to show that

$$
\begin{equation*}
u(x, t)=\mathrm{e}^{-\mu_{1} t} \phi_{1}(x) \quad \text { for } t>0 \tag{2.3}
\end{equation*}
$$

Note that (2.3) implies $\mu_{1}$ is an eigenvalue of (1.23) with an eigenfunction $\phi_{1}>0$ in $\bar{\Omega}$, which finishes the proof.

To show (2.3), we first observe that, by construction, we have $u(x, n)=\mathrm{e}^{-\mu_{1} n} \phi_{1}(x)$ for $n \in \mathbb{N}$.

Next, consider the positive compact operator $\Phi_{1 / 2}$, then the Krein-Rutman Theorem (Theorem 1.3.4) implies $r\left(\Phi_{1 / 2}\right)>0$ and $\Phi_{1 / 2}(\hat{\phi})=r\left(\Phi_{1 / 2}\right) \hat{\phi}$ for some positive continuous function $\hat{\phi}$. This implies

$$
\Phi_{1}(\hat{\phi})=\Phi_{1 / 2} \circ \Phi_{1 / 2}(\hat{\phi})=r\left(\Phi_{1 / 2}\right)^{2} \hat{\phi}
$$

Hence $r\left(\Phi_{1 / 2}\right)^{2}$ is an eigenvalue with a positive eigenfunction $\hat{\phi}$. By the characterization of the principal eigenvalue in Theorem 1.3.4, we must have

$$
r\left(\Phi_{1 / 2}\right)^{2}=r\left(\Phi_{1}\right)=\mathrm{e}^{-\mu_{1}} \quad \text { and } \quad \hat{\phi} \in \operatorname{span}\left\{\phi_{1}\right\}
$$

Hence, (2.3) holds for $t=n / 2$ for $n \in \mathbb{N}$.

By induction, it follows that (2.3) holds for $t=\frac{n}{2^{m}}$ for $n, m \in \mathbb{N}$. Since the set of such $t$ 's are dense in $\mathbb{R}_{+}$, it then follows by continuity that (2.3) holds for $t>0$. This proves the claim. We leave the verification of other properties as an exercise for the readers.

### 2.2 Qualitative Properties of Periodic Principal Eigenvalues

In this section, we discuss various asymptotic behaviors of the principal eigenvalues for periodic-parabolic operators. To avoid mathematical technicalities we will limit most of our discussions to the following problem, leaving more general situations for discussion and further reading:

$$
\begin{cases}\partial_{t} \varphi-d \Delta \varphi-c(x, t) \varphi=\lambda \varphi, & x \in \Omega, t \in[0,1],  \tag{2.4}\\ \mathbf{n} \cdot \nabla \varphi=0, & x \in \partial \Omega, t \in[0,1], \\ \varphi(x, 0)=\varphi(x, 1), & x \in \Omega .\end{cases}
$$

Here $c(x, t)$ is assumed to be Hölder continuous, time-periodic with the unit period. As shown by Theorem 2.1.1, the principal eigenvalue of (2.4), which we will denote by $\lambda_{1}$, is real and it has the smallest real part among all eigenvalues. Denote its eigenfunction by $\varphi_{1}$, which can be assumed to be strictly positive in $\bar{\Omega} \times[0,1]$.

Given any 1 -periodic function $p(x, t)$, denote the temporal average by

$$
\hat{p}(x):=\int_{0}^{1} p(x, s) \mathrm{d} s .
$$

In the following, we give some examples of principal eigenvalues and principal eigenfunctions for various special functions $c$ :

- For $c=c(t)$ a 1-periodic function,

$$
\lambda_{1}=-\int_{0}^{1} c(t) \mathrm{d} t \quad \text { and } \quad \varphi_{1}=\varphi_{1}(t)=\exp \left(-\lambda_{1} t+\int_{0}^{t} c(s) \mathrm{d} s\right)
$$

solve

$$
\varphi_{1}^{\prime}-c(t) \varphi_{1}=\lambda_{1} \varphi_{1}, \quad \varphi_{1}(t+1)=\varphi_{1}(t) .
$$

- For $c=c(x), \lambda_{1}$ and $\varphi_{1}=\varphi_{1}(x)>0$ solve

$$
\begin{cases}-d \Delta \varphi-c(x) \varphi=\lambda \varphi & \text { in } \Omega,  \tag{2.5}\\ \mathbf{n} \cdot \nabla \varphi=0 & \text { on } \partial \Omega .\end{cases}
$$

That is, $\lambda_{1}$ is the smallest eigenvalue of the linear elliptic eigenvalue problem (2.5) with $\varphi_{1}$ as the corresponding eigenfunction.

- For $c(x, t)=a(x)+b(t)$ with 1-periodic function $b$,

$$
\lambda_{1}=\mu_{1}-\int_{0}^{1} b(t) \mathrm{d} t, \quad \varphi_{1}(x, t)=w(x) \mathrm{e}^{-\int_{0}^{t} b(s) \mathrm{d} s+t\left(\int_{0}^{1} b(s) \mathrm{d} s\right)}
$$

where $\mu_{1}$ and $w>0$ solve

$$
\begin{cases}-d \Delta w-a(x) w=\mu_{1} w & \text { in } \Omega,  \tag{2.6}\\ \mathbf{n} \cdot \nabla w=0 & \text { on } \partial \Omega .\end{cases}
$$

The following result provides the upper and lower bounds for the principal eigenvalue of (2.4), which are uniform for all diffusion rates.

Lemma 2.2.1 The following estimates hold for any $d>0$ :

$$
\begin{equation*}
-\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \leq \lambda_{1} \leq-\frac{1}{|\Omega|} \int_{\Omega} \int_{0}^{1} c(x, t) \mathrm{d} t \mathrm{~d} x \tag{2.7}
\end{equation*}
$$

Furthermore, equalities hold if and only if $c$ is independent of $x$.
Proof Let $\lambda_{1}$ denote the principal eigenvalue of (2.4) with corresponding eigenfunction $\varphi_{1}$, which is uniquely determined by $\int_{0}^{1} \int_{\Omega} \varphi_{1} \mathrm{~d} x \mathrm{~d} t=1$. Integrating the equation of $\varphi_{1}$ in $\Omega$,

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \varphi_{1}-\int_{\Omega} c \varphi_{1}=\lambda_{1} \int_{\Omega} \varphi_{1}, \quad \forall t>0
$$

It follows that

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \varphi_{1}-\left(\max _{x \in \bar{\Omega}} c(x, t)\right) \int_{\Omega} \varphi_{1} \leq \lambda_{1} \int_{\Omega} \varphi_{1}, \quad \forall t>0
$$

Dividing the above equation by $\int_{\Omega} \varphi_{1}(x, t)$ and integrating in $t \in(0,1)$, by the timeperiodicity of $\varphi_{1}$ we obtain the first inequality of (2.7). Notice from the proof that the first equality in (2.7) holds if and only if

$$
\int_{0}^{1} \int_{\Omega}\left[c(x, t)-\max _{x \in \bar{\Omega}} c(x, t)\right] \varphi_{1} \mathrm{~d} x \mathrm{~d} t=0
$$

This implies $c(x, t)=\max _{\bar{\Omega}} c(\cdot, t)$ holds for any $t$, i.e. $c$ is independent of $x$.
To prove the second inequality, we divide the equation of $\varphi_{1}$ by $\varphi_{1}$ to obtain

$$
\partial_{t}\left(\ln \varphi_{1}\right)-\frac{\Delta \varphi_{1}}{\varphi_{1}}-c=\lambda_{1}
$$

Integrating the above equation in $\Omega \times(0,1)$, we get

$$
-\int_{0}^{1} \int_{\Omega} \frac{\left|\nabla_{x} \varphi_{1}\right|^{2}}{\varphi_{1}^{2}}-\int_{0}^{1} \int_{\Omega} c(x, t)=\lambda_{1}
$$

from which the second inequality of (2.7) follows. From the proof we see that the second equality in (2.7) holds if and only if $\nabla_{x} \varphi_{1} \equiv 0$, i.e. $\varphi_{1}$ is independent of $x$. This implies that $c$ is also independent of $x$ and vice versa.

Remark 2.2.2 Another way to prove the first inequality of (2.7) is to apply the comparison principle for the principal eigenvalues to (2.7) and

$$
\begin{cases}\partial_{t} \varphi-d \Delta \varphi-\left(\max _{x \in \bar{\Omega}} c(x, t)\right) \varphi=\lambda \varphi, & x \in \Omega, t \in[0,1], \\ \mathbf{n} \cdot \nabla \varphi=0, & x \in \partial \Omega, t \in[0,1], \\ \varphi(x, 0)=\varphi(x, 1), & x \in \Omega,\end{cases}
$$

for which the principal eigenvalue is given by $-\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t$. Hence, the following estimates could hold for some more general operator $\mathcal{L}$ and oblique derivative boundary operators $\mathcal{B}=p^{i} D_{i}$ (for which $p^{0} \equiv 0$ ):

$$
\begin{equation*}
-\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \leq \lambda_{1} \leq-\int_{0}^{1} \min _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \quad \forall d>0 . \tag{2.8}
\end{equation*}
$$

Remark 2.2.3 The following characterization is given in [5]:

$$
\begin{equation*}
\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t=\sup _{x(t) \in \mathcal{S}} \int_{0}^{1} c(x(t), t) \mathrm{d} t \tag{2.9}
\end{equation*}
$$

where $\mathcal{S}=\{x(t) \in C[0, \infty): x(t)=x(t+1)\}$.
Remark 2.2.4 Another interesting and important quantity is

$$
\max _{x \in \bar{\Omega}} \hat{c}(x)=\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t .
$$

It is easy to see that

$$
\begin{equation*}
\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \geq \max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t \geq \frac{1}{|\Omega|} \int_{\Omega} \int_{0}^{1} c(x, t) \mathrm{d} x \mathrm{~d} t . \tag{2.10}
\end{equation*}
$$

The first equality holds if and only if there exists some $x_{0}$ such that $c\left(x_{0}, t\right)=$ $\max _{x \in \bar{\Omega}} c(x, t)$ for all $t \in[0,1]$. The second equality holds iff $\hat{c}(x)=\int_{0}^{1} c(x, t) \mathrm{d} t$ is independent of $x$. These quantities seem to reflect the spatial and temporal heterogeneity of $c$ from different aspects, and they will play critical roles in understanding the asymptotic behavior of $\lambda_{1}$, as will be seen clearly in the rest of this chapter.

### 2.2.1 The Hutson-Shen-Vickers Lemma

To improve the upper bound of the principal eigenvalue of (2.4), as given in (2.7), we consider the following linear elliptic eigenvalue problem:

$$
\begin{cases}-d \Delta \psi-\left(\int_{0}^{1} c(x, t) \mathrm{d} t\right) \psi=\mu \psi, & x \in \Omega  \tag{2.11}\\ \mathbf{n} \cdot \nabla \psi=0, & x \in \partial \Omega\end{cases}
$$

Let $\mu_{1}$ denote the smallest eigenvalue of (2.11).
Lemma 2.2.5 Let $\lambda_{1}$ be the principal eigenvalue of (2.4). Then

$$
\lambda_{1} \leq \mu_{1} \quad \text { holds for all } d>0
$$

Furthermore, equality holds if and only if $c(x, t)-\hat{c}(x)$ is independent of $x$.
Proof Let $\lambda_{1}$ and $\varphi_{1}$ be the principal eigenvalue and the associated positive eigenfunction of (2.4), respectively. For simplicity let $d=1$. Set

$$
w(x)=\mathrm{e}^{\int_{0}^{1} \log \varphi_{1}(x, t) \mathrm{d} t}
$$

By direct calculations,

$$
\begin{aligned}
w_{x_{i}} & =w \int_{0}^{1} \frac{\varphi_{1, x_{i}}}{\varphi_{1}} \mathrm{~d} t \\
w_{x_{i} x_{i}} & =w\left(\int_{0}^{1} \frac{\varphi_{1, x_{i}}}{\varphi_{1}} \mathrm{~d} t\right)^{2}+w \int_{0}^{1} \frac{\varphi_{1, x_{i} x_{i}} \varphi_{1}-\left(\varphi_{1, x_{i}}\right)^{2}}{\varphi_{1}^{2}} \mathrm{~d} t \leq w \int_{0}^{1} \frac{\varphi_{1, x_{i} x_{i}}}{\varphi_{1}} \mathrm{~d} t
\end{aligned}
$$

where the inequality follows from the Cauchy-Schwarz inequality.
It follows that $\mathbf{n} \cdot \nabla w=0$ on $\partial \Omega$ and

$$
\Delta w \leq w \int_{0}^{1} \frac{\Delta \varphi_{1}}{\varphi_{1}} \mathrm{~d} t \quad \text { in } \Omega
$$

By the equation of $\varphi_{1}$, it follows that

$$
\begin{equation*}
\Delta w \leq w \int_{0}^{1} \frac{\varphi_{1, t}-\left(c+\lambda_{1}\right) \varphi_{1}}{\varphi_{1}} \mathrm{~d} t=-w\left(\int_{0}^{1} c(x, t) \mathrm{d} t+\lambda_{1}\right) \tag{2.12}
\end{equation*}
$$

Let $\mu_{1} \in \mathbb{R}$ and $\psi_{1}>0$ denote the principal eigenvalue and eigenfunction of (2.11). Multiplying (2.11) by $w$, the inequality (2.12) of $w$ by $\psi_{1}$, subtracting and integrating the results in $\Omega$, we obtain $\lambda_{1} \leq \mu_{1}$.

From the above argument we see that $\mu_{1}=\lambda_{1}$ if and only if $\nabla\left(\log \varphi_{1}\right)$ is independent of $t$, i.e. $\varphi_{1}=u(x) v(t)$ for some positive functions $u(x)$ and $v(t)$, such that $v$ is 1-periodic in $t$.

It remains to show that $\varphi_{1}(x, t)=u(x) v(t)$ if and only if $c(x, t)-\hat{c}(x)$ is independent of $x$.

On the one hand, if $\varphi_{1}=u(x) v(t)$, then (2.4) implies

$$
\begin{equation*}
v^{\prime}(t) u(x)=v(t)\left[\Delta u(x)+c(x, t) u(x)+\lambda_{1} u(x)\right] \tag{2.13}
\end{equation*}
$$

Dividing the above by $v(t)$, which is positive, and integrating in $t$, we obtain

$$
-\Delta u-\hat{c}(x) u=\lambda_{1} u \quad \text { in } \Omega
$$

Substituting back into (2.13), we deduce that

$$
v^{\prime}(t) u(x)=v(t)[c(x, t)-\hat{c}(x)] u(x)
$$

Canceling $u(x)$ from both sides, we have

$$
c(x, t)-\hat{c}(x)=\frac{v^{\prime}(t)}{v(t)}
$$

This proves the necessity.
On the other hand, suppose $c(x, t)=\hat{c}(x)+b(t)$ for some 1-periodic function $b(t)$. Then $\int_{0}^{1} b(t) \mathrm{d} t=0$ by construction.

Let $\mu_{1}$ and $\psi_{1}(x)$ be the principal eigenvalue and eigenfunction of (2.11), and define $\varphi_{1}(x, t)=\psi_{1}(x) \exp \left(\int_{0}^{t} b(s) \mathrm{d} s\right)$. One can then verify that $\mu_{1}$ and $\varphi_{1}$ form an eigenvalue and eigenfunction pair of (2.4). This proves sufficiency.

Remark 2.2.6 Lemma 2.2.5 gives a better upper bound than (2.7). In fact, Hutson et al. proved a more general result; see [19] for the details.

Remark 2.2.7 Lemma 2.2.5 says that the addition of temporal variation tends to destabilize an equilibrium under all circumstances. Biologically interpreted, this means that spatio-temporal heterogeneity of resources always favors persistence.

### 2.2.2 Small diffusion limit

Determining the asymptotic behavior of $\lambda_{1}$ for sufficiently small $d$ is an interesting and nontrivial question. A well-known result in this connection can be stated as follows:

Lemma 2.2.8 The following limit holds:

$$
\begin{equation*}
\lim _{d \rightarrow 0} \lambda_{1}=-\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t \tag{2.14}
\end{equation*}
$$

Proof A consequence of the Hutson-Shen-Vickers Lemma is

$$
\limsup _{d \rightarrow 0+} \lambda_{1} \leq \lim _{d \rightarrow 0} \mu_{1}=-\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t
$$

where the last limit is a consequence of Proposition 1.3.16.
It suffices to show that

$$
\liminf _{d \rightarrow 0+} \lambda_{1} \geq-\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t
$$

Since $\lambda_{1}$ is uniformly bounded (Lemma 2.2.1), we may pass to a sequence and assume that $\lambda_{1} \rightarrow \lambda_{*}$ for some $\lambda_{*}$.

Next, we argue by contradiction and suppose that

$$
\begin{equation*}
\lambda_{*}<-\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t \tag{2.15}
\end{equation*}
$$

By suitable normalization, we may further assume that

$$
\max _{\bar{\Omega} \times \mathbb{R}} \varphi_{d}=1 \quad \text { and } \quad \varphi_{d}\left(x_{d}, t_{d}\right)=1 \quad \text { for some } x_{d} \in \bar{\Omega}, t_{d} \geq 0
$$

Set $y=\frac{1}{\sqrt{d}}\left(x-x_{d}\right)$ and define

$$
\psi_{d}(y, t)=\varphi_{d}\left(x_{d}+\sqrt{d} y, t\right)
$$

Then $\psi_{d}$ satisfies

$$
0 \leq \psi_{d} \leq 1 \quad \text { in } \Omega_{d} \times \mathbb{R}, \quad \psi_{d}\left(0, t_{d}\right)=1
$$

and

$$
\begin{cases}\partial_{t} \psi_{d}-\Delta \psi_{d}-c_{d}(y, t) \psi_{d}=\lambda_{1} \psi_{d}, & y \in \Omega_{d}, t \in[0,1]  \tag{2.16}\\ \nabla \psi_{d} \cdot \mathbf{n}=0, & y \in \partial \Omega_{d}, t \in[0,1] \\ \psi_{d}(x, 0)=\psi_{d}(x, 1), & y \in \Omega_{d}\end{cases}
$$

where

$$
c_{d}(y, t):=c\left(x_{d}+\sqrt{d} y, t\right) \quad \text { and } \quad \Omega_{d}:=\left\{y: x_{d}+\sqrt{d} y \in \Omega\right\}
$$

Passing to a subsequence if necessary, we may assume that $x_{d} \rightarrow x_{*} \in \bar{\Omega}, t_{d} \rightarrow t_{*} \in$ $[0,1]$ and $\lambda_{1} \rightarrow \lambda_{*} \in \mathbb{R}$. For the case $x_{*} \in \Omega, \Omega_{d} \rightarrow \mathbb{R}^{N}$ as $d \rightarrow 0$. By parabolic regularity theory, we can pass to a sequence, so that $\psi_{d} \rightarrow \psi_{*}$ uniformly in any compact subset of $\mathbb{R}^{N} \times \mathbb{R}$ for some $\psi_{*} \in C^{2,1}\left(\mathbb{R}^{N} \times \mathbb{R}\right)$ which satisfies $0 \leq \psi_{*} \leq 1$ in $\mathbb{R}^{N} \times \mathbb{R}, \psi_{*}\left(0, t^{*}\right)=1$, and

$$
\begin{cases}\partial_{t} \psi_{*}-\Delta \psi_{*}-c\left(x_{*}, t\right) \psi_{*}=\lambda_{*} \psi_{*}, & y \in \mathbb{R}^{N}, t \in[0,1]  \tag{2.17}\\ \psi_{*}(y, 0)=\psi_{*}(y, 1), & y \in \mathbb{R}^{N}\end{cases}
$$

Next, we construct the supersolution

$$
p(t)=\exp \left(\int_{0}^{t}\left[c\left(x_{*}, s\right)+\lambda_{*}\right] \mathrm{d} s\right)
$$

Since $p(0)=1=\sup _{\Omega} \psi_{*}(\cdot, 0)$, we deduce that $p(1) \geq \sup _{\Omega} \psi_{*}(\cdot, 1)$. However, $\psi_{*}$ is 1 -periodic, thus we have $p(1) \geq 1$, i.e.

$$
\lambda_{*}+\int_{0}^{1} c\left(x_{*}, t\right) \mathrm{d} t \geq 0
$$

This is in contradiction with (2.15).
Next, suppose $x_{*} \in \partial \Omega$. If $\operatorname{dist}\left(x_{d}, \partial \Omega\right) / \sqrt{d} \rightarrow \infty, \psi_{*}$ satisfies again (2.17) in $\mathbb{R}^{N} \times \mathbb{R}$, and we can argue similarly as above. Otherwise, $\psi_{*}$ satisfies (2.17) in $H \times \mathbb{R}$, where $\partial H$ is a hyperplane. One can then use the Neumann boundary condition to extend the function $\psi_{*}$ by reflection across $\partial H$. The resulting function is again a 1 -periodic in time solution of an equation in the form of (2.17). Hence, a contradiction can be similarly reached. For details, see the proof of Proposition 17.3 of [13].

Our previous proof is based upon the blowup argument from [13]. Another possible approach is to use the WKB ansatz and the limiting Hamilton-Jacobi equation to derive the small diffusion limit of $\lambda_{1}$ [23].

The high order expansion of $\lambda_{1}$ for a small diffusion rate seems to be of independent interest. For instance, if we assume

$$
\begin{equation*}
-\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t<-\frac{1}{|\Omega|} \int_{\Omega} \int_{0}^{1} c(x, t) \mathrm{d} t \mathrm{~d} x \tag{2.18}
\end{equation*}
$$

it is unknown whether $\lambda_{1}$ is monotone increasing for a small diffusion rate. Note that such conclusion holds true when $c$ is independent of $t$.

Remark 2.2.9 We conjecture that if

$$
\begin{equation*}
\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t=\max _{x \in \bar{\Omega}} \int_{0}^{1} c(x, t) \mathrm{d} t \tag{2.19}
\end{equation*}
$$

holds, then $\lambda_{1}$ is monotone non-decreasing in $d$. Note that the conjecture holds when $c$ is independent of $t$; (2.19) automatically holds in this case. See also Prob. 2.4.6 for another example.

### 2.2.3 Large diffusion limit

The large diffusion limit of the principal eigenvalue for time-periodic operators is well known, and the result is similar to that for principal eigenvalues of elliptic operators. The proof of the following result is due to Hutson et al. [18, Lemma 2.4].

Lemma 2.2.10 The following limit holds:

$$
\begin{equation*}
\lim _{d \rightarrow \infty} \lambda_{1}=-\frac{1}{|\Omega|} \int_{\Omega} \int_{0}^{1} c(x, t) \mathrm{d} t \mathrm{~d} x \tag{2.20}
\end{equation*}
$$

Proof Assume, without loss of generality, that $|\Omega|=1$. Let $\varphi_{1}>0$ denote the eigenfunction corresponding to $\lambda_{1}$, determined by $\int_{\Omega} \int_{0}^{1} \varphi_{1}^{2}=1$. Multiplying the equation of $\varphi_{1}$ by $\varphi_{1}$ and integrating the results,

$$
\int_{\Omega} \int_{0}^{1}\left|\nabla_{x} \varphi_{1}\right|^{2}=\frac{1}{d} \int_{\Omega} \int_{0}^{1}\left(c(x, t)+\lambda_{1}\right) \varphi_{1}^{2} \leq \frac{C_{1}}{d}
$$

where $C_{1}=2 \sup c$, and we used the upper bound of $\lambda_{1}$ in (2.7).
Set $\Phi:=\varphi_{1}-\int_{\Omega} \varphi_{1}$. Then $\nabla_{x} \varphi_{1}=\nabla_{x} \Phi$, i.e.

$$
\int_{\Omega} \int_{0}^{1}\left|\nabla_{x} \Phi\right|^{2} \leq \frac{C_{1}}{d}
$$

Now, Poincaré's inequality (see Problem 2.4.5) says that the constant

$$
C_{p}=\inf _{\substack{w \in H^{1}(\Omega) \\ \int_{\Omega} w=0, w \neq 0}} \frac{\int_{\Omega}\left|\nabla_{x} w(x)\right|^{2} \mathrm{~d} x}{\int_{\Omega}|w(x)|^{2} \mathrm{~d} x}
$$

is positive. In particular, $C_{p}$ depends on $\Omega$ but is independent of $w$. Since $\int_{\Omega} \Phi=0$ for all $t$, it follows that

$$
\begin{equation*}
\int_{\Omega} \int_{0}^{1}|\Phi|^{2} \leq \frac{C_{2}}{d}, \quad \text { where } C_{2}=C_{p} C_{1} \tag{2.21}
\end{equation*}
$$

Integrating the equation of $\varphi_{1}$ in $\Omega$,

$$
\partial_{t} \int_{\Omega} \varphi_{1}=\int_{\Omega}\left(c(x, t)+\lambda_{1}\right) \varphi_{1}, \quad \forall t>0
$$

Set $\bar{\varphi}(t)=\int_{\Omega} \varphi_{1}$ and write $\varphi_{1}=\bar{\varphi}+\Phi$.

$$
\bar{\varphi}_{t}=\bar{\varphi}(t) \int_{\Omega}\left(c(x, t)+\lambda_{1}\right)+\int_{\Omega}\left[\left(c(x, t)+\lambda_{1}\right) \Phi\right]
$$

As $\lambda_{1}$ is bounded in $d$,

$$
\int_{0}^{1} \int_{\Omega}\left|\left(c(x, t)+\lambda_{1}\right) \Phi\right| \leq C_{3} \int_{0}^{1} \int_{\Omega}|\Phi| \leq C_{4}\left(\int_{0}^{1} \int_{\Omega} \Phi^{2}\right)^{1 / 2} \leq \frac{C_{5}}{d^{1 / 2}}
$$

By the equation of $\bar{\varphi}$,

$$
\begin{equation*}
\mathrm{e}^{-\int_{0}^{t} \int_{\Omega}\left(c+\lambda_{1}\right)} \bar{\varphi}(t)=\bar{\varphi}(0)+o(1) \tag{2.22}
\end{equation*}
$$

where the $o(1)$ term converges to zero uniformly in $t$ as $d \rightarrow+\infty$.
Next, we claim that

$$
\begin{equation*}
\liminf _{d \rightarrow+\infty} \bar{\varphi}(0)>0 \tag{2.23}
\end{equation*}
$$

Suppose not, then (2.22) implies that $\sup _{t \in[0,1]} \bar{\varphi}(t) \rightarrow 0$ along a sequence $d=$ $d_{k} \rightarrow+\infty$. This, together with (2.21) implies that

$$
\int_{\Omega} \int_{0}^{1} \varphi_{1}^{2} \rightarrow 0
$$

which contradicts $\int_{\Omega} \int_{0}^{1} \varphi_{1}^{2}=1$. This proves (2.23).
To proceed, recall that $\bar{\varphi}(0)=\bar{\varphi}(1)$ by periodicity, so (2.22) becomes

$$
\mathrm{e}^{-\int_{0}^{1} \int_{\Omega}\left(c+\lambda_{1}\right)} \bar{\varphi}(0)=\bar{\varphi}(0)+o(1)
$$

Since $\bar{\varphi}(0) \nrightarrow 0$ by (2.23), we have proved (2.20).
Let $d>0$ and $c \in C(\bar{\Omega} \times \mathbb{R})$ be given. Denote by $\lambda(d, c)$ the principal eigenvalue of (2.4).

Corollary 2.2.11 Suppose $c(x, t)$ is nonconstant in $x$, and that $\hat{c}(x)$ is constant in $x$. Then the following two statements hold.
(i) There exists a $d_{1}>0$ such that $\partial_{d} \lambda\left(d_{1}, c\right)<0$.
(ii) There exist $0<d_{1}<d_{2}$ such that $\lambda\left(d_{1}, c\right)=\lambda\left(d_{2}, c\right)$.

Proof This is [18, Theorem 2.2]. By Lemmas 2.2.1 and 2.2.10,

$$
\lambda(d, c)<-\frac{1}{|\Omega|} \int_{\Omega} \hat{c}(x) \mathrm{d} x \quad \text { and } \quad \lim _{d \rightarrow \infty} \lambda(d, c)=-\frac{1}{|\Omega|} \int_{\Omega} \hat{c}(x) \mathrm{d} x
$$

Moreover, since $\hat{c}$ is constant, Lemma 2.2.8 says that

$$
\lim _{d \rightarrow 0} \lambda(d, c)=-\frac{1}{|\Omega|} \int_{\Omega} \hat{c}(x) \mathrm{d} x
$$

It is then clear that (i) and (ii) hold.

Remark 2.2.12 The high order expansion of $\lambda_{1}$ for a sufficiently large diffusion rate $d$ is given in Bai et al. [2]. In particular, it is shown in [2] that $\lambda_{1}$ is monotone non-decreasing for a sufficiently large diffusion rate $d$. See also [21] for some related results on the principal Floquet bundle and applications to the evolution of dispersal in spatially heterogeneous and temporally varying environments.

### 2.2.4 Monotonicity in frequency

In this subsection we address an interesting question raised by Hutson et al. [18] on the dependence of the principal eigenvalue of time-periodic parabolic operators on the parameter frequency.

Consider the periodic-parabolic eigenvalue problem

$$
\begin{cases}\partial_{t} u-\Delta u-c(x, \tau t) u=\lambda(\tau) u, & x \in \Omega, t \in[0,1 / \tau], \\ \nabla u \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1 / \tau], \\ u(x, 0)=u(x, 1 / \tau), & x \in \Omega,\end{cases}
$$

where the parameter $\tau>0$ measures the frequency of the temporal variations of the environment. By a change of variable, the above is equivalent to

$$
\begin{cases}L_{\tau} u:=\tau \partial_{t} u-\Delta u-c(x, t) u=\lambda(\tau) u, & x \in \Omega, t \in[0,1],  \tag{2.24}\\ \nabla u \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1], \\ u(x, 0)=u(x, 1), & x \in \Omega,\end{cases}
$$

where we denote by $\lambda(\tau)$ the principal eigenvalue, and by $u_{\tau}$ a positive eigenfunction associated with $\lambda(\tau)$.

In [18], Hutson et al. asked whether the principal eigenvalue $\lambda(\tau)$ is monotone in $\tau$, which suggests that increasing the temporal variation of the environment tends to favor the persistence of populations. The following result from [24] provided an affirmative answer:

Theorem 2.2.13 $\lambda(\tau)$ is non-decreasing in $\tau>0$. Furthermore, the following two alternatives hold:
(i) If $c=\hat{c}(x)+g(t)$ for some 1 -periodic function $g(t)$, then $\lambda(\tau)$ is constant for $\tau>0$;
(ii) Otherwise, $\lambda^{\prime}(\tau)>0$ for every $\tau>0$.

The idea of the proof is to consider the adjoint problem of (2.24), i.e.

$$
\begin{cases}L_{\tau}^{*} v:=-\tau \partial_{t} v-\Delta v-c(x, t) v=\lambda(\tau) v, & x \in \Omega, t \in[0,1],  \tag{2.25}\\ \nabla v \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1], \\ v(x, 0)=v(x, 1), & x \in \Omega .\end{cases}
$$

Let $v_{\tau}$ denote a positive eigenfunction of (2.25) corresponding to $\lambda(\tau)$, and denote, for convenience, $C=\Omega \times[0,1]$. We normalize $u_{\tau}$ and $v_{\tau}$ such that $\int_{C} u_{\tau}^{2}=$ $\int_{C} u_{\tau} v_{\tau}=1$ for any $\tau>0$.

Define the sets $\mathbb{S}$ and $\mathbb{S}_{+}$by

$$
\mathbb{S}=\left\{\zeta \in C^{2,1}(C) \cap C^{1,1}(\bar{C}): \zeta(x, 0)=\zeta(x, 1) \text { in } \Omega, \nabla \zeta \cdot \mathbf{n}=0 \text { on } \partial \Omega \times[0,1]\right\}
$$

and

$$
\mathbb{S}_{+}=\{\zeta \in \mathbb{S}: \zeta>0 \quad \text { in } \bar{C}\} .
$$

Then define the functional $J_{\tau}: \mathbb{S}_{+} \rightarrow \mathbb{R}$ by

$$
\begin{equation*}
J_{\tau}(\zeta)=\int_{C} u_{\tau} v_{\tau}\left(\frac{L_{\tau} \zeta}{\zeta}\right) \mathrm{d} x \mathrm{~d} t, \quad \zeta \in \mathbb{S}_{+} \tag{2.26}
\end{equation*}
$$

Clearly, for any $\tau>0, u_{\tau}, v_{\tau} \in \mathbb{S}_{+}$and $J_{\tau}$ is well defined on the cone $\mathbb{S}_{+}$. The following property of $J_{\tau}$ turns out to be crucial.

Lemma 2.2.14 For any $\zeta \in \mathbb{S}_{+}$, we have

$$
\begin{equation*}
J_{\tau}\left(u_{\tau}\right)-J_{\tau}(\zeta)=\int_{C} u_{\tau} v_{\tau}\left|\nabla \log \left(\frac{\zeta}{u_{\tau}}\right)\right|^{2} \tag{2.27}
\end{equation*}
$$

Proof By the definition of $J_{\tau}$, we observe that, for every $\zeta \in \mathbb{S}_{+}$,

$$
\begin{align*}
J_{\tau}(\zeta)= & \tau \int_{C} u_{\tau} v_{\tau}\left(\frac{\zeta_{t}}{\zeta}\right)-\int_{C} u_{\tau} v_{\tau}\left[\frac{\Delta \zeta}{\zeta}\right]-\int_{C} u_{\tau} v_{\tau} c \\
= & \tau \int_{C} u_{\tau} v_{\tau} \partial_{t} \log \zeta-\int_{0}^{1} \int_{\partial \Omega} u_{\tau} v_{\tau}(\nabla \log \zeta) \cdot \mathbf{n} \\
& +\int_{C} \nabla\left(u_{\tau} v_{\tau}\right) \cdot \nabla \log \zeta-\int_{C} u_{\tau} v_{\tau}|\nabla \log \zeta|^{2}-\int_{C} u_{\tau} v_{\tau} c \tag{2.28}
\end{align*}
$$

For each $\tau>0, \zeta \in \mathbb{S}_{+}$, and $\varphi \in \mathbb{S}$, recall that the Gateaux derivative of $J_{\tau}$ at the point $\zeta$ is given by

$$
D J_{\tau}(\zeta) \varphi=\lim _{h \rightarrow 0} \frac{1}{h}\left[J_{\tau}(\zeta+h \varphi)-J_{\tau}(\zeta)\right]
$$

We claim that $u_{\tau}$ is a critical point of $J_{\tau}$ in the sense that

$$
\begin{equation*}
D J_{\tau}\left(u_{\tau}\right) \varphi=0 \text { for all } \varphi \in \mathbb{S} . \tag{2.29}
\end{equation*}
$$

To prove (2.29), we first notice that $\zeta \in \mathbb{S}_{+}$implies

$$
\int_{0}^{1} \int_{\partial \Omega} u_{\tau} v_{\tau}(\nabla \log \zeta) \cdot \mathbf{n}=0
$$

It follows from (2.28) that

$$
\begin{gather*}
D J_{\tau}(\zeta) \varphi=\tau \int_{C} u_{\tau} v_{\tau} \partial_{t}\left(\frac{\varphi}{\zeta}\right)+\int_{C} \nabla\left(u_{\tau} v_{\tau}\right) \cdot \nabla\left(\frac{\varphi}{\zeta}\right)  \tag{2.30}\\
-2 \int_{C} u_{\tau} v_{\tau}(\nabla \log \zeta) \cdot \nabla\left(\frac{\varphi}{\zeta}\right)
\end{gather*}
$$

for any $\varphi \in \mathbb{S}$. Through straightforward calculations, we further have

$$
\begin{aligned}
& D J_{\tau}\left(u_{\tau}\right) \varphi \\
= & \tau \int_{C} u_{\tau} v_{\tau} \partial_{t}\left(\frac{\varphi}{u_{\tau}}\right)-2 \int_{C} u_{\tau} v_{\tau}\left(\nabla \log u_{\tau}\right) \cdot \nabla\left(\frac{\varphi}{u_{\tau}}\right)+\int_{C} \nabla\left(u_{\tau} v_{\tau}\right) \cdot \nabla\left(\frac{\varphi}{u_{\tau}}\right) \\
= & -\tau \int_{C}\left(\frac{\varphi}{u_{\tau}}\right) \partial_{t}\left(u_{\tau} v_{\tau}\right)-2 \int_{0}^{1} \int_{\partial \Omega}\left(\frac{\varphi v_{\tau}}{u_{\tau}}\right) \nabla u_{\tau} \cdot \mathbf{n} \\
& +2 \int_{C}\left(\frac{\varphi}{u_{\tau}}\right)\left(\nabla v_{\tau} \cdot \nabla u_{\tau}+v_{\tau} \Delta u_{\tau}\right) \\
& +\int_{0}^{1} \int_{\partial \Omega}\left(\frac{\varphi}{u_{\tau}}\right) \nabla\left(u_{\tau} v_{\tau}\right) \cdot \mathbf{n}-\int_{C}\left(\frac{\varphi}{u_{\tau}}\right) \Delta\left(u_{\tau} v_{\tau}\right) \\
= & -\tau \int_{C}\left(\frac{\varphi}{u_{\tau}}\right) \partial_{t}\left(u_{\tau} v_{\tau}\right)+2 \int_{C}\left(\frac{\varphi}{u_{\tau}}\right)\left\{\nabla v_{\tau} \cdot \nabla u_{\tau}+v_{\tau} \Delta u_{\tau}\right\} \\
& -\int_{C}\left(\frac{\varphi}{u_{\tau}}\right)\left\{v_{\tau} \Delta u_{\tau}+2 \nabla v_{\tau} \cdot \nabla u_{\tau}+u_{\tau} \Delta v_{\tau}\right\} \\
= & -\tau \int_{C}\left(\frac{\varphi}{u_{\tau}}\right) \partial_{t}\left(u_{\tau} v_{\tau}\right)+\int_{C}\left(\frac{\varphi v_{\tau}}{u_{\tau}}\right) \Delta u_{\tau}-\int_{C} \varphi \Delta v_{\tau} \\
= & -\int_{C}\left(\frac{v_{\tau}}{u_{\tau}}\right)\left\{\tau \partial_{t} u_{\tau}-\Delta u_{\tau}\right\} \varphi+\int_{C}\left\{-\tau \partial_{t} v_{\tau}-\Delta v_{\tau}\right\} \varphi \\
= & -\int_{C} \frac{v_{\tau}}{u_{\tau}}\left(L_{\tau} u_{\tau}\right) \varphi+\int_{C}\left(L_{\tau}^{*} v_{\tau}\right) \varphi .
\end{aligned}
$$

In the above applications of the divergence theorem, the boundary integrals vanish due to the boundary conditions of $u_{\tau}$ and $v_{\tau}$.

Since $L_{\tau} u_{\tau}=\lambda(\tau) u_{\tau}$ and $L_{\tau}^{*} v_{\tau}=\lambda(\tau) v_{\tau}$, we obtain

$$
D J_{\tau}\left(u_{\tau}\right) \varphi=-\lambda(\tau) \int_{C} v_{\tau} \varphi+\lambda(\tau) \int_{C} v_{\tau} \varphi=0,
$$

and (2.29) thus follows.
We now proceed to prove formula (2.27) through some tedious manipulations. Taking (2.28) into account, direct calculation shows

$$
\begin{aligned}
& J_{\tau}\left(u_{\tau}\right)-J_{\tau}(\zeta)+\tau \int_{C} u_{\tau} v_{\tau} \partial_{t} \log \left(\frac{\zeta}{u_{\tau}}\right)+\int_{C} \nabla\left(u_{\tau} v_{\tau}\right) \cdot \nabla \log \left(\frac{\zeta}{u_{\tau}}\right) \\
= & -\int_{C} u_{\tau} v_{\tau}\left|\nabla \log u_{\tau}\right|^{2}+\int_{C} u_{\tau} v_{\tau}|\nabla \log \zeta|^{2} \\
= & \int_{C} u_{\tau} v_{\tau}\left(\nabla \log \zeta+\nabla \log u_{\tau}\right) \cdot\left(\nabla \log \zeta-\nabla \log u_{\tau}\right) \\
= & \int_{C} u_{\tau} v_{\tau}\left[2 \nabla \log u_{\tau}+\nabla \log \left(\frac{\zeta}{u_{\tau}}\right)\right] \cdot \nabla \log \left(\frac{\zeta}{u_{\tau}}\right) \\
= & 2 \int_{C} u_{\tau} v_{\tau}\left(\nabla \log u_{\tau}\right) \cdot \nabla \log \left(\frac{\zeta}{u_{\tau}}\right)+\int_{C} u_{\tau} v_{\tau}\left|\nabla \log \left(\frac{\zeta}{u_{\tau}}\right)\right|^{2} .
\end{aligned}
$$

Now, setting $\zeta=u_{\tau}$ in (2.30), we have

$$
\begin{align*}
D J_{\tau}\left(u_{\tau}\right) \varphi= & \tau \int_{C} u_{\tau} v_{\tau} \partial_{t}\left(\frac{\varphi}{u_{\tau}}\right)+\int_{C} \nabla\left(u_{\tau} v_{\tau}\right) \cdot \nabla\left(\frac{\varphi}{u_{\tau}}\right)  \tag{2.31}\\
& -2 \int_{C} u_{\tau} v_{\tau}\left(\nabla \log u_{\tau}\right) \cdot \nabla\left(\frac{\varphi}{u_{\tau}}\right)
\end{align*}
$$

for all $\varphi \in \mathbb{S}$. Setting $\varphi=u_{\tau} \log \left(\frac{\zeta}{u_{\tau}}\right)$, which belongs to $\mathbb{S}$, we obtain

$$
J_{\tau}\left(u_{\tau}\right)-J_{\tau}(\zeta)=-D J_{\tau}\left(u_{\tau}\right) \varphi+\int_{C} u_{\tau} v_{\tau}\left|\nabla \log \left(\frac{\zeta}{u_{\tau}}\right)\right|^{2}
$$

As $D J_{\tau}\left(u_{\tau}\right) \varphi=0$, the proof of Lemma 2.2.14 is complete.
With the help of Lemma 2.2.14, we are in a position to prove Theorem 2.2.13.

Proof (of Theorem 2.2.13) We substitute $u=u_{\tau}$ in (2.24) and differentiate the resulting equation with respect to $\tau$. Denoting $\frac{\partial}{\partial \tau} u_{\tau}$ by $u_{\tau}^{\prime}$ and $\frac{\mathrm{d}}{\mathrm{d} \tau} \lambda(\tau)$ by $\lambda^{\prime}(\tau)$ for brevity, we obtain

$$
\begin{cases}\partial_{t} u_{\tau}+\tau \partial_{t} u_{\tau}^{\prime}-\Delta u_{\tau}^{\prime}-c u_{\tau}^{\prime}=\lambda(\tau) u_{\tau}^{\prime}+\lambda^{\prime}(\tau) u_{\tau}, & x \in \Omega, t \in[0,1] \\ \nabla u_{\tau}^{\prime} \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1] \\ u_{\tau}^{\prime}(x, 0)=u_{\tau}^{\prime}(x, 1), & x \in \Omega\end{cases}
$$

We multiply the above equation by $v_{\tau}$ and integrate the result over $C$. Together with the fact that $L_{\tau}^{*} v_{\tau}=\lambda(\tau) v_{\tau}$ and the normalization $\int_{C} u_{\tau} v_{\tau}=1$, we find that

$$
\lambda^{\prime}(\tau)=\int_{C} v_{\tau} \partial_{t} u_{\tau}
$$

Recalling the definitions of $L_{\tau}, L_{\tau}^{*}$ and $J_{\tau}$, we further derive

$$
\begin{aligned}
\int_{C} v_{\tau} \partial_{t}\left(u_{\tau}\right) & =\frac{1}{2 \tau} \int_{C} v_{\tau}\left(L_{\tau}-L_{\tau}^{*}\right) u_{\tau} \\
& =\frac{1}{2 \tau}\left[\int_{C} v_{\tau} L_{\tau} u_{\tau}-\int_{C} u_{\tau} L_{\tau} v_{\tau}\right] \\
& =\frac{1}{2 \tau}\left[J_{\tau}\left(u_{\tau}\right)-J_{\tau}\left(v_{\tau}\right)\right] .
\end{aligned}
$$

In view of $v_{\tau} \in \mathbb{S}_{+}$, Lemma 2.2.14 implies

$$
\begin{equation*}
\lambda^{\prime}(\tau)=\frac{1}{2 \tau} \int_{C} u_{\tau} v_{\tau}\left|\nabla \log \left(\frac{v_{\tau}}{u_{\tau}}\right)\right|^{2} \tag{2.32}
\end{equation*}
$$

which shows that $\lambda^{\prime}(\tau) \geq 0$ for all $\tau>0$.
It remains to prove parts (i) and (ii) in Theorem 2.2.13. Again, let $\lambda(\tau), u_{\tau}$ be the principal eigenvalue and positive eigenfunction of (2.24), for which $c(x, t)$ can be written as

$$
c(x, t)=\hat{c}(x)+g(t) .
$$

Without loss of generality, we may assume that $\int_{0}^{1} g(t) \mathrm{d} t=0$. Set

$$
U_{\tau}(x, t)=\exp \left(-\frac{1}{\tau} \int_{0}^{1} g(s) \mathrm{d} s\right) u_{\tau}
$$

and then observe that $U_{\tau}$ is a positive eigenfunction of the following problem

$$
\begin{cases}\tau \partial_{t} U_{\tau}-\Delta U_{\tau}-\hat{c}(x) U_{\tau}=\lambda(\tau) U_{\tau}, & x \in \Omega, t \in[0,1],  \tag{2.33}\\ \nabla U_{\tau} \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1], \\ U_{\tau}(x, 0)=U_{\tau}(x, 1), & x \in \Omega .\end{cases}
$$

Observe that all coefficients of (2.33) are independent of $t$. By the uniqueness of principal eigenfunction (up to scaling), $U_{\tau}$ is independent of $t$. As a result, $\lambda(\tau)$ is constant for $\tau>0$.

Finally, we show that if $\frac{\partial \lambda}{\partial \tau}=0$ for some $\tau_{0}>0$, then $c$ can be written as $c=\hat{c}(x)+g(t)$. According to (2.32), we have $u_{\tau_{0}}=h(t) v_{\tau_{0}}$ for some 1 -periodic function $h(t)>0$. Substituting $u_{\tau_{0}}=h(t) v_{\tau_{0}}$ into $L_{\tau_{0}} u_{\tau_{0}}=\lambda\left(\tau_{0}\right) u_{\tau_{0}}$ and using $L_{\tau_{0}}^{*} v_{\tau_{0}}=\lambda\left(\tau_{0}\right) v_{\tau_{0}}$, we can deduce

$$
h^{\prime}(t) v_{\tau_{0}}+2 h(t) \partial_{t} v_{\tau_{0}}=0
$$

It then follows that $\partial_{t} \log v_{\tau_{0}}=-\frac{h^{\prime}(t)}{2 h(t)}$ in $C$, which depends only on $t$. Hence, $v_{\tau_{0}}$ is of the form $v_{\tau_{0}}=X_{\tau_{0}}(x) T_{\tau_{0}}(t)$ with some 1 -periodic function $T_{\tau_{0}}(t)>0$ in $[0, T]$ and function $X_{\tau_{0}}(x)>0$ in $\Omega$. Again using $L_{\tau}^{*} v_{\tau_{0}}=\lambda\left(\tau_{0}\right) v_{\tau_{0}}$, we arrive at

$$
-\tau_{0} \frac{T_{\tau_{0}}^{\prime}(t)}{T_{\tau_{0}}(t)}-\frac{\Delta X_{\tau_{0}}(x)}{X_{\tau_{0}}(x)}-c(x, t)=\lambda\left(\tau_{0}\right) \text { in } C
$$

and we have expressed $c(x, t)$ in the form of $c(x, t)=\hat{c}(x)+g(t)$. The proof of Theorem 2.2.13 is now complete.

Some applications of Theorem 2.2.13 to two-species competition models in spatially heterogeneous and temporally varying environment will be given in the next section; see Theorem 2.3.2.

Remark 2.2.15 The limits of $\lambda(\tau)$ as $\tau$ tends to zero or infinity are given in [24]. In fact, these limits and Theorem 2.2.13 can also be extended to Dirichlet and Robin boundary conditions, as done in [24]. As an application of Theorem 2.2.13, consider the case of zero Neumann boundary conditions, it holds that

$$
\lim _{\tau \rightarrow \infty} \lambda(\tau)=\mu_{1},
$$

where $\mu_{1}$ denotes the smallest eigenvalue of (2.11). Hence it follows from Theorem 2.2.13 that $\lambda(\tau) \leq \mu_{1}$ holds for all $\tau>0$; i.e. this gives another proof of Lemma 2.2.5.

Remark 2.2.16 We refer to [23] for the extensions of Theorem 2.2.13, where the joint dependence of the principal eigenvalues on the frequency and the diffusion rate is investigated, with applications to some infectious disease models. To be more specific, as another application of Theorem 2.2.13, consider the principal eigenvalue, denoted by $\lambda(\tau, d)$, of the linear eigenvalue problem

$$
\begin{cases}\tau \partial_{t} u-d \Delta u-c(x, t) u=\lambda u, & x \in \Omega, t \in[0,1],  \tag{2.34}\\ \nabla u \cdot \mathbf{n}=0, & x \in \partial \Omega, t \in[0,1], \\ u(x, 0)=u(x, 1), & x \in \Omega .\end{cases}
$$

Among other things, the topological structure of the level set of $\lambda(\tau, d)$ is classified in [23], in which the monotonicity result in Theorem 2.2.13 plays an important role. This in turn yields new understandings of the dependence of the principal eigenvalue $\lambda(\tau, d)$ on the diffusion rate $d$; see [23] for further details.

### 2.3 Applications to Two-Species Competition Models in a Spatially and Temporally Varying Environment

In this section we present some applications of the principal eigenvalue theory to two-species competition models in spatially heterogeneous and temporally varying environment. To this end, we consider the following competition model, in which two species are identical except possibly for their diffusion rates and relaxation time:
2.3 Applications to Two-Species Competition Models in a Spatially and Temporally Varying... 51

$$
\begin{cases}\tau \partial_{t} u-d_{1} \Delta u=u(m(x, t)-u-v), & x \in \Omega, t>0,  \tag{2.35}\\ \partial_{t} v-d_{2} \Delta v=v(m(x, t)-u-v), & x \in \Omega, t>0, \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0, & x \in \partial \Omega, t>0, \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x), & x \in \Omega,\end{cases}
$$

where $\tau>0$ is the relaxation time which accounts for possibly different time scales for two species to respond to the temporal variations in the environment, the intrinsic growth rate $m(x, t)$ is positive, continuous in $\bar{\Omega} \times \mathbb{R}$, and 1-periodic in $t$, which measures the environmental inhomogeneity in both space and time. When $m$ is non-constant in $x$ and independent of $t$, it is shown in [8] that the slower diffusing species is always selected. The following result in [18] shows that the same principle no longer holds in general time-periodic environments, where the two competing species are identical except for their diffusion rates.

Theorem 2.3.1 Assume $\tau=1$. There exist a 1 -periodic function $m(x, t)$, and $0<$ $d_{1}<d_{2}$ such that the semi-trivial periodic solution $E_{2}=(0, \tilde{v})$ exists, and it is globally asymptotically stable among all solutions ( $u, v$ ) of (2.35) such that $u_{0} \geq, \not \equiv 0$ and $v_{0} \geq, \not \equiv 0$.

Proof Let $c(x, t)$ and $d_{1}$ be as given in Corollary 2.2.11(i). Let $\lambda_{1}=\lambda\left(d_{1}, c\right)$ be the principal eigenvalue of (2.4) with $d=d_{1}$, and $\varphi_{1}(x, t)$ be the corresponding positive eigenfunction. Set

$$
m(x, t)=c(x, t)+\lambda\left(d_{1}, c\right)+\eta \varphi_{1}(x, t) \quad \text { and } \quad \tilde{u}(x, t)=\eta \varphi_{1}(x, t),
$$

where $\eta>0$ is large enough so that $m(x, t)>0$. It is then clear that $\tilde{u}$ is a positive periodic solution of the dynamical system generated by

$$
\begin{cases}\partial_{t} \theta-d_{1} \Delta \theta=\theta(m(x, t)-\theta), & x \in \Omega, t>0  \tag{2.36}\\ \mathbf{n} \cdot \nabla \theta=0, & x \in \partial \Omega, t>0 \\ \theta(x, 0)=\theta_{0}(x), & x \in \Omega\end{cases}
$$

In fact, $\tilde{u}$ is the unique positive periodic solution of (2.36), since the Poincaré map $\Phi_{1}$ of the dynamical system generated by (2.36) generates a subhomogeneous dynamical system (see Appendix C for details). By continuity, if we replace $d_{1}$ by $d_{2}=d_{1}+\epsilon$ with $0<\epsilon \ll 1$, there is again a unique positive periodic solution $\tilde{v}$. Therefore, the system (2.35) has at least three periodic solutions

$$
E_{0}=(0,0), \quad E_{1}=(\tilde{u}, 0) \quad \text { and } \quad E_{2}=(0, \tilde{v}) .
$$

By the theory of monotone dynamical systems (Theorem E.1.9), it is enough to show that (i) $E_{1}=(\tilde{u}, 0)$ is linearly unstable, and (ii) the system (2.35) has no positive periodic solutions.

For (i), let $\lambda_{E_{1}}$ be the principal eigenvalue of

$$
\begin{cases}\partial_{t} \varphi-d_{2} \Delta \varphi=(m-\tilde{u}) \varphi+\lambda_{E_{1}} \varphi, & x \in \Omega, t \in[0,1],  \tag{2.37}\\ \mathbf{n} \cdot \nabla \varphi=0, & x \in \partial \Omega, t \in[0,1], \\ \varphi(x, 0)=\varphi(x, 1), & x \in \Omega .\end{cases}
$$

We need to show that $\lambda_{E_{1}}<0$. Indeed,

$$
\lambda_{E_{1}}=\lambda\left(d_{2}, m-\tilde{u}\right)=\lambda\left(d_{1}+\epsilon, c\right)<\lambda\left(d_{1}, c\right)=0 \quad \text { for small } \epsilon>0,
$$

where we used $\partial_{d} \lambda\left(d_{1}, c\right)<0$. This proves (i).
Next, we prove (ii). Suppose to the contrary that there are sequences

$$
\left(d_{1}, d_{2}\right)=\left(d_{1}, d_{1}+\epsilon_{k}\right) \quad \text { and } \quad\left(u_{k}, v_{k}\right)
$$

where $\epsilon_{k} \rightarrow 0$ and ( $u_{k}, v_{k}$ ) is a (componentwise) positive periodic solution of the system (2.35) with $\left(d_{1}, d_{2}\right)=\left(d_{1}, d_{1}+\epsilon_{k}\right)$. By the maximum principle,

$$
\left\|u_{k}\right\|_{\infty}+\left\|v_{k}\right\|_{\infty} \leq 2\|m\|_{\infty}
$$

We may apply a parabolic $L^{p}$ estimate to pass to a subsequence so that

$$
\left(u_{k}, v_{k}\right) \rightarrow\left(u_{\infty}, v_{\infty}\right) \quad \text { weakly in } W^{2,1, p}(\Omega \times[0,1])
$$

By Sobolev embedding, it also converges strongly in $C^{1+\alpha,(1+\alpha) / 2}(\bar{\Omega} \times[0,1])$ for all $0<\alpha<1$. Moreover, $u_{\infty}+v_{\infty}$ is a positive periodic solution of (2.36). By uniqueness, we have $u_{\infty}+v_{\infty}=\tilde{u}$. Hence,

$$
m-u_{k}-v_{k}=m-\tilde{u}+o(1)=c+\lambda\left(d_{1}, c\right)+o(1)
$$

Now, by interpreting the existence of $\left(u_{k}, v_{k}\right)$, we have

$$
\lambda\left(d_{1}, m-u_{k}-v_{k}\right)=\lambda\left(d_{1}+\epsilon_{k}, m-u_{k}-v_{k}\right)=0
$$

By the mean value theorem, there exists $\hat{d}_{k} \in\left(d_{1}, d_{1}+\epsilon_{k}\right)$ such that

$$
\partial_{d} \lambda\left(\hat{d}_{k}, m-u_{k}-v_{k}\right)=0 \quad \text { for all } k
$$

Letting $k \rightarrow \infty$, we have $\hat{d}_{k} \rightarrow d_{1}$ and $m-u_{k}-v_{k} \rightarrow c+\lambda\left(d_{1}, c\right)$, so that

$$
\partial_{d} \lambda\left(d_{1}, c+\lambda\left(d_{1}, c\right)\right)=\partial_{d} \lambda\left(d_{1}, c\right)=0
$$

This is a contradiction to the construction of $c$.
Next we present an application of Theorem 2.2.13 which says that for two competing species which are identical except for their relaxation time, the species with the shorter relaxation time will drive the other species to extinction.

Theorem 2.3.2 Assume $d_{1}=d_{2}, m \in C^{2}, \int_{\Omega} \int_{0}^{1} m(x, t) \mathrm{d} x \mathrm{~d} t>0$, and $\partial_{x t} m(x, t) \not \equiv$ $\phi(x) g(t)$ for any $\phi \in C(\mathbb{R} ; \mathbb{R})$ and $g \in C([0,1] ; \mathbb{R})$ which is 1 -periodic. Then the following conclusions hold:
(i) If $\tau>1$, then the semi-trivial periodic solution $E_{2}=(0, \tilde{v})$ is globally asymptotically stable among all solutions $(u, v)$ of (2.35) such that $u_{0} \geq, \not \equiv 0$ and $v_{0} \geq, \not \equiv 0$;
(ii) If $\tau<1$, then the semi-trivial periodic solution $E_{1}=(\tilde{u}, 0)$ is globally asymptotically stable among all solutions ( $u, v$ ) of (2.35) such that $u_{0} \geq, \not \equiv 0$ and $v_{0} \geq, \not \equiv 0$.

Proof It suffices to establish part (i) as the proof of (ii) is identical to that of (i). Thanks again to Theorem E.1.9, it suffices to show that (a) $E_{1}=(\tilde{u}, 0)$ is linearly unstable, and (b) system (2.35) has no positive periodic solutions.

For (a), let $\lambda(\tau, d, c)$ denote the principal eigenvalue of the linear problem

$$
\begin{cases}\tau \partial_{t} \varphi-d \Delta \varphi=c \varphi+\lambda \varphi, & x \in \Omega, t \in[0,1],  \tag{2.38}\\ \mathbf{n} \cdot \nabla \varphi=0, & x \in \partial \Omega, t \in[0,1], \\ \varphi(x, 0)=\varphi(x, 1), & x \in \Omega .\end{cases}
$$

The stability of $E_{1}$ is determined by the sign of $\lambda_{E_{1}}:=\lambda\left(1, d_{2}, m-\tilde{u}\right)$. As $d_{1}=d_{2}$, it follows from Theorem 2.2.13 that

$$
\lambda_{E_{1}}=\lambda\left(1, d_{1}, m-\tilde{u}\right) \leq \lambda\left(\tau, d_{2}, m-\tilde{u}\right)=0,
$$

where the last equality follows from the equation of $\tilde{u}$. It suffices to further show that $\lambda_{E_{1}} \neq 0$ : if not, by Theorem 2.2.13, $\lambda_{E_{1}}=0$ implies that $m-\tilde{u}=a(x)+b(t)$ for some functions $a(x)$ and $b(t)$. Since $m-\tilde{u}$ is 1 -periodic in $t$, we may replace $a(x)$ by $a(x)+\int_{0}^{1} b(s) \mathrm{d} s$ and $b(t)$ by $b(t)-\int_{0}^{1} b(s) \mathrm{d} s$, so that $b(t)$ is 1-periodic and with zero average in $[0,1]$. Substituting this into the equation of $\tilde{u}$ we find that $\tilde{u}=w(x) \exp \left(\frac{1}{\tau} \int_{0}^{t} b(s) \mathrm{d} s\right)$, where $w>0$ is a positive solution of

$$
\begin{equation*}
-d_{1} \Delta w=a(x) w \quad \text { in } \Omega, \quad \mathbf{n} \cdot \nabla w=0 \quad \text { on } \partial \Omega . \tag{2.39}
\end{equation*}
$$

Hence, $m=w(x) \exp \left(\frac{1}{\tau} \int_{0}^{t} b(s) \mathrm{d} s\right)+a(x)+b(t)$, which is a contradiction to our assumption. Hence, $\lambda_{E_{1}}<0$, i.e. ( $\tilde{u}, 0$ ) is unstable.

To prove (b), we argue by contradiction: Suppose that system (2.35) has positive periodic solutions, which we denote by $(u, v)$. Therefore,

$$
\lambda\left(\tau, d_{1}, m-u-v\right)=\lambda\left(1, d_{2}, m-u-v\right)=0 .
$$

As $d_{1}=d_{2}$ and $\tau \neq 1$, by Theorem 2.2.13 we see that $m-u-v=a(x)+b(t)$ for some functions $a(x)$ and $b(t)$. Similarly as before, we may assume that $\int_{0}^{1} b(s) \mathrm{d} s=0$, to deduce that

$$
\begin{align*}
(u(x, t), v(x, t)) & =\left(k_{1} \exp \left(\frac{1}{\tau} \int_{0}^{t} b(s) \mathrm{d} s\right) w(x), k_{2} \exp \left(\int_{0}^{t} b(s) \mathrm{d} s\right) w(x)\right) \\
& =\left(z_{1}(t) w(x), z_{2}(t) w(x)\right) \tag{2.40}
\end{align*}
$$

where $k_{i}>0$ are constants and $w(x)$ is a positive solution of (2.39). Hence, $m(x, t)=$ $w(x)\left(z_{1}(t)+z_{2}(t)\right)+a(x)+b(t)$, which contradicts our assumption on $m_{x t}$ being non-separable.

Remark 2.3.3 For applications of the principal eigenvalues to the two species competition model (2.35) in a spatially heterogeneous and temporally environment we refer to the work of Bai et al. [2], in which the case $\tau=1$ and $d_{1} \neq d_{2}$ is further investigated. A spatially discrete and time continuous version of (2.35) with general $\tau$ and $d_{i}(i=1,2)$ has been considered in [27].

### 2.4 Further Reading

In contrast to autonomous problems, the principal eigenvalues of periodic-parabolic operators lack a variational characterization, and much less is known about their qualitative properties. Here we present some further references for applications of principal eigenvalues to ecology, evolution and epidemiology for the interested readers.

The theory of principal eigenvalues for periodic-parabolic operators appears frequently in the study of persistence, competition and predation of species in ecology. For the applications of principal eigenvalues to the derivation of the minimal traveling wave speeds in time-periodic shifting environments, see [3, 11, 42]. For its applications in spatio-temporally degenerate environments, see [7, 9, 10] for the case involving single equations and $[1,36,37]$ for the case involving cooperative systems. For the influence of advection/flow on the principal eigenvalues of time-periodic operators with applications, see [ $20,25,26,28,32,33,34,35,39$ ].

Principal eigenvalue theory also plays important roles in the study of evolution questions. The evolution of dispersal can be studied by the examination of the invasibility of phenotypes in two-species competition models. The latter is characterized in terms of the principal eigenvalue of the linearized system at boundary equilibria or periodic solutions. For time-periodic environments, it was pioneered by the work of Hutson et al. [18]; see [2] for more recent developments, and [21] for the extension to $N$-competing species. For the concept of ideal free distribution in time-periodic environments and evolutionarily stable dispersal strategies, see [4, 5] for recent developments. Principal eigenvalue theory is also applied to describe the asymptotic dynamics in phenotypically structured population models, see [6, 12, 31, 41].

The investigation of reaction-diffusion models in epidemiology, particularly the characterization of the basic reproduction number, motivated the mathematical analysis of the principal eigenvalues of periodic-parabolic problems with weight functions. See, e.g. [23, 38, 40, 44, 45].

When the coefficients of the parabolic operators are non-autonomous and aperiodic, the notion of the principal Floquet bundle is a natural generalization of the principal eigenvalue, which describes the exponential separation property. This will be discussed in Chapter 4. For more general results and recent developments, see [14, 15, 16, 17, 29, 30, 43].

## Problems

2.4.1 Let $\lambda_{1}$ be the principal eigenvalue of

$$
\begin{cases}\varphi_{t}+\mathcal{L} \varphi=\lambda \varphi & \text { in } \Omega_{T}  \tag{2.41}\\ \mathcal{B} \varphi=0 & \text { on } S \Omega_{T} \\ \varphi(x, 0)=\varphi(x, T) & \text { for } x \in \Omega\end{cases}
$$

where $\mathcal{L}=-a^{i j} D_{i j}-b^{i} D_{i}-c$ is a non-divergence form operator and $\mathcal{B}=p^{i} D_{i}+$ $p^{0}$ is an oblique boundary operator, such that the coefficients $a^{i j}, b^{i}, p^{i}, p^{0}$ are independent of time and continuous in $\bar{\Omega}$, and $c \in C(\bar{\Omega} \times[0, T])$. Show that

$$
\begin{equation*}
-\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \leq \lambda_{1} \leq-\int_{0}^{1} \min _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t \quad \forall d>0 \tag{2.42}
\end{equation*}
$$

[Hint: Observe that $-\frac{1}{T} \int_{0}^{T} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t$ is the principal eigenvalue of

$$
\begin{cases}\partial_{t} \varphi-a^{i j} D_{i j} \varphi-b^{i} D_{i} \varphi=\left(\max _{x \in \bar{\Omega}} c(x, t)\right) \varphi+\lambda \varphi, & x \in \Omega, t \in[0, T], \\ \mathcal{B} \varphi=0, & x \in \partial \Omega, t \in[0, T], \\ \varphi(x, 0)=\varphi(x, T), & x \in \Omega,\end{cases}
$$

and use eigenvalue comparison lemmas similar to Lemmas 1.3.12 and 1.3.13.]
2.4.2 Prove the Hutson-Shen-Vickers Lemma for (2.41). Precisely, let $\lambda_{1}$ be the principal eigenvalue of (2.41), and let $\mu_{1}$ denote the smallest eigenvalue of

$$
\begin{cases}-a^{i j} D_{i j} \varphi-b^{i} D_{i} \varphi-\left(\frac{1}{T} \int_{0}^{T} c(x, t) \mathrm{d} t\right) \psi=\mu \psi, & x \in \Omega, \\ \mathcal{B} \psi=0, & x \in \partial \Omega .\end{cases}
$$

Suppose $a^{i j}$ and $b^{i}$ are independent of $t$, show that $\lambda_{1} \leq \mu_{1}$, and find a condition such that equality holds.
2.4.3 Assume $c(x, t)$ is continuous in $\bar{\Omega} \times[0,1]$ and 1-periodic in time. Show that

$$
\int_{0}^{1} \max _{x \in \bar{\Omega}} c(x, t) \mathrm{d} t=\sup _{x(t) \in \mathcal{S}} \int_{0}^{1} c(x(t), t) \mathrm{d} t
$$

where $\mathcal{S}=\{x(t) \in C[0, \infty): x(t)=x(t+1)\}$.
2.4.4 Let $\lambda(\tau)$ denote the principal eigenvalue of (2.24). Show that

$$
\lim _{\tau \rightarrow \infty} \lambda(\tau)=\mu_{1},
$$

where $\mu_{1}$ denotes the smallest eigenvalue of (2.11).
2.4.5 (Poincaré's inequality) Given $\beta \in C(\bar{\Omega})$ such that $\inf _{\Omega} \beta>0$, show that there is a positive constant $C_{\beta}$ such that for any $u \in H^{1}(\Omega)$ such that $\int \beta(x) u(x) \mathrm{d} x=0$, we have

$$
\int_{\Omega}|u(x)|^{2} \mathrm{~d} x \leq C_{\beta} \int_{\Omega}|\nabla u|^{2} \mathrm{~d} x
$$

In particular, for any strictly positive continuous functions $\alpha, \gamma$, we have

$$
\int_{\Omega} \alpha(x)|u(x)|^{2} \mathrm{~d} x \leq \frac{C_{\beta} \sup _{\Omega} \alpha}{\inf _{\Omega} \gamma} \int_{\Omega} \gamma(x)|\nabla u(x)|^{2} \mathrm{~d} x
$$

2.4.6 Let $\lambda(d)$ denote the principal eigenvalue of (2.4). Assume that $\Omega$ is an interval and either $c_{x} \geq 0$ for all $x$ and $t$ or $c_{x} \leq 0$ for all $x$ and $t$, then $\lambda(d)$ is monotone non-increasing in $d$.

## References

1. P. Álvarez Caudevilla, Y. Du, and R. Peng, Qualitative analysis of a cooperative reactiondiffusion system in a spatiotemporally degenerate environment, SIAM J. Math. Anal., 46 (2014), pp. 499-531.
2. X. Bai, X. He, and W.-M. Ni, Dynamics of a periodic-parabolic Lotka-Volterra competitiondiffusion system in heterogeneous environments, J. Eur. Math. Soc., (2022). in press.
3. H. Berestycki and G. Nadin, Asymptotic spreading for general heterogeneous equations, Mem. Amer. Math. Soc., (2022). in press.
4. R. S. Cantrell and C. Cosner, Evolutionary stability of ideal free dispersal under spatial heterogeneity and time periodicity, Math. Biosci., 305 (2018), pp. 71-76.
5. R. S. Cantrell, C. Cosner, and K.-Y. Lam, Ideal free dispersal under general spatial heterogeneity and time periodicity, SIAM J. Appl. Math., 81 (2021), pp. 789-813.
6. C. Carrère and G. Nadin, Influence of mutations in phenotypically-structured populations in time periodic environment, Discrete Contin. Dyn. Syst. Ser. B, 25 (2020), pp. 3609-3630.
7. D. Daners and C. Thornett, Periodic-parabolic eigenvalue problems with a large parameter and degeneration, J. Differential Equations, 261 (2016), pp. 273-295.
8. J. Dockery, V. Hutson, K. Mischaikow, and M. Pernarowski, The evolution of slow dispersal rates: a reaction diffusion model, J. Math. Biol., 37 (1998), pp. 61-83.
9. Y. Du and R. Peng, The periodic logistic equation with spatial and temporal degeneracies, Trans. Amer. Math. Soc., 364 (2012), pp. 6039-6070.
10. —, Sharp spatiotemporal patterns in the diffusive time-periodic logistic equation, J. Differential Equations, 254 (2013), pp. 3794-3816.
11. J. Fang, R. Peng, and X.-Q. Zhao, Propagation dynamics of a reaction-diffusion equation in a time-periodic shifting environment, J. Math. Pures Appl. (9), 147 (2021), pp. 1-28.
12. S. Figueroa Iglesias and S. Mirrahimi, Long time evolutionary dynamics of phenotypically structured populations in time-periodic environments, SIAM J. Math. Anal., 50 (2018), pp. 5537-5568.
13. P. Hess, Periodic-parabolic boundary value problems and positivity, vol. 247 of Pitman Research Notes in Mathematics Series, Longman Scientific \& Technical, Harlow; copublished in the United States with John Wiley \& Sons, Inc., New York, 1991.
14. J. Húska, Exponential separation and principal Floquet bundles for linear parabolic equations on general bounded domains: nondivergence case, Trans. Amer. Math. Soc., 360 (2008), pp. 4639-4679.
15. J. Húska and P. Poláčıк, The principal Floquet bundle and exponential separation for linear parabolic equations, J. Dynam. Differential Equations, 16 (2004), pp. 347-375.
16. J. Húska, P. Poláčik, and M. V. Safonov, Principal eigenvalues, spectral gaps and exponential separation between positive and sign-changing solutions of parabolic equations, Discrete Contin. Dyn. Syst., (2005), pp. 427-435.
17. J. Húska, P. Poláčik, and M. V. Safonov, Harnack inequalities, exponential separation, and perturbations of principal Floquet bundles for linear parabolic equations, Ann. Inst. H. Poincaré C Anal. Non Linéaire, 24 (2007), pp. 711-739.
18. V. Hutson, K. Mischaikow, and P. Poláčik, The evolution of dispersal rates in a heterogeneous time-periodic environment, J. Math. Biol., 43 (2001), pp. 501-533.
19. V. Hutson, W. Shen, and G. T. Vickers, Estimates for the principal spectrum point for certain time-dependent parabolic operators, Proc. Amer. Math. Soc., 129 (2001), pp. 1669-1679.
20. D. Jiang, K.-Y. Lam, Y. Lou, and Z.-C. Wang, Monotonicity and global dynamics of a nonlocal two-species phytoplankton model, SIAM J. Appl. Math., 79 (2019), pp. 716-742.
21. K.-Y. Lam and Y. Lou, The principal Floquet bundle and the dynamics of fast diffusing communities. Manuscript submitted for publication, 2022.
22. G. M. Lieberman, Second order parabolic differential equations, World Scientific Publishing Co., Inc., River Edge, NJ, 1996.
23. S. Liu and Y. Lou, Classifying the level set of principal eigenvalue for time-periodic parabolic operators and applications, J. Funct. Anal., 282 (2022), pp. Paper No. 109338, 43.
24. S. Liu, Y. Lou, R. Peng, and M. Zhou, Monotonicity of the principal eigenvalue for a linear time-periodic parabolic operator, Proc. Amer. Math. Soc., 147 (2019), pp. 5291-5302.
25. —, Asymptotics of the principal eigenvalue for a linear time-periodic parabolic operator I: large advection, SIAM J. Math. Anal., 53 (2021), pp. 5243-5277.
26. —, Asymptotics of the principal eigenvalue for a linear time-periodic parabolic operator II: Small diffusion, Trans. Amer. Math. Soc., 374 (2021), pp. 4895-4930.
27. S. Liu, Y. Lou, and P. Song, A new monotonicity for principal eigenvalues with applications to time-periodic patch models, SIAM J. Appl. Math, 82 (2022). in press.
28. M. Ma and C. Ou, Existence, uniqueness, stability and bifurcation of periodic patterns for a seasonal single phytoplankton model with self-shading effect, J. Differential Equations, 263 (2017), pp. 5630-5655.
29. J. Mierczyński and W. Shen, Exponential separation and principal Lyapunov exponent/spectrum for random/nonautonomous parabolic equations, J. Differential Equations, 191 (2003), pp. 175-205.
30. , Time averaging for nonautonomous/random linear parabolic equations, Discrete Contin. Dyn. Syst. Ser. B, 9 (2008), pp. 661-699.
31. S. Mirrahimi, B. Perthame, and P. E. Souganidis, Time fluctuations in a population model of adaptive dynamics, Ann. Inst. H. Poincaré C Anal. Non Linéaire, 32 (2015), pp. 41-58.
32. G. Nadin, The principal eigenvalue of a space-time periodic parabolic operator, Ann. Mat. Pura Appl. (4), 188 (2009), pp. 269-295.
33. G. Nadin, Some dependence results between the spreading speed and the coefficients of the space-time periodic Fisher-KPP equation, European J. Appl. Math., 22 (2011), pp. 169-185.
34. J. Nolen, M. Rudd, and J. Xin, Existence of KPP fronts in spatially-temporally periodic advection and variational principle for propagation speeds, Dyn. Partial Differ. Equ., 2 (2005), pp. 1-24.
35. J. Nolen and J. Xin, Existence of KPP type fronts in space-time periodic shear flows and a study of minimal speeds based on variational principle, Discrete Contin. Dyn. Syst., 13 (2005), pp. 1217-1234.
36. R. Peng, Long-time behavior of a cooperative periodic-parabolic system in a spatiotemporally degenerate environment, J. Differential Equations, 259 (2015), pp. 2903-2947.
37. ——, Long-time behavior of a cooperative periodic-parabolic system: temporal degeneracy versus spatial degeneracy, Calc. Var. Partial Differential Equations, 53 (2015), pp. 179-219.
38. R. Peng and X.-Q. Zhao, A reaction-diffusion SIS epidemic model in a time-periodic environment, Nonlinearity, 25 (2012), pp. 1451-1471.
39. ——, A nonlocal and periodic reaction-diffusion-advection model of a single phytoplankton species, J. Math. Biol., 72 (2016), pp. 755-791.
40. L. Pu and Z. Lin, A diffusive SIS epidemic model in a heterogeneous and periodically evolving environment, Math. Biosci. Eng., 16 (2019), pp. 3094-3110.
41. L. Roques, F. Patout, O. Bonnefon, and G. Martin, Adaptation in general temporally changing environments, SIAM J. Appl. Math., 80 (2020), pp. 2420-2447.
42. W. Shen, Z. Shen, S. Xue, and D. Zhou, Population dynamics under climate change: persistence criterion and effects of fluctuations, J. Math. Biol., 84 (2022), p. 42. Paper No. 30.
43. W. Shen and G. T. Vickers, Spectral theory for general nonautonomous/random dispersal evolution operators, J. Differential Equations, 235 (2007), pp. 262-297.
44. L. Zhang and X.-Q. Zhao, Asymptotic behavior of the basic reproduction ratio for periodic reaction-diffusion systems, SIAM J. Math. Anal., 53 (2021), pp. 6873-6909.
45. L. Zhao, Z.-C. Wang, and L. Zhang, Propagation dynamics for a time-periodic reactiondiffusion SI epidemic model with periodic recruitment, Z. Angew. Math. Phys., 72 (2021), p. 20. Paper No. 142.

## Chapter 3

## The Maximum Principle and the Principal Eigenvalue for Systems


#### Abstract

In this chapter the maximum principle and the comparison principle for cooperative parabolic systems are presented. The existence of the principal eigenvalue for cooperative elliptic/parabolic systems is considered, and the asymptotic behavior of the principal eigenvalues for small diffusion rates is determined. As an application, we apply the theory to a two-species competition system.


### 3.1 Comparison Principle of Cooperative Parabolic Systems

Let $\Omega \subset \mathbb{R}^{N}$ be a bounded domain with smooth boundary $\partial \Omega$. Let $\mathbf{n}=\left(n_{i}(x)\right)$ be the outer unit normal vector on $\partial \Omega$. Define

$$
\Omega_{T}=\Omega \times(0, T], \quad \bar{\Omega}_{T}=\bar{\Omega} \times[0, T], \quad S \Omega_{T}=\partial \Omega \times(0, T] .
$$

For $k=1, \ldots, K$, consider the non-divergence form parabolic operator

$$
\partial_{t}+\mathcal{L}_{k}=\partial_{t}-a_{k}^{i j} D_{i j}-b_{k}^{j} D_{j} \quad \text { in } \Omega_{T}
$$

where $a_{k}^{i j}, b_{k}^{j} \in C\left(\bar{\Omega}_{T}\right)$, and the oblique boundary condition

$$
\mathcal{B}_{k}=p_{k}^{i} D_{i}+p_{k}^{0} \quad \text { on } S \Omega_{T},
$$

where $p_{k}^{i} \in C\left(S \Omega_{T}\right)$ satisfies, for each $k$,

$$
p_{k}^{i}(x, t) n_{i}(x)>0 \quad \text { and } \quad p_{k}^{0} \geq 0 \quad \text { on } S \Omega_{T} .
$$

We recall the notion of a generalized subsolution, as introduced in Chapter 1.
Definition 3.1.1 We say that $u \in C\left(\bar{\Omega}_{T}\right)$ satisfies

$$
\begin{equation*}
u_{t}+\mathcal{L}_{k} u \leq f(x, t, u, D u) \quad \text { in } \Omega_{T} \quad \text { and } \quad \mathcal{B}_{k} u \leq g(x, t) \quad \text { on } S \Omega_{T} \tag{3.1}
\end{equation*}
$$

in the generalized sense if for each $\left(x_{0}, t_{0}\right) \in \overline{\underline{\Omega}} \times(0, T]$, there exist a neighborhood $U$ of $\left(x_{0}, t_{0}\right)$ in $\bar{\Omega}_{T}$ and a function $\tilde{u} \in C^{2,1}\left(\bar{\Omega}_{T}\right)$ such that $\tilde{u} \geq u$ in $U, \tilde{u}\left(x_{0}, t_{0}\right)=$ $u\left(x_{0}, t_{0}\right)$, and $\tilde{u}$ satisfies

$$
\tilde{u}_{t}\left(x_{0}, t_{0}\right)+\mathcal{L}_{k} \tilde{u}\left(x_{0}, t_{0}\right) \leq f\left(x_{0}, t_{0}, \tilde{u}\left(x_{0}, t_{0}\right), D \tilde{u}\left(x_{0}, t_{0}\right)\right)
$$

if $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, or

$$
\mathcal{B} \tilde{u}\left(x_{0}, t_{0}\right) \leq g\left(x_{0}, t_{0}\right)
$$

if $\left(x_{0}, t_{0}\right) \in S \Omega_{T}$.
Theorem 3.1.2 Assume $c_{k \ell} \in C\left(\bar{\Omega}_{T}\right)$ and $c_{k \ell} \geq 0$ for $k \neq \ell$. Suppose that

1. for $1 \leq k \leq K, u_{k}(x, t) \leq 0$ in $\Omega_{T}$,
2. for $1 \leq k \leq K,\left(u_{k}\right)_{t}+\mathcal{L}_{k} u_{k} \leq c_{k \ell} u_{\ell}$ in $\Omega_{T}$ in the generalized sense, and 3. there exist $k_{0}$ and $\left(x_{0}, t_{0}\right) \in \Omega_{T}$ such that $u_{k_{0}}\left(x_{0}, t_{0}\right)=0$.

Then

$$
u_{k_{0}} \equiv 0 \quad \text { in } \Omega \times\left(0, t_{0}\right] .
$$

Assume, in addition, that $\inf _{\Omega_{T}} c_{i j}>0$ whenever $i \neq j$, then for every $k$,

$$
u_{k} \equiv 0 \quad \text { in } \Omega \times\left(0, t_{0}\right] .
$$

Proof First, assume $c_{k \ell} \geq 0$ for $k \neq \ell$. Then $v=u_{k_{0}}$ satisfies $v \leq 0$ in $\Omega_{T}$, $v\left(x_{0}, t_{0}\right)=0$, and

$$
\begin{equation*}
v_{t}+\mathcal{L}_{k_{0}} v-c_{k_{0} k_{0}} v \leq \sum_{l \neq k_{0}} c_{k_{0} \ell} u_{\ell} \leq 0 \quad \text { in } \Omega_{T} \tag{3.2}
\end{equation*}
$$

in the generalized sense. It follows from Lemma 1.1.8 that $v \equiv 0$ in $\Omega \times\left(0, t_{0}\right)$. By continuity, $v \equiv 0$ in $\Omega \times\left(0, t_{0}\right]$.

Next, assume $c_{k \ell}>0$ in $\bar{\Omega}_{T}$ for $k \neq \ell$, then setting $u_{k_{0}}=v \equiv 0$ in (3.2) implies that $u_{\ell} \equiv 0$ in $\Omega \times\left(0, t_{0}\right]$ for all $\ell \neq k_{0}$.

Remark 3.1.3 The condition $\inf _{\Omega_{T}} c_{k \ell}>0$ for all $k \neq \ell$ can be relaxed to $c_{k \ell} \geq 0$ in $\Omega$ for $k \neq \ell$ and that the matrix $\left(\sup _{\Omega_{T}} c_{k \ell}\right)$ is irreducible. See [9, Lemmas 4.1 and 4.3] for the case of autonomous coefficients.

Theorem 3.1.4 (Weak maximum principle) Let $c_{k \ell} \in C\left(\bar{\Omega}_{T}\right)$ satisfy $c_{k \ell} \geq 0$ whenever $k \neq \ell$ (without assuming irreducible conditions). Assume $\left(u_{k}\right)_{k=1}^{K}$ satisfies

$$
\begin{equation*}
u_{k}(x, 0) \leq 0 \quad \text { for } x \in \Omega, 1 \leq k \leq K, \tag{3.3}
\end{equation*}
$$

and

$$
\begin{cases}\left(u_{k}\right)_{t}+\mathcal{L}_{k} u_{k} \leq c_{k \ell} u_{\ell} & \text { in } \Omega_{T}  \tag{3.4}\\ \mathcal{B}_{k} u_{k} \leq 0 & \text { on } S \Omega_{T}\end{cases}
$$

hold in the generalized sense. Then $u_{k} \leq 0$ in $\Omega_{T}$ for all $k$.

Proof Here we give the proof assuming the differential inequalities in (3.4) are satisfied in the classical sense. The general case follows by obvious modifications (see Chapter 1).

By replacing $u_{k}(x, t)$ with $\mathrm{e}^{M t} u_{k}(x, t)$ for some $M>0$ large, we may assume that for each $k$,

$$
\begin{equation*}
\sum_{l=1}^{K} c_{k \ell}>0 \tag{3.5}
\end{equation*}
$$

We claim that $\sup _{\Omega_{T}} u_{k} \leq 0$ in $\Omega_{T}$ for all $k$. For this purpose, fix $\epsilon>0$ and define $v_{k}(x, t)=u_{k}(x, t)-\epsilon$, then $v_{k}$ satisfies (3.3) and (3.4), and for each $k$,

$$
\begin{equation*}
\sup _{\Omega} v_{k}(x, 0)<0 \tag{3.6}
\end{equation*}
$$

We claim that $v_{k} \leq 0$ in $\Omega_{T}$ for all $k$. Suppose not, then there exist $\epsilon>0, k_{0}$, and $\left(x_{0}, t_{0}\right) \in \Omega_{T}$ such that $v_{k_{0}}\left(x_{0}, t_{0}\right)=0$ and for all $k$,

$$
v_{k} \leq 0 \quad \text { in } \Omega \times\left[0, t_{0}\right] .
$$

Since $v_{k_{0}}(x, 0)<0$ in $\Omega$, it follows from Theorem 3.1.2 that $v_{k_{0}}<0$ in $\Omega \times\left[0, t_{0}\right]$ and $v_{k_{0}}\left(x_{0}, t_{0}\right)=0$ for some $x_{0} \in \partial \Omega$. Using (3.5), it follows that $\left(v_{k_{0}}\right)_{t}+\mathcal{L}_{k_{0}} v_{k_{0}} \leq 0$ in $\Omega \times\left(0, t_{0}\right]$, and we may apply the Boundary Point Lemma (Theorem 1.1.7) to deduce that $p_{k_{0}}^{j} D_{j} v_{k_{0}}>0$ at $\left(x_{0}, t_{0}\right)$. Hence,

$$
\mathcal{B}_{k_{0}} u_{k_{0}}=p_{k_{0}}^{j} D_{j} u_{k_{0}}+p_{k_{0}}^{0} u_{k_{0}}=p_{k_{0}}^{j} D_{j} v_{k_{0}}+p_{k_{0}}^{0}\left(v_{k_{0}}+\epsilon\right)>0 \quad \text { at }\left(x_{0}, t_{0}\right) .
$$

This is in contradiction with $\mathcal{B}_{k_{0}} u_{k_{0}} \leq 0$ on $S \Omega_{T}$. Hence, $u_{k}-\epsilon \leq 0$ in $\Omega_{T}$ for all $k$. Since $\epsilon>0$ is arbitrary, we deduce that $u_{k} \leq 0$ in $\Omega_{T}$ for all $k$.

Consider the nonlinear cooperative system:

$$
\begin{cases}\left(u_{k}\right)_{t}+\mathcal{L}_{k} u_{k}=f_{k}(x, t, u) & \text { in } \Omega_{T}  \tag{3.7}\\ \mathcal{B}_{k} u_{k}=g(x, t) & \text { on } S \Omega_{T} \\ u_{k}(x, 0)=u_{k, 0}(x) & \text { on } B \Omega_{T}\end{cases}
$$

where we assume that for each $k$,

$$
f_{k}(x, t, u) \quad \text { is nondecreasing in } u_{\ell}, \text { for } \ell \in\{1, \ldots, K\} \backslash\{k\} .
$$

Theorem 3.1.5 Suppose that $\left(u_{k}\right)$ and $\left(v_{k}\right)$ are respectively sub- and supersolutions of (3.7) (the PDE and BC in the generalized sense, and IC in the classical sense), then $u_{k} \leq v_{k}$ hold for all $k$ and $(x, t) \in \Omega_{T}$.

Proof Observe that $w_{k}=u_{k}-v_{k}$ satisfies $w_{k}(x, 0) \leq 0$ in $\Omega$ for all $k$, and

$$
\begin{cases}\left(w_{k}\right)_{t}+\mathcal{L}_{k} w_{k} \leq c_{k \ell} w_{\ell} & \text { in } \Omega_{T}  \tag{3.8}\\ \mathcal{B}_{k} w_{k} \leq 0 & \text { in } S \Omega_{T}\end{cases}
$$

in the generalized sense, where

$$
c_{k \ell}=\int_{0}^{1} D_{\ell} f_{k}(x, t, \tau u+(1-\tau) v) \mathrm{d} \tau
$$

Since $c_{k \ell} \geq 0$ in $\Omega_{T}$ when $k \neq \ell$, the conclusion follows from Theorem 3.1.4.

### 3.2 The Principal Eigenvalue of Cooperative Systems

In this section we first establish the existence of the principal eigenvalues for cooperative parabolic systems in Subsection 3.2.1. In Subsection 3.2.2, we prove the asymptotic behavior of the principal eigenvalues of elliptic systems for small diffusion rates.

### 3.2.1 Existence results

Theorem 3.2.1 If $a_{k}^{i j}, b_{k}^{i}, c_{k \ell}, p_{k}^{i}, p_{k}^{0}$ are continuous and $T$-periodic, and $c_{k \ell} \geq 0$ in $\Omega_{T}$ provided $k \neq \ell$, then the periodic-parabolic eigenvalue problem

$$
\begin{cases}\left(\varphi_{k}\right)_{t}+\mathcal{L}_{k} \varphi_{k}=c_{k \ell} \varphi_{\ell}+\lambda \varphi_{k} & \text { in } \Omega_{T}  \tag{3.9}\\ \mathcal{B}_{k} \varphi_{k}=0 & \text { on } S \Omega_{T} \\ \varphi_{k}(x, 0)=\varphi_{k}(x, T) & \text { for } x \in \Omega\end{cases}
$$

has a principal eigenvalue, denoted as $\lambda_{1}$, in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is an eigenvalue of (3.9);
2. $\lambda_{1} \leq \inf \operatorname{Re} \lambda$, where the infimum is taken over all eigenvalues of (3.9);
3. the eigenfunction corresponding to $\lambda_{1}$ can be chosen componentwise nonnegative in $\bar{\Omega}_{T}$.

Proof We will proceed as in the proof of Theorem 2.1.1. Let $\Phi_{T}:[C(\bar{\Omega})]^{K} \rightarrow$ $[C(\bar{\Omega})]^{K}$ be given by $\Phi_{T}\left(u_{0,1}, \ldots, u_{0, K}\right)=\left(u_{1}(\cdot, T), \ldots, u_{K}(\cdot, T)\right)$, where $\left(u_{k}\right)$ is the unique solution of

$$
\begin{cases}\left(u_{k}\right)_{t}+\mathcal{L}_{k} u_{k}=c_{k \ell} u_{\ell} & \text { in } \Omega_{T}, \\ \mathcal{B}_{k} u_{k}=0 & \text { on } S \Omega_{T}, \\ u_{k}(x, 0)=u_{0, k}(x) & \text { in } \Omega .\end{cases}
$$

We claim that $\lambda$ is an eigenvalue of (3.9) with eigenfunction ( $\varphi_{k}(x, t)$ ) if and only if $\mathrm{e}^{-\lambda T}$ is an eigenvalue of $\Phi_{T}$ with eigenfunction ( $\varphi_{k}(x, 0)$ ). Indeed, suppose that $\lambda$ is an eigenvalue of (3.9) with eigenfunction $\varphi(x, t)=\left(\varphi_{k}(x, t)\right)$, then it follows that $\Phi_{T}[\varphi(\cdot, 0)]=\mathrm{e}^{-\lambda T} \varphi(\cdot, T)=\mathrm{e}^{-\lambda T} \varphi(\cdot, 0)$. On the other hand, suppose $\Phi_{T}\left[\varphi_{0}\right]=\Lambda \varphi_{0}$, then

$$
\begin{equation*}
\lambda=-\frac{\log \Lambda}{T} \quad \text { and } \quad \varphi(\cdot, t)=\mathrm{e}^{\lambda t} \Phi_{t}\left[\varphi_{0}\right] \tag{3.10}
\end{equation*}
$$

defines an eigenpair of (3.9).
Next, observe that the operator $\Phi_{T}$ is compact, and monotone. The compactness follows from the parabolic $L^{p}$ estimate, whereas the monotonicity follows from Theorem 3.1.4.

Finally, we invoke the Krein-Rutman Theorem (Theorem 1.3.3) to deduce that $\Phi_{T}$ has a principal eigenvalue $\Lambda_{1}$, and the corresponding eigenfunction can be chosen to be componentwise nonnegative in $\Omega$. By virtue of the correspondence between the eigenvalues established in the beginning of the proof, we deduce that the problem (3.9) has the principal eigenvalue $\lambda_{1}=-\frac{1}{T} \log \Lambda_{1}$ with the desired properties.

Theorem 3.2.2 If $a_{k}^{i j}, b_{k}^{i}, c_{k \ell}, p_{k}^{i}, p_{k}^{0}$ are continuous and $T$-periodic, and $\inf _{\Omega_{T}} c_{k \ell}>0$ provided $k \neq \ell$, then the periodic-parabolic eigenvalue problem (3.9) has a principal eigenvalue $\lambda_{1}$, in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of (3.9);
2. $\lambda_{1}<\inf _{\lambda \neq \lambda_{1}} \operatorname{Re} \lambda$;
3. the eigenfunction corresponding to $\lambda_{1}$ can be chosen componentwise strictly positive in $\bar{\Omega}_{T}$;
4. if $\lambda$ is an eigenvalue of (3.9), with a componentwise nonnegative eigenfunction, then $\lambda=\lambda_{1}$.

Remark 3.2.3 In fact, the same conclusion holds if $\inf _{\Omega_{T}} c_{k \ell}>0$ for $k \neq \ell$ is replaced by $c_{k \ell} \geq 0$ for $k \neq \ell$ and the cooperative matrix ( $\sup _{\Omega_{T}} c_{k \ell}$ ) is irreducible.

Proof Let $\Phi_{T}$ be given as in the proof of Theorem 3.2.1. Then $\Phi_{T}$ is compact and strongly monotone, thanks to Theorems 3.1.2 and 3.1.4. The theorem follows by repeating the proof of Theorem 3.2.1, while using the strong form of the KreinRutman Theorem (Theorem 1.3.4).

Theorem 3.2.4 If $a^{i j}, b^{i}, c, p^{i}, p^{0}$ are independent of time and $\inf _{\Omega} c_{k \ell} \geq 0$ for $k \neq l$, then the elliptic eigenvalue problem

$$
\begin{cases}\mathcal{L}_{k} \varphi_{k}=c_{k \ell} \varphi_{\ell}+\lambda \varphi_{k} & \text { in } \Omega,  \tag{3.11}\\ \mathcal{B}_{k} \varphi_{k}=0 & \text { on } \partial \Omega\end{cases}
$$

has a principal eigenvalue $\lambda_{1}$, in the sense that $\lambda_{1}$ has the least real part among all eigenvalues of (3.11), and the corresponding eigenfunction $\left(\varphi_{k}\right)$ can be chosen componentwise nonnegative.

Proof Let $\Phi_{T}$ be given as in the proof of Theorem 3.2.1. We will take $T_{j}=2^{-j}$ for $j \geq 1$. Then for each $j \geq 1, \Phi_{2^{-j}}$ is a linear positive compact operator on $[C(\bar{\Omega})]^{K}$. By the Krein-Rutman Theorem (Theorem 1.3.3), there exist $\lambda_{j}$ and $\varphi_{j}=\left(\varphi_{j, k}\right)_{k=1}^{K}$ such that

$$
\varphi_{j}=\exp \left(\lambda_{j} 2^{-j}\right) \Phi_{2^{-j}}\left(\varphi_{j}\right)
$$

where we used (3.10). Hence, for each $j \geq 1$,

$$
\begin{equation*}
\varphi_{j}=\exp \left(\lambda_{j} t\right) \Phi_{t}\left(\varphi_{j}\right), \quad t=i 2^{-j}, i \in \mathbb{N} . \tag{3.12}
\end{equation*}
$$

If we normalize $\varphi_{j}$ by $\sum_{k}\left\|\varphi_{j, k}\right\|_{C(\bar{\Omega})}=1$ then we may use the regularity theory to deduce, up to passing to a subsequence, that $\lambda_{j} \rightarrow \tilde{\lambda}$ and $\varphi_{j} \rightarrow \tilde{\varphi}=\left(\tilde{\varphi}_{k}\right)$ uniformly in $\Omega$. By letting $j \rightarrow \infty$ in (3.12), we deduce that

$$
\tilde{\varphi}=\exp (\tilde{\lambda} t) \Phi_{t}(\tilde{\varphi}), \quad t=i 2^{-j}, i, j \geq 1 .
$$

Note that the above equality holds on the set of dyadic numbers of the form $i 2^{-j}$, which is a dense subset of $(0, \infty)$. We then conclude, by continuity, that

$$
\tilde{\varphi}=\exp (\tilde{\lambda} t) \Phi_{t}(\tilde{\varphi}), \quad t \geq 0 .
$$

This implies the existence of the eigenvalue $\tilde{\lambda}$ with the nonnegative eigenfunction $\tilde{\varphi}(x)=\left(\tilde{\varphi}_{k}(x)\right)$.

It remains to show that $\tilde{\lambda}$ has the least real part among all eigenvalues of (3.11). Let $\tilde{\lambda}^{\prime}$ be an eigenvalue of (3.11), then $\exp \left(-\tilde{\lambda}^{\prime} t\right)$ is an eigenvalue of $\Phi_{t}$. Take $t=2^{-j}$, then

$$
\left|\exp \left(-\tilde{\lambda}^{\prime} 2^{-j}\right)\right| \leq r\left(\Phi_{2^{-j}}\right)=\exp \left(-\lambda_{j} 2^{-j}\right), \quad j \geq 1,
$$

thanks to the Krein-Rutman Theorem (Theorem 1.3.3). Here $r(T)$ denotes the spectral radius of the operator $T$. Hence,

$$
\lambda_{j} \leq \operatorname{Re} \tilde{\lambda}^{\prime}, \quad j \geq 1 .
$$

Letting $j \rightarrow \infty$, we deduce $\tilde{\lambda} \leq \operatorname{Re} \tilde{\lambda}^{\prime}$. This completes the proof.
Theorem 3.2.5 If $a^{i j}, b^{i}, c, p^{i}, p^{0}$ are independent of time and $\inf _{\Omega} c_{k \ell}>0$ for $k \neq l$, then the elliptic eigenvalue problem (3.11) has a principal eigenvalue $\lambda_{1}$, in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of (3.11);
2. $\lambda_{1}<\inf _{\lambda \neq \lambda_{1}} \operatorname{Re} \lambda$, where $\lambda$ denotes an eigenvalue of (3.11);
3. the eigenfunction corresponding to $\lambda_{1}$ can be chosen strictly positive in $\bar{\Omega}_{T}$;
4. if $\lambda$ is an eigenvalue of (3.11) with a nonnegative eigenfunction, then $\lambda=\lambda_{1}$.

Proof In this case $\Phi_{t}$ is a compact, strongly positive, linear operator, and one can apply the strong form of the Krein-Rutman Theorem. The desired properties follow from the fact that if $\lambda$ is an eigenvalue of (3.11) then $\mathrm{e}^{-\lambda t}$ is an eigenvalue of $\Phi_{t}$. For instance, $\lambda_{1}$ is a simple eigenvalue of (3.11), since $e^{-\lambda_{1} t}$ is a simple eigenvalue of $\Phi_{t}$. Also, to show $\lambda_{1}<\operatorname{Re} \lambda$ for any eigenvalue $\lambda \neq \lambda_{1}$, observe that $\mathrm{e}^{-\lambda_{1} t}$ (resp. $\mathrm{e}^{-\lambda t}$ ) is the principal eigenvalue (an eigenvalue) of $\Phi_{t}$. The Krein-Rutman Theorem applied to $\Phi_{t}$ implies that $\mathrm{e}^{-\lambda_{1} t}>\left|\mathrm{e}^{-\lambda t}\right|$ holds for $t>0$, which in turn yields that $\lambda_{1}<\operatorname{Re} \lambda$. We leave the verification as an exercise.

### 3.2.2 Asymptotic behavior of the principal eigenvalue

For the purpose of applications, in this subsection we study the asymptotic behavior of the principal eigenvalue of the linear cooperative elliptic system (3.11) when the diffusion rates are sufficiently small. For the sake of clarity, we set $\mathcal{L}_{k}=-d_{k} \Delta$, then (3.11) becomes

$$
\begin{cases}-d_{k} \Delta \varphi_{k}=c_{k \ell} \varphi_{\ell}+\lambda \varphi_{k} & \text { in } \Omega,  \tag{3.13}\\ \mathcal{B}_{k} \varphi_{k}=0 & \text { on } \partial \Omega .\end{cases}
$$

To formulate the theorem, we recall the Perron-Frobenius Theorem concerning the principal eigenvalue of real $N \times N$ matrices with nonnegative off-diagonal entries.
Theorem 3.2.6 (Perron-Frobenius) Let $C=\left(c_{i j}\right) \in \mathbb{R}^{N} \times \mathbb{R}^{N}$ such that $c_{i j} \geq 0$ for all $i \neq j$. Then $C$ has a Perron-Frobenius eigenvalue $\Lambda_{1}(C) \in \mathbb{R}$ in the sense that $\Lambda_{1}(C) \geq \operatorname{Re} \lambda$ for any other eigenvalue $\lambda$ of $C$.

If, in addition, $C$ is irreducible (i.e. $(\alpha I+C)^{m}$ is a componentwise positive matrix for some $m \geq 1$ and $\alpha>0$ ), then

1. $\Lambda_{1}(C)$ is a simple eigenvalue;
2. $\Lambda_{1}(C)>\operatorname{Re} \lambda$ for any other eigenvalue $\lambda$ of $C$;
3. the corresponding eigenvector can be chosen componentwise positive;
4. if $\lambda$ is an eigenvalue with a nonnegative eigenvector, then $\lambda=\Lambda_{1}(C)$.

Remark 3.2.7 If, in addition, $c_{i i} \geq 0$ for all $i$, then $\Lambda_{1}(C)$ is given by the spectral radius of $C$, i.e. $\Lambda_{1}(C)=\lim _{m \rightarrow \infty}\left\|C^{m}\right\|^{1 / m}$, where $\|\cdot\|$ is any matrix norm.
Theorem 3.2.8 Suppose that $c_{k \ell} \geq 0$ when $k \neq \ell$, then the principal eigenvalue $\lambda_{1}$ of (3.13) satisfies

$$
\begin{equation*}
\lim _{\max \left\{d_{k}\right\} \rightarrow 0} \lambda_{1}=-\max _{x \in \bar{\Omega}} \Lambda_{1}(c(x)), \tag{3.14}
\end{equation*}
$$

where for each $x \in \bar{\Omega}, \Lambda_{1}(c(x))$ is the Perron-Frobenius eigenvalue of the matrix $c(x):=\left(c_{k \ell}(x)\right)$.

This theorem was first established by N . Dancer for the case when $d_{k}=\epsilon \delta_{k}$ for some fixed positive vector $\left(\delta_{k}\right)_{k=1}^{K}$ and $\epsilon \rightarrow 0$ [4]. This assumption was later removed in [9]. The generalization to the periodic-parabolic setting is given in [1].

Here we give a proof based on the following two comparison lemmas for principal eigenvalues.
Lemma 3.2.9 Suppose that the assumptions of Theorem 3.2.5 hold and let $\lambda_{1}$ be the principal eigenvalue of the linear elliptic system (3.11). Suppose, in addition, that there exist a strictly positive function $w=\left(w_{k}\right)_{k=1}^{K} \in[C(\bar{\Omega})]^{K}$ and a constant $\underline{\lambda}$ such that $w_{k}>0$ in $\bar{\Omega}$ for all $k$ and $w$ is a generalized supersolution, i.e.

$$
\begin{cases}\mathcal{L}_{k} w_{k} \geq c_{k \ell} w_{\ell}+\underline{\lambda} w_{k} & \text { in } \Omega, k \geq 1,  \tag{3.15}\\ \mathcal{B}_{k} w_{k} \geq 0 & \text { on } \partial \Omega, k \geq 1\end{cases}
$$

holds in the generalized sense. Then $\lambda_{1} \geq \underline{\lambda}$.

Lemma 3.2.10 Suppose that the assumptions of Theorem 3.2.5 hold and let $\lambda_{1}$ be the principal eigenvalue of the linear elliptic system (3.11). Suppose, in addition, that there exist a nonnegative function $w=\left(w_{k}\right)_{k=1}^{K} \in[C(\bar{\Omega})]^{K}$ and a constant $\underline{\lambda}$ such that $w_{k}$ is nonnegative and nontrivial and $w$ is a generalized subsolution, i.e.

$$
\begin{cases}\mathcal{L}_{k} w_{k} \leq c_{k \ell} w_{\ell}+\bar{\lambda} w_{k} & \text { in } \Omega, k \geq 1,  \tag{3.16}\\ \mathcal{B}_{k} w_{k} \leq 0 & \text { on } \partial \Omega, k \geq 1\end{cases}
$$

holds in the generalized sense. Then $\lambda_{1} \leq \bar{\lambda}$.
The proofs of Lemmas 3.2.9 and 3.2.10 are analogous to that of Lemmas 1.3.12 and 1.3.13, and are omitted.

Proof (of Theorem 3.2.8) For each $x \in \bar{\Omega}$, let $\phi(x)=\left(\phi_{k}(x)\right)$ be the (componentwise) positive eigenvector of ( $c_{k \ell}(x)$ ) (by Perron-Frobenius Theorem) that is uniquely identified by $\sum_{k=1}^{K} \phi_{k}(x)=1$. Without loss of generality, by replacing $c_{k k}$ by $c_{k k}+B$ for some large positive number $B$, we may assume that $\Lambda_{1}(c(x))>0$ for all $x$.

We prove the special case when $\left(c_{k \ell}(x)\right)$ is $C^{2}$ in $x$, and is irreducible for each $x$. Thanks to the implicit function theorem, the corresponding (componentwise) positive Perron-Frobenius eigenvector $\phi(x)=\left(\phi_{k}(x)\right)$ also depends smoothly on $x \in \bar{\Omega}$, and $\sum_{k=1}^{K}\left\|\phi_{k}\right\|_{C^{2}(\bar{\Omega})} \leq K_{0}$ holds for some positive constant $K_{0}$ which is independent of $x$. We leave it as an exercise for the reader to reduce the general case to this situation.

We first prove the lower bound. Define

$$
w_{k}(x)=\phi_{k}(x)+A \delta^{-2}(\delta-d(x))_{+}^{3}
$$

where $s_{+}=\max \{s, 0\}$ and $d(x)=\operatorname{dist}(x, \partial \Omega)$. Since $\partial \Omega$ is smooth, the distance function $d(x)$ is smooth near to the boundary. In particular, $w_{k} \in C^{2}(\bar{\Omega})$ if we choose $\delta$ small enough.

We claim that there exists an $A>0$ such that for any $\delta>0$ small, we have $\mathcal{B}_{k} w_{k} \geq 0$ on $\partial \Omega$. Indeed, this follows if we estimate the normal derivative of $w_{k}$ as follows:

$$
\mathbf{n} \cdot \nabla w_{k} \geq 2 A-\left\|\phi_{k}\right\|_{C^{1}(\bar{\Omega})}
$$

Next, we verify that $w_{k}$ is a strict positive supersolution:

$$
\begin{aligned}
d_{k} \Delta w_{k}-c_{k \ell} w_{\ell} & \geq-d_{k}\left\|w_{k}\right\|_{C^{2}(\bar{\Omega})}-\Lambda_{1}(c(x)) \phi_{k}(x)+O(\delta) \\
& \geq-d_{k}\left\|w_{k}\right\|_{C^{2}(\bar{\Omega})}-\Lambda_{1}(c(x)) \frac{\phi_{k}(x)}{\phi_{k}(x)+A \delta} w_{k}+O(\delta) \\
& \geq\left[-\max _{\bar{\Omega}} \Lambda_{1}(c(x)) \frac{1}{1+A \delta}-d_{k} \frac{\left\|w_{k}\right\|_{C^{2}(\bar{\Omega})}}{w_{k}}+O(\delta)\right] w_{k}
\end{aligned}
$$

By Lemma 3.2.9, we deduce that

$$
\lambda_{1} \geq-\max _{\bar{\Omega}} \Lambda_{1}(c(x)) \frac{1}{1+A \delta}-d_{k} \frac{\left\|w_{k}\right\|_{C^{2}(\bar{\Omega})}}{\inf _{\Omega} w_{k}}+O(\delta)
$$

Letting $\max \left\{d_{k}\right\} \searrow 0$ and then $\delta \searrow 0$, we deduce that

$$
\liminf _{\max \left\{d_{k}\right\} \rightarrow 0} \lambda_{1} \geq-\max _{x \in \bar{\Omega}} \Lambda_{1}(c(x))
$$

This proves the lower bound.
Next, we prove the upper bound. Fix a ball $B_{R}=B_{R}\left(x_{0}\right)$ which is contained in $\Omega$, and let $\mu_{R}$ and $\varphi_{R}$ be the principal eigenvalue and eigenfunction of

$$
-\Delta \varphi_{R}=\mu_{R} \varphi_{R} \quad \text { in } B_{R}, \quad \varphi_{R}=0 \quad \text { on } \partial B_{R} .
$$

Set

$$
w(x)=\left(w_{k}(x)\right)_{k=1}^{K}=\left(a_{k} \varphi_{R}(x)\right)_{k=1}^{K},
$$

where $\mathbf{a}=\left(a_{k}\right)_{k=1}^{K}$ is the (componentwise) positive eigenvector of the constant matrix $C=\left(C_{k \ell}\right)=\left(\inf _{B_{R}} c_{k \ell}\right)$, such that for each $1 \leq k \leq K$,

$$
\sum_{\ell=1}^{K} C_{k \ell} a_{\ell}=\Lambda_{1}(C) a_{k}
$$

Then it is easy to verify that

$$
-d_{k} \Delta w_{k}-c_{k \ell} w_{\ell} \leq d_{k} \mu_{R} a_{k} \varphi_{R}-C_{k \ell}
$$

holds in $B_{R}$.
By Lemma 3.2.10, we deduce that

$$
\lambda_{1} \leq d_{k} \mu_{R}-\Lambda_{1}(C)
$$

Taking lim sup as max $\left\{d_{k}\right\} \rightarrow 0$, and then taking $R \rightarrow 0$, we deduce that

$$
\limsup _{\max \left\{d_{k}\right\} \rightarrow 0} \lambda_{1} \leq-\Lambda_{1}\left(c\left(x_{0}\right)\right) .
$$

Since $x_{0}$ is arbitrary, we obtain

$$
\limsup _{\max \left\{d_{k}\right\} \rightarrow 0} \lambda_{1} \leq-\max _{x_{0} \in \bar{\Omega}} \Lambda_{1}\left(c\left(x_{0}\right)\right) .
$$

This proves the upper bound.
For the purpose of applications we may further consider the situation where the coefficients $c_{k \ell}$ in (3.13) may depend on the diffusion rates. For each $n \in \mathbb{N}$, consider the set of diffusion rates $\left\{d_{k}^{n}\right\}_{k}$ and coefficients $\left(c_{k \ell}^{n}\right)_{k, \ell}$ satisfying $c_{k \ell}^{n} \geq 0$ when
$k \neq \ell$. Assume

$$
\max _{k}\left\{d_{k}^{n}\right\} \rightarrow 0+, \quad \text { and } \quad c_{k \ell}^{n} \rightarrow c_{k \ell}^{*} \text { in } C(\bar{\Omega}) \quad \text { as } n \rightarrow \infty .
$$

Let $\lambda_{1}(n)$ be the principal eigenvalue of

$$
\begin{cases}d_{k}^{n} \Delta \varphi_{k}+c_{k \ell}^{n} \varphi_{\ell}+\lambda_{1}(n) \varphi_{k}=0 & \text { in } \Omega,  \tag{3.17}\\ \mathbf{n} \cdot \nabla \varphi_{k}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $1 \leq k \leq K$.
Corollary 3.2.11 Under the above setting,

$$
\lim _{n \rightarrow \infty} \lambda_{1}(n)=-\max _{x \in \bar{\Omega}} \Lambda_{1}\left(c^{*}(x)\right),
$$

where for each $x \in \bar{\Omega}$, the real number $\Lambda_{1}\left(c^{*}(x)\right)$ is the Perron-Frobenius eigenvalue of the matrix $c^{*}(x):=\left(c_{k \ell}^{*}(x)\right)$.

Proof For each fixed $N \in \mathbb{N}$, define

$$
\bar{c}_{k \ell}^{N}=\sup _{n \geq N} c_{k \ell}^{n} \quad \text { and } \quad \underline{c}_{l \ell}^{N}=\inf _{n \geq N} c_{k \ell}^{n} \quad \text { for each } k, \ell
$$

Let $\bar{\lambda}_{1}^{N}(n)$ be the principal eigenvalue of

$$
\begin{cases}d_{k}^{n} \Delta \varphi_{k}+\bar{c}_{k \ell}^{N} \varphi_{\ell}+\bar{\lambda}_{1}^{N}(n) \varphi_{k}=0 & \text { in } \Omega, \\ \mathbf{n} \cdot \nabla \varphi_{k}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $1 \leq k \leq K$. And let $\underline{\lambda}_{1}^{N}(n)$ be the principal eigenvalue of a similar problem with $\bar{c}_{k \ell}^{N}$ being replaced by $\underline{c}_{k \ell}^{N}$.

On one hand, by the eigenvalue comparison lemmas (Lemmas 3.2.9 and 3.2.10),

$$
\begin{equation*}
\bar{\lambda}_{1}^{N}(n) \leq \lambda_{1}(n) \leq \underline{\lambda}_{1}^{N}(n) \quad \text { for } n \geq N . \tag{3.18}
\end{equation*}
$$

On the other hand, Theorem 3.2.8 implies

$$
\lim _{n \rightarrow \infty} \bar{\lambda}_{1}^{N}(n)=-\max _{x \in \bar{\Omega}} \Lambda_{1}\left(\bar{c}^{N}(x)\right), \quad \text { and } \quad \lim _{n \rightarrow \infty} \underline{\lambda}_{1}^{N}(n)=-\max _{x \in \bar{\Omega}} \Lambda_{1}\left(\underline{c}^{N}(x)\right)
$$

Hence, we may let $n \rightarrow \infty$ in (3.18) to get, for each fixed $N$,

$$
\begin{equation*}
-\max _{x \in \bar{\Omega}} \Lambda_{1}\left(\bar{c}^{N}(x)\right) \leq \liminf _{n \rightarrow \infty} \lambda_{1}(n) \leq \limsup _{n \rightarrow \infty} \lambda_{1}(n) \leq-\max _{x \in \bar{\Omega}} \Lambda_{1}\left(\underline{c}^{N}(x)\right) \tag{3.19}
\end{equation*}
$$

Since $\bar{c}_{k \ell}^{N} \rightarrow c_{k \ell}^{*}$ and $\underline{c}_{k \ell}^{N} \rightarrow c_{k \ell}^{*}$ uniformly as $N \rightarrow \infty$, we may take $N \rightarrow \infty$ in (3.19) to conclude.

### 3.3 Comparison Principle and Principal Eigenvalue for Competitive Parabolic Systems

In this section we apply the theory developed in previous sections to two-species competitive systems. In this connection we assume $K=2$ throughout this section.

Theorem 3.3.1 Let $c_{k \ell} \in C\left(\bar{\Omega}_{T}\right)$ satisfy $c_{12}, c_{21} \leq 0$. Assume ( $u, v$ ) satisfies, for each $k, u(x, 0) \leq 0 \leq v(x, 0)$ in $\Omega$, and

$$
\begin{cases}u_{t}+\mathcal{L}_{1} u \leq c_{11} u+c_{12} v & \text { in } \Omega_{T},  \tag{3.20}\\ v_{t}+\mathcal{L}_{2} v \geq c_{21} u+c_{22} v & \text { in } \Omega_{T}, \\ \mathcal{B}_{1} u \leq 0 \quad \text { and } \quad \mathcal{B}_{2} v \geq 0 & \text { on } S \Omega_{T}\end{cases}
$$

in the generalized sense. Then, $u \leq 0$ and $v \geq 0$ in $\Omega_{T}$.

1. If $u\left(x_{0}, t_{0}\right)=0$ for some $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, then $u \equiv 0$ in $\Omega \times\left[0, t_{0}\right]$.
2. If $v\left(x_{0}, t_{0}\right)=0$ for some $\left(x_{0}, t_{0}\right) \in \Omega_{T}$, then $v \equiv 0$ in $\Omega \times\left[0, t_{0}\right]$.

Assuming in addition that both $c_{12}, c_{21}$ are nonnegative and nontrivial, then $\min \left\{-u\left(x_{0}, t_{0}\right), v\left(x_{0}, t_{0}\right)\right\}=0$ for some ( $x_{0}, t_{0}$ ) implies

$$
u \equiv v \equiv 0 \quad \text { in } \Omega \times\left[0, t_{0}\right] .
$$

Proof Observe that $\left(u_{1}, u_{2}\right)=(u,-v)$ satisfies a cooperative system, so that the desired conclusion follows from Theorems 3.1.2 and 3.1.4.

By the transformation $\left(\varphi_{1}, \varphi_{2}\right)=(\varphi,-\psi)$, the following results are special cases of Theorem 3.2.1 and 3.2.2.

Theorem 3.3.2 Consider the periodic-parabolic eigenvalue problem

$$
\begin{cases}\varphi_{t}+\mathcal{L}_{1} \varphi=c_{11} \varphi+c_{12} \psi+\lambda \varphi & \text { in } \Omega_{T},  \tag{3.21}\\ \psi_{t}+\mathcal{L}_{2} \psi=c_{21} \varphi+c_{22} \psi+\lambda \psi & \text { in } \Omega_{T}, \\ \mathcal{B}_{1} \varphi=\mathcal{B}_{2} \psi=0 & \text { on } S \Omega_{T}, \\ \varphi(x, 0)=\varphi(x, T), \quad \psi(x, 0)=\psi(x, T) & \text { for } x \in \Omega .\end{cases}
$$

If $a_{k}^{i j}, b_{k}^{i}, c_{k \ell}, p_{k}^{i}, p_{k}^{0}$ are continuous and $T$-periodic, $c_{12} \leq 0$ and $c_{21} \leq 0$ in $\Omega$, then (3.21) has a principal eigenvalue $\lambda_{1}$ in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is an eigenvalue of (3.21);
2. $\lambda_{1} \leq \inf \operatorname{Re} \lambda$, where the infimum is taken over all eigenvalues of (3.21);
3. the eigenfunction ( $\varphi(x, t), \psi(x, t)$ ) corresponding to $\lambda_{1}$ can be chosen such that $\varphi \leq 0 \leq \psi$ in $\bar{\Omega}_{T}$.

Theorem 3.3.3 If $a_{k}^{i j}, b_{k}^{i}, c_{k \ell}, p_{k}^{i}, p_{k}^{0}$ are continuous and $T$-periodic, and satisfy $\max \left\{c_{12}, c_{21}\right\}<0$ in $\bar{\Omega}$, then the periodic-parabolic eigenvalue problem (3.21) has a principal eigenvalue $\lambda_{1}$, in the sense that

1. $\lambda_{1} \in \mathbb{R}$ is a simple eigenvalue of (3.21);
2. $\lambda_{1}<\inf _{\lambda \neq \lambda_{1}} \operatorname{Re} \lambda$ where the infimum is taken over all eigenvalues of (3.21);
3. the eigenfunction ( $\varphi(x, t), \psi(x, t)$ ) corresponding to $\lambda_{1}$ can be chosen such that $\varphi(x, t)<0<\psi(x, t)$ in $\bar{\Omega}_{T}$;
4. suppose $\lambda$ is an eigenvalue of (3.21) with eigenfunctions ( $\varphi, \psi$ ). If $\varphi \leq 0 \leq \psi$ in $\Omega_{T}$, then $\lambda=\lambda_{1}$.

Consider the following nonlinear competitive system with two species:

$$
\begin{cases}u_{t}+\mathcal{L}_{1} u=f_{1}(x, t, u, v) & \text { in } \Omega_{T}  \tag{3.22}\\ v_{t}+\mathcal{L}_{2} v=f_{2}(x, t, u, v) & \text { in } \Omega_{T} \\ \mathcal{B}_{1} u=g_{1}(x, t), \quad \mathcal{B}_{2} v=g_{2}(x, t) & \text { on } S \Omega_{T}\end{cases}
$$

where, $u \mapsto f_{2}(x, t, u, v)$ and $v \mapsto f_{1}(x, t, u, v)$ are nonincreasing.
Theorem 3.3.4 Suppose that $\left(u_{1}, v_{1}\right)$ and $\left(u_{2}, v_{2}\right)$ are respectively sub- and supersolutions of (3.22) in the generalized sense. If

$$
\begin{equation*}
u_{1}(x, 0) \leq u_{2}(x, 0) \quad \text { and } \quad v_{1}(x, 0) \geq v_{2}(x, 0) \quad \text { in } \Omega, \tag{3.23}
\end{equation*}
$$

then

$$
u_{1}(x, t) \leq u_{2}(x, t) \quad \text { and } \quad v_{1}(x, t) \geq v_{2}(x, t) \quad \text { in } \Omega_{T} .
$$

Assume, in addition, that $\partial_{v} f_{1}<0$ and $\partial_{u} f_{2}<0$ in $\Omega_{T} \times[0, \infty) \times[0, \infty)$. If (3.23) holds and $\left(u_{1}, v_{1}\right) \not \equiv\left(u_{2}, v_{2}\right)$ in $\Omega \times\{0\}$, then

$$
u_{1}(x, t)<u_{2}(x, t) \quad \text { and } \quad v_{1}(x, t)>v_{2}(x, t) \quad \text { in } \Omega_{T} .
$$

Proof By Theorem 3.1.5, we have

$$
u_{1} \leq u_{2} \quad \text { and } \quad v_{1} \geq v_{2} \quad \text { in } \Omega_{T}
$$

For the second part, observe that $w=u_{1}-u_{2}$ satisfies

$$
\begin{equation*}
w_{t}+\mathcal{L}_{1} w=c w+f_{1}\left(x, t, u_{2}, v_{1}\right)-f_{1}\left(x, t, u_{2}, v_{2}\right) \leq c w \tag{3.24}
\end{equation*}
$$

where

$$
c(x, t)=\int_{0}^{1} f_{1}\left(x, t, \tau u_{1}(x, t)+(1-\tau) u_{2}(x, t), v_{1}(x, t)\right) \mathrm{d} \tau
$$

Suppose $w\left(x_{0}, t_{0}\right)=0$, then the strong maximum principle for single parabolic equations (Theorem 1.1.9) implies that $w \equiv 0$ in $\Omega \times\left[0, t_{0}\right]$ and equality holds everywhere in (3.24). Since $f_{1}$ is strictly increasing in $v_{1}$, we further have $v_{1} \equiv v_{2}$ in $\Omega \times\left[0, t_{0}\right]$. In particular $\left(u_{1}, v_{1}\right) \equiv\left(u_{2}, v_{2}\right)$ in $\Omega \times\{0\}$, which is a contradiction. Hence $w<0$ in $\Omega_{T}$, i.e. $u_{1}<u_{2}$ in $\Omega_{T}$.

Theorem 3.3.4 is often referred to as the comparison principle for two species competition models. Biologically it means that for two sets of populations, if a species (with density $u_{1}$ ) is inferior to its counterpart (the species with density $u_{2}$ ) initially, while its competitor (the species with density $v_{1}$ ) is superior to the competitor of its counterpart (the species with density $v_{2}$ ) initially, then the same order continues to hold for all time. This allows us to cast the two-species competition system (3.22) as a monotone dynamical system in proper functional spaces. In contrast, competition systems for three or more species are not necessarily monotone.

### 3.4 Further Reading

The weak maximum principle and the comparison principle for cooperative systems and applications were discussed in [2,12]. The existence of the principal eigenvalue of (3.11) is obtained by Sweers [13] via the Krein-Rutman Theorem [8]. Nagel [10] and de Figueiredo-Mitidieri [5] also studied the principal eigenvalue problem, using semigroup theory and the maximum principle, respectively. For a comprehensive treatment of the method of super- and subsolutions for equations and systems, we refer to the monograph by Pao [11].

The asymptotic behavior of the principal eigenvalues of the cooperative system (3.11) can be motivated by the study on the global dynamics of the two-species competition model with diffusion and spatial heterogeneity in [7]. A more general question of Hutson is to determine the global dynamics of reaction diffusion systems with small diffusion, provided that the corresponding kinetic ODE system has a unique, globally attracting equilibrium. We refer to [7, 9] for further discussions.

The strong maximum principle for weakly coupled parabolic and elliptic systems was considered in [15]. It was later extended to strongly coupled quasilinear parabolic systems in [14]; see [3] for the weak maximum principle of quasilinear parabolic systems and [6] for more recent developments.

## Problems

3.4.1 Justify Remark 3.1.3 by showing that the conclusion of Theorem 3.1.2 holds if the assumption $c_{k \ell}>0$ in $\bar{\Omega}_{T}$ for all $k \neq \ell$ is replaced by the weaker assumption that $c_{k \ell} \geq 0$ in $\bar{\Omega}_{T}$ for all $k \neq \ell$, and that the matrix ( $c_{k \ell}(x)$ ) is continuous and irreducible for each $(x, t) \in \bar{\Omega}_{T}$.
3.4.2 Let $\lambda_{1, R} \in \mathbb{R}$ be the principal eigenvalue of the elliptic system with Robin boundary condition

$$
\begin{cases}d_{k} \Delta \varphi+c_{k \ell} \varphi_{\ell}+\lambda \varphi_{k}=0 & \text { in } \Omega, \text { for } 1 \leq k \leq K,  \tag{3.25}\\ \mathbf{n} \cdot \nabla \varphi_{k}+p^{0} \varphi_{k}=0 & \text { on } \partial \Omega, \text { for } 1 \leq k \leq K,\end{cases}
$$

where $d_{k}>0$ and $c_{k \ell} \geq 0$ for $k \neq \ell$, and $p^{0} \geq 0$ on $\partial \Omega$ is independent of $k$. Suppose $d_{k}$ and $c_{k \ell}$ are constants, and that $c_{k \ell} \geq 0$ if $k \neq \ell$. Show that $\lambda_{1, R}=-\Lambda_{1}\left(-\mu_{1} \mathbf{D}+\mathbf{c}\right)$, where $\mu_{1}$ is the principal eigenvalue of the Laplacian in $\Omega$ with Robin boundary condition,

$$
\Delta \phi+\mu_{1} \phi=0 \quad \text { in } \Omega, \quad \mathbf{n} \cdot \nabla \phi+p^{0} \phi=0 \quad \text { on } \partial \Omega,
$$

and $\mathbf{D}$ and $\mathbf{c}$ are the constant matrices

$$
\mathbf{D}_{k \ell}=\left\{\begin{array}{ll}
d_{k} & \text { if } k=\ell, \\
0 & \text { otherwise },
\end{array} \quad \text { and } \quad \mathbf{c}_{k \ell}=c_{k \ell}\right.
$$

[Recall that $\Lambda_{1}(M)$ denotes the Perron-Frobenius eigenvalue for a given cooperative matrix $M \in \mathbb{R}^{n \times n}$.]
3.4.3 Let $\lambda_{1, R}$ be the principal eigenvalue of (3.25), and let $\lambda_{1, D}$ be the principal eigenvalue of the elliptic system

$$
\begin{cases}d_{k} \Delta \varphi+c_{k \ell} \varphi_{\ell}+\lambda \varphi_{k}=0 & \text { in } \Omega, \text { for } 1 \leq k \leq n \\ \varphi_{k}=0 & \text { on } \partial \Omega, \text { for } 1 \leq k \leq n\end{cases}
$$

where $d_{k}>0$ and $c_{k \ell} \geq 0$ for $k \neq \ell$. Show that $\lambda_{1, D}>\lambda_{1, R}$. [In the special case when $d_{k}, c_{k \ell}$ are constants, this follows from the fact that the principal eigenvalue of the Dirichlet Laplacian is greater than the Neumann/Robin Laplacian. See Problem 1.4.6.]

## References

1. X. Bai and X. He, Asymptotic behavior of the principal eigenvalue for cooperative periodicparabolic systems and applications, J. Differential Equations, 269 (2020), pp. 9868-9903.
2. R. S. Cantrell and C. Cosner, Spatial ecology via reaction-diffusion equations, Wiley Series in Mathematical and Computational Biology, John Wiley \& Sons, Ltd., Chichester, 2003.
3. K. N. Chueh, C. C. Conley, and J. A. Smoller, Positively invariant regions for systems of nonlinear diffusion equations, Indiana Univ. Math. J., 26 (1977), pp. 373-392.
4. E. N. Dancer, On the principal eigenvalue of linear cooperating elliptic systems with small diffusion, J. Evol. Equ., 9 (2009), pp. 419-428.
5. D. G. de Figueiredo and E. Mitidieri, Maximum principles for linear elliptic systems, Rend. Istit. Mat. Univ. Trieste, 22 (1990), pp. 36-66 (1992).
6. L. C. Evans, A strong maximum principle for parabolic systems in a convex set with arbitrary boundary, Proc. Amer. Math. Soc., 138 (2010), pp. 3179-3185.
7. V. Hutson, Y. Lou, and K. Mischaikow, Convergence in competition models with small diffusion coefficients, J. Differential Equations, 211 (2005), pp. 135-261.
8. M. G. Krein and M. A. Rutman, Linear operators leaving invariant a cone in a Banach space, Uspehi Matem. Nauk (N. S.), 3 (1948), pp. 3-95.
9. K.-Y. Lam and Y. Lou, Asymptotic behavior of the principal eigenvalue for cooperative elliptic systems and applications, J. Dynam. Differential Equations, 28 (2016), pp. 29-48.
10. R. Nagel, Operator matrices and reaction-diffusion systems, Rend. Sem. Mat. Fis. Milano, 59 (1989), pp. 185-196 (1992).
11. C. V. Pao, Nonlinear parabolic and elliptic equations, Plenum Press, New York, 1992.
12. M. H. Protter and H. F. Weinberger, Maximum principles in differential equations, Springer-Verlag, New York, 1984. Corrected reprint of the 1967 original.
13. G. Sweers, Strong positivity in $C(\bar{\Omega})$ for elliptic systems, Math. Z., 209 (1992), pp. 251-271.
14. X. Wang, A remark on strong maximum principle for parabolic and elliptic systems, Proc. Amer. Math. Soc., 109 (1990), pp. 343-348.
15. H. F. Weinberger, Invariant sets for weakly coupled parabolic and elliptic systems, Rend. Mat. (6), 8 (1975), pp. 295-310.

## Chapter 4 The Principal Floquet Bundle for Parabolic Equations


#### Abstract

In this chapter, we establish the existence and uniqueness of the principal Floquet bundle for scalar parabolic equations with bounded coefficients, as a natural generalization of the principal eigenvalue when the coefficients for the equations are time-independent or time-periodic. Next, we give two proofs of the exponential separation property. One is based on the Harnack principle, and the other one relies on the generalized relative entropy. Finally, we introduce the notion of the normalized principal Floquet bundle, and derive the smooth dependence of the bundle on the coefficients in appropriate settings.


### 4.1 Existence Results for Non-Divergence Form Parabolic Equations

Let $\Omega \subset \mathbb{R}^{N}$ be a smooth bounded domain, and consider the linear parabolic operator of non-divergence form:

$$
\begin{equation*}
\partial_{t} \psi+\mathcal{L}_{t} \psi=\partial_{t} \psi-a^{i j}(x, t) D_{i j} \psi-b^{j}(x, t) D_{j} \psi-c(x, t) \psi, \tag{4.1}
\end{equation*}
$$

with the oblique boundary condition

$$
\begin{equation*}
\mathcal{B}_{t} \psi=p^{i}(x, t) D_{i} \psi+p^{0}(x, t) \psi, \tag{4.2}
\end{equation*}
$$

where repeated indices are summed from 1 to $N$; the coefficients $a^{i j}, b^{j}, c, p^{i}$ are continuous in $x, t$ and satisfy, for some $\Lambda>1$,

$$
\left\{\begin{array}{l}
\frac{1}{\Lambda}|\xi|^{2} \leq a^{i j}(x, t) \xi_{i} \xi_{j} \leq \Lambda|\xi|^{2} \quad \text { for } x \in \Omega, t \in \mathbb{R}, \xi \in \mathbb{R}^{N},  \tag{4.3}\\
\inf _{\partial \Omega \times \mathbb{R}} p_{0}(x, t) \geq 0 \quad \text { and } \quad \inf _{\partial \Omega \times \mathbb{R}} n_{i}(x) p^{i}(x, t)>0
\end{array}\right.
$$

where $\mathbf{n}(x)=\left(n_{i}(x)\right)_{i=1}^{N}$ is the outward unit normal vector on $\partial \Omega$.

Definition 4.1.1 We say that $\phi_{1}(x, t) \in C_{\text {loc }}^{2,1}(\bar{\Omega} \times \mathbb{R})$ is a principal Floquet bundle with respect to ( $\mathcal{L}_{t}, \mathcal{B}_{t}$ ) if it is a positive solution of

$$
\partial_{t} \phi+\mathcal{L}_{t} \phi=0 \text { in } \Omega \times \mathbb{R}, \quad \text { and } \quad \mathcal{B}_{t} \phi=0 \text { on } \partial \Omega \times \mathbb{R} .
$$

We use the term bundle in the sense that for each $t, \operatorname{span}\left\{\phi_{1}(\cdot, t)\right\}$ defines a onedimensional subspace that plays the role of the principal eigenfunction in the case when the coefficients are independent of $t$. In the latter case, the principal Floquet bundle is represented by $\phi_{1}(x, t)=\mathrm{e}^{-\mu_{1} t} \tilde{\phi}_{1}(x)$, where $\mu_{1}$ and $\tilde{\phi}_{1}(x)$ are the principal eigenvalue and positive eigenfunction of the elliptic problem

$$
-a^{i j} D_{i j} \tilde{\phi}-b^{j} D_{j} \tilde{\phi}-c \tilde{\phi}=\mu \tilde{\phi} \quad \text { in } \Omega, \quad p^{i} D_{i} \tilde{\phi}+p^{0} \tilde{\phi}=0 \quad \text { on } \partial \Omega .
$$

A similar remark holds when the coefficients are $T$-periodic in time for some $T>0$. See Remark 4.2.3 for further discussions.

The principal Floquet bundle is a generalization of the notion of principal eigenvalue for elliptic or periodic parabolic problems (see Remark 4.2.3), and it can be useful to study semilinear equations which are nonautonomous and nonperiodic in time; see Problem 4.4.2. Furthermore, it is also useful to study models with multiple species that may not admit a comparison principle [2, 7]. In Chapter 8, we present a result in [1] concerning the competition of $N$ phytoplankton species, for $N \geq 3$.

To begin, we recall the existence and uniqueness of the principal Floquet bundle.
Theorem 4.1.2 Suppose that for some $\beta \in(0,1)$,

$$
a^{i j}, b^{j}, c \in C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \quad \text { and } \quad p^{i} \in C^{1+\beta,(1+\beta) / 2}(\partial \Omega \times \mathbb{R}) \text {. }
$$

Then there exists a unique positive solution $\phi_{1} \in C_{\text {loc }}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$ satisfying, in the classical sense,

$$
\begin{cases}\partial_{t} \phi+\mathcal{L}_{t} \phi=0 & \text { for } x \in \Omega, t \in \mathbb{R}  \tag{4.4}\\ \mathcal{B}_{t} \phi=0 & \text { for } x \in \partial \Omega, t \in \mathbb{R} \\ \phi(x, t)>0 & \text { for } x \in \Omega, t \in \mathbb{R} \\ \int_{\Omega} \phi(x, 0) \mathrm{d} x=1 & \end{cases}
$$

Proof First, we prove the existence of at least one positive solution to (4.4). To this end, we claim that there exist $C_{1}, \gamma>0$ such that for any $k \in \mathbb{N}$ and positive solution $w$ of

$$
\begin{cases}\partial_{t} w+\mathcal{L}_{t} w=0 & \text { in } \Omega \times[-k-1, k+1],  \tag{4.5}\\ \mathcal{B}_{t} w=0 & \text { on } \partial \Omega \times[-k-1, k+1],\end{cases}
$$

we have

$$
\begin{equation*}
\frac{1}{C_{1}} \mathrm{e}^{-\gamma|t|} \leq \frac{w(x, t)}{\sup _{\Omega} w(\cdot, 0)} \leq C_{1} \mathrm{e}^{\gamma|t|} \quad \text { for } t \in[-k, k] \tag{4.6}
\end{equation*}
$$

Indeed, by the Harnack inequality (see Problem 1.4.7), there exists a positive constant $C_{2}$ such that for any $t_{0} \in[-k, k-1]$,

$$
w(x, t) \leq C_{2} w(y, s) \quad \text { for any } x, y \in \Omega, \text { and } t, s \in\left[t_{0}, t_{0}+2\right] .
$$

This implies (4.6) by taking $C_{1}=C_{2}$ and $\gamma=\log C_{2}$. (See Problem 4.4.3.)
For each $k$, let $\lambda_{k}$ and $\Phi_{k}$ be the principal eigenvalue and the corresponding positive eigenfunction of

$$
\begin{cases}\partial_{t} \Phi+\mathcal{L}_{t} \Phi=\lambda \Phi & \text { in } \Omega \times(-k-1, k+1) \\ \mathcal{B}_{t} \Phi=0 & \text { on } \partial \Omega \times[-k-1, k+1] \\ \Phi(x,-k-1)=\Phi(x, k+1) & \text { in } \Omega\end{cases}
$$

Then

$$
\phi_{k}(x, t):=\mathrm{e}^{-\lambda_{k} t} \frac{\Phi_{k}(x, t)}{\sup _{\Omega} \Phi_{k}(\cdot, 0)}
$$

is a positive solution of (4.5). Therefore, there exist $C_{1}, \gamma>0$ independent of $k$ such that

$$
\frac{1}{C_{1}} \mathrm{e}^{-\gamma|t|} \leq \phi_{k}(x, t) \leq C_{1} \mathrm{e}^{\gamma|t|} \quad \text { in } \Omega \times[-k, k] .
$$

By standard parabolic $L^{p}$ estimates [9, Chapter VII], $\left\{\phi_{k}\right\}$ is uniformly bounded in $W_{\text {loc }}^{2,1, p}(\Omega \times \mathbb{R})$, for any $p>1$. We may pass to a subsequence to obtain $\phi_{k} \rightarrow \phi$ weakly in $W_{\text {loc }}^{2,1, p}(\Omega \times \mathbb{R})$. Thanks to Sobolev estimates [9, Chapter VI], $\left\{\phi_{k}\right\}$ also converges strongly in $C_{\text {loc }}(\bar{\Omega} \times \mathbb{R})$. Since $\sup _{\Omega} \phi(\cdot, 0)=\lim _{k \rightarrow \infty} \sup _{\Omega} \phi_{k}(\cdot, 0)=1$, the limit function $\phi$ satisfies (4.4), up to multiplication by some constant. Finally, $\phi \in C_{\text {loc }}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$ thanks to the Schauder estimates [9, Chapter IV]. This proves the existence.

For the uniqueness, let $\phi$ and $\tilde{\phi}$ be solutions of (4.4), we will show that $\phi=\tilde{\phi}$. Let

$$
\rho_{\min }(t):=\inf _{\Omega} \frac{\phi(\cdot, t)}{\tilde{\phi}(\cdot, t)} \quad \text { for } t \in \mathbb{R}
$$

We claim that for each $t<0$, there exists an $x(t) \in \Omega$ such that $\phi(x(t), t)=$ $\tilde{\phi}(x(t), t)$. Suppose not, then the strong maximum principle implies that either $\phi(x, 0)>\tilde{\phi}(x, 0)$ in $\Omega$ or $\phi(x, 0)<\tilde{\phi}(x, 0)$ in $\Omega$. This is impossible since $\int_{\Omega} \phi(x, 0) \mathrm{d} x=\int_{\Omega} \tilde{\phi}(x, 0) \mathrm{d} x=1$.

Recall that, by the Harnack principle (Theorem 1.2.6), there exists a constant $C>1$ such that

$$
\sup _{\Omega} \phi(\cdot, t) \leq C \inf _{\Omega} \phi(\cdot, t) \quad \text { and } \quad \sup _{\Omega} \tilde{\phi}(\cdot, t) \leq C \inf _{\Omega} \tilde{\phi}(\cdot, t) \quad \text { for } t \in \mathbb{R}
$$

Now, for $t<0$,

$$
\begin{aligned}
1 & =\frac{\phi(x(t), t)}{\tilde{\phi}(x(t), t)} \geq \rho_{\min }(t)=\inf _{\Omega} \frac{\phi(\cdot, t)}{\tilde{\phi}(\cdot, t)} \geq \frac{\inf _{\Omega} \phi(\cdot, t)}{\sup _{\Omega} \tilde{\phi}(\cdot, t)} \geq \frac{1}{C^{2}} \frac{\sup _{\Omega} \phi(\cdot, t)}{\inf _{\Omega} \tilde{\phi}(\cdot, t)} \\
& \geq \frac{1}{C^{2}} \frac{\phi(x(t), t)}{\tilde{\phi}(x(t), t)}=\frac{1}{C^{2}} .
\end{aligned}
$$

It follows that $1 / C^{2} \leq \rho_{\min }(t) \leq 1$ for $t<0$. Hence, the constant $\rho_{0}:=\inf _{t<0} \rho_{\min }$ is well-defined and satisfies $1 / C^{2} \leq \rho_{0} \leq 1$. By the definition of $\rho_{0}, v(x, t)=$ $\phi(x, t)-\rho_{0} \tilde{\phi}(x, t)$ is a nonnegative solution of $v_{t}+\mathcal{L}_{t} v=0$ in $\Omega \times \mathbb{R}$ and $\mathcal{B}_{t} v=0$ on $\partial \Omega \times \mathbb{R}$. By the Harnack principle (Theorem 1.2.6) again, we have for $t<0$,

$$
\begin{align*}
\inf _{\Omega} v(\cdot, t) & \geq \frac{1}{C} \sup _{\Omega} v(\cdot, t) \geq \frac{1}{C} v(x(t), t)=\frac{1}{C}\left(\phi(x(t), t)-\rho_{0} \tilde{\phi}(x(t), t)\right) \\
& =\frac{1-\rho_{0}}{C} \tilde{\phi}(x(t), t) \geq \frac{1-\rho_{0}}{C^{2}} \sup _{\Omega} \tilde{\phi}(\cdot, t) \tag{4.7}
\end{align*}
$$

Since $\nu(x, t)=\phi(x, t)-\rho_{0} \tilde{\phi}(x, t)$, this implies that

$$
\phi(x, t) \geq \rho_{0} \tilde{\phi}(x, t)+\frac{1-\rho_{0}}{C^{2}} \tilde{\phi}(x, t) \quad \text { in } \Omega \times(-\infty, 0)
$$

Dividing by $\tilde{\phi}(x, t)$, and taking the infimum over $\Omega \times(-\infty, 0)$, we obtain

$$
\rho_{0} \geq \rho_{0}+\frac{1-\rho_{0}}{C^{2}}
$$

This implies $\rho_{0} \geq 1$. Since $\rho_{0} \leq 1$, we obtain $\rho_{0}=1$. This means that $\phi \geq$ $\tilde{\phi}$. The opposite inequality can be proved by interchanging $\phi, \tilde{\phi}$. This proves the uniqueness.

To prove the smooth dependence of the principal Floquet bundle, we introduce the notion of a normalized principal Floquet bundle.

Definition 4.1.3 We say that the pair $\left(\psi_{1}(x, t), H_{1}(t)\right) \in C^{2,1}(\bar{\Omega} \times \mathbb{R}) \times C(\mathbb{R})$ is the normalized principal Floquet bundle corresponding to ( $\mathcal{L}_{t}, \mathcal{B}_{t}$ ) if it satisfies, in the classical sense,

$$
\begin{cases}\partial_{t} \psi+\mathcal{L}_{t} \psi=H(t) \psi & \text { for } x \in \Omega, t \in \mathbb{R},  \tag{4.8}\\ \mathcal{B}_{t} \psi(x, t)=0 & \text { for } x \in \partial \Omega, t \in \mathbb{R}, \\ \int_{\Omega} \psi(x, t) \mathrm{d} x=1 & \text { for } t \in \mathbb{R}, \\ \psi(x, t)>0 & \text { for } x \in \Omega, t \in \mathbb{R} .\end{cases}
$$

We derive the existence and uniqueness of the normalized principal Floquet bundle.

Theorem 4.1.4 Suppose that for some $\beta \in(0,1)$,

$$
a^{i j}, b^{j}, c \in C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \quad \text { and } \quad p^{i} \in C^{1+\beta,(1+\beta) / 2}(\partial \Omega \times \mathbb{R}) \text {. }
$$

Then there exists a unique normalized principal Floquet bundle in

$$
C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{\beta / 2}(\mathbb{R}),
$$

i.e., a unique pair

$$
\left(\psi_{1}(x, t), H_{1}(t)\right) \in C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{\beta / 2}(\mathbb{R})
$$

satisfying (4.8) in the classical sense.
Furthermore, there exists a $C_{0}>1$ independent of $t$ such that

$$
\begin{equation*}
\frac{1}{C_{0}} \leq \psi_{1}(x, t) \leq C_{0} \quad \text { for all } x \in \Omega, t \in \mathbb{R} \tag{4.9}
\end{equation*}
$$

Proof By Theorem 4.1.2, the problem (4.4) has a unique positive solution $\phi \in$ $C_{\text {loc }}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$. Furthermore, the uniform Harnack principle (1.2.6) holds, i.e. there exists a $C$ such that

$$
\begin{equation*}
\sup _{x \in \Omega} \phi(x, t) \leq C \inf _{x \in \Omega} \phi(x, t) \quad \text { for all } t \in \mathbb{R} . \tag{4.10}
\end{equation*}
$$

We proceed to define the normalize principal Floquet bundle ( $\psi_{1}, H_{1}$ ) by

$$
H_{1}(t):=-\frac{\mathrm{d}}{\mathrm{~d} t}\left[\log \|\phi(\cdot, t)\|_{L^{1}(\Omega)}\right]=-\frac{\int_{\Omega} \partial_{t} \phi \mathrm{~d} x}{\int_{\Omega} \phi \mathrm{d} x}
$$

and

$$
\begin{equation*}
\psi_{1}(x, t):=\exp \left(\int_{0}^{t} H_{1}(s) \mathrm{d} s\right) \phi(x, t) \tag{4.11}
\end{equation*}
$$

Then it is immediate that $H_{1} \in C_{\text {loc }}^{\beta / 2}(\mathbb{R})$ and $\psi_{1} \in C_{\text {loc }}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$ and that ( $\psi_{1}, H_{1}$ ) satisfies (4.8). To conclude the proof, it remains to show that

$$
\begin{equation*}
\left\|H_{1}\right\|_{C^{\beta / 2}(\mathbb{R})} \leq C \quad \text { and } \quad\left\|\psi_{1}\right\|_{C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})} \leq C . \tag{4.12}
\end{equation*}
$$

By the Harnack principle (see Problem 1.4.7), there exists a $C$ independent of $t_{0} \in \mathbb{R}$ such that

$$
\begin{equation*}
\sup _{\Omega \times\left[t_{0}, t_{0}+1\right]} \phi(x, t) \leq C \inf _{x \in \Omega} \phi\left(x, t_{0}+1\right) . \tag{4.13}
\end{equation*}
$$

By parabolic estimates, there exists a $C$ independent of $t \in \mathbb{R}$ such that

$$
\begin{equation*}
\|\phi\|_{C^{\beta, \beta / 2}(\bar{\Omega} \times[t-1 / 2, t])}+\left\|\partial_{t} \phi\right\|_{C^{\beta, \beta / 2}(\bar{\Omega} \times[t-1 / 2, t])} \leq C\|\phi\|_{L^{\infty}(\Omega \times(t-1, t))} . \tag{4.14}
\end{equation*}
$$

Combining with (4.13), we have

$$
\|\phi\|_{C^{\beta, \beta / 2}(\bar{\Omega} \times[t-1 / 2, t])}+\left\|\partial_{t} \phi\right\|_{C^{\beta, \beta / 2}(\bar{\Omega} \times[t-1 / 2, t])} \leq C \int_{\Omega} \phi(x, t) \mathrm{d} x
$$

for some constant $C$ that is independent of $t \in \mathbb{R}$. In particular, if we define

$$
F(t):=-\int_{\Omega} \partial_{t} \phi(x, t) \mathrm{d} x \quad \text { and } \quad G(t):=\int_{\Omega} \phi(x, t) \mathrm{d} x
$$

then there is a $C$ independent of $t$ such that

$$
|F(t)|+\frac{|F(t)-F(s)|}{|t-s|^{\beta / 2}}+\frac{|G(t)-G(s)|}{|t-s|^{\beta / 2}} \leq C G(t) \quad \text { for } s \in[t-1 / 2, t) \text {. }
$$

Since $H_{1}(t)=F(t) / G(t)$, we obtain $\left\|H_{1}\right\|_{C(\mathbb{R})} \leq C$ and

$$
\frac{\left|H_{1}(t)-H_{1}(s)\right|}{|t-s|^{\beta / 2}} \leq \frac{1}{G(t)} \frac{|F(t)-F(s)|}{|t-s|^{\beta / 2}}+\frac{|F(s)|}{G(s) G(t)} \frac{|G(t)-G(s)|}{|t-s|^{\beta / 2}} \leq C^{\prime}
$$

for $s \in[t-1 / 2, t)$. This proves the first half of (4.12).
Next, it follows from (4.10) and (4.11) that

$$
\frac{1}{C} \psi_{1}(y, t) \leq \psi_{1}(x, t) \leq C \psi_{1}(y, t) \quad \text { for all } x, y \in \Omega, t \in \mathbb{R},
$$

where $C$ is independent of $x, y, t$. By fixing $x, t$ and integrating over $y \in \Omega$, we obtain (4.9).

Finally, the second half of (4.12) follows by applying the Schauder estimates on (4.8), using $H_{1} \in C^{\beta / 2}(\mathbb{R})$ (the first half of (4.12)) and $\left\|\psi_{1}\right\|_{L^{\infty}(\Omega \times \mathbb{R})} \leq C$ (from (4.9)).

### 4.2 Existence Results for Divergence Form Parabolic Equations

Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$ and outward unit normal vector $\mathbf{n}(x)$. Consider the linear elliptic operator of divergence form ${ }^{1}$ (repeated indices are added from 1 to $N$ ):

$$
\begin{equation*}
\mathcal{L} \varphi:=-\partial_{x_{i}}\left(a^{i j}(x, t) \partial_{x_{j}} \varphi\right)+\partial_{x_{i}}\left(b^{i}(x, t) \varphi\right) \quad \text { for } x \in \Omega, \tag{4.15}
\end{equation*}
$$

endowed with the conormal boundary operator:

$$
\begin{equation*}
\mathcal{B} \varphi:=n_{i}(x)\left[a^{i j}(x, t) \partial_{x_{j}} \varphi-b^{i}(x, t) \varphi\right]+p^{0}(x, t) \varphi \quad \text { for } x \in \partial \Omega, \tag{4.16}
\end{equation*}
$$

where $p^{0} \in C^{1+\beta,(1+\beta) / 2}(\partial \Omega \times \mathbb{R})$ is nonnegative, $a^{i j}(x), b^{i} \in C^{1+\beta,(1+\beta) / 2}(\bar{\Omega} \times \mathbb{R})$ for some $0<\beta<1$, and ( $a^{i j}$ ) is symmetric and satisfies, for some $\Lambda>1$

$$
\begin{equation*}
\frac{1}{\Lambda}|\xi|^{2} \leq a^{i j}(x, t) \xi_{i} \xi_{j} \leq \Lambda|\xi|^{2} \text { for } x \in \Omega, t \in \mathbb{R}, \xi \in \mathbb{R}^{N} . \tag{4.17}
\end{equation*}
$$

[^3]Definition 4.2.1 We say that $(\varphi(x, t), H(t)) \in C^{2,1}(\bar{\Omega} \times \mathbb{R}) \times C(\mathbb{R})$ is the normalized principal Floquet bundle corresponding to $\mathcal{A}=\left(a^{i j}, b^{i}, c, p^{0}\right)$ if they satisfy

$$
\begin{cases}\partial_{t} \varphi+\mathcal{L} \varphi=c(x, t) \varphi+H(t) \varphi & \text { in } \Omega \times \mathbb{R}  \tag{4.18}\\ \mathcal{B} \varphi=0 & \text { on } \partial \Omega \times \mathbb{R} \\ \varphi>0 \quad \text { in } \bar{\Omega} \times \mathbb{R} \quad \text { and } \quad \int_{\Omega} \varphi(x, t) \mathrm{d} x=1 & \text { for all } t \in \mathbb{R}\end{cases}
$$

We say that $\psi(x, t) \in C^{2,1}(\bar{\Omega} \times \mathbb{R})$ is the adjoint bundle if it satisfies

$$
\begin{cases}-\partial_{t} \psi+\mathcal{L}^{*} \psi=c(x, t) \psi+H(t) \psi & \text { in } \Omega \times \mathbb{R}  \tag{4.19}\\ \mathcal{B}^{*} \psi=0 & \text { on } \partial \Omega \times \mathbb{R} \\ \int_{\Omega} \varphi(x, t) \psi(x, t) \mathrm{d} x=1 \quad \text { and } \quad \psi>0 & \text { in } \bar{\Omega} \times \mathbb{R}\end{cases}
$$

where

$$
\mathcal{L}^{*} \psi=-\partial_{x_{j}}\left(a^{i j} \partial_{x_{i}} \psi\right)-b^{i} \partial_{x_{i}} \psi, \quad \text { and } \quad \mathcal{B}^{*} \psi=n_{j} a^{i j} \partial_{x_{i}} \psi+p^{0} \psi .
$$

By a rescaling, we will assume without loss of generality that $|\Omega|=1$ throughout the rest of this chapter. Since the choices of $\Omega, a^{i j}$ are fixed throughout this chapter, we sometimes suppress the dependence of various constants on $\Omega$ and $a^{i j}$. Denote, for any function $g(x)$, the spatial average by

$$
f_{\Omega} g(x) \mathrm{d} x=\frac{1}{|\Omega|} \int_{\Omega} g(x) \mathrm{d} x
$$

Similarly, for any function $c(x, t)$, we denote its spatial average by

$$
\bar{c}(t):=f_{\Omega} c(x, t) \mathrm{d} x
$$

Define the space

$$
\begin{equation*}
X_{\text {coeff }}=\left\{\left(a^{i j}, b^{i}, c, p^{0}\right) \in \hat{X}: p^{0} \geq 0 \text { and (4.17) holds }\right\} \tag{4.20}
\end{equation*}
$$

where

$$
\hat{X}=\left[C^{1+\beta,(1+\beta) / 2}(\bar{\Omega} \times \mathbb{R})\right]^{N^{2}+N} \times C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{1+\beta,(1+\beta) / 2}(\partial \Omega \times \mathbb{R})
$$

Theorem 4.2.2 Given $\left(a^{i j}, b^{i}, c, p^{0}\right) \in X_{\text {coeff }}$, there is a unique ordered triple

$$
(\varphi(x, t), \psi(x, t), H(t)) \in\left[C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})\right]^{2} \times C^{\beta / 2}(\mathbb{R})
$$

satisfying (4.18)-(4.19) with the following properties.

1. (Harnack principle) There exists a $C_{1}>1$ independent of $t$ such that

$$
\begin{equation*}
\frac{1}{C_{1}} \leq \varphi(x, t) \leq C_{1} \quad \text { and } \quad \frac{1}{C_{1}} \leq \psi(x, t) \leq C_{1} \quad \text { in } \Omega \times \mathbb{R} \tag{4.21}
\end{equation*}
$$

2. (Decomposition) For $t \in \mathbb{R}$, set

$$
\begin{align*}
& X^{1}(t):=\operatorname{span}\{\varphi(\cdot, t)\} \\
& X^{2}(t):=\left\{v_{0} \in L^{2}(\Omega): \int_{\Omega} \psi(x, t) v_{0}(x) \mathrm{d} x=0\right\} \tag{4.22}
\end{align*}
$$

These spaces are forward-invariant in the sense that for $i \in\{1,2\}$,

$$
u_{0} \in X^{i}\left(t_{0}\right) \quad \Longrightarrow \quad u\left(\cdot, t ; u_{0}\right) \in X^{i}(t) \quad \text { for all } t \in\left[t_{0}, \infty\right),
$$

where $u=u\left(x, t ; u_{0}\right)$ is the classical solution of

$$
\begin{equation*}
u_{t}+\mathcal{L}_{t} u=c u+H(t) u \text { in } \Omega \times\left[t_{0}, \infty\right), \text { and } \mathcal{B}_{t} u=0 \text { on } \partial \Omega \times\left[t_{0}, \infty\right) \text {, } \tag{4.23}
\end{equation*}
$$

with initial value $u\left(\cdot, t_{0}\right)=u_{0}$. Moreover, $X^{1}(t), X^{2}(t)$ are complementary subspaces of $L^{2}(\Omega)$ :

$$
\begin{equation*}
L^{2}(\Omega)=X^{1}(t) \oplus X^{2}(t) \quad \text { for each } t \in \mathbb{R} . \tag{4.24}
\end{equation*}
$$

3. (Exponential separation) There are constants $C_{2}, \gamma>0$ such that for any $t, t_{0} \in \mathbb{R}$ such that $t>t_{0}$, and any $u_{0} \in X^{2}\left(t_{0}\right) \cap C(\bar{\Omega})$ one has

$$
\begin{equation*}
\left\|u\left(\cdot, t ; u_{0}\right)\right\|_{C(\bar{\Omega})} \leq C_{2} \mathrm{e}^{-\gamma\left(t-t_{0}\right)}\left\|u_{0}\right\|_{C(\bar{\Omega})} . \tag{4.25}
\end{equation*}
$$

Proof In view of the regularity of $a^{i j}$, we can write (4.18) and (4.19) in nondivergence form. The existence and uniqueness of ( $\varphi(x, t), H(t)$ ) satisfying (4.18) follows from Theorem 4.1.4. Next, by reversing time if necessary, Theorem 4.1.2 gives the existence and uniqueness of $\psi(x, t)>0$ satisfying (4.19) except for the constraint

$$
\begin{equation*}
\int_{\Omega} \varphi(x, t) \psi(x, t) \mathrm{d} x=1 \quad \text { for } t \in \mathbb{R} \tag{4.26}
\end{equation*}
$$

We claim that $\rho(t):=\int_{\Omega} \varphi(x, t) \psi(x, t) \mathrm{d} x$ is independent of $t$. Indeed,

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \rho(t)=\int_{\Omega}\left(\varphi_{t} \psi+\varphi \psi_{t}\right) \mathrm{d} x=\int_{\Omega}\left(\mathcal{L}_{t} \varphi\right) \psi \mathrm{d} x-\int_{\Omega} \varphi\left(\mathcal{L}_{t} \psi\right) \mathrm{d} x=0
$$

where we used the boundary conditions to integrate by parts for the last equality. Hence, we may multiply $\psi$ by a positive constant to ensure (4.26) holds. This proves the existence and uniqueness of the ordered triple ( $\varphi, \psi, H$ ) satisfying (4.18) and (4.19).

Next, we observe that assertion 1 is a consequence of the normalizations

$$
\int_{\Omega} \varphi(x, t) \mathrm{d} x=1, \quad \text { and } \quad \int_{\Omega} \varphi(x, t) \psi(x, t) \mathrm{d} x=1 \quad \text { for } t \in \mathbb{R}
$$

and that, by the Harnack principle (Theorem 1.2.6),

$$
\sup _{\Omega} \varphi(\cdot, t) \leq C \inf _{\Omega} \varphi(\cdot, t) \quad \text { and } \quad \sup _{\Omega} \psi(\cdot, t) \leq C \inf _{\Omega} \psi(\cdot, t) \quad \text { for all } t \in \mathbb{R} .
$$

Since this is similar to the proof of $1 / C_{1} \leq \phi \leq C_{1}$ in Theorem 4.1.4, we omit the details.

Let $X^{i}(t)$ be given in (4.22), then $X^{1}(t) \oplus X^{2}(t)=L^{2}(\Omega)$ by construction. In fact, each $f \in L^{2}(\Omega)$ can be written as

$$
\begin{equation*}
f(x)=\left(\int_{\Omega} f(y) \psi(y, t) \mathrm{d} y\right) \phi(x, t)+\left[f(x)-\left(\int_{\Omega} f(y) \psi(y, t) \mathrm{d} y\right) \phi(x, t)\right] \tag{4.27}
\end{equation*}
$$

See Problem 4.4.1. It is easy to see that $X^{1}(t)$ is forward-invariant, since if $u_{0} \in$ $X^{1}\left(t_{0}\right)$, then $u_{0}(x)=k \varphi\left(x, t_{0}\right)$ for some $k$, and hence $u\left(x, t ; u_{0}\right)=k \varphi(x, t)$ for $(x, t) \in \Omega \times\left[t_{0}, \infty\right)$. On the other hand, if $u_{0} \in X^{2}\left(t_{0}\right)$, then $\int_{\Omega} u_{0}(x) \psi\left(x, t_{0}\right) \mathrm{d} x=0$. It follows from integrating the equations that $\int_{\Omega} u\left(x, t ; u_{0}\right) \psi(x, t) \mathrm{d} x$ is constant in $t$, so that $u\left(\cdot, t ; u_{0}\right) \in X^{2}(t)$ for all $t \in\left[t_{0}, \infty\right)$. This proves assertion 2 .

Next, we give a proof of assertion 3 based on Harnack's principle. Another proof, based on generalized relative entropy, will be given in the next section. Observe that for any $u_{0} \in X^{2}(t) \cap C(\bar{\Omega})$, the solution $u(x, t)=u\left(x, t ; u_{0}\right)$ satisfies

$$
\begin{equation*}
\|u(\cdot, t)\|_{\infty} \leq \mathrm{e}^{\|c\|_{\infty}\left(t-t_{0}\right)}\left\|u_{0}\right\|_{\infty} \quad \text { for } t \geq t_{0} \tag{4.28}
\end{equation*}
$$

Indeed, this follows by applying the maximum principle to $\mathrm{e}^{\|c\|_{\infty}\left(t-t_{0}\right)}\left\|u_{0}\right\|_{\infty} \pm$ $u\left(x, t ; u_{0}\right)$.

Since $\int_{\Omega} u(x, t) \psi(x, t) \mathrm{d} x=0$ for all $t \geq t_{0}$ and $\psi(x, t)>0$, it follows that there is an $x(t) \in \Omega$ such that $u(x(t), t)=0$.

We assume, for simplicity, that $t_{0}=0$, and remark that the general case follows in a similar manner. For $t \in[0, \infty)$, we define

$$
\rho_{+}(t):=\inf \{a>0: a \varphi(x, t)-u(x, t) \geq 0 \text { in } \Omega\} .
$$

Note that $\rho_{+}(t)$ is well-defined since by assertion 1 , the function $\varphi$ is bounded above and below by a constant. Also, there exists an $\tilde{x}(t) \in \bar{\Omega}$ such that $\rho_{+}(t) \varphi(\tilde{x}(t), t)=$ $u(\tilde{x}(t), t)$, and hence

$$
\begin{equation*}
\rho_{+}(t) \leq \frac{\sup _{\Omega} u(\cdot, t)}{\inf _{\Omega} \varphi(\cdot, t)} \tag{4.29}
\end{equation*}
$$

Fix $t_{1} \in[0, \infty)$ and define $w(x, t)=\rho_{+}\left(t_{1}\right) \varphi(x, t)-u(x, t)$. It follows that $w$ is a nonnegative solution of (4.23) and

$$
\begin{align*}
w\left(\tilde{x}\left(t_{1}+1\right), t_{1}+1\right) & =\rho_{+}\left(t_{1}\right) \varphi\left(\tilde{x}\left(t_{1}+1\right), t_{1}+1\right)-u\left(\tilde{x}\left(t_{1}+1\right), t_{1}+1\right) \\
& =\left(\rho_{+}\left(t_{1}\right)-\rho_{+}\left(t_{1}+1\right)\right) \varphi\left(\tilde{x}\left(t_{1}+1\right), t_{1}+1\right) \tag{4.30}
\end{align*}
$$

Since $u(\cdot, t) \in X^{2}(t)$, there exists a $y(t) \in \Omega$ such that $u(y(t), t)=0$, i.e. $w(y(t), t)=$ $\rho_{+}\left(t_{1}\right) \varphi(y(t), t)$. This allows us to apply the Harnack principle (Theorem 1.2.6) repeatedly to get

$$
\begin{aligned}
\inf _{\Omega} w\left(\cdot, t_{1}+1\right) & \geq C^{-1} \sup _{\Omega} w\left(\cdot, t_{1}+1\right) \geq C^{-1} w\left(x\left(t_{1}+1\right), t_{1}+1\right) \\
& =C^{-1} \rho_{+}\left(t_{1}\right) \varphi\left(y\left(t_{1}+1\right), t_{1}+1\right) \geq C^{-2} \rho_{+}\left(t_{1}\right) \sup _{\Omega} \varphi\left(\cdot, t_{1}+1\right)
\end{aligned}
$$

Combining with (4.30), we get

$$
\left(\rho_{+}\left(t_{1}\right)-\rho_{+}\left(t_{1}+1\right)\right) \varphi\left(\tilde{x}\left(t_{1}+1\right), t_{1}+1\right) \geq C^{-2} \rho_{+}\left(t_{1}\right) \sup _{\Omega} \varphi\left(\cdot, t_{1}+1\right)
$$

This implies that

$$
\begin{equation*}
\rho_{+}\left(t_{1}+1\right) \leq \kappa \rho_{+}\left(t_{1}\right) \quad \text { for all } t_{1} \in \mathbb{R} \tag{4.31}
\end{equation*}
$$

where $\kappa=1-C^{-2} \in(0,1)$. Hence, for $t>0$, we have

$$
\begin{aligned}
\sup _{\Omega} u(\cdot, t) & \leq \rho_{+}(t) \sup _{\Omega} \varphi(\cdot, t) \\
& \leq C_{1} \rho_{+}(t) \\
& \leq C_{1} \kappa^{[t]} \rho_{+}(t-[t]) \\
& \leq C_{1} \kappa^{t-1} \frac{\sup _{\Omega} u(\cdot, t-[t])}{\inf _{\Omega} \varphi(\cdot, t-[t])} \\
& \leq C_{1} \kappa^{t-1} \frac{\mathrm{e}^{\|c\|} \sup _{\Omega} u(\cdot, 0)}{1 / C_{1}}=\frac{C_{1}^{2} \mathrm{e}^{\|c\|}}{\kappa} \mathrm{e}^{t \log \kappa} \sup _{\Omega} u(\cdot, 0)
\end{aligned}
$$

where $[t]$ is the greatest integer less than $t$. Note that we used (4.21) for the second inequality, (4.31) for the third inequality, (4.29) for the fourth inequality, (4.21) and (4.28) for the last inequality. By estimating $-u$ in the same way, we have

$$
\sup _{\Omega}|u(\cdot, t)| \leq \frac{C_{1}^{2} \mathrm{e}^{\|c\|}}{\kappa} \mathrm{e}^{t \log \kappa} \sup _{\Omega}|u(\cdot, 0)| .
$$

This proves assertion 3 with $C_{2}=C_{1}^{2} \mathrm{e}^{\|c\|} / \kappa$, and $\gamma=-\log \kappa>0$.
Remark 4.2.3 If the coefficients of $\mathcal{L}, \mathcal{B}$, and $c$ are independent of $t$, then $X_{1}$ and $X_{2}$ are independent of $t$. In fact,

$$
X_{1}=\operatorname{span}\left\{\phi_{1}\right\}, \quad X_{2}=\left\{v_{0} \in L^{2}(\Omega): \int_{\Omega} \phi_{1} v_{0} \mathrm{~d} x=0\right\}, \quad H(t)=\mathrm{e}^{-\lambda_{1} t}
$$

where $\lambda_{1}$ and $\phi_{1}$ are the principal eigenvalue and positive eigenfunction of

$$
\mathcal{L} \phi_{1}=c(x) \phi_{1}+\lambda_{1} \phi_{1} \quad \text { in } \Omega, \quad \mathcal{B} \phi_{1}=0 \quad \text { on } \partial \Omega,
$$

and $\psi_{1}$ is the principal eigenfunction of the adjoint problem

$$
\mathcal{L}^{*} \psi_{1}=c(x) \psi_{1}+\lambda_{1} \psi_{1} \quad \text { in } \Omega, \quad \mathcal{B}^{*} \psi_{1}=0 \quad \text { on } \partial \Omega .
$$

In particular, there are constants $C_{2}, \gamma>0$ such that for any $t>0$ and any $u_{0} \in$ $X^{2} \cap C(\bar{\Omega})$, the solution $u(\cdot, t)=\mathrm{e}^{-(\mathcal{L}-c) t} u_{0}$ satisfies

$$
\|u(\cdot, t)\|_{C(\bar{\Omega})} \leq C_{2} \mathrm{e}^{-\left(\lambda_{1}+\gamma\right) t}\left\|u_{0}\right\|_{C(\bar{\Omega})} \quad \text { for } t \geq 0
$$

A similar conclusion holds when $\mathcal{L}, \mathcal{B}$ and $c$ are all periodic in time.

### 4.3 The Generalized Relative Entropy

Let $(\varphi, \psi, H(t))$ be the principal Floquet bundle and the corresponding adjoint bundle satisfying (4.18)-(4.19). Following [12, Chapter 6], we introduce the generalized relative entropy

$$
\int \psi(x, t) \varphi(x, t) G\left(\frac{u(x, t)}{\varphi(x, t)}\right) \mathrm{d} x .
$$

As we shall see, for arbitrary convex functions $G(s)$, all of these entropies decay in time, and not only for the special case $G(s)=s \log s$.

Lemma 4.3.1 Given an arbitrary convex $C^{2}$ function $G: \mathbb{R} \rightarrow \mathbb{R}$, and a positive solution $u(x, t)=u\left(x, t ; u_{0}\right)$ of (4.23), then

$$
\begin{equation*}
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \psi \varphi G\left(\frac{u}{\varphi}\right) \mathrm{d} x=-\int_{\Omega} \psi \varphi G^{\prime \prime}\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{u}{\varphi}\right) \mathrm{d} x \tag{4.32}
\end{equation*}
$$

for $t>t_{0}$. In particular, the integral $\int_{\Omega} \psi(x, t) \varphi(x, t) G\left(\frac{u(x, t)}{\varphi(x, t)}\right) \mathrm{d} x$ is nonincreasing in time.

Proof By replacing $c(x, t)$ with $c(x, t)-H(t)$, we may assume $H(t) \equiv 0$ without loss of generality. We calculate

$$
\partial_{t}\left(\frac{u}{\varphi}\right)-\partial_{x_{i}}\left[a^{i j} \partial_{x_{j}}\left(\frac{u}{\varphi}\right)\right]+2 \varphi a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{1}{\varphi}\right)+b^{i} \partial_{x_{i}}\left(\frac{u}{\varphi}\right)=0
$$

Therefore, for any $C^{2}$ function $G$, we obtain

$$
\begin{array}{r}
\partial_{t} G\left(\frac{u}{\varphi}\right)-\partial_{x_{i}}\left[a^{i j} \partial_{x_{j}} G\left(\frac{u}{\varphi}\right)\right]+2 \varphi a^{i j} \partial_{x_{i}} G\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{1}{\varphi}\right) \\
+b^{i} \partial_{x_{i}} G\left(\frac{u}{\varphi}\right)+G^{\prime \prime}\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{u}{\varphi}\right)=0
\end{array}
$$

Next, we also consider the equation for $\varphi G\left(\frac{u}{\varphi}\right)$ :

$$
\begin{array}{r}
\partial_{t}\left[\varphi G\left(\frac{u}{\varphi}\right)\right]-\partial_{x_{i}}\left[a^{i j} \partial_{x_{j}}\left(\varphi G\left(\frac{u}{\varphi}\right)\right)\right]+\varphi G^{\prime \prime}\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{u}{\varphi}\right) \\
+\partial_{x_{i}}\left[b^{i} \varphi G\left(\frac{u}{\varphi}\right)\right]-c \varphi G\left(\frac{u}{\varphi}\right)=0
\end{array}
$$

Combining with (4.19) (the equation of $\psi$ ), we have

$$
\begin{array}{r}
\partial_{t}\left[\psi \varphi G\left(\frac{u}{\varphi}\right)\right]-\partial_{x_{i}}\left[\psi a^{i j} \partial_{x_{j}}\left(\varphi G\left(\frac{u}{\varphi}\right)\right)-\psi b^{i} \varphi G\left(\frac{u}{\varphi}\right)\right] \\
+\partial_{x_{i}}\left[\varphi G\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{j}} \psi\right]+\psi \varphi G^{\prime \prime}\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{u}{\varphi}\right)=0 .
\end{array}
$$

To get the desired result, we note that the above can be integrated, using the following boundary conditions

$$
n_{i}\left\{a^{i j} \partial_{x_{j}}\left[\varphi G\left(\frac{u}{\varphi}\right)\right]-b^{i} \varphi G\left(\frac{u}{\varphi}\right)\right\}=0=n_{i}\left(a^{i j} \partial_{x_{j}} \psi\right) \quad \text { on } \partial \Omega \times\left(t_{0}, \infty\right) .
$$

This completes the proof.
Remark 4.3.2 For a general convex function $G: \mathbb{R} \rightarrow \mathbb{R}$, it follows that $G^{\prime}$ is nondecreasing, and $G^{\prime \prime}$ is defined a.e. In that case, (4.32) holds with the equality sign being replaced by a less than or equal to sign; see Problem 4.4.4.

One can derive the exponential separation (assertion 3 of Theorem 4.2.2) from generalized relative entropy and Poincaré's inequality (see Problem 2.4.5).

Corollary 4.3.3 There exist constants $C_{2}, \gamma>0$ such that for any $t>t_{0}$, and any $u_{0} \in X^{2}\left(t_{0}\right) \cap C(\bar{\Omega})$ one has

$$
\left\|u\left(\cdot, t ; u_{0}\right)\right\|_{C(\bar{\Omega})} \leq C_{2} \mathrm{e}^{-\gamma\left(t-t_{0}\right)}\left\|u_{0}\right\|_{C(\bar{\Omega})} .
$$

Proof Take $G(s)=s^{2}$ in Lemma 4.3.1, then we have

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \psi \varphi\left|\frac{u}{\varphi}\right|^{2} \mathrm{~d} x \leq-C \int_{\Omega} \psi \varphi\left|\nabla \frac{u}{\varphi}\right|^{2} \mathrm{~d} x
$$

Since $u=u\left(x, t ; u_{0}\right)$ is solution to (4.23) with initial data $u_{0} \in X^{2}$, we have

$$
\int_{\Omega} \psi(x, t) \varphi(x, t) \frac{u(x, t)}{\varphi(x, t)} \mathrm{d} x=\int_{\Omega} \psi(x, t) u(x, t) \mathrm{d} x=0 \quad \text { for each } t>0
$$

Hence, by Poincare's inequality (see Problem 2.4.5), there exists a $C_{t}>0$ such that

$$
\int_{\Omega} \psi \varphi\left|\frac{u}{\varphi}\right|^{2} \mathrm{~d} x \leq C_{t} \int_{\Omega} \psi \varphi\left|\nabla\left(\frac{u}{\varphi}\right)\right|^{2} \mathrm{~d} x .
$$

By a compactness argument, it is not difficult to show that $\sup _{t \in \mathbb{R}} C_{t}<+\infty$. Hence, we deduce that

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \psi \varphi\left|\frac{u}{\varphi}\right|^{2} \mathrm{~d} x \leq-C \int_{\Omega} \psi \varphi\left|\frac{u}{\varphi}\right|^{2} \mathrm{~d} x
$$

This shows exponential decay in the $L^{2}$ norm. It is standard to deduce the exponential decay in the $C(\bar{\Omega})$ norm via parabolic regularity.

Theorem 4.3.4 The following mapping is smooth:

$$
\begin{array}{ccc}
X_{\text {coeff }} & \rightarrow & {\left[C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})\right]^{2} \times C^{\beta / 2}(\mathbb{R}),} \\
\mathcal{A}=\left(a^{i j}, b^{i}, c, p^{0}\right) & \mapsto & (\varphi, \psi, H),
\end{array}
$$

where $X_{\text {coeff }}$ is defined in (4.20).
Proof We denote $\varphi=\varphi(x, t ; \mathcal{A}), \psi=\psi(x, t ; \mathcal{A})$ and $H=H(t ; \mathcal{A})$ to stress the dependence of the normalized principal Floquet bundle on the coefficients $\mathcal{A}=$ ( $a^{i j}, b^{i}, c, p^{i}$ ) of $\mathcal{L}_{t}$ and $\mathcal{B}_{t}$. The continuous dependence of ( $\varphi, \psi, H$ ) on $\mathcal{A}$ follows from the uniqueness of the pair and parabolic regularity theory (see [4] for details). In the following we will directly prove the smooth dependence on $\mathcal{A}$. We only prove the smooth dependence of ( $\varphi, H$ ) as the smooth dependence on $\psi$ is analogous.

Consider the mapping

$$
\mathcal{F}: C_{\mathcal{B}}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{\beta / 2}(\mathbb{R}) \times X_{\text {coeff }} \rightarrow C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{1+\beta / 2}(\mathbb{R})
$$

that is defined by

$$
\mathcal{F}(\varphi, H, \mathcal{A}):=\binom{\partial_{t} \varphi-\mathcal{L}_{t} \varphi-H \varphi}{\int_{\Omega} \varphi \mathrm{d} x-1}
$$

where

$$
C_{\mathcal{B}}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})=\left\{u \in C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}): \mathcal{B}_{t} u=0 \quad \text { on } \partial \Omega \times \mathbb{R}\right\} .
$$

Then, for each fixed $\mathcal{A}=\left(a^{i j}, b^{i}, c, p^{0}\right)$,

$$
\mathcal{F}(\varphi(\cdot, \cdot ; \mathcal{A}), H(\cdot ; \mathcal{A}), \mathcal{A})=0 .
$$

To prove the smooth dependence on $\mathcal{A}$, it suffices to show that

$$
\begin{equation*}
D_{(\varphi, H)} \mathcal{F}=D_{(\varphi, H)} \mathcal{F}(\varphi(\cdot, \cdot ; \mathcal{A}), H(\cdot ; \mathcal{A}), \mathcal{A}) \tag{4.33}
\end{equation*}
$$

is invertible as a mapping from

$$
C_{\mathcal{B}}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{\beta / 2}(\mathbb{R}) \rightarrow C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{1+\beta / 2}(\mathbb{R})
$$

To this end, given $(f(x, t), G(t)) \in C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{1+\beta / 2}(\mathbb{R})$, we need to prove the existence and uniqueness of ( $w(x, t), Y(t)$ ) in the class $C_{\mathcal{B}}^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R}) \times C^{\beta / 2}(\mathbb{R})$ such that

$$
\begin{cases}\partial_{t} w-\mathcal{L}_{t} w-H w-Y(t) \varphi=f(x, t) & \text { for } t \in \mathbb{R}, x \in \Omega  \tag{4.34}\\ \int_{\Omega} w(x, t) \mathrm{d} x=G(t) & \text { for } t \in \mathbb{R}\end{cases}
$$

where $H=H(t ; \mathcal{A})$ and $\varphi=\varphi(x, t ; \mathcal{A})$. First, we show the existence. We begin by defining the projections $P^{i}: L^{2}(\Omega) \rightarrow L^{2}(\Omega)$ onto $X^{i}(t)$ by

$$
P^{1}(t)\left[u_{0}\right]=\left(\int_{\Omega} u_{0}(z) \psi(z, t) \mathrm{d} z\right) \varphi(x, t), \quad \text { and } \quad P^{2}(t)\left[u_{0}\right]=u_{0}-P^{1}(t)\left[u_{0}\right] .
$$

Indeed, $P^{i}(t)\left[u_{0}\right] \in X^{i}(t)$ for $i=1,2$, since $P^{1}(t)\left[u_{0}\right]=\operatorname{span}\{\varphi(\cdot, t)\}$ and $\int_{\Omega} \psi(x, t) P^{2}(t)\left[u_{0}\right] \mathrm{d} x=0$ for any $u_{0} \in L^{2}(\Omega)$ and $t \in \mathbb{R}$. Observe that there is a constant $C$ such that

$$
\begin{equation*}
\left\|P^{i}(t)\left[u_{0}\right]\right\|_{L^{\infty}(\Omega)} \leq C\left\|u_{0}\right\|_{L^{\infty}(\Omega)} \quad \text { for } t \in \mathbb{R}, u_{0} \in L^{\infty}(\Omega), \tag{4.35}
\end{equation*}
$$

and that

$$
\begin{equation*}
f \in C^{\beta, \beta / 2} \quad \Longrightarrow \quad P^{i}(t)[f(\cdot, t)] \in C^{\beta, \beta / 2} . \tag{4.36}
\end{equation*}
$$

Next, we choose $w^{\perp}$ as

$$
w^{\perp}(x, t)=\int_{-\infty}^{t} U(t, \tau)\left[P^{2}(\tau) f(\cdot, \tau)\right] \mathrm{d} \tau
$$

where, for $t>t_{0}, U\left(t, t_{0}\right)$ is the evolution operator of the initial value problem (4.23), i.e.

$$
U\left(t, t_{0}\right)\left[u_{0}\right]=u\left(x, t ; u_{0}, t_{0}\right),
$$

where $u$ is the solution of (4.23) with initial data $u_{0}$. We claim that $w^{\perp}$ is well-defined. Indeed,

$$
\begin{align*}
\sup _{t \in \mathbb{R}}\left\|w^{\perp}(\cdot, t)\right\|_{L^{\infty}(\Omega)} & \leq \sup _{t \in \mathbb{R}} \| \int_{-\infty}^{t} U(t, \tau)\left[P^{2}(\tau)[f(\cdot, \tau]] \mathrm{d} \tau \|_{L^{\infty}(\Omega)}\right. \\
& \leq C \sup _{t \in \mathbb{R}} \int_{-\infty}^{t} \mathrm{e}^{-\gamma(t-s)}\|f(\cdot, \tau)\|_{L^{\infty}(\Omega)} \mathrm{d} \tau \\
& \leq C \sup _{t \in \mathbb{R}}\|f(\cdot, t)\|_{L^{\infty}(\Omega)}<\infty \tag{4.37}
\end{align*}
$$

where we used assertion 3 of Theorem 4.2.2 and (4.35) for the second inequality. Moreover, since $w^{\perp}$ defines a solution of $\partial_{t} w^{\perp}+\mathcal{L}_{t} w^{\perp}-(c+H) w^{\perp}=$ $P^{2}(t)[f(\cdot, t)]$ with homogeneous oblique boundary condition, and the right-hand side $P^{2}(t)[f(\cdot, t)]$ belongs to $C^{\beta, \beta / 2}(\bar{\Omega} \times \mathbb{R})$ (by (4.36)), it follows by parabolic regularity estimates $\left[9\right.$, Chapter IV, Theorem 4.30] that $w^{\perp} \in C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$. Next, define $w \in C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$ by

$$
w(x, t)=w^{\perp}(x, t)+\left[-\int_{\Omega} w^{\perp}(y, t) \mathrm{d} y+G(t)\right] \varphi(x, t)
$$

Then $w$ satisfies the second part of (4.34). Moreover, we have

$$
\begin{aligned}
& \partial_{t} w+\mathcal{L}_{t} w-c w-H(t) w \\
& =P^{2}(t)[f(\cdot, t)]+\left\{-\frac{\mathrm{d}}{\mathrm{~d} t}\left[\int_{\Omega} w^{\perp}(y, t) \mathrm{d} y\right]+G^{\prime}(t)\right\} \varphi(x, t)
\end{aligned}
$$

It therefore suffices to choose $Y(t)$ such that

$$
Y(t) \varphi(x, t)+P^{1}(t)[f(\cdot, t)]=\left\{-\frac{\mathrm{d}}{\mathrm{~d} t}\left[\int_{\Omega} w^{\perp}(y, t) \mathrm{d} y\right]+G^{\prime}(t)\right\} \varphi(x, t)
$$

Note that $Y \in C^{\beta / 2}(\mathbb{R})$ by using the $C^{2+\beta, 1+\beta / 2}$ regularity of $w^{\perp}$ and (4.36). This proves the existence.

For the uniqueness, set $f=0$ and $G=0$, then using the variation of constants formula on $\partial_{t} w+\mathcal{L}_{t} w-(c+H) w=Y(t) \varphi(x, t)$, we get

$$
\begin{aligned}
w(\cdot, t) & =U(t, s) w(\cdot, s)+\int_{s}^{t} U(t, \tau)[Y(\tau) \varphi(\cdot, \tau)] \mathrm{d} \tau \\
& =U(t, s) w(\cdot, s)+\int_{s}^{t} Y(\tau)\{U(t, \tau)[\varphi(\cdot, \tau)]\} \mathrm{d} \tau \\
& =U(t, s) w(\cdot, s)+\int_{s}^{t} Y(\tau) \varphi(\cdot, t) \mathrm{d} \tau \\
& =U(t, s) w(\cdot, s)+\left[\int_{s}^{t} Y(\tau) \mathrm{d} \tau\right] \varphi(\cdot, t) \quad \text { for } t>s
\end{aligned}
$$

where we used the fact that $U(t, s) \varphi(\cdot, s)=\varphi(\cdot, t)$ for $t>s$ for the third equality. Hence, we deduce

$$
\begin{equation*}
w(\cdot, t)=U(t, s) w(\cdot, s)+\left[\int_{s}^{t} Y(\tau) \mathrm{d} \tau\right] \varphi(\cdot, t) \quad \text { for any } t>s \tag{4.38}
\end{equation*}
$$

Next, apply the projection $P^{2}(t)$ on both sides of (4.38),

$$
P^{2}(t)[w(\cdot, t)]=P^{2}(t)[U(t, s) w(\cdot, s)]=U(t, s)\left[P^{2}(s)[w(\cdot, s)]\right]
$$

provided $t, s \in \mathbb{R}$ and $t>s$. This implies

$$
\begin{align*}
\left\|P^{2}(t)[w(\cdot, t)]\right\|_{L^{\infty}(\Omega)} & \leq C \mathrm{e}^{-\gamma(t-s)}\left\|P^{2}(t)[w(\cdot, s)]\right\|_{L^{\infty}(\Omega)} \\
& \leq C \mathrm{e}^{-\gamma(t-s)}\|w(\cdot, s)\|_{L^{\infty}(\Omega)} \leq C \mathrm{e}^{-\gamma(t-s)} \tag{4.39}
\end{align*}
$$

where we used assertion 3 of Theorem 4.2.2 for the first inequality, (4.35) for the second one, and the fact that $w$ is bounded uniformly in time (in fact, $w \in$ $C^{2+\beta, 1+\beta / 2}(\bar{\Omega} \times \mathbb{R})$ ) for the third one. Letting $s \rightarrow-\infty$ in (4.39), we deduce that $P^{2}(t)[w(\cdot, t)]=0$ for each $t \in \mathbb{R}$. Hence, $w(\cdot, t) \in X^{1}(t)$ and thus $w(\cdot, t)=$ $\sigma(t) \varphi(\cdot, t)$ for some function $\sigma(t)$. Now, using $G(t) \equiv 0$, the second equation in
(4.34) gives

$$
0=\int_{\Omega} w(x, t) \mathrm{d} x=\sigma(t) \int_{\Omega} \varphi(x, t) \mathrm{d} x=\sigma(t) \quad \text { for } t \in \mathbb{R}
$$

This implies $w(x, t)=0$. Substituting into (4.38), we have

$$
\int_{s}^{t} Y(\tau) \mathrm{d} \tau=0 \quad \text { for any } t, s \in \mathbb{R}, t>s
$$

This means $Y(t) \equiv 0$ as well. This proves the uniqueness.
Having shown that $D_{(\varphi, H)} \mathcal{F}$ given in (4.33) is an isomorphism, we may apply the implicit function theorem to conclude the smooth dependence of the normalized principal Floquet bundle ( $\varphi(x, t), H(t)$ ) on the coefficients $\mathcal{A}=\left(a^{i j}, b^{i}, c, p^{0}\right.$ ). This concludes the proof.

### 4.4 Further Reading

For linear parabolic equations in one-dimensional space, the existence and uniqueness of Floquet bundles, characterized by nodal properties of solutions as in the classical Sturm--Liouville theory, was obtained by Chow et al. [3]. Subsequently Mierczyński [10] generalized the existence and uniqueness of the principal Floquet bundle when the spatial dimension is greater than one, by invoking the general exponential separation results of Poláčik and Tereščák [13]. Later on, Huska and collaborators [4, 5, 6] significantly weakened the smoothness assumptions on the coefficients, and proved the continuous dependence of the principal Floquet bundle on the coefficients of the linear problem. The smooth dependence on coefficients was more recently obtained in [2]. These results generalize the smooth dependence on coefficients of the principal eigenvalue and eigenfunctions of uniformly elliptic, or periodic-parabolic operators.

The notion of generalized relative entropy is a versatile tool to derive exponential separation in a wide range of linear models, including linear ODEs with a cooperative matrix that is possibly time-dependent; see [12, Chapter 6] for a more complete account.

In Problem 4.4.2, we give an elementary application of the principal Floquet bundle in determining the persistence of a population modeled by a logistic model. This is a generalization of the result for the autonomous problem (see Theorem 5.2.2). The principal Floquet bundle can also be applied to determine the dynamics of multispecies models; see [2,7] where the theory is applied to analyze the competition dynamics of a large number of species, and [8] for an application to a selectionmutation model with spatial structure that exhibits moving Dirac concentrations. For further developments and applications, we refer to the recent monograph by Mierczyński and Shen [11].

## Problems

4.4.1 (Decomposition of $L^{2}(\Omega)$ by the principal bundle and adjoint bundle) Let $\varphi$ and $\psi$ satisfy (4.18)-(4.19). Show that

$$
f-\left(\int_{\Omega} f(y) \psi(y, t) \mathrm{d} y\right) \varphi(\cdot, t) \in X^{2}(t) \quad \text { for every } t \in \mathbb{R}, \quad \text { and } f \in L^{2}(\Omega)
$$

where $X^{2}(t)$ is given by (4.22). In particular, (4.27) gives the decomposition of $L^{2}(\Omega)=X^{1}(t) \oplus X^{2}(t)$.
4.4.2 (Persistence criterion for nonautonomous diffusive logistic model) Let $\Omega$ be a smooth bounded domain in $\mathbb{R}^{N}$ and let ( $\psi_{1}, H_{1}$ ) be the normalized principal Floquet bundle corresponding to ( $\mathcal{L}_{t}, \mathcal{B}_{t}$ ), where ( $\mathcal{L}_{t}, \mathcal{B}_{t}$ ) are given as in (4.1)-(4.3). Let $u(x, t)$ be a nonnegative, classical solution of the logistic problem

$$
\begin{cases}\partial_{t} u+\mathcal{L}_{t} u=-u^{2} & \text { in } \Omega \times(0, \infty)  \tag{4.40}\\ \mathcal{B}_{t} u=0 & \text { on } \partial \Omega \times(0, \infty) \\ u(x, 0)=u_{0}(x) & \text { in } \Omega\end{cases}
$$

Show that the following statements hold.

1. If $\limsup _{t \rightarrow \infty} \int_{0}^{t} H(s) d s<0$, then $\limsup _{t \rightarrow \infty}\left[\sup _{x \in \Omega} u(x, t)\right]=0$.
2. If $\liminf _{t \rightarrow \infty} \int_{0}^{t} H(s) d s>0$, then $\liminf _{t \rightarrow \infty}\left[\inf _{x \in \Omega} u(x, t)\right]>0$.
4.4.3 Let $w(x, t) \in C(\bar{\Omega} \times \mathbb{R})$ be given. Suppose that there is a constant $C_{0}$ such that for any $t_{0} \in \mathbb{R}$, we have

$$
w(x, t) \leq C_{0} w(y, s) \quad \text { for any } x, y \in \Omega, \text { and } t, s \in\left[t_{0}, t_{0}+2\right] .
$$

Show that

$$
\frac{1}{C_{0}} \mathrm{e}^{-\gamma|t|} \leq \frac{w(x, t)}{\sup _{\Omega} w(\cdot, 0)} \leq C_{0} \mathrm{e}^{\gamma|t|} \quad \text { for } t \in \mathbb{R}
$$

with $\gamma=\log C_{0}$.
4.4.4 Let $(\varphi, \psi, H(t))$ be the principal Floquet bundle and the corresponding adjoint bundle satisfying (4.18)-(4.19), $u$ be a positive solution of (4.23) defined on $\bar{\Omega} \times$ $\left[t_{0}, \infty\right)$, and let $G: \mathbb{R} \rightarrow \mathbb{R}$ be convex and continuous. Show that

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{\Omega} \psi \varphi G\left(\frac{u}{\varphi}\right) \mathrm{d} x \leq-\int_{\Omega} \psi \varphi G^{\prime \prime}\left(\frac{u}{\varphi}\right) a^{i j} \partial_{x_{i}}\left(\frac{u}{\varphi}\right) \partial_{x_{j}}\left(\frac{u}{\varphi}\right) \mathrm{d} x \quad \text { for } t>t_{0}
$$

where $G^{\prime \prime}$ is the second derivative of $G$. [For a general convex function $G$, its derivative $G^{\prime}$ is monotone, so $G^{\prime \prime}$ exists a.e. in $\mathbb{R}$.]

## References

1. R. S. Cantrell and K.-Y. Lam, Competitive exclusion in phytoplankton communities in a eutrophic water column, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 1783-1795.
2. On the evolution of slow dispersal in multispecies communities, SIAM J. Math. Anal., 53 (2021), pp. 4933-4964.
3. S.-N. Chow, K. Lu, and J. Mallet-Paret, Floquet bundles for scalar parabolic equations, Arch. Rational Mech. Anal., 129 (1995), pp. 245-304.
4. J. Húska, Harnack inequality and exponential separation for oblique derivative problems on Lipschitz domains, J. Differential Equations, 226 (2006), pp. 541-557.
5. J. Húska and P. Poláčıк, The principal Floquet bundle and exponential separation for linear parabolic equations, J. Dynam. Differential Equations, 16 (2004), pp. 347-375.
6. J. Húska, P. Poláčıк, and M. V. Safonov, Harnack inequalities, exponential separation, and perturbations of principal Floquet bundles for linear parabolic equations, Ann. Inst. H. Poincaré C Anal. Non Linéaire, 24 (2007), pp. 711-739.
7. K.-Y. Lam and Y. Lou, The principal Floquet bundle and the dynamics of fast diffusing communities. Manuscript submitted for publication, 2022.
8. K.-Y. Lam, Y. Lou, and B. Perthame, A Hamilton-Jacobi approach to evolution of dispersal, 2022. arXiv:2205.05534 [math.AP].
9. G. M. Lieberman, Second order parabolic differential equations, World Scientific Publishing Co., Inc., River Edge, NJ, 1996.
10. J. Mierczyński, Globally positive solutions of linear parabolic PDEs of second order with Robin boundary conditions, J. Math. Anal. Appl., 209 (1997), pp. 47-59.
11. J. Mierczyński and W. Shen, Spectral theory for random and nonautonomous parabolic equations and applications, vol. 139 of Chapman \& Hall/CRC Monographs and Surveys in Pure and Applied Mathematics, CRC Press, Boca Raton, FL, 2008.
12. B. Perthame, Transport Equations in Biology, Frontiers in Mathematics, Birkhäuser Verlag, Basel, 2007.
13. P. Poláčik and I. Tereșčák, Exponential separation and invariant bundles for maps in ordered Banach spaces with applications to parabolic equations, J. Dynam. Differential Equations, 5 (1993), pp. 279-303.

## Part II

## Ecological Dynamics

## Chapter 5

## The Logistic Equation With Diffusion


#### Abstract

In this chapter, we consider the dynamics of a single species in bounded regions, as modeled by a nonlinear scalar parabolic equation, with proper boundary conditions. We introduce the notion of super- and subequilibrium, which leads to concrete a priori $L^{\infty}$ bounds of the solution. Next, we define the notion of linear stability (resp. instability) of equilibrium as characterized by the positivity (resp. negativity) of the principal eigenvalue for the corresponding linearized elliptic operator. We show that linear stability (resp. instability) implies nonlinear stability (resp. instability) for equilibrium solutions. For the case of a single logistic equation with diffusion, we show the convergence of the time-dependent solution to the unique positive equilibrium as time tends to infinity, and further discuss various qualitative estimates of the positive equilibrium as the diffusion coefficient tends to zero or infinity. Finally, we prove the existence of the critical domain size for the persistence of a single species in rivers, as modeled by a scalar reaction-diffusion-advection equation in an interval.


### 5.1 A Reaction-Diffusion Model for a Single Species

Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$ and outer unit normal vector $\mathbf{n}$. Consider the semilinear parabolic equation

$$
\begin{cases}\partial_{t} u+\mathcal{L} u=F(x, u) & \text { in } \Omega \times(0, T),  \tag{5.1}\\ \mathcal{B} u=0 & \text { on } \partial \Omega \times(0, T), \\ u(x, 0)=u_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\mathcal{L}=-a^{i j}(x) D_{i j}-b^{j}(x) D_{j}-c(x)$ is a time-independent elliptic operator of non-divergence form satisfying the uniform ellipticity condition. Namely, $a^{i j}, b^{j}, c \in$ $C^{\alpha}(\bar{\Omega})$ and

$$
\begin{equation*}
a^{i j}(x) \xi_{i} \xi_{j} \geq v|\xi|^{2}, \quad \text { for } x \in \bar{\Omega}, \xi \in \mathbb{R}^{n} \tag{5.2}
\end{equation*}
$$

for some positive constant $v$. Moreover, $\mathcal{B}$ is the first order oblique derivative operator $\mathcal{B}=p^{i} D_{i}+p^{0}$ such that $p^{i} \in C^{1+\beta}(\bar{\Omega})$ satisfies

$$
\begin{equation*}
p^{i}(x) n_{i}(x)>0 \quad \text { and } \quad p^{0} \geq 0 \quad \text { on } \partial \Omega . \tag{5.3}
\end{equation*}
$$

Remark 5.1.1 Some particular examples include the logistic equation

$$
F(x, u)=r(x)\left(1-\frac{u}{K(x)}\right) u
$$

and the harvesting model

$$
F(x, u)=r(x)\left(1-\frac{u}{K(x)}\right) u-h(x) u .
$$

Theorem 5.1.2 Suppose $F(x, 0) \equiv 0$ in $\Omega$ and there exist $\beta \in(0,1)$ and $C_{1}=C_{1}(R)$ such that

$$
\begin{equation*}
\left|F\left(x_{1}, s_{1}\right)-F\left(x_{2}, s_{2}\right)\right| \leq C_{1}\left(\left|x_{1}-x_{2}\right|^{\beta}+\left|s_{1}-s_{2}\right|\right) \quad \text { for } x_{i} \in \Omega, 0 \leq s_{i} \leq R . \tag{5.4}
\end{equation*}
$$

Then for each $0 \leq u_{0} \in C(\bar{\Omega})$, there exists a $T_{\max } \in(0, \infty]$ such that model (5.1) has a unique classical solution $u \in C\left(\bar{\Omega} \times\left[0, T_{\max }\right)\right) \cap C^{2,1}\left(\bar{\Omega} \times\left(0, T_{\max }\right)\right)$.

Moreover, $T_{\max }=\infty$ if, for each $M, T>0$ there exists a constant $C(M, T)$ such that for any solution $u$ of model (5.1) such that $0 \leq u_{0}(x) \leq M$ in $\Omega$, we have

$$
\begin{equation*}
0 \leq u(x, t) \leq C(M, T) \quad \text { for }(x, t) \in \Omega_{T} . \tag{5.5}
\end{equation*}
$$

Proof Set $X=C(\bar{\Omega})$, and

$$
\left\{\begin{array}{l}
D(\mathcal{L})=\left\{\phi \in \cap_{p>1} W^{2, p}(\Omega): \mathcal{L} \phi \in C(\bar{\Omega}),\left.\mathcal{B} \phi\right|_{\partial \Omega}=0\right\}  \tag{5.6}\\
X_{1 / 2}=\left\{\phi \in C^{1}(\bar{\Omega}):\left.\mathcal{B} \phi\right|_{\partial \Omega}=0\right\}
\end{array}\right.
$$

and set

$$
f: X_{1 / 2} \rightarrow X, \quad f(\phi)=F(\cdot, \phi(\cdot)) .
$$

For every $v_{i} \in X_{1 / 2}(i=1,2)$ such that $\left\|v_{i}\right\|_{C(\bar{\Omega})} \leq R$, it holds that

$$
\left\|f\left(v_{1}\right)-f\left(v_{2}\right)\right\|_{C(\bar{\Omega})} \leq C_{1}\left\|v_{1}-v_{2}\right\|_{C(\bar{\Omega})} .
$$

Note also that $\overline{D(\mathcal{L})}=X$. By [19, Theorem 7.1.5 and Proposition 7.1.10], it follows that for every $u_{0} \in C(\bar{\Omega})$, there exists a $T>0$ such that the problem has a classical solution $u \in C([0, T] ; X) \cap C^{1}((0, T] ; X) \cap C((0, T] ; D(\mathcal{L}))$. Moreover, the solution $u$ satisfies

$$
\sup _{0<t<\min \{1, T / 2\}} t^{1 / 2}\|u(\cdot, t)\|_{C^{1}(\bar{\Omega})}<\infty .
$$

By observing that $u, F(x, u) \in C^{\beta, \beta / 2}(\Omega \times[\delta, T))$ for every $\delta \in(0, T)$, it follows from the Schauder estimates that $u \in C^{2,1}(\Omega \times[\delta, T))$ for each $0<\delta<T$. The uniqueness now follows by the maximum principle.

Finally, assume (5.5). Then for any nonnegative initial data $u_{0}$ the corresponding solution remains bounded in $X$. Having ruled out blow up in finite time, the global existence follows from [19, Proposition 7.1.8].

Remark 5.1.3 A sufficient condition for (5.5) is

$$
F(x, 0)=0, \quad \text { and } \quad F(x, u) \leq C|u|
$$

for some constant $C>0$ independent of $x$ and $u$ (See Problem 5.4.1).
Remark 5.1.4 The above proof also yields

$$
\sup _{0<t<\min \left\{1, T_{\max }\right\}} t^{1 / 2}\left\|\mathcal{L}^{1 / 2} u(\cdot, t)\right\|_{C(\bar{\Omega})}<\infty
$$

where $\mathcal{L}^{1 / 2}$ is the fractional power of $\mathcal{L}$ regarded as a sectorial operator with domain $D(\mathcal{L})$ given in (5.6).

Definition 5.1.5 We say that $\theta \in C^{2}(\Omega) \cap C^{1}(\bar{\Omega})$ is an equilibrium solution of (5.1) if $\theta$ is a classical solution to

$$
\begin{cases}\mathcal{L} \theta=F(x, \theta) & \text { in } \Omega,  \tag{5.7}\\ \mathcal{B} \theta=0 & \text { on } \partial \Omega .\end{cases}
$$

If, in addition, $\inf _{\Omega} \theta>0$, then we say that $\theta$ is a positive equilibrium solution.
We say that $\theta \in W^{2, p}(\Omega)$ is a strong solution to (5.7) if $p>N$ and $\mathcal{L} \theta=F(x, \theta)$ holds almost everywhere in $\Omega$ and $\mathcal{B} u=0$ holds everywhere on $\partial \Omega$. Note that $W^{2, p}(\Omega) \subset C^{1+\gamma}(\bar{\Omega})$ with $\gamma=1-N / p$.

We also recall the notion of super- and subequilibria from Definition 1.2.2.
Proposition 5.1.6 Suppose $u \in C^{2,1}\left(\Omega_{T}\right) \cap C^{1,0}(\bar{\Omega} \times(0, T]) \cap C\left(\bar{\Omega}_{T}\right)$ is a classical solution of (5.1) such that the initial condition $u_{0}$ is a superequilibrium (resp. subequilibrium) in the generalized sense ${ }^{1}$, then $u$ is nonincreasing (resp. nondecreasing) in $t$. Moreover, if $\limsup _{t \rightarrow \infty}\|u(\cdot, t)\|<\infty$, then $u_{\infty}(x)=\liminf _{t \rightarrow \infty} u(x, t)$ is an equilibrium of (5.7).

Proof See Corollary 1.2.4.
Next, we give a proposition from the perspective of dynamical systems.
Definition 5.1.7 Given $u_{1}, u_{2} \in C(\bar{\Omega})$ such that $u_{1} \leq u_{2}$ in $\Omega$. We define the order interval

$$
\left[u_{1}, u_{2}\right]:=\left\{\tilde{u} \in C(\bar{\Omega}): u_{1}(x) \leq \tilde{u}(x) \leq u_{2}(x) \text { in } \Omega\right\} .
$$

[^4]Proposition 5.1.8 Suppose $u_{1}, u_{2}$ are respectively the subequilibrium and superequilibrium of (5.7) in the generalized sense, then the following statements hold.

1. Let $u$ be a solution of (5.1). If $u(x, 0)=u_{1}$ (resp. $u_{2}$ ), then $u$ is increasing (resp. decreasing) in $t \geq 0$.
2. The set $\left[u_{1}, u_{2}\right]$ is forward-invariant; i.e. for any solution $u$ of (5.1) such that $u_{1} \leq u(\cdot, 0) \leq u_{2}$ in $\Omega$, we have $u_{1} \leq u(\cdot, t) \leq u_{2}$ in $\Omega$ for all $t>0$.
3. There exist a maximal equilibrium $u_{M}$ and a minimal equilibrium $u_{m}$ in $\left[u_{1}, u_{2}\right]$, in the sense that if $\theta \in\left[u_{1}, u_{2}\right]$ is an equilibrium, then $u_{m} \leq \theta \leq u_{M}$ in $\Omega$.
4. The set $\left[u_{m}, u_{M}\right]$ attracts $\left[u_{1}, u_{2}\right]$, in the sense that

$$
u_{m}(x) \leq \liminf _{t \rightarrow \infty} u(x, t) \leq \limsup _{t \rightarrow \infty} u(x, t) \leq u_{M}(x),
$$

for any solution $u$ of (5.1) with initial condition in [ $u_{1}, u_{2}$ ].
5. Suppose, in addition, that $u_{m}=u_{M}$, and denote their common value to be $\theta$. Then the equilibrium $\theta$ is the unique equilibrium in [ $u_{1}, u_{2}$ ] and it attracts every trajectory initiating in $\left[u_{1}, u_{2}\right]$.

Proof This follows from Proposition 5.1.6 and the comparison principle.
When (5.1) has a unique equilibrium, then one can obtain explicit bounds of $\theta(x)$ by constructing super- or subequilibria.

Corollary 5.1.9 Suppose (5.7) has a unique positive equilibrium $\theta$ which is globally asymptotically stable among all nonnegative, nontrivial solutions of (5.1), i.e.

$$
\lim _{t \rightarrow \infty} \sup _{x \in \Omega}|u(x, t)-\theta(x)|=0
$$

for every nonnegative, nontrivial solution $u$ of (5.1). Then the following statements hold:

1. if $\underline{\theta}$ is a nonnegative subequilibrium in the classical or generalized sense, then

$$
\theta(x) \geq \underline{\theta}(x) \quad \text { in } \Omega ;
$$

2. if $\bar{\theta}$ is a positive superequilibrium in the classical or generalized sense, then

$$
\theta(x) \leq \bar{\theta}(x) \quad \text { in } \Omega .
$$

Remark 5.1.10 It is well known that reaction-diffusion-advection models with logistic nonlinearity have at most one positive equilibria; see e.g. Theorem 5.2.2. Hence, the asymptotic profile of the equilibrium solution, as the parameters become large or small, can be determined by way of constructing explicit super- and subequilibria and invoking Corollary 5.1.9. See [4, 6] for concentration phenomena, and [15] for the existence of sharp transition layers.

Proof Suppose $\underline{\theta}$ is a nonnegative subequilibrium, and let $u$ be the solution of (5.1) with initial data $\underline{\theta}$. Then by Corollary 1.2.4, $u$ is nondecreasing in $t$. By the hypothesis, we also have $u(x, t) \rightarrow \theta(x)$. Hence,

$$
\underline{\theta}(x)=u(x, 0) \leq \lim _{t \rightarrow \infty} u(x, t) \leq \theta(x)
$$

This proves assertion 1. Assertion 2 is similar.
Next, we consider the linear stability of equilibrium solutions. For this purpose, consider the linearized system

$$
\begin{cases}\mathcal{L} \phi=F_{u}(x, \theta(x)) \phi+\mu \phi & \text { in } \Omega,  \tag{5.8}\\ \mathcal{B} \phi=0 & \text { on } \partial \Omega .\end{cases}
$$

By Theorem 1.3.6, (5.8) has a principal eigenvalue $\mu_{1}$ such that it is real, simple, and is associated with a positive eigenfunction $\phi_{1}(x)$.

Definition 5.1.11 Let $\theta$ be an equilibrium of (5.1). We say that $\theta$ is linearly stable (resp. linearly unstable) if $\mu_{1}>0$ (resp. $\mu_{1}<0$ ). If $\mu_{1}=0$, we say that $\theta$ is linearly neutrally stable.

First, we show that linear stability implies nonlinear asymptotic stability (i.e. local asymptotic stability).

Proposition 5.1.12 Let $\theta$ be an equilibrium of (5.1). If $\theta$ is linearly stable, then there exists a $\delta>0$ such that the solution $u(x, t)$ of (5.1) satisfies $u(x, t) \rightarrow \theta(x)$ provided

$$
\|u(x, 0)-\theta(x)\|<\delta
$$

In particular, $\theta$ is an isolated equilibrium.
Proof Let $\mu_{1}>0$ denote the principal eigenvalue of (5.8), and we choose an eigenfunction $\phi_{1}$ such that $\phi_{1}>0$ and $\sup _{\Omega} \phi_{1}=1$. For $\epsilon>0$, define

$$
u_{\epsilon}^{ \pm}=\theta \pm \epsilon \phi_{1} .
$$

Step 1. We claim that there exists an $\epsilon_{0}>0$ such that for $\epsilon \in\left(0, \epsilon_{0}\right]$, $u_{\epsilon}^{+}$(resp. $u_{\epsilon}^{-}$) is a superequilibrium (resp. subequilibrium) of (5.7) in the classical sense.

Indeed, it is immediate that $\mathcal{B} u_{\epsilon}^{ \pm}=0$ on $\partial \Omega$. Moreover,

$$
\begin{aligned}
\mathcal{L} u_{\epsilon}^{+}-F\left(x, u_{\epsilon}^{+}\right) & =F(x, \theta)+\epsilon \phi_{1}\left[F_{u}(x, \theta)+\mu_{1}\right]-F\left(x, \theta+\epsilon \phi_{1}\right) \\
& =\epsilon\left[\mu_{1} \phi_{1}+O(\epsilon)\right]>0 \quad \text { provided } 0<\epsilon \ll 1 .
\end{aligned}
$$

Note that we used $F\left(x, \theta+\epsilon \phi_{1}\right)=F(x, \theta)+F_{u}(x, \theta) \epsilon \phi_{1}+O\left(\epsilon^{2}\right)$ for the last equality, and $\inf _{\Omega} \phi_{1}>0$ in the inequality. This proves that $u^{+}$is a superequilibrium of (5.7) in the classical sense. It can be similarly established that $u_{\epsilon}^{-}$is a subequilibrium of (5.7) in the classical sense.

Step 2. Fix $\epsilon \in\left(0, \epsilon_{0}\right]$ and define

$$
I_{0}=\left[u_{\epsilon_{0}}^{-}, u_{\epsilon_{0}}^{+}\right]=\left\{u_{0} \in C(\bar{\Omega}): u_{\epsilon_{0}}^{-} \leq u_{0} \leq u_{\epsilon_{0}}^{+} \quad \text { in } \Omega\right\} .
$$

We claim that $\theta$ is the only equilibrium of (5.7) in $I_{0}$. Suppose $\tilde{\theta}$ is another equilibrium solution in $I_{0}$, then there exists an $\epsilon_{1} \in\left(0, \epsilon_{0}\right)$ such that either

$$
\begin{equation*}
\tilde{\theta} \leq u_{\epsilon_{1}}^{+} \quad \text { in } \bar{\Omega}, \quad \text { and equality holds at some } x_{1} \in \bar{\Omega} \tag{5.9}
\end{equation*}
$$

or

$$
\begin{equation*}
\tilde{\theta} \geq u_{\epsilon_{1}}^{-} \quad \text { in } \bar{\Omega}, \quad \text { and equality holds at some } x_{1} \in \bar{\Omega} . \tag{5.10}
\end{equation*}
$$

For definiteness, suppose (5.9) holds. Then $w=\tilde{\theta}-\theta-\epsilon_{1} \phi_{1}$ satisfies

$$
\begin{cases}\mathcal{L} w<\tilde{F}(x) w & \text { in } \Omega \\ \mathcal{B} w=0 & \text { on } \partial \Omega \\ w \leq 0 \quad \text { in } \Omega, \quad w\left(x_{1}\right)=0, & \end{cases}
$$

where $\tilde{F}(x)=\int_{0}^{1} F_{u}\left(x, \tau \tilde{\theta}(x)+(1-\tau) u_{\epsilon_{1}}^{+}\right) \mathrm{d} \tau$. Now, $w \not \equiv 0$, since $u_{\epsilon_{1}}^{+}$is not an equilibrium. By regarding $w$ as a strict subsolution of

$$
w_{t}+\mathcal{L} w=\tilde{F}(x) w \quad \text { in } \Omega_{T}, \quad \mathcal{B} w=0 \quad \text { on } S \Omega_{T},
$$

the strong maximum principle says that either $w \equiv 0$ or $\sup _{\Omega} w<0$. The former is incompatible with $\mathcal{L} w<\tilde{F}(x) w$ and the latter is incompatible with $w\left(x_{1}\right)=0$. This contradiction completes Step 2.

Finally, the desired conclusion follows from Proposition 5.1.8.
Similarly, one can establish that linear instability implies nonlinear instability.
Proposition 5.1.13 Let $\theta$ be an equilibrium of (5.1). If $\theta$ is linearly unstable, then there exists an $\epsilon_{0}>0$ such that for any $\delta>0$, there exists a solution $u$ of (5.1) such that

$$
\|u(x, 0)-\theta(x)\|<\delta \quad \text { and } \quad \liminf _{t \rightarrow \infty}\|u(\cdot, t)-\theta\| \geq \epsilon_{0} .
$$

Proof See Problem 5.4.2.

### 5.2 The Logistic Equation

In this section, we specialize to the logistic equation.

$$
\begin{cases}\partial_{t} u-d \Delta u=u(m(x)-u) & \text { in } \Omega \times(0, \infty),  \tag{5.11}\\ \mathbf{n} \cdot \nabla u=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $d \in(0, \infty)$ and $m \in C^{\alpha}(\bar{\Omega})$.
The stability of the trivial solution $u \equiv 0$ is determined by the following eigenvalue problem:

$$
\begin{cases}-d \Delta \phi=m(x) \phi+\mu \phi & \text { in } \Omega,  \tag{5.12}\\ \mathbf{n} \cdot \nabla \phi=0 & \text { on } \partial \Omega .\end{cases}
$$

See Theorem 1.3.6 for the existence and properties of the principal eigenvalue $\mu_{1}$.
It is well understood that the large time asymptotics of this model can be characterized by the stability of the trivial solution [2, 7]; see Theorem 5.2.2 below. First, we start with the existence of a positive equilibrium.

Proposition 5.2.1 Model (5.11) has a nonnegative, nontrivial equilibrium $\theta$ if and only if $\mu_{1}<0$.

Proof Let $\mu_{1}$ be the principal eigenvalue of (5.12) with an associated positive eigenfunction $\phi_{1}>0$ such that $\left\|\phi_{1}\right\|_{\infty}=1$.

First, suppose (5.11) has an equilibrium $\theta(x) \geq, \not \equiv 0$, i.e.

$$
\begin{equation*}
-d \Delta \theta=\theta(m-\theta) \quad \text { in } \Omega, \quad \text { and } \quad \mathbf{n} \cdot \nabla \theta=0 \quad \text { on } \partial \Omega . \tag{5.13}
\end{equation*}
$$

Then $\theta>0$ in $\bar{\Omega}$, by the strong maximum principle. Multiplying the above equation by $\phi_{1}$ and integrating by parts, we have

$$
\int_{\Omega} \theta^{2} \phi_{1}=\int_{\Omega} \phi_{1}(d \Delta \theta+m \theta)=\int_{\Omega} \theta\left(d \Delta \phi_{1}+m \phi_{1}\right)=-\mu_{1} \int_{\Omega} \theta \phi_{1}
$$

Since $\theta>0$ and $\phi_{1}>0$ in $\Omega$, we deduce that $\mu_{1}<0$. This proves sufficiency.
Now, suppose $\mu_{1}<0$. We will demonstrate that (5.11) has at least one positive equilibrium $\theta$. To this end, define

$$
\underline{\theta}=\epsilon \phi_{1} \quad \text { and } \quad \bar{\theta}=M .
$$

We claim that, for $\epsilon>0$ sufficiently small and $M>0$ sufficiently large, $\underline{\theta}$ and $\bar{\theta}$ form a pair of sub- and superequilibria in the classical sense. Since both functions satisfy the Neumann boundary condition, it remains to check the differential inequalities:

$$
\left\{\begin{array}{l}
-\Delta\left(\epsilon \phi_{1}\right)-\epsilon \phi_{1}\left(m-\epsilon \phi_{1}\right)=\epsilon \phi_{1}\left(\mu_{1}+\epsilon \phi_{1}\right)<0 \quad \text { in } \Omega, \\
-\Delta M-M(m-M) \geq 0 \quad \text { in } \Omega,
\end{array}\right.
$$

provided $0<\epsilon<-\mu_{1}$ and $M \geq \sup _{\Omega} m$. The existence of a positive equilibrium $\theta$ follows from Proposition 5.1.8.

The main theorem of this section is as follows.
Theorem 5.2.2 Let $u$ be a solution of (5.11).

1. If $\mu_{1} \geq 0$, then $u(x, t) \rightarrow 0$ regardless of the initial conditions.
2. If $\mu_{1}<0$, then (5.11) has a unique positive equilibrium $\theta_{d}$. Moreover, $\theta_{d}$ satisfies

$$
\begin{equation*}
0<\theta_{d}(x) \leq \sup _{\Omega} m \quad \text { for } x \in \bar{\Omega} \tag{5.14}
\end{equation*}
$$

and is globally asymptotically stable among all nonnegative, nontrivial solutions of (5.11).

Remark 5.2.3 The dichotomy of Theorem 5.2.2 holds for general elliptic operators $\mathcal{L}$ and general oblique boundary conditions $\mathcal{B}$. See Problem 5.4.3.

Proof Suppose $\mu_{1}<0$, then Proposition 5.1.8 implies that there is a maximal and minimal positive equilibrium $\theta_{M}$ and $\theta_{m}$, such that $0<\theta_{m} \leq \theta_{M}$ and

$$
\theta_{m} \leq \theta \leq \theta_{M} \quad \text { in } \Omega, \text { for any positive equilibrium } \theta .
$$

(Observe that the equilibrium problem associated to (5.11) is

$$
d \Delta \theta+\theta(m-\theta)=0 \quad \text { in } \Omega, \quad \text { and } \quad \mathbf{n} \cdot \theta=0 \quad \text { on } \partial \Omega,
$$

which is a special case of (5.7).) Multiplying the equation of $\theta_{m}$ by $\theta_{M}$ and then integrating by parts, we have

$$
\begin{equation*}
d \int_{\Omega} \nabla \theta_{M} \cdot \nabla \theta_{m}=\theta_{M} \theta_{m}\left(m-\theta_{m}\right) \tag{5.15}
\end{equation*}
$$

Reversing the roles of $\theta_{m}, \theta_{M}$, we obtain

$$
\begin{equation*}
d \int_{\Omega} \nabla \theta_{M} \cdot \nabla \theta_{m}=\int_{\Omega} \theta_{M} \theta_{m}\left(m-\theta_{M}\right) \tag{5.16}
\end{equation*}
$$

Subtracting (5.16) from (5.15), we have

$$
0=\int_{\Omega} \theta_{M} \theta_{m}\left(\theta_{M}-\theta_{m}\right)
$$

Since $\theta_{M} \geq \theta_{m}$, we must have $\theta_{M}=\theta_{m}$. Hence, (5.11) has a unique positive equilibrium $\theta$ in $\left[\epsilon \phi_{1}, M\right]$. Note that $\theta$ is necessarily independent of $\epsilon$ and $M$. By Proposition 5.1.8, the positive equilibrium attracts all solutions with initial data in $\left[\epsilon \phi_{1}, M\right]$. Since this is true for all $0<\epsilon \ll 1$ and $M \gg 1$, we deduce that (5.11) has a unique positive equilibrium, which we denote hereafter by $\theta_{d}$. Moreover, $\theta_{d}$ attracts all solutions with strictly positive initial data. Finally, if $u(x, 0)$ is nonnegative and nontrivial, then the strong maximum principle asserts that $u(x, t)>0$ in $\bar{\Omega} \times(0, \infty)$. From the above argument, we have again $u(x, t) \rightarrow \theta_{d}$. This proves the case $\mu_{1}<0$.

Next, suppose $\mu_{1} \geq 0$. We will show that every nonnegative solution $u$ of (5.11) converges to 0 as $t \rightarrow \infty$. Indeed, fix $M>0$ such that $M \geq \max \{m(x), u(x, 0)\}$ for $x \in \Omega$, and observe that $\underline{u}:=M$ and $\underline{u}=0$ form a pair of super- and subsolutions for (5.11). By Theorem 5.2.2, $\theta=0$ is the only equilibrium of (5.11) satisfying $0 \leq \theta \leq M$. Hence, we can conclude by Proposition 5.1.8, that $u$ converges to 0 as $t \rightarrow \infty$.

Consider the diffusive logistic equation (5.11) with diffusion rate $d>0$ and intrinsic growth rate $m \in C(\bar{\Omega})$. If $m(x) \equiv m_{0}$ is a constant, then the principal eigenvalue $\mu_{1}$ of (5.12) satisfies $\mu_{1}=-m_{0}$. By Theorem 5.2.2, the population persists if $m_{0}>0$, and goes to extinction if $m_{0} \leq 0$, i.e. diffusion does not play a significant role in the long-time dynamics here. However, when $m(x)$ is nonconstant,
there is generally a critical diffusion rate for the persistence of the population, as the following result illustrates.

Theorem 5.2.4 Consider the time-dependent problem (5.11) with a given nonconstant intrinsic growth rate $m \in C(\bar{\Omega})$.

1. If $\int_{\Omega} m \mathrm{~d} x \geq 0$, then (5.11) has a unique positive equilibrium $\theta_{d}$ for any $d>0$. Moreover, $\theta_{d}$ is globally asymptotically stable among all nonnegative, nontrivial solutions.
2. If $\max _{\bar{\Omega}} m \leq 0$, then every nonnegative solution $u$ satisfies $u(x, t) \rightarrow 0$ as $t \rightarrow \infty$.
3. If $\int_{\Omega} m \mathrm{~d} x<0$ and $\max _{\bar{\Omega}} m>0$, then there exists a critical diffusion rate $\hat{d} \in$ $(0, \infty)$ such that the conclusion of part 1 holds if $d \in(0, \hat{d})$ and the conclusion of part 2 holds if $d \in[\hat{d}, \infty)$.

Proof Let $\mu_{1}$ be the principal eigenvalue of (5.12) with a positive eigenfunction $\phi$. Recall the dichotomy result from Theorem 5.2.2, which states that the trivial solution is globally asymptotically stable if $\mu_{1} \geq 0$, and that the unique positive equilibrium exists and is globally asymptotically stable if $\mu_{1}<0$.

To prove assertion 1 , suppose $\int_{\Omega} m \geq 0$. We need to show that $\mu_{1}<0$ for all $d>0$. Indeed, $\phi>0$ in $\bar{\Omega}$, thanks to the strong maximum principle. We may divide (5.12) by $\phi$ and integrate by parts to get

$$
-d \int_{\Omega} \frac{|\nabla \phi|^{2}}{\phi^{2}}=-d \int_{\Omega} \frac{\Delta \phi}{\phi}=\int_{\Omega}\left(m+\mu_{1}\right)
$$

Using the facts $\int_{\Omega} m \geq 0$ and that $m$, and hence $\phi$, are nonconstant functions, we deduce from the above that $\mu_{1}<0$. This proves assertion 1 .

To prove assertion 2, suppose that $m \leq 0$ in $\bar{\Omega}$, we need to show that $\mu_{1} \geq 0$ for all $d>0$. Indeed, integrating (5.12) over $\Omega$, and using the Neumann boundary condition, we obtain

$$
0=-d \int_{\Omega} \Delta \phi=\int_{\Omega}\left(m+\mu_{1}\right) \phi
$$

Since $m \leq 0$ in $\bar{\Omega}$, we deduce that $\mu_{1} \geq 0$. This proves assertion 2 .
For assertion 3, we recall from Propositions 1.3.16 and 1.3.19 that

$$
\lim _{d \rightarrow 0+} \mu_{1}=-\max _{\bar{\Omega}} m<0 \quad \text { and } \quad \lim _{d \rightarrow \infty} \mu_{1}=-\frac{1}{|\Omega|} \int_{\Omega} m \mathrm{~d} x>0
$$

Moreover, $\mu_{1}$ is differentiable and strictly increasing in $d \in(0, \infty)$ thanks to Proposition 1.3.15. Hence, there exists a $\hat{d} \in(0, \infty)$ such that $\mu_{1}<0$ when $0<d<\hat{d}$, and $\mu_{1} \geq 0$ when $d \geq \hat{d}$. This proves assertion 3 .

Theorem 5.2.5 Denote the unique positive equilibrium of (5.11) by $\theta_{d}$, if it exists.

1. If $m>0$ somewhere, then $\theta_{d}$ exists for all $0<d \ll 1$ and $\lim _{d \rightarrow 0} \theta_{d}=m_{+}$.
2. If $\int_{\Omega} m \mathrm{~d} x>0$, then $\theta_{d}$ exists for all $d>0$ and $\lim _{d \rightarrow \infty} \theta_{d}=f_{\Omega} m \mathrm{~d} x$.

Proof Without loss of generality, we may perform a rescaling and assume that $|\Omega|=1$. For simplicity, we prove the case when $\inf _{\Omega} m>0$ and $m \in C^{2}(\bar{\Omega})$. We leave the general case as an exercise.
Step 1. For $n \in \mathbb{N}$, define

$$
\theta_{n}^{ \pm}=m(x) \pm\left[\frac{2}{n}+C n^{2} \max \left\{\frac{1}{n}-\operatorname{dist}(x, \partial \Omega), 0\right\}^{3}\right],
$$

where we take $C \gg 1$ such that for each $n \geq 1$, we have

$$
\mathbf{n} \cdot \nabla \theta^{+} \geq 0 \geq \mathbf{n} \cdot \nabla \theta^{-} \quad \text { on } \partial \Omega .
$$

Step 2. For each fixed $n$, there exists a $\hat{d}_{n}$ such that for $d \in\left(0, \hat{d}_{n}\right)$, the functions $\theta_{n}^{+}$and $\theta_{n}^{-}$form a pair of super- and subsolutions. By Corollary 5.1.9, the unique equilibrium $\theta_{d}$ must stay between $\theta_{n}^{ \pm}$. Hence

$$
m-\frac{2+C}{n} \leq \theta_{n}^{-}(x) \leq \theta_{d}(x) \leq \theta_{n}^{+}(x) \leq m+\frac{2+C}{n} \quad \text { in } \Omega, \text { for } 0<d<\hat{d}_{n} .
$$

Letting $d \rightarrow 0+$ and then $n \rightarrow \infty$, we complete the proof of part 1 .
To prove part 2, we first divide (5.13) by $\theta_{d}$, and integrate by parts to get

$$
\begin{equation*}
0 \geq-\int_{\Omega} \frac{\left|\nabla \theta_{d}\right|^{2}}{\left|\theta_{d}\right|^{2}}=\int_{\Omega}\left(m-\theta_{d}\right) \tag{5.17}
\end{equation*}
$$

This implies

$$
\begin{equation*}
\int_{\Omega} \theta_{d} \geq \int_{\Omega} m>0 \tag{5.18}
\end{equation*}
$$

Rewriting the equation of $\theta_{d}$ as

$$
\begin{equation*}
-\Delta \theta_{d}=\frac{1}{d} \theta_{d}\left(m-\theta_{d}\right) \tag{5.19}
\end{equation*}
$$

upon multiplying by $\theta_{d}$ and integrating by parts, we have

$$
\int_{\Omega}\left|\nabla \theta_{d}\right|^{2} \leq \frac{C}{d}
$$

where $C$ is independent of $d \geq 1$. It then follows by Poincaré's inequality that

$$
\begin{equation*}
\int_{\Omega}\left|\theta_{d}-\int_{\Omega} \theta_{d}\right|^{2} \leq \frac{C^{\prime}}{d} \tag{5.20}
\end{equation*}
$$

for some constant $C^{\prime}$ independent of $d \geq 1$. Now, integrating (5.13), we have

$$
\begin{equation*}
0=\int_{\Omega} \theta_{d}\left(m-\theta_{d}\right) \tag{5.21}
\end{equation*}
$$

We can rewrite the above as
$-\int_{\Omega}\left(\theta_{d}-\int_{\Omega} \theta_{d}\right)\left(m-\theta_{d}\right)=\left[\int_{\Omega} \theta_{d}\right]\left[\int_{\Omega}\left(m-\theta_{d}\right)\right]=\left[\int_{\Omega} \theta_{d}\right]\left[\int_{\Omega} m-\int_{\Omega} \theta_{d}\right]$.
By (5.18) and (5.20), we may pass to the limit in (5.22) and deduce that $\int_{\Omega} \theta_{d} \rightarrow$ $\int_{\Omega} m>0$ as $d \rightarrow \infty$. In view of (5.20), we deduce that $\theta_{d} \rightarrow \int_{\Omega} m$ in $L^{2}(\Omega)$ as $d \rightarrow \infty$.

It remains to improve the convergence of $\theta_{d} \rightarrow \int_{\Omega} m$. To this end, observe by the maximum principle that

$$
\begin{equation*}
\sup _{\Omega} \theta_{d} \leq \sup _{\Omega} m, \tag{5.23}
\end{equation*}
$$

so that the right-hand side of (5.19) is bounded in $L^{\infty}$. It then follows by elliptic $L^{p}$ estimates that $\sup _{d \geq 1}\left\|\theta_{d}\right\|_{W^{2, p}(\Omega)}$ is finite for each $p>1$. Therefore, as $d \rightarrow \infty$, we have $\theta_{d} \rightarrow \int_{\Omega} m$ weakly in $W^{2, p}(\Omega)$ and hence strongly in $C^{1+\alpha}(\bar{\Omega})$.

It is of biological interest to study the total biomass of a single species at equilibrium, which is given by $\int_{\Omega} \theta_{d} \mathrm{~d} x$, for the model (5.11). It follows from Theorem 5.2.5 and (5.18) that

Corollary 5.2.6 Suppose that $m$ is nonnegative and not identically zero. Then for all $d>0$ it holds that

$$
\begin{equation*}
\int_{\Omega} \theta_{d} \mathrm{~d} x>\int_{\Omega} m \mathrm{~d} x=\lim _{d \rightarrow 0+} \int_{\Omega} \theta_{d} \mathrm{~d} x=\lim _{d \rightarrow \infty} \int_{\Omega} \theta_{d} \mathrm{~d} x \tag{5.24}
\end{equation*}
$$

That is, as shown in [17], the total biomass is minimized at $d=0$ and $d=\infty$, and it is maximized at some intermediate values of diffusion rates. Later it was found that the total biomass, as a function of the diffusion rate, can have multiple local maxima [16]. In [8] and [10] the authors further studied the effect of the diffusion rate on the total biomass, for more general reaction-diffusion models of single species.

### 5.3 Critical Domain Size

Reaction-diffusion models can predict the critical domain size needed to sustain a population in an environment that is surrounded by a hostile exterior. In the following, we give a proof of existence of critical domain size for a reaction-diffusion-advection model. Consider

$$
\begin{cases}u_{t}-a u_{x x}-b u_{x}=u(c-\beta(x) u) & \text { in }[0, L] \times[0, \infty),  \tag{5.25}\\ -u_{x}(0, t)+p_{-} u(0, t)=u_{x}(L, t)+p_{+} u(0, t)=0 & \text { on }\{0, L\} \times[0, \infty), \\ u(x, 0)=u_{0}(x) & \text { in }[0, L],\end{cases}
$$

where $\beta \in C(\bar{\Omega})$ is strictly positive in $[0, L]$, and $a, b, c, p_{ \pm}$are real constants such that

$$
\begin{equation*}
a>0, \quad c>0, \quad p_{ \pm} \geq 0, \quad p_{+}+p_{-}>0 \tag{5.26}
\end{equation*}
$$

By Theorem 5.1.2, for any nonnegative initial data $u_{0} \in C([0, L])$, the problem (5.25) has a unique classical solution $u \in C^{2,1}([0, L] \times(0, \infty)) \cap C([0, L] \times[0, \infty))$. Furthermore, it can be proved (along the lines of Proposition 5.2.1) that (5.25) has a positive equilibrium if and only if the trivial solution is unstable, i.e. the principal eigenvalue $\mu_{1}$ of

$$
\left\{\begin{array}{l}
a \phi^{\prime \prime}+b \phi^{\prime}+c \phi+\mu_{1} \phi=0 \quad \text { in }[0, L]  \tag{5.27}\\
-\phi^{\prime}(0)+p_{-} \phi(0)=\phi^{\prime}(L)+p_{+} \phi(L)=0
\end{array}\right.
$$

is negative.
On the one hand, if (5.25) has no positive equilibria, then the trivial solution attracts all nonnegative solutions of (5.25). On the other hand, if a positive solution $\theta$ exists, it is unique and attracts all nonnegative, nontrivial solutions of (5.25). See Problem 5.4.3.

The following result shows the existence of critical domain size $L^{*} \in(0, \infty]$.
Proposition 5.3.1 Suppose (5.26) holds, then there exists $L^{*}=L^{*}\left(a, b, c, p_{-}, p_{+}\right)$ such that the trivial solution is linearly unstable if and only if $L>L^{*}$.

Proof For simplicity, we prove the case $b=0$ here and leave the general case as an exercise. Let $\mu_{1}$ be the principal eigenvalue of

$$
\left\{\begin{array}{l}
a \phi^{\prime \prime}+c \phi+\mu_{1} \phi=0 \quad \text { in }[0, L]  \tag{5.28}\\
-\phi^{\prime}(0)+p_{-} \phi(0)=\phi^{\prime}(L)+p_{+} \phi(L)=0
\end{array}\right.
$$

Step 1. We claim that $\mu_{1} \neq-c$. Suppose the contrary, then $\phi=A x+B$ for some $A, B$ such that $B \geq 0$ and $A L+B \geq 0$. Now, the boundary condition implies

$$
-A+p_{-} B=0 \quad \text { and } \quad A+p_{+}(A L+B)=0
$$

Adding the equalities, we get $\left(p_{-}+p_{+}\right) B+p_{+} A L=0$, which implies $A=B=0$. This is a contradiction.
Step 2. We claim that $\mu_{1}>-c$. Indeed, choose $x_{0}$ such that $\phi\left(x_{0}\right)=\sup _{[0, L]} \phi$. If $x_{0} \in(0, L)$, then

$$
\begin{equation*}
\phi^{\prime \prime}\left(x_{0}\right) \leq 0, \quad \phi^{\prime}\left(x_{0}\right)=0, \quad \phi\left(x_{0}\right)>0 \tag{5.29}
\end{equation*}
$$

Substituting the above into $a \phi^{\prime \prime}+\left(c+\mu_{1}\right) \phi=0$, we obtain $c+\mu_{1} \geq 0$. On the other hand, if $x_{0}=0$ or $x_{0}=L$, then we can use the boundary condition, and $p_{ \pm} \geq 0$ to
conclude that $\phi^{\prime}\left(x_{0}\right)=0$, and hence (5.29) again holds. Hence we once again obtain $c+\mu_{1} \geq 0$. Since $\mu_{1} \neq-c$ by Step 1, we have $\mu_{1}>-c$.
Step 3. Suppose $\mu_{1}$ is the principal eigenvalue of (5.28), then

$$
\begin{equation*}
L=\sqrt{\frac{a}{c+\mu_{1}}}\left[\arctan \left(\frac{p_{+}}{\sqrt{\left(c+\mu_{1}\right) / a}}\right)-\arctan \left(\frac{-p_{-}}{\sqrt{\left(c+\mu_{1}\right) / a}}\right)\right]:=G\left(\mu_{1}\right) . \tag{5.30}
\end{equation*}
$$

Indeed, since $\mu_{1}+c>0$ (Step 2), we have

$$
\phi(x)=A \cos \left(\sqrt{\frac{c+\mu_{1}}{a}}(x-\eta)\right), \quad \text { for some } A>0,|\eta|<\sqrt{\frac{a}{c+\mu_{1}}} \frac{\pi}{2} .
$$

Then the boundary conditions yield

$$
\left\{\begin{array}{l}
-p_{-}=-\frac{\phi^{\prime}(0)}{\phi(0)}=\sqrt{\frac{c+\mu_{1}}{a}} \tan \left(\sqrt{\frac{c+\mu_{1}}{a}}(-\eta)\right) \\
p_{+}=-\frac{\phi^{\prime}(L)}{\phi(L)}=\sqrt{\frac{c+\mu_{1}}{a}} \tan \left(\sqrt{\frac{c+\mu_{1}}{a}}(L-\eta)\right)
\end{array}\right.
$$

Since $\phi$ is positive on $[0, L]$, and $p_{-}+p_{+}>0$, we observe that $\eta, L$ can be uniquely determined, and we may solve for $L$ in these expressions to obtain (5.30). This completes Step 3.
Step 4. We claim that the mapping $L \mapsto \mu_{1}(L)$ is a homeomorphism from $(0, L) \rightarrow$ ( $-c, \infty$ ).

By Step 2, the range of the mapping is contained in ( $-c, \infty$ ). Moreover, the mapping is injective since if $\mu_{1}(L)=\mu_{1}(\tilde{L})$, we can denote by $\hat{\mu}$ their common value, and apply Step 3 to conclude that $L=\tilde{L}=G(\hat{\mu})$. It is surjective since, for any $\hat{\mu} \in(-c, \infty)$, we have $\mu_{1}(\hat{L})=\hat{\mu}$, where $\hat{L}=G(\hat{\mu})>0$. (Note that the positivity of $\hat{L}$ follows from (5.30) and the fact that $p_{-}+p_{+}>0$.) Thus $L \mapsto \mu_{1}(L)$ is bijective from $(0, \infty)$ to $(-c, \infty)$, and the inverse is given by $G$. Finally, $L \mapsto \mu_{1}(L)$ is continuous, since $G$ is.
Step 5. The mapping $L \mapsto \mu_{1}(L)$ is strictly decreasing.
It follows from $L=G\left(\mu_{1}(L)\right)$ and (5.30) that $\mu_{1}(L) \searrow-c$ as $L \rightarrow \infty$ and $\mu_{1}(L) \nearrow \infty$ as $L \searrow 0$. The mapping $L \mapsto \mu_{1}(L)$, being a homeomorphism of $(0, \infty)$ to $(-c, \infty)$, must then be strictly decreasing.

It then follows that there exists an $L^{*}$ such that

$$
\mu_{1}<0 \quad \text { if and only if } \quad L>L^{*} .
$$

This completes the proof.
The concept of critical domain size gives a mathematical description of the socalled drift paradox. The latter refers to the persistence of populations in streams even when they are constantly subject to washing out. This problem is intensified when the habitat quality at the downstream end is poor. Once the species are washed downstream, the chance of survival is greatly reduced. This problem, termed as the
"drift paradox", has received considerable attention in ecology. The work of Speirs and Gurney [29] offered an explanation based upon a reaction-diffusion model. The following closely related model of a single species population inhabiting a river habitat is considered in [11, 18].

$$
\begin{cases}\partial_{t} \tilde{u}-\tilde{d} \partial_{x x}^{2} \tilde{u}+\tilde{q} \partial_{x} \tilde{u}=\tilde{u}(\tilde{r}-\tilde{u}) & \text { for } 0<x<\tilde{L}, t>0  \tag{5.31}\\ \tilde{d} \partial_{x} \tilde{u}(0, t)-\tilde{q} \tilde{u}(0, t)=0 & \text { for } t>0 \\ \tilde{d} \partial_{x} \tilde{u}(\tilde{L}, t)-\tilde{q} \tilde{u}(\tilde{L}, t)=-\tilde{b} \tilde{q} \tilde{u}(\tilde{L}, t) & \text { for } t>0 \\ \tilde{u}(x, 0)=\tilde{u}_{0}(x) & \text { for } 0<x<L\end{cases}
$$

where $\tilde{d}, \tilde{q}, \tilde{r}, \tilde{L}$ are the diffusion rate, river flow rate, the local intrinsic growth rate and the domain size, respectively. The nonnegative parameter $\tilde{b}$ represents the rate of population loss at the downstream boundary, while a no-flux condition is imposed at the upstream boundary. They are assumed to be given positive constants. By a nondimensionalization,

$$
u(x, t)=\frac{1}{\tilde{r}} \tilde{u}\left(\frac{\tilde{q} x}{\tilde{r}}, \frac{t}{\tilde{r}}\right), \quad d=\frac{\tilde{d} \tilde{r}}{\tilde{q}^{2}}, \quad L=\frac{\tilde{r} \tilde{L}}{\tilde{q}},
$$

and $v(x, t)=\mathrm{e}^{-x / d} u(x, t)$ we obtain the simplified problem

$$
\begin{cases}\partial_{t} v-d \partial_{x x}^{2} v-\partial_{x} v=v\left(1-\mathrm{e}^{x / d} v\right) & \text { for } 0<x<L, t>0 \\ \partial_{x} v(0, t)=0 & \text { for } t>0 \\ d \partial_{x} v(L, t)+\tilde{b} v(L, t)=0 & \text { for } t>0 \\ v(x, 0)=v_{0}(x) & \text { for } 0<x<L\end{cases}
$$

In such a case, we obtain (5.25) with

$$
\beta(x)=\mathrm{e}^{x / d}, \quad a=d, \quad b=1, \quad c=1, \quad p_{-}=0, \quad p_{+}=\tilde{b} \geq 0
$$

and denote the critical domain size by $L^{*}(d, \tilde{b})$.
Considering the diffusion rate as a phenotype of the species, we are interested in the range of phenotypes that are able to persist in a given environment. Precisely, given the domain size $L$ and downstream loss rate $\tilde{b} \geq 0$ what is the set of diffusion rates $d$ that leads to persistence? Obviously, the species persists if and only if $L>L^{*}(d, \tilde{b})$. The answer thus depends on the (monotonic) dependence of $L^{*}$ on the parameter $d$.
Proposition 5.3.2 Let $L^{*}(d, \tilde{b})$ be given as above. Define

$$
d_{\min }(\tilde{b})=\tilde{b}(1-\tilde{b}) \quad \text { if } 0 \leq \tilde{b} \leq \frac{1}{2}, \quad \text { and } \quad d_{\min }(\tilde{b})=\frac{1}{4} \quad \text { otherwise } .
$$

Then the following statements hold.

1. $L^{*}(d, \tilde{b})=+\infty$ for $d \in\left(0, d_{\text {min }}(\tilde{b})\right]$.
2. $\lim _{d \rightarrow d_{\min }(\tilde{b})} L^{*}(d, \tilde{b})=+\infty$ and $\lim _{d \rightarrow+\infty} L^{*}(d, \tilde{b})=\tilde{b}$.
3. Let $\tilde{b} \in\left(0, \frac{3}{2}\right]$. Then $d \mapsto L^{*}(d, \tilde{b})$ is strictly decreasing on ( $d_{\min }(b), \infty$ ). In particular, $L^{*}(d, \tilde{b})>\tilde{b}$ for all $d \in\left(d_{\min }, \infty\right)$, such that the following statements hold:
a. If $L \leq \tilde{b}$, then the single species goes extinct for all $d>0$.
b. If $L>\tilde{b}$, then there exists $\underline{d}(L, \tilde{b})>d_{\min }(\tilde{b})$ such that the single species persists if and only if $d \in(\underline{d}(\bar{L}, \tilde{b}),+\infty)$.
4. Let $b>\frac{3}{2}$. Then there exists a $\hat{d} \in\left(\frac{1}{4},+\infty\right)$ such that $d \mapsto L^{*}(d, \tilde{b})$ is strictly decreasing in $\left(\frac{1}{4}, \hat{d}\right]$ and strictly increasing in $[\hat{d},+\infty)$. Also, the quantity

$$
L_{\min }(\tilde{b})=\min _{d>1 / 4} L^{*}(d, \tilde{b})=L^{*}(\hat{d}, \tilde{b})
$$

satisfies $L_{\min }(\tilde{b})<\tilde{b}$ so that
a. If $L \leq L_{\min }(\tilde{b})$, then the single species goes extinct for all $d>0$.
b. If $L \in\left(L_{\min }(\tilde{b}), \tilde{b}\right)$, then there exist finite positive numbers $\frac{1}{4}<\underline{d}(L, \tilde{b})<$ $\bar{d}(L, \tilde{b})$ such that the single species persists if and only if $d \in(\underline{d}, \bar{d})$.
c. If $L \geq \tilde{b}$, then there exists $\underline{d}(L, \tilde{b}) \in\left(\frac{1}{4},+\infty\right)$ such that the single species persists if and only if $d \in(\underline{d},+\infty)$.

Proof Parts 1 and 2 are proved in [30] and [18, Theorem 2.1]. Parts 3 and 4 are proved in [11, Proposition 1.3].

Note also that for $\tilde{b}>\frac{3}{2}$, there exist choices of $L$ for which only the phenotypes with intermediate diffusion rate persist, whereas those which are too slow or too fast go to extinction. In other words, only an intermediate diffusion rate is viable, and neither a slow or fast diffusion rate is selected for. See Figure 5.1 for an illustration of Proposition 5.3.2.

### 5.4 Further Reading

The results in this chapter indicate that for the logistic equation, or more general single species equations, the long time dynamics is largely determined by the existence and stability of equilibrium solutions. For a more detailed account of the theory, we refer to the classical text [3], which also contains a bifurcation analysis of the equilibrium problem, among many other things.

The optimal arrangement of resource so as to maximize the total biomass for the steady state of (5.11), subject to $L^{1}$ and $L^{\infty}$ constraints, was investigated in Ding et al. [9]. It was conjectured there that any global maximizer of the total biomass must be of the "bang-bang" type. Namely, that the optimal distribution of resource should be a positive scalar multiple of an indicator function supported on a suitable subset of the spatial domain. This has been proved independently by Nagahara and Yanagida [27] and Mazari et al. [23]. However, the characterization of the optimal set is a more delicate issue: When the diffusion rate is large, the support of the optimizer is

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-121.jpg?height=1194&width=1121&top_left_y=169&top_left_x=205)
Fig. 5.1: Three graphs illustrating Proposition 5.3.2 concerning the dependence of the critical domain size $L^{*}$ on the diffusion rate $d$. The shaded region corresponds to the parameter value where the species persists. Observe that the shaded region is decreasing in $\tilde{b}$. When $\tilde{b} \in\left(0, \frac{3}{2}\right], L^{*}$ is decreasing in $d$; when $\tilde{b} \in\left(\frac{3}{2},+\infty\right), L^{*}$ is first decreasing in $d$ and then increasing in $d$, with $L^{*} \rightarrow \tilde{b}$ as $d \rightarrow+\infty$; when $\tilde{b}=+\infty$ (which corresponds to a Dirichlet boundary condition at $x=L$ ), we have $L^{*} \rightarrow+\infty$ as $d \rightarrow \infty$. Note also that for $\tilde{b}>\frac{3}{2}$, there exist choices of $L$ for which only the phenotypes with intermediate diffusion rate persist, whereas those which are too slow or too fast go to extinction.

connected in space. In contrast, if the diffusion rate is small, then the optimal resource distributions tend to alternate spatially, i.e. the fragmentation phenomenon occurs. We refer the interested readers to [22,23,25] for further details. See also [26] for the study of a discrete patch model with similar fragmentation phenomenon. We also refer to $[1,12,13]$ for some results concerning the upper bounds of the total biomass in terms of the total resource distribution. For some biased movement models with advective terms, the optimal distribution of the resources for maximizing the survival ability of a single species was considered in [24]. They showed that the problem has "regular" solutions only when the domain is a ball and the optimal distribution can be characterized in this case; see [5] for the one-dimensional case.

The idea that reaction-diffusion models predict the minimal patch size needed to sustain a population was introduced by Skellam [28] and Kierstead and Slobodkin [14]; See also [3]. The incorporation of advection originates from Speirs and Gurney [29], who considered the reaction-diffusion-advection model (5.25) when the upstream end is a no-flux or closed boundary, while at the downstream end the zero Dirichlet boundary condition or lethal boundary condition is imposed. They established necessary and sufficient conditions for the persistence of the species. Vasilyeva and Lutscher considered the case when the free-flow condition is imposed at the downstream end [30], and the general boundary conditions at the downstream end are studied in [18]. A complete persistence criteria is found for general boundary conditions in the work [11], where the critical river length can be either monotone decreasing in the diffusion rate or it can first decrease and then increase as the diffusion rate increases, depending on the loss rate at the downstream end. We refer to [20,21] for related works on the persistence problem in rivers. Some qualitative properties of the population density at equilibrium are investigated in [15].

## Problems

5.4.1 Suppose $F \in W^{1, \infty}(\bar{\Omega} \times[0, \infty))$ and

$$
F(x, 0)=0, \quad \text { and } \quad F(x, u) \leq C_{0} u
$$

for some constant $C_{0}$. For any $M, T>0$, show that there exists a constant $C(M, T)>$ 0 such that any solution $u$ of (5.1) such that $0 \leq u_{0} \leq M$ satisfies

$$
0 \leq u(x, t) \leq C(M, T) \quad \text { in } \Omega_{T} .
$$

### 5.4.2 Prove Proposition 5.1.13.

5.4.3 Consider

$$
\begin{cases}u_{t}+\mathcal{L} u=u f(x, u) & \text { in } \Omega \times(0, \infty),  \tag{5.32}\\ \mathcal{B} u=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) \geq 0 & \text { in } \Omega,\end{cases}
$$

and let $\mu_{1}$ be the principal eigenvalue of

$$
\begin{cases}\mathcal{L} \phi=f(x, 0) \phi+\mu \phi & \text { in } \Omega,  \tag{5.33}\\ \mathcal{B} \phi=0 & \text { on } \partial \Omega,\end{cases}
$$

where $\mathcal{B}$ is the first-order oblique derivative operator on $\partial \Omega$. Suppose $u \mapsto f(x, u)$ is strictly decreasing and there exists an $M_{0}>0$ such that $f\left(x, M_{0}\right)<0$ for all $x \in \Omega$, then the following threshold-type result holds:

1. If $\mu_{1} \geq 0$, then $u(x, t) \rightarrow 0$ for any nonnegative solution $u$ of (5.32).

2 . If $\mu_{1}<0$, then (5.11) has a unique positive equilibrium $\theta$. Moreover, $\theta$ is globally asymptotically stable among all nonnegative, nontrivial solutions of (5.32).
[Hint: Besides following the arguments of this chapter, one can alternatively use the theory of subhomogeneous operators; see Appendix D.]
5.4.4 If the oblique boundary condition in (5.32) and (5.33) is replaced by the Dirichlet boundary condition, show the corresponding threshold-type result.
5.4.5 (Prove Theorem 5.2.5 without the additional assumption $\inf _{\Omega} m>0$.) Let $m \in C^{1}(\bar{\Omega})$ and suppose it is sign-changing in $\Omega$. Show that $\theta_{d} \rightarrow m_{+}$in $C(\bar{\Omega})$ as $d \rightarrow 0$. Can this be improved to $C^{\alpha}(\bar{\Omega})$ for some $0<\alpha<1$ ?
5.4.6 Prove Proposition 5.3.1 without the assumption that $b=0$.

## References

1. X. Bai, X. He, and F. Li, An optimization problem and its application in population dynamics, Proc. Amer. Math. Soc., 144 (2016), pp. 2161-2170.
2. R. S. Cantrell and C. Cosner, Diffusive logistic equations with indefinite weights: population models in disrupted environments, Proc. Roy. Soc. Edinburgh Sect. A, 112 (1989), pp. 293-318.
3. , Spatial ecology via reaction-diffusion equations, Wiley Series in Mathematical and Computational Biology, John Wiley \& Sons, Ltd., Chichester, 2003.
4. R. S. Cantrell, C. Cosner, and Y. Lou, Advection-mediated coexistence of competing species, Proc. Roy. Soc. Edinburgh Sect. A, 137 (2007), pp. 497-518.
5. F. Caubet, T. Deheuvels, and Y. Privat, Optimal location of resources for biased movement of species: the 1D case, SIAM J. Appl. Math., 77 (2017), pp. 1876-1903.
6. X. Chen, K.-Y. Lam, and Y. Lou, Dynamics of a reaction-diffusion-advection model for two competing species, Discrete Contin. Dyn. Syst., 32 (2012), pp. 3841-3859.
7. C. Cosner and A. C. Lazer, Stable coexistence states in the Volterra-Lotka competition model with diffusion, SIAM J. Appl. Math., 44 (1984), pp. 1112-1132.
8. D. L. DeAngelis, W.-M. Ni, and B. Zhang, Dispersal and spatial heterogeneity: single species, J. Math. Biol., 72 (2016), pp. 239-254.
9. W. Ding, H. Finotti, S. Lenhart, Y. Lou, and Q. Ye, Optimal control of growth coefficient on a steady-state population model, Nonlinear Anal. Real World Appl., 11 (2010), pp. 688-704.
10. Q. Guo, X. He, and W.-M. Ni, On the effects of carrying capacity and intrinsic growth rate on single and multiple species in spatially heterogeneous environments, J. Math. Biol., 81 (2020), pp. 403-433.
11. W. Hao, K.-Y. Lam, and Y. Lou, Ecological and evolutionary dynamics in advective environments: critical domain size and boundary conditions, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 367-400.
12. J. Inoue, Limiting profile for stationary solutions maximizing the total population of a diffusive logistic equation, Proc. Amer. Math. Soc., 149 (2021), pp. 5153-5168.
13. J. Inoue and K. Kuto, On the unboundedness of the ratio of species and resources for the diffusive logistic equation, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 2441-2450.
14. H. Kierstead and L. B. Slobodkin, The size of water masses containing plankton bloom, J. Mar. Res., 12 (1953), pp. 141-147.
15. K.-Y. Lam, Y. Lou, and F. Lutscher, The emergence of range limits in advective environments, SIAM J. Appl. Math., 76 (2016), pp. 641-662.
16. S. Liang and Y. Lou, On the dependence of population size upon random dispersal rate, Discrete Contin. Dyn. Syst. Ser. B, 17 (2012), pp. 2771-2788.
17. Y. Lou, On the effects of migration and spatial heterogeneity on single and multiple species, J. Differential Equations, 223 (2006), pp. 400-426.
18. Y. Lou and P. Zhou, Evolution of dispersal in advective homogeneous environment: the effect of boundary conditions, J. Differential Equations, 259 (2015), pp. 141-171.
19. A. Lunardi, Analytic semigroups and optimal regularity in parabolic problems, Modern Birkhäuser Classics, Birkhäuser/Springer Basel AG, Basel, 1995. [2013 reprint of the 1995 original] [MR1329547].
20. F. Lutscher, M. A. Lewis, and E. McCauley, Effects of heterogeneity on spread and persistence in rivers, Bull. Math. Biol., 68 (2006), pp. 2129-2160.
21. F. Lutscher, E. Pachepsky, and M. A. Lewis, The effect of dispersal patterns on stream populations, SIAM Rev., 47 (2005), pp. 749-772.
22. I. Mazari, G. Nadin, and Y. Privat, Optimal location of resources maximizing the total population size in logistic models, J. Math. Pures Appl. (9), 134 (2020), pp. 1-35.
23. Optimisation of the total population size for logistic diffusive equations: bang-bang property and fragmentation rate, Communications in Partial Differential Equations, 47 (2022), pp. 797-828.
24. —, Shape optimization of a weighted two-phase Dirichlet eigenvalue, Arch. Ration. Mech. Anal., 243 (2022), pp. 95-137.
25. I. Mazari and D. Ruiz-Balet, A fragmentation phenomenon for a nonenergetic optimal control problem: Optimization of the total population size in logistic diffusive models, SIAM Journal on Applied Mathematics, 81 (2021), pp. 153-172.
26. K. Nagahara, Y. Lou, and E. Yanagida, Maximizing the total population with logistic growth in a patchy environment, J. Math. Biol., 82 (2021), p. 50. Paper No. 2.
27. K. Nagahara and E. Yanagida, Maximization of the total population in a reaction-diffusion model with logistic growth, Calc. Var. Partial Differential Equations, 57 (2018), p. 14. Paper No. 80.
28. J. G. Skellam, Random dispersal in theoretical populations, Biometrika, 38 (1951), pp. 196218.
29. D. C. Speirs and W. S. Gurney, Population persistence in rivers and estuaries, Ecology, 82 (2001), pp. 1219-1237.
30. O. Vasilyeva and F. Lutscher, Population dynamics in rivers: analysis of steady states, Can Appl Math Q, 18 (2011), pp. 439-469.

# Chapter 6 Spreading in Homogeneous and Shifting Environments 


#### Abstract

In this chapter, we discuss the Fisher-KPP model in $\mathbb{R}^{1}$. First, we introduce the notion of spreading speed, and establish the classical result for homogeneous environments where the spreading speed is 2 times the square root of the product of the diffusion rate and local intrinsic growth rate. Next, we discuss the case of a shifting habitat which is motivated by the persistence of species in climate change. In the latter case, we determine the formula for the spreading speed, and show that the spreading speed is nonlocally determined. The main tool is the construction of several generalized super- and subsolutions by gluing elementary functions suitably.


### 6.1 The Fisher-KPP Equation and the Definition of Spreading Speed

Consider the Fisher-KPP equation in $\mathbb{R}$.

$$
\begin{cases}\partial_{t} u-\partial_{x x} u=u(r(x, t)-u) & \text { for } x \in \mathbb{R}, t>0  \tag{6.1}\\ u(x, 0)=u_{0}(x) & \text { for } x \in \mathbb{R}\end{cases}
$$

where $u_{0} \in C(\mathbb{R})$ is bounded, nonnegative, nontrivial, and is compactly supported.
The above model was introduced by R. A. Fisher in a slightly different form in the study of the spreading of an advantageous gene in population genetics. It is also suitable for describing the invasion of a single population species, and in that case $r(x, t)$ denotes the intrinsic growth rate of the population. For simplicity, we have scaled the spatial variable so that the diffusion rate is taken to be 1 .

In this chapter, we apply the method of generalized super/subsolutions to discuss the asymptotic spreading of the population. We introduce the notion of spreading speed to be the speed $c_{*}>0$ such that an observer moving at a speed higher than $c_{*}$ will outrun the population, whereas an observer moving at a slower speed will be outrun by the population.

Definition 6.1.1 We say that a given population with density $u(x, t)$ has spreading speed $c_{*}>0$ if the following statements hold:

$$
\lim _{t \rightarrow \infty} \sup _{x>c t}|u(x, t)|=0 \quad \text { for each } c \in\left(c_{*}, \infty\right)
$$

and

$$
\liminf _{t \rightarrow \infty} \inf _{0<x<c t} u(x, t)>0 \quad \text { for each } c \in\left(0, c_{*}\right)
$$

We will discuss the spreading speed of (6.1) in the following two cases:

- (Homogeneous environment) $r(x, t) \equiv r_{0}$ for some constant $r_{0}>0$;
- (Shifting environment) $r(x, t)=g\left(x-c_{1} t\right)$ for some monotone function $g$ and constant $c_{1}>0$.


### 6.2 A Maximum Principle for Unbounded Domains

We will estimate the spreading speed from above and below by constructing appropriate generalized super- and subsolutions. To this end, we need a weak maximum principle for unbounded domain. The proof is adapted from [52, Chapter 3, Section 6, Theorem 10].

Theorem 6.2.1 (Weak maximum principle for unbounded domains) Let $\Omega$ be an unbounded domain in $\mathbb{R}^{N}$ with (possibly empty) smooth boundary $\partial \Omega$. Consider the operator $\mathcal{L}=-a^{i j} D_{i j}-b^{i} D_{i}-c$, where $a^{i j}, b^{i} \in C(\bar{\Omega} \times[0, T])$ are uniformly bounded, $\max _{\bar{\Omega} \times[0, T]} c<+\infty$, and $a^{i j}$ are uniformly elliptic. If $u$ is a generalized subsolution of

$$
\begin{cases}\partial_{t} u+\mathcal{L} u \leq 0 & \text { in } \Omega \times(0, T) \\ u(x, t) \leq 0 & \text { on } \partial \Omega \times(0, T) \\ u(x, 0) \leq 0 & \text { in } \Omega\end{cases}
$$

satisfying the decay condition

$$
\begin{equation*}
\liminf _{R \rightarrow \infty} \mathrm{e}^{-k R^{2}}\left[\max _{\substack{x \in \Omega,|x|=R \\ 0 \leq t \leq T}} u(x, t)\right] \leq 0 \tag{6.2}
\end{equation*}
$$

for some positive constant $k$, then $u \leq 0$ in $\Omega \times[0, T]$.
Remark 6.2.2 For the definition of generalized super- and subsolutions, see Definition 1.1.1 from Chapter 1.

Remark 6.2.3 Suppose $\Omega=\mathbb{R}^{N}$ (i.e. $\partial \Omega$ is empty) and $u$ is uniformly bounded in $x$ and $t$. Then it suffices to check the differential inequality $\partial_{t} u+\mathcal{L} u \leq 0$ in $\Omega \times(0, T)$ and that the initial data satisfies $u(x, 0) \leq 0$ for all $x$.

Proof Write $x=\left(x_{1}, \ldots, x_{N}\right), r^{2}=\sum_{i=1}^{N} x_{i}^{2}$, and define the function

$$
v(x, t)=u(x, t) \mathrm{e}^{-\frac{k \gamma r^{2}}{\gamma-k t}-\beta t}
$$

where $k$ is the constant in (6.2), and $\beta, \gamma$ are constants to be specified later. By a direct computation,

$$
\begin{align*}
& \partial_{t} v-a^{i j} D_{i j} v-\left(b^{i}+\frac{4 k \gamma}{\gamma-k t} a^{i j} x_{j}\right) D_{i} v-(c(x, t)+H(x, t)) v \\
& =\mathrm{e}^{-\frac{k \gamma r^{2}}{\gamma-k t}-\beta t}\left(\partial_{t} u-a^{i j} D_{i j} u-b^{i} D_{i} u-c u\right) \leq 0 \tag{6.3}
\end{align*}
$$

in the generalized sense in $\Omega \times[0, \gamma /(2 k)]$, where

$$
H(x, t)=\frac{4 k^{2} \gamma^{2}}{(\gamma-k t)^{2}} a^{i j} x_{i} x_{j}+\frac{2 k \gamma}{\gamma-k t}\left(a^{i i}+b^{i} x_{i}\right)-\frac{k^{2} \gamma r^{2}}{(\gamma-k t)^{2}}-\beta .
$$

Next, we claim that

$$
\begin{equation*}
c(x, t)+H(x, t)<0 \quad \text { in } \Omega \times\left[0, \frac{\gamma}{2 k}\right], \tag{6.4}
\end{equation*}
$$

provided $0 \leq \gamma \ll 1$ and $\beta \gg 1$. Indeed, fix $M>0$ such that $a^{i j} x_{i} x_{j} \leq M r^{2}$ for all $x$, then

$$
H(x, t) \leq-\frac{k^{2} \gamma r^{2}}{(\gamma-k t)^{2}}(1-4 \gamma M)+\frac{2 k \gamma}{\gamma-k t}\left(a^{i i}+b_{i} x_{i}\right)
$$

Then, for $t \in[0, \gamma /(2 k)]$, we have $\gamma-k t>0$ and

$$
\begin{aligned}
(c+H)(x, t) \leq & -\frac{k^{2} \gamma r^{2}}{(\gamma-k t)^{2}}\left[1-4 \gamma M-\frac{2(\gamma-k t)}{k} B\right] \\
& -\left[\beta-c-\frac{2 k \gamma}{\gamma-k t}\left(A+a^{i i}\right)\right]
\end{aligned}
$$

where

$$
A=\sup _{0 \leq r \leq 1}\left|b^{i} x_{i}\right|, \quad \text { and } \quad B=\sup _{r \geq 1} \frac{b^{i} x_{i}}{r^{2}} .
$$

Hence, we can choose $\gamma>0$ small such that the expression of the first square bracket is positive, and then choose $\beta$ large so that the expression in the second square bracket is positive, uniformly in $t \in[0, \gamma /(2 k)]$. This proves (6.4).

Next, define for $R>0$, the subdomain $\tilde{\Omega}_{R}=\{x \in \Omega:|x|<R\}$. Having proved that $c+H<0$ everywhere, we can conclude that the generalized subsolution $v$ of

$$
v_{t}-a^{i j} D_{i j} v-\tilde{b}^{i} D_{i} v-(c+H) v \leq 0 \quad \text { in } \Omega \times(0, \gamma /(2 k))
$$

cannot attain a positive local maximum in the interior (see Lemma 1.1.6). Hence,

$$
\begin{equation*}
\sup _{\tilde{\Omega}_{R} \times(0, \gamma /(2 k))} v \leq \sup _{\substack{(x, t) \in \Omega \\|x|=R}} \max \{v, 0\} \tag{6.5}
\end{equation*}
$$

where we used the fact that $u$ and $v$ are nonpositive on $\partial \Omega \times[0, T]$. Using (6.2), we pass to the limit in (6.5) along a sequence $R=R_{k} \rightarrow \infty$, and conclude that $v \leq 0$ in $\Omega \times[0, \gamma /(2 k)]$. We can then repeat the proof to prove that $v \leq 0$ in $[0, m \gamma /(2 k)] \cap[0, T]$ for $m=2,3 \ldots$. This completes the proof.

Corollary 6.2.4 Suppose that $\bar{u}, \underline{u}$ are continuous in $\bar{\Omega} \times[0, T]$ and are respectively generalized super- and subsolutions of

$$
\begin{equation*}
u_{t}+\mathcal{L} u=F(x, t, u) \quad \text { in } \Omega \times(0, T), \tag{6.6}
\end{equation*}
$$

where $\mathcal{L}=-a^{i j} D_{i j}-b^{i} D_{i}-c$ is as in Theorem 6.2.1, $F$ is Hölder continuous in $(x, t)$ and locally Lipschitz continuous in the second variable. If

$$
\underline{u} \leq \bar{u} \quad \text { on } \quad(\Omega \times\{0\}) \cup(\partial \Omega \times[0, T])
$$

and both $\underline{u}, \bar{u}$ satisfy the decay condition

$$
\liminf _{R \rightarrow \infty} \mathrm{e}^{-k R^{2}}\left[\max _{\substack{x \in \Omega,|x|=R \\ 0 \leq t \leq T}}(\underline{u}(x, t)-\bar{u}(x, t))\right] \leq 0
$$

then

$$
\underline{u} \leq \bar{u} \quad \text { in } \Omega \times[0, T] .
$$

Proof It is straightforward to verify that $u=\underline{u}-\bar{u}$ is a generalized subsolution of

$$
\begin{equation*}
u_{t}-a^{i j} D_{i j} u-b^{i} D_{i} u-\tilde{c} u=0 \quad \text { in } \Omega \times(0, T), \tag{6.7}
\end{equation*}
$$

where $\tilde{c}(x, t)=c(x, t)+\int_{0}^{1} \partial_{s} F(x, t, \tau \underline{u}(x, t)+(1-\tau) \bar{u}(x, t)) \mathrm{d} \tau$ is uniformly bounded in $\Omega \times(0, T)$. It follows from Theorem 6.2.1 that $\underline{u} \leq \bar{u}$ in $\Omega \times[0, T]$.

Remark 6.2.5 In particular, Corollary 6.2.4 holds if the super- and subsolutions $\bar{u}, \underline{u}$ are uniformly bounded.

### 6.3 Homogeneous Environments

Throughout this section, we assume $r(x, t) \equiv r_{0}$ for some constant $r_{0}>0$.

## Traveling wave solutions

It is well known that (6.1) admits a family of traveling wave solutions $\left\{U_{c}(x, t): c \geq\right.$ $\left.2 \sqrt{r_{0}}\right\}$ such that

$$
U_{c}(x, t)=p(x-c t),
$$

where $p(\xi)$ satisfies

$$
\left\{\begin{array}{l}
-c p^{\prime}-p^{\prime \prime}=p\left(r_{0}-p\right) \quad \text { for } \xi \in \mathbb{R},  \tag{6.8}\\
p(-\infty)=r_{0}, \quad \text { and } \quad p(+\infty)=0 .
\end{array}\right.
$$

Moreover, for $c \in\left[0,2 \sqrt{r_{0}}\right)$, there are no traveling wave solutions. In particular, $2 \sqrt{r_{0}}$ is the minimal speed of traveling wave solution.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-129.jpg?height=254&width=590&top_left_y=790&top_left_x=465)
Fig. 6.1: A diagram illustrating the profile of a traveling solution $U_{c}(x, t)$.

Proof One may prove the existence/nonexistence of a traveling wave with the phaseplane method, by considering

$$
p^{\prime}=q, \quad q^{\prime}=-c q-q\left(r_{0}-q\right),
$$

which is a system of two first-order differential equations. See, e.g. [66].
It is remarkable that, in homogeneous environments, the spreading speed $c_{*}$ of (6.1) coincides with the minimal wave speed $2 \sqrt{r_{0}}$; See [21,37].
Theorem 6.3.1 Suppose $r(x, t) \equiv r_{0}$ for some positive constant $r_{0}$, then $c_{*}=2 \sqrt{r_{0}}$.
Remark 6.3.2 The coincidence of $c_{*}$ with the minimal speed of traveling wave solutions holds in much greater generality; see [44, 63].

Remark 6.3.3 In fact, the solution initiating from nontrivial, compactly supported initial data converges to a traveling wave profile, after a logarithmic correction due to Bramson [12], i.e., there exists a $C_{0}$ depending on initial data, such that

$$
\sup _{x>0}\left|u(x, t)-\phi\left(x-2 \sqrt{r_{0}} t+\frac{3}{2 \sqrt{r_{0}}} \log t+C_{0}\right)\right| \rightarrow 0 \quad \text { as } t \rightarrow \infty .
$$

Bramson's proof is based on probabilistic arguments. We refer to [28,50] for a proof based on PDE arguments.

We will give a proof of Theorem 6.3.1 by constructing generalized super/subsolutions.

Definition 6.3.4 For $r_{0}>0$ and $\lambda>0$, we define

$$
\phi_{r_{0}, \lambda}(x, t)=\mathrm{e}^{-\lambda(x-c t)}, \quad \text { where } \quad c=\lambda+\frac{r_{0}}{\lambda}
$$

Lemma 6.3.5 If $r(x, t) \leq r_{0}$, then $\phi_{r_{0}, \lambda}$ is a (classical) supersolution to (6.1).
Proof Indeed, let $\phi(x, t)=\phi_{r_{0}, \lambda}(x, t)$, then

$$
\phi_{t}-\phi_{x x}-\phi(r(x, t)-\phi) \geq \phi_{t}-\phi_{x x}-r_{0} \phi=\phi\left(\lambda c-\lambda^{2}-r_{0}\right)=0 .
$$

This completes the proof.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-130.jpg?height=267&width=600&top_left_y=804&top_left_x=460)
Fig. 6.2: A diagram illustrating $\phi_{r_{0}, \lambda}(x, t)$.

Definition 6.3.6 For $\alpha, c \geq 0$, and $R>0$, define

$$
\psi_{\alpha, c, R}(x, t)= \begin{cases}\exp \left(-\alpha t-\frac{c}{2}(x-c t)\right) \sin \left(\frac{x-c t}{R}\right) & \text { when } 0<\frac{x-c t}{R}<\pi \\ 0 & \text { otherwise }\end{cases}
$$

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-130.jpg?height=175&width=591&top_left_y=1502&top_left_x=469)
Fig. 6.3: A diagram illustrating $\psi_{\alpha, c, R}(x, t)$.

Lemma 6.3.7 Suppose $r(x, t) \geq r_{0}$. For $\eta>0$ such that $\alpha \geq-r_{0}+\frac{c^{2}}{4}+\frac{1}{R^{2}}+\eta$, the function $\eta \psi=\eta \psi_{\alpha, c, R}$ is a generalized subsolution of (6.1), i.e.

$$
(\eta \psi)_{t}-(\eta \psi)_{x x}-(\eta \psi)(r(x, t)-\eta \psi) \leq 0 \quad \text { in } \mathbb{R} \times(0, \infty)
$$

in the generalized sense.

Proof Note that $\psi$ is (locally) the maximum of $\exp \left(-\alpha t-\frac{c}{2}(x-c t)\right) \sin \left(\frac{x-c t}{R}\right)$ and the trivial solution, and the trivial solution is always a subsolution. According to the definition of generalized subsolutions (Definition 1.1.1), it remains to verify that $\exp \left(-\alpha t-\frac{c}{2}(x-c t)\right) \sin \left(\frac{x-c t}{R}\right)$ is a classical subsolution in the region $\left\{(x, t): 0<\frac{x-c t}{R}<\pi\right\}$. Denoting $\frac{x-c t}{R}$ by $\xi$, we have

$$
\begin{aligned}
& \psi_{t}-\psi_{x x}+\alpha \psi \\
= & \mathrm{e}^{-\alpha t-\frac{c}{2}(x-c t)}\left\{\left[\frac{c^{2}}{2} \sin \xi-\frac{c}{R} \cos \xi\right]-\left[\frac{c^{2}}{4} \sin \xi-\frac{c}{R} \cos \xi-\frac{1}{R^{2}} \sin \xi\right]\right\} \\
= & \psi\left(\frac{c^{2}}{4}+\frac{1}{R^{2}}\right)
\end{aligned}
$$

Hence,

$$
(\eta \psi)_{t}-(\eta \psi)_{x x}-\eta \psi(r(x, t)-\eta \psi) \leq \eta \psi\left(-\alpha-r_{0}+\frac{c^{2}}{4}+\frac{1}{R^{2}}+\eta\right) \leq 0,
$$

where we used the fact that $0 \leq \psi \leq 1$ in the region where $\psi>0$.
Definition 6.3.8 Given $\lambda \in\left(0, \sqrt{r_{0}}\right)$ and any $\epsilon>0$ sufficiently small such that

$$
0<\lambda<\sqrt{r_{0}-\epsilon} \quad \text { and } \quad 0<\epsilon<\frac{r_{0}-\epsilon}{\lambda}-\lambda,
$$

let $c=c_{\epsilon}=\lambda+\frac{r_{0}-\epsilon}{\lambda}$, and define

$$
\rho_{r_{0}, \lambda, \epsilon}(x, t)= \begin{cases}\mathrm{e}^{-\lambda(x-c t)}-\mathrm{e}^{-(\lambda+\epsilon)(x-c t)} & \text { when } x-c t>0 \\ 0 & \text { otherwise } .\end{cases}
$$

Note that $\epsilon<c-2 \lambda$ and that $0 \leq \rho_{r_{0}, \lambda, \epsilon} \leq 1$.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-131.jpg?height=193&width=593&top_left_y=1490&top_left_x=465)
Fig. 6.4: A diagram illustrating $\rho_{r_{0}, \lambda, \epsilon}(x, t)$.

Lemma 6.3.9 Suppose $r(x, t) \geq r_{0}$. For $\eta \in(0, \epsilon]$, the function $\eta \rho$, with $\rho=\rho_{r_{0}, \lambda, \epsilon}$ being defined above, is a generalized subsolution of (6.1), i.e.

$$
(\eta \rho)_{t}-(\eta \rho)_{x x}-(\eta \rho)\left(r_{0}-\eta \rho\right) \leq 0 \quad \text { in } \mathbb{R} \times(0, \infty)
$$

in the generalized sense.

Proof Again, it suffices to prove the differential inequality in the region where $\rho>0$.

$$
\begin{aligned}
& \rho_{t}-\rho_{x x}-\left(r_{0}-\epsilon\right) \rho \\
= & \mathrm{e}^{-\lambda(x-c t)}\left[c \lambda-\lambda^{2}-r_{0}+\epsilon\right]-\mathrm{e}^{-(\lambda+\epsilon)(x-c t)}\left[c(\lambda+\epsilon)-(\lambda+\epsilon)^{2}-r_{0}+\epsilon\right] \\
= & -\mathrm{e}^{-(\lambda+\epsilon)(x-c t)}\left[c \epsilon-2 \lambda \epsilon-\epsilon^{2}\right] \\
= & -\mathrm{e}^{-(\lambda+\epsilon)(x-c t)} \epsilon[c-2 \lambda-\epsilon] \leq 0
\end{aligned}
$$

Hence,

$$
\begin{aligned}
(\eta \rho)_{t}-(\eta \rho)_{x x}-\left(r_{0}-\eta \rho\right) \eta \rho & \leq \eta \rho(-\epsilon+\eta \rho) \\
& \leq \eta \rho(-\epsilon+\eta) \leq 0
\end{aligned}
$$

where we used the facts that $0 \leq \rho \leq 1$ and $0<\eta \leq \epsilon$.
We are now in position to prove Theorem 6.3.1.
Proof (of Theorem 6.3.1) Let $r_{0}>0$ be a positive constant, and let $u(x, t)$ be a solution of

$$
\begin{cases}\partial_{t} u-\partial_{x x} u=u\left(r_{0}-u\right) & \text { for } x \in \mathbb{R}, t>0  \tag{6.9}\\ u(x, 0)=u_{0}(x) & \text { for } x \in \mathbb{R}\end{cases}
$$

where $u_{0} \in C(\mathbb{R})$ is bounded, nonnegative, nontrivial, and compactly supported.
We first prove

$$
\begin{equation*}
\lim _{t \rightarrow \infty} \sup _{x>c t}|u(x, t)|=0 \quad \text { for each } c \in\left(2 \sqrt{r_{0}}, \infty\right) \text {, } \tag{6.10}
\end{equation*}
$$

Consider

$$
\bar{u}(x, t)=\min \left\{C, \mathrm{e}^{-\sqrt{r_{0}}\left(x-2 \sqrt{r_{0}} t\right)}\right\},
$$

with the positive constant $C=\max \left\{r_{0}, \sup _{\mathbb{R}} u_{0}\right\}$. Since both $C$ and $\mathrm{e}^{\sqrt{r_{0}}\left(x-2 \sqrt{r_{0}} t\right)}$ are (classical) supersolutions, it follows that $\bar{u}$, being the minimum of the two, is a generalized supersolution. See Definition 1.1.1 for the definition of generalized supersolution and Figure 6.5 for an illustration of the construction.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-132.jpg?height=328&width=819&top_left_y=1617&top_left_x=352)
Fig. 6.5: A diagram illustrating the profile of the generalized supersolution $\bar{u}(x, t)$ (solid black line) relative to the compactly supported initial data $u_{0}(x)$ (dashed line).

Without loss of generality, we may translate $u_{0}$ to ensure

$$
0 \leq u_{0}(x) \leq \bar{u}(x, 0) \quad \text { in } \mathbb{R} .
$$

By comparison (Corollary 6.2.4), we have

$$
0 \leq u(x, t) \leq \bar{u}(x, t) \quad \text { for } x \in \mathbb{R}, t>0 .
$$

For $c \in\left(2 \sqrt{r_{0}}, \infty\right)$, we have

$$
\limsup _{t \rightarrow \infty} \sup _{x>c t} u(x, t) \leq \limsup _{t \rightarrow \infty} \sup _{x>c t} \bar{u}(x, t) \leq \limsup _{t \rightarrow \infty} \mathrm{e}^{-\sqrt{r_{0}}\left(c-2 \sqrt{r_{0}}\right) t}=0 .
$$

Since $u(x, t) \geq 0$ for all $x, t$, we have proved (6.10).
It remains to prove a lower bound for the spreading speed, namely,

$$
\begin{equation*}
\liminf _{t \rightarrow \infty} \inf _{0<x<c t} u(x, t)>0 \quad \text { for each } c \in\left(0,2 \sqrt{r_{0}}\right) . \tag{6.11}
\end{equation*}
$$

Since $c \in\left(0,2 \sqrt{r_{0}}\right)$, we may choose $R \gg 1$ and $0<\eta \ll 1$ (and $\alpha=0$ ) such that

$$
0>-r_{0}+\frac{c^{2}}{4}+\frac{1}{R^{2}}+\eta \quad \text { and } \quad 0>-r_{0}+\frac{1}{R^{2}}+\eta .
$$

By Lemma 6.3.7, $\eta \psi_{0,0, R}$ and $\eta \psi_{0, c, R}$ are subsolutions of (6.9) for all sufficiently small $\eta>0$. Define

$$
\psi(x, t)= \begin{cases}\psi_{0,0, R}(x, t) & \text { for } 0 \leq x<R \pi / 2 \\ \max \left\{\psi_{0,0, R}(x, t), C, \psi_{0, c, R}(x, t)\right\} & \text { for } \pi / 2 \leq x<c t+R \pi / 2 \\ \psi_{0, c, R}(x, t) & \text { for } c t+R \pi / 2 \leq x<c t+R \pi \\ 0 & \text { otherwise }\end{cases}
$$

where the constant $C$ is chosen such that $0<C<\psi_{0, c, R}(c t+R \pi / 2, t)<1$. (See Figure 6.6 for an illustration of the construction.) Then $\eta \psi(x, t)$ is a generalized subsolution, provided $\eta>0$ is sufficiently small.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-133.jpg?height=198&width=1047&top_left_y=1612&top_left_x=239)
Fig. 6.6: A diagram illustrating the profile of the generalized subsolution $\psi(x, t)$, in solid black line.

Now, given a nonnegative, nontrivial solution $u(x, t)$ of (6.9), the strong maximum principal implies that $u(x, 1)>0$ for all $x \in \mathbb{R}$. Choose $\eta>0$ small enough such that

$$
u(x, 1) \geq \eta \psi(x, 1) \quad \text { for } x \in \mathbb{R} .
$$

This is possible since $u(x, 1)$ is bounded from below in the bounded interval on which $\psi(x, 1)$ is supported. By the comparison principle, we obtain

$$
u(x, t) \geq \eta \psi(x, t) \quad \text { for } x \in \mathbb{R}, t>1
$$

This proves (6.11).

## Periodically Varying Environments

Next, we will motivate the formula for spreading speed in spatially periodic environments.

Consider the Fisher-KPP equation where $r(x, t)=\tilde{r}(x)$ for some periodic function $\tilde{r}(x)$. In the case $\tilde{r}(x) \equiv r_{0}$, we have seen that

$$
\tilde{u}=\mathrm{e}^{-\lambda x+\mu t}, \quad \text { with } \quad \mu=\lambda^{2}+r_{0}
$$

satisfies the linearized equation

$$
\tilde{u}_{t}-\tilde{u}_{x x}=r_{0} \tilde{u} \quad \text { for } x \in \mathbb{R}, t \in \mathbb{R}
$$

and satisfies, for each fixed time $t>0$, the decay condition

$$
\tilde{u}(x, t) \sim \mathrm{e}^{-\lambda x} \quad \text { for } x \gg 1 .
$$

In particular, $\mu=\lambda^{2}+r_{0}$ is an eigenvalue, admitting an eigenfunction in $L^{\infty}$, of the linear elliptic problem

$$
-v_{x x}+2 \lambda v_{x}=\left(\lambda^{2}+r_{0}\right) v-\mu v \quad \text { for } x \in \mathbb{R}
$$

Note that the spreading speed $c_{*}$ can be given by

$$
c_{*}=2 \sqrt{r_{0}}=\inf _{\lambda>0}\left(\lambda+\frac{r_{0}}{\lambda}\right)=\inf _{\lambda>0} \frac{\mu(\lambda)}{\lambda},
$$

where $\mu(\lambda)=\lambda^{2}+r_{0}$.
Now, let $\tilde{r}(x)$ be $L$-periodic in $x$. Consider, by analogy, the principal eigenvalue $\mu(\lambda)$ of the periodic eigenvalue problem

$$
\begin{cases}-\psi_{x x}+2 \lambda \psi_{x}=\left(\lambda^{2}+r(x)\right) \psi-\mu(\lambda) \psi & \text { for } x \in \mathbb{R}, \\ \psi(x+L)=\psi(x) & \text { for } x \in \mathbb{R} .\end{cases}
$$

The above discussion suggests the following variational formula for the spreading speed

$$
\begin{equation*}
c_{*}=\inf _{\lambda>0} \frac{\mu(\lambda)}{\lambda} . \tag{6.12}
\end{equation*}
$$

See [7, 22, 24, 64].

### 6.4 Shifting Environments

Motivated by the poleward movement of isotherms, Potapov and Lewis [51] and subsequently Berestycki et al. [5] considered the effect of climate change on ecosystem dynamics. A list of key problems was given in [5], such as the effect of species mobility and speed of climate shift on the survival/extinction of the species; and to determine the size and form of its population profile if the species survives. Below we briefly discuss one of their results.

## Shifting environments with a moving source patch

The following specific problem was considered in [5,51]:

$$
\begin{cases}u_{t}-u_{x x}=u(1-u) & \text { for } x \in\left[c_{1} t, c_{1} t+L\right], t>0,  \tag{6.13}\\ u_{t}-u_{x x}=-\kappa u & \text { for } x \notin\left[c_{1} t, c_{1} t+L\right], t>0,\end{cases}
$$

where $1, \kappa>0$ are positive constants. The above model describes a population whose viable habitat is of size $L$ and is moving to the right at the speed $c_{1}$. The population has an intrinsic growth rate 1 within the moving patch, and is exposed to a death rate $\kappa$ outside of that patch. By considering the moving frame $y=x-c_{1} t$, we can study the population dynamics of a reaction-diffusion model with temporally stationary coefficients. In fact, it is shown that the long-time dynamics is equivalent to the following bounded domain problem

$$
\begin{cases}v_{t}-v_{y y}-c_{1} v_{y}=v(1-v) & \text { for } y \in[0, L], t>0, \\ v_{y}-k_{+} v=0 & \text { for } y=0, t>0, \\ v_{y}-k_{-} v=0 & \text { for } y=L, t>0,\end{cases}
$$

where $k_{ \pm}=\frac{-c_{1} \pm \sqrt{c_{1}^{2}+4 \kappa}}{2}$.
By the results in Chapter 5, the population can persist on the moving patch if and only if $\mu_{1}<0$, where $\mu_{1}=\mu_{1}\left(c_{1}, L, \kappa\right)$ is the principal eigenvalue of

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-136.jpg?height=182&width=819&top_left_y=182&top_left_x=352)
Fig. 6.7: A diagram illustrating the profile of the instrinsic growth rate in a shifting habitat with speed $c_{1}$.

$$
\left\{\begin{array}{l}
-\psi^{\prime \prime}-c_{1} \psi^{\prime}=\psi+\mu_{1} \psi \quad \text { in } 0<y<L \\
\psi^{\prime}(0)-k_{+} \psi(0)=\psi^{\prime}(L)-k_{-} \psi(L)=0
\end{array}\right.
$$

By a phase plane analysis, it is proved that there exists a critical domain size $L_{\text {crit }}>0$ such that the population persists if and only if

$$
L>L_{c r i t}:=\frac{1}{\sqrt{1-\left(c_{1} / 2\right)^{2}}} \arctan \left(\frac{2 \sqrt{1-\left(c_{1} / 2\right)^{2}} \sqrt{1 / \kappa+\left(c_{1} / 2\right)^{2}}}{1-\kappa-c_{1}^{2} / 2}\right)
$$

See [5] for details.

## Shifting boundary connecting an unbounded sink and an unbounded source patch

Consider the situation where the favorable region is an unbounded interval that is retreating at a speed of $c_{1}$. This can be modeled by (6.1) by taking $r(x, t)=g\left(x-c_{1} t\right)$, where $c_{1}>0$ and $g$ is a strictly increasing function. In this case, (6.1) becomes

$$
\begin{cases}u_{t}-u_{x x}=u\left(g\left(x-c_{1} t\right)-u\right) & \text { for } x \in \mathbb{R}, t>0  \tag{6.14}\\ u(x, 0)=u_{0}(x) & \text { for } x \in \mathbb{R}\end{cases}
$$

where $u_{0}$ is nonnegative, nontrivial, and compactly supported in $\mathbb{R}$.
The authors of [41] first introduced the above problem in the case $g(-\infty)<0<$ $g(+\infty)$.

Theorem 6.4.1 Suppose $g: \mathbb{R} \rightarrow \mathbb{R}$ is bounded and increasing, and such that

$$
r_{1}:=g(-\infty)<0 \quad \text { and } \quad r_{2}:=g(+\infty)>0 .
$$

Let $u$ be a solution of (6.14) with nonnegative, nontrivial and compactly supported initial data. Then the following statements hold.
(a) If $c_{1}>2 \sqrt{r_{2}}$, then the population goes to extinction, i.e.

$$
\lim _{t \rightarrow \infty} \sup _{x \in \mathbb{R}} u(x, t)=0
$$

(b) If $0<c_{1}<2 \sqrt{r_{2}}$, then the population persists, and spreads at $2 \sqrt{r_{2}}$, i.e.

$$
\begin{cases}\lim _{t \rightarrow \infty} \sup _{x>\left(2 \sqrt{r_{2}}+\epsilon\right) t} u(x, t)=0 & \text { for each } \epsilon>0, \\ \liminf _{t \rightarrow \infty} \inf _{\left(c_{1}+\epsilon\right) t<x<\left(2 \sqrt{r_{2}}-\epsilon\right) t} u(x, t)>0 & \text { for each } 0<\epsilon<\left(2 \sqrt{r_{2}}-c_{1}\right) / 2 .\end{cases}
$$

Remark 6.4.2 Theorem 6.4.1 was proved in [41] under the additional assumption that $g$ is also continuous and piecewise differentiable. Here we give an elementary proof that relaxes these two assumptions. Case (b) of Theorem 6.4.1 is depicted in Figure 6.8.

Remark 6.4.3 We conjecture that the assertion (a) holds also in the critical case when $c_{1}=2 \sqrt{r_{2}}$; see Problem 6.5.1.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-137.jpg?height=362&width=819&top_left_y=790&top_left_x=352)
Fig. 6.8: A diagram illustrating the profile of a persisting and spreading population in the case $0<c_{1}<2 \sqrt{r_{2}}$.

Proof For simplicity, we consider the special case when $g$ is a step function, i.e.

$$
r(x, t)=r_{2} \quad \text { if } x \geq c_{1} t, \quad \text { and } \quad r(x, t)=r_{1} \quad \text { if } x<c_{1} t .
$$

The general case $r(x, t)=g\left(x-c_{1} t\right)$ can be treated by approximating the profile from above and below by step functions, and taking the limit; see Problem 6.5.3.

First, we prove assertion (a) by constructing the supersolution which is similar as in the proof of Theorem 6.3.1, as illustrated in Figure 6.5. Let

$$
\delta=\min \left\{\sqrt{r_{2}}\left(c_{1}-2 \sqrt{r_{2}}\right),-r_{1} / 2\right\},
$$

and define

$$
\begin{aligned}
\bar{u}(x, t) & =\min \left\{\mathrm{e}^{-\sqrt{r_{2}}\left(x-2 \sqrt{r_{2}} t\right)}, C \mathrm{e}^{-\delta t}\right\} \\
& = \begin{cases}\mathrm{e}^{-\sqrt{r_{2}}\left(x-2 \sqrt{r_{2}} t\right)} & \text { for } x / t \geq 2 \sqrt{r_{2}}+\frac{\delta-\log C}{\sqrt{r_{2}}}, \\
C \mathrm{e}^{-\delta t} & \text { for } x / t<2 \sqrt{r_{2}}+\frac{\delta-\log C}{\sqrt{r_{2}}},\end{cases}
\end{aligned}
$$

where $C=\max \left\{\mathrm{e}^{2 \delta},\left\|u_{0}\right\|_{L^{\infty}(\mathbb{R})}\right\}$. Using the fact that

$$
r(x, t)=r_{1}<0 \quad \text { in }\left\{(x, t): \bar{u}(x, t)=C \mathrm{e}^{-\delta t}\right\} \subseteq\left\{(x, t): x<c_{1} t\right\},
$$

one can verify that $k \bar{u}$ is a generalized supersolution of (6.14) for any $k \geq 1$. By choosing $k \geq 1$ suitably large, one can arrange that

$$
0 \leq u(x, 0) \leq k \bar{u}(x, 0) \quad \text { for } x \in \mathbb{R} .
$$

By comparison (Corollary 6.2.4), we have

$$
0 \leq u(x, t) \leq k \bar{u}(x, t) \quad \text { for } x \in \mathbb{R}, t>0
$$

Since the function on the right-hand side tends to zero uniformly in $x \in \mathbb{R}$, we obtain assertion (a).

The assertion (b) can be proved by constructing the subsolution similarly as in the proof of Theorem 6.3.1(b), which is illustrated in Figure 6.6. Precisely, fix $c \in\left(c_{1}, 2 \sqrt{r_{2}}\right)$ and $R \gg 1$, and define
$\psi(x, t)= \begin{cases}\psi_{0, c_{1}, R}(x, t) & \text { for } c_{1} t \leq x<c_{1} t+R \pi / 2, \\ \max \left\{\psi_{0, c_{1}, R}(x, t), C, \psi_{0, c, R}(x, t)\right\} & \text { for } c_{1} t+R \pi / 2 \leq x<c t+R \pi / 2, \\ \psi_{0, c, R}(x, t) & \text { for } c t+R \pi / 2 \leq x<c t+R \pi, \\ 0 & \text { otherwise },\end{cases}$
where the constant $C$ is chosen such that

$$
0<C<\min \left\{\psi_{0, c_{1}, R}\left(c_{1} t+R \pi / 2, t\right), \psi_{0, c, R}(c t+R \pi / 2, t)\right\}<1
$$

Then for $\eta>0$ sufficiently small, $\underline{u}(x, t)=\eta \psi(x, t)$ is a generalized subsolution. One can then argue by the comparison principle to obtain assertion (b).

Remark 6.4.4 In [68], the above result is considerably generalized to abstract monotone dynamical systems that are "sandwiched" between two limiting homogeneous KPP systems as $x \rightarrow \pm \infty$, where the one at $+\infty$ has positive growth rate, and the other one has negative growth rate. This work, which is based on the method of recursion [44, 63], includes Theorem 6.4.1 as a special case.

## Shifting boundary connecting two unbounded source patches and nonlocally pulling

In this section, we consider the case $r(x, t)=g\left(x-c_{1} t\right)$, where $g$ is increasing, and

$$
\begin{equation*}
0<r_{1}:=g(-\infty)<r_{2}:=g(+\infty) . \tag{6.15}
\end{equation*}
$$

It turns out that the determination of spreading speed is more delicate in this case. We first make several observations:

- Since $r(x, t)$ is bounded from above and below by positive constants, i.e, $r_{1} \leq$ $r(x, t) \leq r_{2}$, it is clear that the spreading speed $c_{*}$ of (6.14), if it exists, must satisfy

$$
2 \sqrt{r_{1}} \leq c_{*} \leq 2 \sqrt{r_{2}} .
$$

- Suppose $c_{1}<2 \sqrt{r_{2}}$, then the proof of Theorem 6.4.1(b) can be repeated to deduce that the population will spread at speed $2 \sqrt{r_{2}}$.
- Suppose $c_{1}>2 \sqrt{r_{2}}$. Since the population cannot migrate faster than $2 \sqrt{r_{2}}$, we have

$$
c_{*} \leq 2 \sqrt{r_{2}}<c_{1},
$$

i.e. it will fail to keep up with the good patch with larger growth rate $r_{2}$. See Figure 6.9 for an illustration.

- If $c_{1}$ is sufficiently large, i.e. the better patch retreats at a very fast speed, it is then expected that the species cannot take advantage of the better patch and will spread at speed $2 \sqrt{r_{1}}$.
- Suppose the spreading speed $c_{*}$ exists for all $c_{1} \geq 0$, then one can prove by standard comparison that $c_{*}$ is a nonincreasing function of $c_{1}$. In particular, there must be a transition between the minimum value of $c_{*}=2 \sqrt{r_{1}}$ and the maximum value of $c_{*}=2 \sqrt{r_{2}}$.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-139.jpg?height=272&width=819&top_left_y=1176&top_left_x=352)
Fig. 6.9: A diagram illustrating the profile of a persisting and spreading population in the case $0<c_{*}<c_{1}$. The sold line is the growth rate of the habitat moving at speed $c_{1}$. The dashed line is the population density of the species which is invading at speed $c_{*}$.

If $c_{*}<c_{1}$, then the population cannot keep up with the good patch. It turns out that, in some parameter regime, the presence of a good habitat at the large space horizon can enhance the invasion speed of the population. This phenomenon was first discovered by Holzer and Scheel [29], and is coined as "nonlocal pulling" in [25]. Roughly speaking, the presence of the better patch at the large space horizon can modify the decay rate of the population. In some cases, this allows the selection of an invasion speed that corresponds to a supercritical wave speed, which is strictly greater than $2 \sqrt{r_{1}}$. The speed is determined as follows, based on the results in [39].

Theorem 6.4.5 Let $g: \mathbb{R} \rightarrow \mathbb{R}$ be bounded and increasing, such that (6.15) holds. Then the model (6.14) admits a spreading speed $c_{*}$ which is given by

$$
c_{*}= \begin{cases}2 \sqrt{r_{2}} & \text { if } 0 \leq c_{1} \leq 2 \sqrt{r_{2}} \\ \frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}}+\frac{r_{1}}{\frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}}} & \text { if } 2 \sqrt{r_{2}}<c_{1}<2\left(\sqrt{r_{2}-r_{1}}+\sqrt{r_{1}}\right) \\ 2 \sqrt{r_{1}} & \text { if } c_{1} \geq 2\left(\sqrt{r_{2}-r_{1}}+\sqrt{r_{1}}\right)\end{cases}
$$

Remark 6.4.6 If $c_{1} \notin\left(2 \sqrt{r_{2}}, 2\left(\sqrt{r_{2}-r_{1}}+\sqrt{r_{1}}\right)\right)$, then the spreading speed $c_{*}=2 \sqrt{r_{i}}$ and is determined by the environment where the invasion front is located, i.e. the invasion is locally pulled. If $c_{1} \in\left(2 \sqrt{r_{2}}, 2\left(\sqrt{r_{2}-r_{1}}+\sqrt{r_{1}}\right)\right)$, then the invasion front is located at the patch with growth rate $r_{1}$, but $c_{*}>2 \sqrt{r_{1}}$. In other words, the spreading speed is enhanced by the better patch which is at a distance of $O(t)$ ahead of the invasion front, i.e. the invasion front is nonlocally pulled. We refer to [23] for a definition of pulled versus pushed fronts in terms of "inside-dynamics". See [25] for a discussion of nonlocally pulled fronts in competition models and also [15] for a related discussion in predator-prey models.

Proof (of Theorem 6.4.5) We will present a proof based on constructing generalized super- and subsolutions by adapting the ideas in [25]. The results in [39] hold under more general assumptions, but are based on a different approach involving the WKBansatz and Hamilton-Jacobi equations [17]. We leave to the reader (Problem 6.5.3) to show that the general case can be reduced to the case when $g$ is piecewise constant. Namely,

$$
\begin{equation*}
r(x, t)=r_{1} \quad \text { if } x<c_{1} t, \quad \text { and } \quad r(x, t)=r_{2} \quad \text { if } x \geq c_{1} t . \tag{6.16}
\end{equation*}
$$

Also, we only sketch the proof of the case where nonlocal pulling is observed, which is depicted in Figure 6.9. Namely, we will prove that if

$$
2 \sqrt{r_{2}}<c_{1}<2\left(\sqrt{r_{2}-r_{1}}+\sqrt{r_{1}}\right)
$$

then the spreading speed $c_{*}$ is given by

$$
c_{*}=\lambda_{*}+\frac{r_{1}}{\lambda_{*}}, \quad \text { where } \quad \lambda_{*}=\frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}} \in\left(0, \sqrt{r_{1}}\right) .
$$

First, we construct the generalized supersolution. Define

$$
\begin{align*}
\bar{u}(x, t) & =\min \left\{r_{1}, \phi_{r_{1}, \lambda_{*}}(x, t), \phi_{r_{2}, c_{1} / 2}(x, t)\right\} \\
& = \begin{cases}r_{1} & \text { for } x \leq\left(\lambda_{*}+\frac{r_{1}}{\lambda_{*}}\right) t-\frac{1}{\lambda_{*}} \log r_{1} \\
\exp \left(-\lambda_{*} x+\left(\lambda_{*}^{2}+r_{1}\right) t\right) & \text { for }\left(\lambda_{*}+\frac{r_{1}}{\lambda_{*}}\right) t-\frac{1}{\lambda_{*}} \log r_{1}<x \leq c_{1} t \\
\exp \left(-\frac{c_{1}}{2} x+\left(\frac{c_{1}^{2}}{4}+r_{2}\right) t\right) & \text { for } x>c_{1} t\end{cases} \tag{6.17}
\end{align*}
$$

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-141.jpg?height=369&width=1047&top_left_y=194&top_left_x=239)
Fig. 6.10: A diagram illustrating the profile of the generalized supersolution $\bar{u}(x, t)$ (solid black line) in the proof of Theorem 6.4.5. Here $\lambda_{*}=\frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}}$ and $c_{*}=\lambda_{*}+\frac{r_{1}}{\lambda_{*}}$.

Since $\bar{u}$ is defined as the minimum among three smooth functions, it suffices to check that each of the smooth functions is a classical supersolution in the respective regions in the ( $x, t$ ) plane in which they coincide with $\bar{u}(x, t)$. We omit the details, except to note that the choice of exponents $\left(\lambda_{1}, \lambda_{2}\right)=\left(\lambda_{*}, c_{1} / 2\right)$ is the optimum among all admissible choices of $\left(\lambda_{1}, \lambda_{2}\right) \in\left(0, \sqrt{r_{1}}\right] \times\left(0, \sqrt{r_{2}}\right]$ to produce the slowest possible supersolution. By comparison, we deduce that

$$
\lim _{t \rightarrow \infty} \sup _{x>c t} u(x, t)=0 \quad \text { for each } c>c_{*},
$$

i.e. $c_{*}$ is an upper bound of the spreading speed.
Next, we construct a generalized subsolution to show that the population spreads at least as fast as $c_{*}$. Recall that $\lambda_{*}=\frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}}$. Fix an arbitrarily small $\epsilon>0$, define

$$
\begin{equation*}
c_{\epsilon}=\lambda_{*}+\frac{r_{0}-\epsilon}{\lambda_{*}}, \quad \text { and } \quad \alpha=\lambda_{*}\left(c_{1}-c_{\epsilon}\right) . \tag{6.18}
\end{equation*}
$$

We leave it for the reader to verify that

$$
\alpha>-r_{2}+\frac{c_{1}^{2}}{4} .
$$

Granted, then we may take $R \gg 1$ such that

$$
\begin{equation*}
\alpha>-r_{2}+\frac{c_{1}^{2}}{4}+\frac{1}{R^{2}} . \tag{6.19}
\end{equation*}
$$

By our choices of parameters, it follows from Lemmas 6.3.7 and 6.3.9 that for $\epsilon, \eta>0$ small, $\eta^{3} C, \eta^{2} \rho_{r_{1}, \lambda_{*}, \epsilon}$, and $\eta \psi_{\alpha, c_{1}, R}$ are subsolutions. Now, we glue them together in the following way, as illustrated in Figure 6.11:

$$
\underline{u}(x, t)= \begin{cases}\max \left\{\eta^{3}, \eta^{2} \rho_{r_{1}, \lambda_{*}, \epsilon}(x, t)\right\} & \text { for } x \leq c_{\epsilon} t+\frac{1}{\epsilon} \log \frac{\lambda+\epsilon}{\lambda}  \tag{6.20}\\ \max \left\{\eta^{2} \rho_{r_{1}, \lambda_{*}, \epsilon}(x, t), \eta \psi_{\alpha, c_{1}, R}(x, t)\right\} & \text { otherwise. }\end{cases}
$$

It follows that $\underline{u}(x, t)$ is a generalized subsolution of (6.14) for each sufficiently small $\eta>0$. By comparison, we deduce that

$$
\liminf _{t \rightarrow \infty} \inf _{0<x<c t} u(x, t)>0 \quad \text { for each } c \in\left(0, c_{\epsilon}\right) \text {. }
$$

Since $\epsilon>0$ is arbitrary, and $c_{\epsilon} \nearrow c_{*}$ as $\epsilon \searrow 0$, the above holds for all $c \in\left(0, c_{*}\right)$. The proof of the theorem is finished.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-142.jpg?height=172&width=1051&top_left_y=709&top_left_x=239)
Fig. 6.11: A diagram illustrating the profile of the generalized subsolution $\underline{u}(x, t)$ (solid black line) in the proof of Theorem 6.4.5. Here $\lambda_{*}=\frac{c_{1}}{2}-\sqrt{r_{2}-r_{1}}$ and $c_{\epsilon}=\lambda_{*}+\frac{r_{1}-\epsilon}{\lambda_{*}}$.

### 6.5 Further Reading

The pioneering works of [21,37] have inspired extensive further research in the asymptotic spreading of populations, including extension to heterogeneous environments, and more recently, to shifting environments. The definition of spreading speed, or the asymptotic speed of spread, was originally introduced in [2,3] for reaction-diffusion equations, and in [1] for integral-differential equations. Reactiondiffusion models with various kinds of delays [34, 35, 36, 39, 58, 65] can also be treated by transforming them into integral equations [14,53,57], where the definition also applies.

For spatially periodic environments, Weinberger [63, 64] introduced an elaborate method and showed the existence of spreading speeds for discrete-time recursions. Subsequently, the general theory on the existence of spreading speeds and its coincidence with the minimal wave speed was developed in [44] for monotone dynamical systems and [19] for the time-space periodic monotone systems with weak compactness. Using the super- and subsolutions method and the principal eigenvalue of time-space periodic parabolic problems, spreading properties in time-space periodic and more general environments are investigated in [7], as well as in [55]. See also [26, 62] and references therein for spreading results concerning models with nonlocal diffusion and/or delays.

The Hamilton-Jacobi approach for analyzing asymptotic spreading was introduced by Freidlin and Gärtner [22,24], who derived the formula (6.12) for the spreading speed in periodic environments based on probabilistic arguments. Later, Evans and Souganidis [17] provided a proof by PDE arguments. Based on this approach and homogenization ideas, Berestycki and Nadin [8, 9] showed the existence of spreading speeds for spatially almost periodic, random stationary ergodic, and other general heterogeneous environments. In these works, the spreading speed is expressed as a minimax formula in terms of suitable notions of generalized principal eigenvalues in unbounded domains. See also [45] for the related result on KPP models with nonlocal diffusion.

The mathematical work on shifting environments started with [5, 51], and has stimulated significant further research; see the survey article [59]. We also mention $[6,11]$ for works concerning the existence of forced traveling waves; and [43, 60, 61] for works concerning nonlocal diffusion models in shifting environments.

The authors in [41] considered monotone habitats whose favorable part shrinks through time. Specifically, they considered the model (6.14) with growth rate $r(x, t)=g\left(x-c_{1} t\right)$ with $g$ being an increasing function satisfying $g(-\infty)<0<$ $g(+\infty)$. If $c_{1}=0$, then $g(x)$ can be seen as the spatially varying baseline for population growth. For $c_{1}>0$, the source region $\left\{x \in \mathbb{R}: g\left(x-c_{1} t\right)>0\right\}$ shrinks relative to the sink region $\left\{x \in \mathbb{R}: g\left(x-c_{1} t\right)<0\right\}$ as $t$ increases. The existence of forced traveling wave solutions was considered in [18, 32]. Similar results are obtained in [31] for the degenerate case when $g(-\infty)=0<g(+\infty)$.

Based on the fact that habitat degradation due to climate change may not always drive the species to extinction, one is led to consider (6.14) in the case $0<g(-\infty)<g(+\infty)$. See [6, 10, 30, 39, 67]. In particular, it is proved in [39] that, when $r(x, t)=\sum_{i=1}^{N} g_{i}\left(x-c_{i} t\right)$, where $g_{i}$ are bounded, positive and increasing functions, the spreading speed can be characterized by

$$
c_{*}=\sup \{s>0: \hat{\rho}(s)=0\}
$$

where $\hat{\rho}(s)$ is the unique viscosity solution of the following Hamilton-Jacobi equation

$$
\left\{\begin{array}{l}
\min \left\{\rho, \rho-s \rho^{\prime}+\left|\rho^{\prime}\right|^{2}+R(s)\right\}=0 \quad \text { in }(0, \infty), \\
\rho(0)=0, \quad \text { and } \quad \rho(s) / s \rightarrow \infty \text { as } s \rightarrow \infty,
\end{array}\right.
$$

where $R\left(\frac{x}{t}\right)=\lim _{\epsilon \rightarrow 0} r\left(\frac{x}{\epsilon}, \frac{t}{\epsilon}\right)$. For an introduction to the basic theory of viscosity solutions, see [4].

It turns out that in a shifting environment connecting two favorable habitats, i.e. $0<g(-\infty)<g(+\infty)$, the spreading speed may be nonlocally pulled (see Theorem 6.4.5). This phenomenon was first found in [29], in a slightly different setting of staged invasion waves. The name nonlocal pulling was introduced in [25]. See also [20] for the case of shifting diffusivity.

Finally, we mention some works on multiple species problems. The spreading property of two competing species was first established in [40, 42], concerning the invasion speed of a novel species into the territory of a well-established species.

See also [33] for the existence of the stacked invasion fronts in monotone reactiondiffusion systems when all components have the same diffusion rate.

Motivated by the co-invasion of tree species into the North American continent at the end of last ice age, Shigesada et al. [56] conjectured, with numerical evidence, the existence of stacked invasion fronts when there are $N$ competing species with compactly supported initial data. For the resolution of this question when $N=2$, see [13] for the bistable case, and [25,46,47] for the monostable case. Recently, progress has also been obtained for multiple-species systems without monotonicity structure $[15,16,48]$. It turns out that nonlocal pulling also takes place in the competition of two or three-species having different motility rate, even when the environment is homogeneous. This is because the faster invading species modifies and creates a virtually shifting environment for the slower species. For the existence and qualitative properties of entire solutions consisting of co-invasion waves, see [27, 38, 49, 54].

## Problems

6.5.1 Prove that the conclusion of assertion (a) of Theorem 6.4.1 holds also when $c_{1}=$ $2 \sqrt{r_{2}}$. Namely, the solution $u$ of (6.14) with nonnegative, nontrivial and compactly supported initial data satisfies

$$
\lim _{t \rightarrow \infty} \sup _{x \in \mathbb{R}} u(x, t)=0
$$

6.5.2 Show the remaining two cases of Theorem 6.4.5, where $c_{*}=2 \sqrt{r_{1}}$ or $c_{*}=$ $2 \sqrt{r_{2}}$.
6.5.3 In Section 6.4, we have proved Theorem 6.4.5 under the assumption that $r(x, t)$ satisfies (6.16), i.e. it is piecewise constant. Derive Theorem 6.4.5 for $r(x, t)=$ $g\left(x-c_{1} t\right)$ with arbitrary increasing function $g: \mathbb{R} \rightarrow \mathbb{R}$ such that $0<\inf g<\sup g$. [Hint: For each $\delta>0$, there exist $x_{\delta}$ and $y_{\delta}$ such that

$$
(\inf g-\delta)+\chi_{\left(x_{\delta}, \infty\right)}(\sup g-\inf g) \leq g(s) \leq(\inf g+\delta)+\chi_{\left(y_{\delta}, \infty\right)}(\sup g-\inf g)
$$

for all $s \in \mathbb{R}$.]

## References

1. D. G. Aronson, The asymptotic speed of propagation of a simple epidemic, in Nonlinear diffusion (NSF-CBMS Regional Conf. Nonlinear Diffusion Equations, Univ. Houston, Houston, Tex., 1976), 1977, pp. 1-23. Res. Notes Math., No. 14.
2. D. G. Aronson and H. F. Weinberger, Nonlinear diffusion in population genetics, combustion, and nerve pulse propagation, in Partial differential equations and related topics (Program, Tulane Univ., New Orleans, La., 1974), 1975, pp. 5-49. Lecture Notes in Math., Vol. 446.
3. ,-, Multidimensional nonlinear diffusion arising in population genetics, Adv. in Math., 30 (1978), pp. 33-76.
4. G. Barles, An introduction to the theory of viscosity solutions for first-order Hamilton-Jacobi equations and applications, in Hamilton-Jacobi equations: approximations, numerical analysis and applications, vol. 2074 of Lecture Notes in Math., Springer, Heidelberg, 2013, pp. 49-109.
5. H. Berestycki, O. Diekmann, C. J. Nagelkerke, and P. A. Zegeling, Can a species keep pace with a shifting climate?, Bull. Math. Biol., 71 (2009), pp. 399-429.
6. H. Berestycki and J. Fang, Forced waves of the Fisher-KPP equation in a shifting environment, J. Differential Equations, 264 (2018), pp. 2157-2183.
7. H. Berestycki, F. Hamel, and G. Nadin, Asymptotic spreading in heterogeneous diffusive excitable media, J. Funct. Anal., 255 (2008), pp. 2146-2189.
8. H. Berestycki and G. Nadin, Spreading speeds for one-dimensional monostable reactiondiffusion equations, J. Math. Phys., 53 (2012), pp. 115619, 23.
9. H. Berestycki and G. Nadin, Asymptotic spreading for general heterogeneous Fisher-KPP type equations, Mem. Amer. Math. Soc., (2022). (in press).
10. J. Bouhours and T. Giletti, Spreading and vanishing for a monostable reaction-diffusion equation with forced speed, J. Dynam. Differential Equations, 31 (2019), pp. 247-286.
11. J. Bouhours and G. Nadin, A variational approach to reaction-diffusion equations with forced speed in dimension 1, Discrete Contin. Dyn. Syst., 35 (2015), pp. 1843-1872.
12. M. Bramson, Convergence of solutions of the Kolmogorov equation to travelling waves, Mem. Amer. Math. Soc., 44 (1983), pp. iv+190.
13. C. Carrère, Spreading speeds for a two-species competition-diffusion system, J. Differential Equations, 264 (2018), pp. 2133-2156.
14. O. Diekmann, Run for your life. A note on the asymptotic speed of propagation of an epidemic, J. Differential Equations, 33 (1979), pp. 58-73.
15. A. Ducrot, T. Giletti, J.-S. Guo, and M. Shimojo, Asymptotic spreading speeds for a predator-prey system with two predators and one prey, Nonlinearity, 34 (2021), pp. 669-704.
16. A. Ducrot, T. Giletti, and H. Matano, Spreading speeds for multidimensional reactiondiffusion systems of the prey-predator type, Calc. Var. Partial Differential Equations, 58 (2019), p. 34. Paper No. 137.
17. L. C. Evans and P. E. Souganidis, A PDE approach to geometric optics for certain semilinear parabolic equations, Indiana Univ. Math. J., 38 (1989), pp. 141-172.
18. J. Fang, Y. Lou, and J. Wu, Can pathogen spread keep pace with its host invasion?, SIAM J. Appl. Math., 76 (2016), pp. 1633-1657.
19. J. Fang, X. Yu, and X.-Q. Zhao, Traveling waves and spreading speeds for time-space periodic monotone systems, J. Funct. Anal., 272 (2017), pp. 4222-4262.
20. G. Faye, T. Giletti, and M. Holzer, Asymptotic spreading for Fisher-KPP reaction-diffusion equations with heterogeneous shifting diffusivity, Discrete Contin. Dyn. Syst. Ser. S, 15 (2022), pp. 2467-2496.
21. R. A. Fisher, The wave of advance of advantageous genes, Annals of Eugenics, 7 (1937), pp. 355-369.
22. M. I. Freidlin, On wavefront propagation in periodic media, in Stochastic analysis and applications, vol. 7 of Adv. Probab. Related Topics, Dekker, New York, 1984, pp. 147-166.
23. J. Garnier, T. Giletti, F. Hamel, and L. Roques, Inside dynamics of pulled and pushed fronts, J. Math. Pures Appl. (9), 98 (2012), pp. 428-449.
24. J. Gertner and M. I. Freidlin, The propagation of concentration waves in periodic and random media, Dokl. Akad. Nauk SSSR, 249 (1979), pp. 521-525.
25. L. Girardin and K.-Y. Lam, Invasion of open space by two competitors: spreading properties of monostable two-species competition-diffusion systems, Proc. Lond. Math. Soc. (3), 119 (2019), pp. 1279-1335.
26. S. A. Gourley and J. Wu, Delayed non-local diffusive systems in biological invasion and disease spread, in Nonlinear dynamics and evolution equations, vol. 48 of Fields Inst. Commun., Amer. Math. Soc., Providence, RI, 2006, pp. 137-200.
27. J.-S. Guo and C.-H. Wu, Entire solutions originating from traveling fronts for a two-species competition-diffusion system, Nonlinearity, 32 (2019), pp. 3234-3268.
28. F. Hamel, J. Nolen, J.-M. Roquejoffre, and L. Ryzhik, A short proof of the logarithmic Bramson correction in Fisher-KPP equations, Netw. Heterog. Media, 8 (2013), pp. 275-289.
29. M. Holzer and A. Scheel, Accelerated fronts in a two-stage invasion process, SIAM J. Math. Anal., 46 (2014), pp. 397-427.
30. C. Hu, J. Shang, and B. Li, Spreading speeds for reaction-diffusion equations with a shifting habitat, J. Dynam. Differential Equations, 32 (2020), pp. 1941-1964.
31. H. Hu, T. Yi, and X. Zou, On spatial-temporal dynamics of a Fisher-KPP equation with a shifting environment, Proc. Amer. Math. Soc., 148 (2020), pp. 213-221.
32. H. Hu and X. Zou, Existence of an extinction wave in the Fisher equation with a shifting habitat, Proc. Amer. Math. Soc., 145 (2017), pp. 4763-4771.
33. M. Iida, R. Lui, and H. Ninomiya, Stacked fronts for cooperative systems with equal diffusion coefficients, SIAM J. Math. Anal., 43 (2011), pp. 1369-1389.
34. D. A. Jones, H. L. Smith, and H. R. Thieme, Spread of viral infection of immobilized bacteria, Netw. Heterog. Media, 8 (2013), pp. 327-342.
35. —, Spread of phage infection of bacteria in a petri dish, Discrete Contin. Dyn. Syst. Ser. B, 21 (2016), pp. 471-496.
36. D. A. Jones, H. L. Smith, H. R. Thieme, and G. Röst, On spread of phage infection of bacteria in a Petri dish, SIAM J. Appl. Math., 72 (2012), pp. 670-688.
37. A. N. Kolmogorov, I. G. Petrovskii, and N. S. Piskunov, Etude de l'équation de diffusion avec accroissement de la quantité de matière, et son application à un problème biologique, Bjul. Moskowskogo Gos. Univ., 17 (1937), pp. 1-26.
38. K.-Y. Lam, R. B. Salako, and Q. Wu, Entire solutions of diffusive Lotka-Volterra system, J. Differential Equations, 269 (2020), pp. 10758-10791.
39. K.-Y. Lam and X. Yu, Asymptotic spreading of KPP reactive fronts in heterogeneous shifting environments, 2021. To appear in J. Math. Pures Appl. arXiv:2101.06698 [math.AP].
40. M. A. Lewis, B. Li, and H. F. Weinberger, Spreading speed and linear determinacy for two-species competition models, J. Math. Biol., 45 (2002), pp. 219-233.
41. B. Li, S. Bewick, J. Shang, and W. F. Fagan, Persistence and spread of a species with a shifting habitat edge, SIAM J. Appl. Math., 74 (2014), pp. 1397-1417.
42. B. Li, H. F. Weinberger, and M. A. Lewis, Spreading speeds as slowest wave speeds for cooperative systems, Math. Biosci., 196 (2005), pp. 82-98.
43. W.-T. Li, J.-B. Wang, and X.-Q. Zhao, Spatial dynamics of a nonlocal dispersal population model in a shifting environment, J. Nonlinear Sci., 28 (2018), pp. 1189-1219.
44. X. Liang and X.-Q. Zhao, Asymptotic speeds of spread and traveling waves for monotone semiflows with applications, Comm. Pure Appl. Math., 60 (2007), pp. 1-40.
45. X. Liang and T. Zhou, Spreading speeds of nonlocal KPP equations in almost periodic media, J. Funct. Anal., 279 (2020), pp. 108723, 58.
46. G. Lin and W.-T. Li, Asymptotic spreading of competition diffusion systems: the role of interspecific competitions, European J. Appl. Math., 23 (2012), pp. 669-689.
47. Q. Liu, S. Liu, and K.-Y. Lam, Asymptotic spreading of interacting species with multiple fronts I: a geometric optics approach, Discrete Contin. Dyn. Syst., 40 (2020), pp. 3683-3714.
48. , Stacked invasion waves in a competition-diffusion model with three species, J. Differential Equations, 271 (2021), pp. 665-718.
49. Y. Morita and K. Tachibana, An entire solution to the Lotka-Volterra competition-diffusion equations, SIAM J. Math. Anal., 40 (2009), pp. 2217-2240.
50. J. Nolen, J.-M. Roquejoffre, and L. Ryzhik, Convergence to a single wave in the Fisher-KPP equation, Chinese Ann. Math. Ser. B, 38 (2017), pp. 629-646.
51. A. B. Potapov and M. A. Lewis, Climate and competition: the effect of moving range boundaries on habitat invasibility, Bull. Math. Biol., 66 (2004), pp. 975-1008.
52. M. H. Protter and H. F. Weinberger, Maximum principles in differential equations, Springer-Verlag, New York, 1984. Corrected reprint of the 1967 original.
53. L. Rass and J. Radcliffe, Spatial deterministic epidemics, vol. 102 of Mathematical Surveys and Monographs, American Mathematical Society, Providence, RI, 2003.
54. R. B. Salako, Invasion entire solutions for two-species diffusive monostable competitive systems, Nonlinear Anal. Real World Appl., 59 (2021), p. 37. Paper No. 103264.
55. W. Shen, Variational principle for spreading speeds and generalized propagating speeds in time almost periodic and space periodic KPP models, Trans. Amer. Math. Soc., 362 (2010), pp. 5125-5168.
56. N. Shigesada and K. Kawasaki, Biological invasions: theory and practice, Oxford University Press, UK, 1997.
57. H. R. Thieme, Asymptotic estimates of the solutions of nonlinear integral equations and asymptotic speeds for the spread of populations, J. Reine Angew. Math., 306 (1979), pp. 94121.
58. H. R. Thieme and X.-Q. Zhao, Asymptotic speeds of spread and traveling waves for integral equations and delayed reaction-diffusion models, J. Differential Equations, 195 (2003), pp. 430-470.
59. J.-B. Wang, W.-T. Li, F.-D. Dong, and S.-X. Qiao, Recent developments on spatial propagation for diffusion equations in shifting environments, Discrete Contin. Dyn. Syst. Ser. B, 27 (2022), pp. 5101-.
60. J.-B. Wang and C. Wu, Forced waves and gap formations for a Lotka-Volterra competition model with nonlocal dispersal and shifting habitats, Nonlinear Anal. Real World Appl., 58 (2021), p. 19. Paper No. 103208.
61. J.-B. Wang and X.-Q. Zhao, Uniqueness and global stability of forced waves in a shifting environment, Proc. Amer. Math. Soc., 147 (2019), pp. 1467-1481.
62. Z.-C. Wang, W.-T. Li, and S. Ruan, Travelling wave fronts in reaction-diffusion systems with spatio-temporal delays, J. Differential Equations, 222 (2006), pp. 185-232.
63. H. F. Weinberger, Long-time behavior of a class of biological models, SIAM J. Math. Anal., 13 (1982), pp. 353-396.
64. —, On spreading speeds and traveling waves for growth and migration models in a periodic habitat, J. Math. Biol., 45 (2002), pp. 511-548.
65. Z. Xu and D. Xiao, Spreading speeds and uniqueness of traveling waves for a reaction diffusion equation with spatio-temporal delays, J. Differential Equations, 260 (2016), pp. 268-303.
66. Q. X. Ye, Z. Y. Li, M. Wang, and Y. Wu, Introduction to Reaction-Diffusion Equations (Chinese), Foundations of Modern Mathematics Series, Science Press, Beijing, second ed., 2011.
67. T. Yi, Y. Chen, and J. Wu, Asymptotic propagations of asymptotical monostable type equations with shifting habitats, J. Differential Equations, 269 (2020), pp. 5900-5930.
68. T. Yi and X.-Q. Zhao, Propagation dynamics for monotone evolution systems without spatial translation invariance, J. Funct. Anal., 279 (2020), pp. 108722, 50.

## Chapter 7

## The Lotka-Volterra Competition-Diffusion Systems for Two Species


#### Abstract

In this chapter we study the Lotka-Volterra competition-diffusion models for two species in bounded domains. As these reaction-diffusion systems are orderpreserving, we first cast them into the setting of strongly monotone dynamical systems and derive some general conclusions that hold for such systems. Next, the global dynamics of the Lotka-Volterra system with constant coefficients are studied, via the Lyapunov functions and LaSalle's invariance principle. For the Lotka-Volterra system with heterogeneous coefficients, the global dynamics of the system with weak intraspecific competitions are characterized when the diffusion rates for two species are both small or large. When two species are identical except for their diffusion rates, it is shown that the species with the slower diffusion drives its competitor to extinction; this phenomenon is termed "evolution of slow dispersal" in the literature. For some weak competition cases with general diffusion rates, the full dynamics of the system is completely characterized. In particular, it is proved that one of the species is able to drive the other species to extinction for arbitrary initial conditions, even though without diffusion two species could always coexist. Finally, we consider the two-species competition model in rivers and prove that the species with the faster diffusion drives its competitor to extinction, in strong contrast with the "evolution of slow dispersal" phenomenon.


### 7.1 Elements from the Theory of Monotone Dynamical Systems

Consider

$$
\begin{cases}u_{t}+\mathcal{L}_{1} u=u\left(a_{1}(x)-b_{1}(x) u-c_{1}(x) v\right) & \text { in } \Omega \times(0, \infty),  \tag{7.1}\\ v_{t}+\mathcal{L}_{2} v=v\left(a_{2}(x)-b_{2}(x) u-c_{2}(x) v\right) & \text { in } \Omega \times(0, \infty), \\ \mathcal{B}_{1} u=\mathcal{B}_{2} v=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) \quad \text { and } \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\mathcal{L}_{k}=-\tilde{a}_{k}^{i j}(x) D_{i j}+\tilde{b}_{k}^{j}(x) D_{j}$ is a non-divergence form uniformly elliptic operator with Hölder continuous coefficients, and $\mathcal{B}_{k}=p_{k}^{j} D_{j}+p_{k}^{0}$ is an oblique derivative operator on $\partial \Omega$, such that

$$
n_{j} p_{k}^{j}>0, \quad \text { and } \quad p_{k}^{0} \geq 0 \quad \text { on } \partial \Omega
$$

where $\mathbf{n}(x)=\left(n_{j}(x)\right)_{j=1}^{N}$ is the outer unit normal vector on $\partial \Omega$. All other coefficients are assumed to be smooth and satisfy the competition hypotheses

$$
b_{k}>0, \quad c_{k}>0 \quad \text { in } \bar{\Omega} .
$$

The functions $u$ and $v$ represent the population densities of two competing species, $a_{i}$ denotes their respective carrying capacities, $b_{1}, c_{2}$ account for self-regulation of each species, and $b_{2}, c_{1}$ account for interspecific competition.

With the special case $\mathcal{L}_{i}=-d_{i} \Delta$ in mind, the model (7.1) is referred to in the literature as the diffusive Lotka-Volterra model for two competing species [7].

For $i=1,2$, let $\tilde{\mu}_{i}$ and $\tilde{\phi}_{i}>0$ be the principal eigenvalue and eigenfunction of

$$
\begin{equation*}
\mathcal{L}_{i} \tilde{\phi}=a_{i} \tilde{\phi}+\tilde{\mu}_{i} \tilde{\phi} \quad \text { in } \Omega, \quad \mathcal{B}_{i} \tilde{\phi}=0 \quad \text { on } \partial \Omega . \tag{7.2}
\end{equation*}
$$

We always assume in this chapter that $\tilde{\mu}_{i}<0$ for $i=1,2$. In this case, Theorem 5.2.2 guarantees that the system (7.1) has a trivial equilibrium $E_{0}=(0,0)$, and two semi-trivial equilibria $E_{1}=(\tilde{u}, 0)$ and $E_{2}=(0, \tilde{v})$, where $\tilde{u}$ and $\tilde{v}$ are, respectively, the unique positive solution to

$$
\begin{equation*}
\mathcal{L}_{1} \tilde{u}=\tilde{u}\left(a_{1}-b_{1} \tilde{u}\right) \quad \text { in } \Omega, \quad \mathcal{B}_{1} \tilde{u}=0 \quad \text { on } \partial \Omega, \tag{7.3}
\end{equation*}
$$

and

$$
\begin{equation*}
\mathcal{L}_{2} \tilde{v}=\tilde{v}\left(a_{2}-c_{2} \tilde{v}\right) \text { in } \Omega, \quad \mathcal{B}_{2} \tilde{v}=0 \quad \text { on } \partial \Omega . \tag{7.4}
\end{equation*}
$$

Also, we call $E^{*}=\left(u^{*}, v^{*}\right)$ a positive equilibrium if $u^{*}>0$ and $v^{*}>0$ in $\bar{\Omega}$.
Lemma 7.1.1 Let $E_{1}=(\tilde{u}, 0)$ and $E_{2}=(0, \tilde{v})$.

1. The equilibrium $E_{1}$, if it exists, is linearly unstable (resp. linearly stable) if and only if $\mu_{E_{1}}<0$ (resp. $\mu_{E_{1}}>0$ ), where $\mu_{E_{1}}$ is the principal eigenvalue of

$$
\begin{equation*}
\mathcal{L}_{2} \phi=\phi\left(a_{2}-b_{2} \tilde{u}\right)+\mu \phi \quad \text { in } \Omega, \quad \mathcal{B}_{2} \phi=0 \quad \text { on } \partial \Omega . \tag{7.5}
\end{equation*}
$$

2. Symmetrically, the equilibrium $E_{2}$, if it exists, is linearly unstable (resp. linearly stable) if and only if $\mu_{E_{2}}<0$ (resp. $\mu_{E_{2}}>0$ ), where $\mu_{E_{2}}$ is the principal eigenvalue of

$$
\begin{equation*}
\mathcal{L}_{1} \phi=\phi\left(a_{1}-c_{1} \tilde{v}\right)+\mu \phi \text { in } \Omega, \quad \mathcal{B}_{1} \phi=0 \text { on } \partial \Omega . \tag{7.6}
\end{equation*}
$$

Proof We will only prove assertion 1, as assertion 2 follows from a symmetric argument. The linear stability of ( $\tilde{u}, 0$ ) is determined by the following linearized eigenvalue problem:

$$
\begin{cases}\mathcal{L}_{1} \varphi=\left(a_{1}-2 b_{1} \tilde{u}\right) \varphi-c_{1} \tilde{u} \psi+\lambda \varphi & \text { in } \Omega  \tag{7.7}\\ \mathcal{L}_{2} \psi=\left(a_{2}-b_{2} \tilde{u}\right) \psi+\lambda \psi & \text { in } \Omega \\ \mathcal{B}_{1} \varphi=\mathcal{B}_{2} \psi=0 & \text { on } \partial \Omega\end{cases}
$$

By Theorem 3.3.2, the system (7.7) has a principal eigenvalue $\lambda_{1} \in \mathbb{R}$ such that ( $\tilde{u}, 0$ ) is linearly unstable (resp. stable) if $\lambda_{1}<0$ (resp. $\lambda_{1}>0$ ). It remains to show that $\operatorname{sign}\left(\lambda_{1}\right)=\operatorname{sign}\left(\mu_{E_{1}}\right)$.

Step 1. We claim that the principal eigenvalue $\tilde{\mu}$ of

$$
\begin{cases}\mathcal{L}_{1} \tilde{\phi}=\left(a_{1}-2 b_{1} \tilde{u}\right) \tilde{\phi}+\mu \tilde{\phi} & \text { in } \Omega  \tag{7.8}\\ \mathcal{B}_{1} \tilde{\phi}=p_{1}^{j} D_{j} \tilde{\phi}+p_{1}^{0} \tilde{\phi}=0 & \text { on } \partial \Omega\end{cases}
$$

is positive. Indeed, $\tilde{\mu}$ exists thanks to Theorem 1.3.6. Moreover, $\tilde{\mu}>0$ follows by applying Lemma 1.3.12 with $(\underline{\mu}, w)=(0, \tilde{u})$, where $\tilde{u}$ is the unique positive solution of (7.3).

Step 2. Suppose that $\mu_{E_{1}}>0$. Let $\lambda_{1}$ be the principal eigenvalue of (7.7) with eigenfunction $\varphi_{1} \geq 0 \geq \psi_{1}$ where at least one of them is nontrivial. If $\psi_{1} \not \equiv 0$, then $\lambda_{1}$ is an eigenvalue of (7.5) and we automatically have $\lambda_{1} \geq \mu_{E_{1}}>0$. If $\psi_{1} \equiv 0$, then $\lambda_{1}$ is an eigenvalue of (7.8). Since the principal eigenvalue $\tilde{\mu}$ of (7.8) is positive, we thus have $\lambda_{1} \geq \tilde{\mu}>0$. This proves the case $\mu_{E_{1}}>0$.

Step 3. Consider the inhomogeneous problem

$$
\begin{cases}\mathcal{L}_{1} w=\left(a_{1}-2 b_{1} \tilde{u}\right) w+\mu w+f & \text { in } \Omega  \tag{7.9}\\ \mathcal{B}_{1} w=p_{1}^{j} D_{j} w+p_{1}^{0} w=0 & \text { on } \partial \Omega\end{cases}
$$

We claim that for each $\mu \leq 0$ and $f \in C^{\alpha}(\bar{\Omega})$, there exists a unique $w=T_{\mu}[f] \in$ $C^{2+\alpha}(\bar{\Omega})$ which satisfies (7.9). Furthermore, $w>0$ in $\bar{\Omega}$ if $f \geq \not \equiv 0$ in $\Omega$.

Indeed, (7.8) has no nonpositive eigenvalue, so $w=T_{\mu}[f]$ is well-defined for $\mu \leq 0$ by the Fredholm alternative. Moreover, $w \in C^{2+\alpha}(\bar{\Omega})$ thanks to Schauder estimates [21, Chapter 6]. To see that $w>0$ in $\bar{\Omega}$, we write $w=\phi z$, where $\phi$ is a positive eigenfunction of (7.8). Then $z$ satisfies

$$
\begin{cases}\mathcal{L}_{2} z-\frac{1}{\phi}\left(a_{1}^{i j} D_{i} \phi\right) D_{j} z+(\tilde{\mu}-\mu) z=f \geq 0 & \text { in } \Omega \\ p_{1}^{j} D_{j} z=0 & \text { on } \partial \Omega\end{cases}
$$

Since $\tilde{\mu}-\mu>0$, it follows from the classical maximum principle that $z \geq 0$ in $\Omega$ if $f \geq 0$ in $\Omega$, and $z>0$ in $\bar{\Omega}$ if $f \geq, \not \equiv 0$.

Step 4. Now, suppose the principal eigenvalue $\mu_{E_{1}}$ of (7.5) is nonpositive and denote by $\phi_{1}$ its associated positive eigenfunction. We can now observe that $\mu_{E_{1}}$ is an eigenvalue of (7.7) with eigenfunction $\left(\varphi_{1}, \psi_{1}\right)=\left(T_{\mu_{E_{1}}}\left[c_{1} \tilde{u} \phi_{1}\right],-\phi_{1}\right)$. We claim that $\mu_{E_{1}}$ is the eigenvalue with the least real part. Indeed, if $\lambda^{\prime}$ is an eigenvalue of (7.7) with eigenfunction $(\varphi, \psi)$. If $\psi \not \equiv 0$, then $\lambda^{\prime}$ is an eigenvalue of (7.5), and hence
$\operatorname{Re} \lambda^{\prime} \geq \mu_{E_{1}}$. If $\psi \equiv 0$, then $\lambda^{\prime}$ is an eigenvalue of (7.8), whence $\operatorname{Re} \lambda^{\prime} \geq \tilde{\mu}>0$. In conclusion, when the principal eigenvalue $\mu_{E_{1}}$ of (7.5) is nonpositive, it is also the eigenvalue of (7.7) with the least real part. In conclusion, the principal eigenvalue $\lambda_{1}$ of (7.7) is given by $\lambda_{1}=\mu_{E_{1}} \leq 0$.

Theorem 7.1.2 Suppose that (7.1) has no positive equilibria.

1. If $\underline{E_{1}}=(\tilde{u}, 0)$ is linearly unstable, then $(u, v) \rightarrow(0, \tilde{v})$ whenever $\left(u_{0}, v_{0}\right) \in$ $C\left(\bar{\Omega} ; \mathbb{R}_{+}^{2}\right)$ and $v_{0} \not \equiv 0$.
2. If $\underline{E_{2}}=(0, \tilde{v})$ is linearly unstable, then $(u, v) \rightarrow(\tilde{u}, 0)$ whenever $\left(u_{0}, v_{0}\right) \in$ $C\left(\bar{\Omega} ; \mathbb{R}_{+}^{2}\right)$ and $u_{0} \not \equiv 0$.

Proof We present a direct proof of assertion 1 due to [39]. The proof of assertion 2 is similar and is omitted. Recall that $E_{1}=(\tilde{u}, 0)$ and let $\phi$ be the positive eigenfunction of (7.5). Define

$$
\left(\bar{u}_{0}, \underline{v}_{0}\right)=((1+\epsilon) \tilde{u}, \delta \phi)
$$

and write $f_{i}(x, u, v)=a_{i}(x)-b_{i}(x) u-c_{i}(x) v$.
Step 1. There exists an $\epsilon_{0}>0$ such that for $\delta, \epsilon \in\left(0, \epsilon_{0}\right],\left(\bar{u}_{0}, \underline{v}_{0}\right)$ is a supersolution. Defining $f_{i}(x, u, v)=a_{i}(x)-b_{i}(x) u-c_{i}(x) v$, we proceed by a direct computation.

$$
\begin{aligned}
& -\mathcal{L}_{1}[(1+\epsilon) \tilde{u}]+(1+\epsilon) \tilde{u} f_{1}(x,(1+\epsilon) \tilde{u}, \delta \phi) \\
& =(1+\epsilon)\left[-\mathcal{L}_{1} \tilde{u}+\tilde{u} f_{1}(x,(1+\epsilon) \tilde{u}, \delta \phi)\right] \\
& =(1+\epsilon) \tilde{u}\left[-f_{1}(x, \tilde{u}, 0)+f_{1}(x,(1+\epsilon) \tilde{u}, \delta \phi)\right] \leq 0
\end{aligned}
$$

where the last inequality is due to $f_{1}$ being decreasing in $u$ and $v$. Also,

$$
\begin{aligned}
& -\mathcal{L}_{2}[\delta \phi]+\delta \phi f_{2}(x,(1+\epsilon) \tilde{u}, \delta \phi) \\
& =\delta\left[-\mathcal{L}_{2} \phi+\phi f_{2}(x,(1+\epsilon) \tilde{u}, \delta \phi)\right] \\
& =\delta \phi\left[-f_{2}(x, \tilde{u}, 0)-\mu_{E_{1}}+f_{2}(x,(1+\epsilon) \tilde{u}, \delta \phi)\right] \\
& =\delta \phi\left[-\mu_{E_{1}}+O(|\delta|+|\epsilon|)\right] \geq 0
\end{aligned}
$$

provided that $\delta$ and $\epsilon$ are both sufficiently small.
Step 2. Let $(\bar{u}, \underline{v})$ be the solution to (7.1) with initial data $((1+\epsilon) \tilde{u}, \delta \phi)$ for some $\epsilon, \delta \in\left(0, \epsilon_{0}\right]$, then $(\bar{u}, \underline{v}) \rightarrow(0, \tilde{v})$ as $t \rightarrow \infty$.

Indeed, since $\bar{u}$ and $\underline{v}$ are monotone in $t$, we have $(\bar{u}, \underline{v}) \rightarrow\left(\bar{u}_{\infty}, \underline{v}_{\infty}\right)$, where ( $\bar{u}_{\infty}, \underline{v}_{\infty}$ ) is a nonnegative equilibrium of (7.1) satisfying

$$
\bar{u}_{\infty}(x) \leq(1+\epsilon) \tilde{u}(x) \quad \text { and } \quad \underline{v}_{\infty}(x) \geq \delta \phi(x)>0
$$

The nonexistence of positive equilibrium implies that $\left(\bar{u}_{\infty}, \underline{v}_{\infty}\right)=(0, \tilde{v})$.
Step 3. Let $(u, v)$ be a solution of (7.1) such that $v_{0} \geq, \equiv 0$. We derive a rough estimate of ( $u, v$ ).

$$
\begin{equation*}
\limsup _{t \rightarrow \infty} \sup _{\Omega}(u(x, t)-\tilde{u}(x)) \leq 0 \quad \text { and } \quad \limsup _{t \rightarrow \infty} \sup _{\Omega}(v(x, t)-\tilde{v}(x)) \leq 0 . \tag{7.10}
\end{equation*}
$$

To this end, choose $M>0$ such that $u(x, 0) \leq(1+M) \tilde{u}(x)$ in $\bar{\Omega}$. This is possible since $\inf _{\Omega} \tilde{u}>0$. Next, observe that the pair of functions

$$
u(x, t) \quad \text { and } \quad \bar{u}(x, t):=\frac{M}{1+t M \inf _{\Omega}\left(b_{1} \tilde{u}\right)} \tilde{u}(x)+\tilde{u}(x)
$$

form a pair of sub- and superequilibria of

$$
\begin{cases}\vartheta_{t}+\mathcal{L}_{1} \vartheta=\vartheta\left(a_{1}-b_{1} \vartheta\right) & \text { in } \Omega \times(0, \infty) \\ \mathcal{B}_{1} \vartheta=0 & \text { on } \partial \Omega \times(0, \infty)\end{cases}
$$

and that $u(x, 0) \leq \bar{u}(x, 0)$ by our choice of $M$. By comparison, we deduce the first part of (7.10). The second part of (7.10) is analogous.

Step 4. Let $(u, v)$ be a solution of (7.1) such that $v_{0} \geq, \equiv 0$. If $u_{0} \equiv 0$, then $u \equiv 0$ in $\bar{\Omega} \times(0, \infty)$ and it follows from Theorem 5.2.2 that $(u, v) \rightarrow(0, \tilde{v})$. Suppose $u_{0} \geq, \equiv 0, v_{0} \geq, \not \equiv 0$. By the strong maximum principle, $u(x, t)>0$ and $v(x, t)>0$ in $\bar{\Omega} \times(0, \infty)$. Moreover, Step 2 implies that there is a $T_{0}>0$ such that $0 \leq u\left(x, T_{0}\right) \leq\left(1+\epsilon_{0}\right) \tilde{u}$ for $x \in \Omega$. Since $v\left(x, T_{0}\right)>0$ in $\bar{\Omega}$, we may take $\delta \in\left(0, \epsilon_{0}\right]$ such that $v\left(x, T_{0}\right) \geq \delta \phi(x)$ in $\Omega$. Consider the two sets of solutions $(u, v)\left(x, t+T_{0}\right)$ and $(\bar{u}, \underline{v})$ of (7.1) with initial data $\left(u_{0}, v_{0}\right)$ and $\left(\left(1+\epsilon_{0}\right) \tilde{u}, \delta \phi\right)$ respectively. Since they are ordered at $t=0$, we can apply the comparison principle to $(u, v)\left(x, t+T_{0}\right)$ and $(\bar{u}, \underline{v})(x, t)$ to get

$$
\limsup _{t \rightarrow \infty} \sup _{\Omega} u(x, t) \leq 0, \quad \text { and } \quad \liminf _{t \rightarrow \infty} \inf _{\Omega}(v(x, t)-\tilde{v}(x)) \geq 0,
$$

where we used $(\bar{u}, \underline{v}) \rightarrow(0, \tilde{v})$ by Step 3. Combining with (7.10), we deduce that $(u, v) \rightarrow(0, \tilde{v})$. This completes the proof.

In the preceding result, we see that for Lotka-Volterra systems, the nonexistence of positive equilibria combined with the instability of $E_{1}$ implies that $E_{2}$ attracts all nontrivial solutions. This is true for a general class of abstract competitive systems; see Proposition E.2.7.

Can we weaken the assumption further? For more general competitive systems such as

$$
\begin{cases}u_{t}+\mathcal{L}_{1} u=u f_{1}(x, u, v) & \text { in } \Omega \times(0, \infty),  \tag{7.11}\\ v_{t}+\mathcal{L}_{2} v=v f_{2}(x, u, v) & \text { in } \Omega \times(0, \infty), \\ \mathcal{B}_{1} u=\mathcal{B}_{2} v=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) \quad \text { and } \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where

$$
\frac{\partial f_{i}}{\partial u}(x, u, v)<0 \quad \text { and } \quad \frac{\partial f_{i}}{\partial v}(x, u, v)<0 \quad \text { for } x \in \bar{\Omega}, u, v \in(0, \infty)
$$

the associated semiflow preserves the competitive order (see Theorem 3.3.4), and yet the nonexistence of positive equilibrium alone does not imply the global attractivity of $E_{1}$ or $E_{2}$ among all nonnegative, nontrivial solutions. Indeed, for competitive systems satisfying (H1')-(H4') (which is recalled below), a general theorem due to Hsu et al. [37] (see Theorem E.2.5) asserts that, in the absence of positive equilibria, every trajectory initiating in $I=\left\{\left(u_{0}, v_{0}\right): 0<u_{0} \leq \tilde{u}, 0<v_{0} \leq \tilde{v}\right\}$ converges to the same boundary equilibrium, say $E_{1}$. However, the same boundary equilibrium may fail to be globally attractive with respect to all nonnegative, nontrivial data. See Problem 7.5.1 for a counterexample. Fortunately, such a pathological situation does not happen for Lotka-Volterra systems. In Appendix E, we slightly strengthen the trichotomy result in [37] by proposing the condition (H5'). As we will see below, the Lotka-Volterra systems satisfy all conditions (H1')-(H5') and thus enjoy a stronger trichotomy result; see Theorem 7.1.6, which is based on Theorem E.2.13 of Appendix E. (The readers who are not interested in the theory of monotone dynamical systems may wish to skip to Section 7.2.) For this purpose, let

$$
\left\{\begin{array}{l}
X=X_{1} \times X_{2}=C(\bar{\Omega}) \times C(\bar{\Omega}), \quad C=C_{1} \times C_{2}=C\left(\bar{\Omega} ; \mathbb{R}_{+}\right) \times C\left(\bar{\Omega} ; \mathbb{R}_{+}\right), \\
K=X_{1}^{+} \times\left(-X_{2}^{+}\right)=C\left(\bar{\Omega} ; \mathbb{R}_{+}\right) \times\left(-C\left(\bar{\Omega} ; \mathbb{R}_{+}\right)\right),
\end{array}\right.
$$

so that $X$ is a Banach space with an order induced by $K$, and consider the semiflow $\Phi_{t}=\left(\Phi_{t}^{(1)}, \Phi_{t}^{(2)}\right): C \rightarrow C$ generated by (7.1). We now recall (H1')-(H5') from Appendix E.
(H1') $\Phi_{t}$ is order compact ${ }^{1}$ for each $t>0$ and strictly monotone with respect to $<_{K}$. That is, $\left(u_{0}, v_{0}\right)<_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right)$ implies $\Phi_{t}\left(u_{0}, v_{0}\right)<_{K} \Phi_{t}\left(\bar{u}_{0}, \bar{v}_{0}\right)$.
(H2') For each $t>0$, there exist maps $\eta: C \rightarrow X$ and $f_{i}: C_{i} \rightarrow C_{i}(i=1,2)$ such that

$$
\Phi_{t}\left(u_{0}, v_{0}\right)=\left(f_{1}\left(u_{0}\right), f_{2}\left(v_{0}\right)\right)+\eta\left(u_{0}, v_{0}\right)
$$

where $\|\eta(x)\| /\|x\| \rightarrow 0$ as $\|x\| \rightarrow 0$ and, for $i=1,2, f_{i}$ is compact, positively homogeneous of degree one, strongly monotone with respect to the order generated by $C_{i}$, and its Bonsall cone spectral radius ${ }^{2}$ satisfies $\tilde{r}_{C_{i}}\left(f_{i}\right)>1$.
(H3') $\Phi_{t}\left(C_{1} \times\{0\}\right) \subset C_{1} \times\{0\}$ for $t \geq 0$. There exists a $\tilde{u} \in \operatorname{Int} C_{1}$ such that $E_{1}=(\tilde{u}, 0)$ is an equilibrium of $\Phi_{t}$, and $\Phi_{t}\left(u_{0}, 0\right) \rightarrow(\tilde{u}, 0)$ as $t \rightarrow \infty$ for every $u_{0} \in C_{1} \backslash\{0\}$. The symmetric conditions hold for $\Phi_{t}$ on $\{0\} \times C_{2}$, where the equilibrium is denoted by $E_{2}=(0, \tilde{v})$.
(H4') If $\left(u_{0}, v_{0}\right),\left(\bar{u}_{0}, \bar{v}_{0}\right) \in C$ satisfy $\left(u_{0}, v_{0}\right)<_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right)$ and at least one of them belongs to Int $C$, then $\Phi_{t}\left(u_{0}, v_{0}\right) \ll{ }_{K} \Phi_{t}\left(\bar{u}_{0}, \bar{v}_{0}\right)$ for $t>0$. If $\left(u_{0}, v_{0}\right) \in C$ satisfies $u_{0} \neq 0$ and $v_{0} \neq 0$, then $\Phi_{t}\left(u_{0}, v_{0}\right) \in \operatorname{Int} C$ for $t>0$.
(H5') For each $t>0, \Phi_{t}$ is continuously differentiable, and the map $D \Phi_{t}\left(E_{2}\right)$ : $X \rightarrow X$ is compact and $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)<1$ for all $t>0$. If $r\left(D \Phi_{\tau}\left(E_{2}\right)\right) \geq 1$ for some $\tau$, then we also have

[^5]$$
D \Phi_{\tau}\left(E_{2}\right)[\phi, \psi] \geq_{K}(\phi, \psi) \quad \text { for some } \phi, \psi \in \operatorname{Int} C_{1} \times\left(-\operatorname{Int} X_{2}^{+}\right) .
$$

A symmetric condition holds for $D \Phi_{t}\left(E_{1}\right)$.
Here $\Phi_{t}\left(u_{0}, v_{0}\right)=\left(\Phi_{t}^{(1)}\left(u_{0}, v_{0}\right), \Phi_{t}^{(2)}\left(u_{0}, v_{0}\right)\right) \in X_{1} \times X_{2}$ and $D_{2} \Phi_{t}^{(2)}$ is the Fréchet derivative of $\Phi_{t}^{(2)}$ with respect to the second component of the input variables.

Lemma 7.1.3 The semiflow $\Phi_{t}: C \rightarrow C$ generated by (7.1) is continuously differentiable, and satisfies the conditions (H1')-(H5').

Remark 7.1.4 Another example of a competitive system that satisfies (H1')-(H5') is the two-species phytoplankton model, which is a system of integro-PDEs modeling phytoplankton populations engaging in competition for light via mutual shading; see Chapter 8.

Proof (of Lemma 7.1.3) Now, (H1') and (H4') follow directly from the strong comparison principle of (7.1).

Next, notice that the semiflow operator is continuously differentiable. Furthermore, if ( $\tilde{u}, \tilde{v}$ ) is an equilibrium of $\Phi_{t}$, then $D \Phi_{t}(\tilde{u}, \tilde{v}): X \rightarrow X$ is given by $D \Phi_{t}(\tilde{u}, \tilde{v})\left[p_{0}, q_{0}\right]=(p(\cdot, t), q(\cdot, t))$, where $(p, q)$ is the unique solution of the linear parabolic system

$$
\begin{cases}p_{t}+\mathcal{L}_{1} p=\left(a_{1}-2 b_{1} \tilde{u}-c_{1} \tilde{v}\right) p-c_{1} \tilde{u} q & \text { in } \Omega \times(0, \infty),  \tag{7.12}\\ q_{t}+\mathcal{L}_{2} q=-b_{2} \tilde{v} p+\left(a_{2}-b_{2} \tilde{u}-2 c_{2} \tilde{v}\right) q & \text { in } \Omega \times(0, \infty), \\ \mathcal{B}_{1} p=\mathcal{B}_{2} q=0 & \text { on } \partial \Omega \times(0, \infty), \\ p(x, 0)=p_{0}(x), \quad q(x, 0)=q_{0}(x) & \text { in } \Omega .\end{cases}
$$

To verify condition (H2'), set ( $\tilde{u}, \tilde{v}$ ) = ( 0,0 ) in (7.12) so that the system decouples. Next, observe that

$$
D \Phi_{t}(0,0)\left[p_{0}, q_{0}\right]=\left(f_{1}\left(p_{0}\right), f_{2}\left(q_{0}\right)\right)=\left(\mathrm{e}^{t\left(-\mathcal{L}_{1}+a_{1}\right)}\left[p_{0}\right], \mathrm{e}^{t\left(-\mathcal{L}_{2}+a_{2}\right)}\left[q_{0}\right]\right),
$$

where $\mathrm{e}^{t\left(-\mathcal{L}_{i}+a_{i}\right)}$ denotes the analytic semigroup generated by $\psi_{t}+\mathcal{L}_{i} \psi=a_{i} \psi$ in the space $C(\bar{\Omega})$, such that the solution respects the appropriate boundary condition in positive time. For $i=1,2$, let $\tilde{\mu}_{i}$ and $\tilde{\phi}_{i}(x)>0$ be the principal eigenvalues and eigenfunctions of (7.2). Then $f_{i}\left(\tilde{\phi}_{i}\right)=\mathrm{e}^{-\tilde{\mu}_{i} t} \tilde{\phi}_{i}$. Since $f_{i}$ is linear and strictly positive in $C(\bar{\Omega})$ and since we enforce the condition $\mu_{i}<0$ in this chapter, it follows from the strong form of the Krein-Rutman Theorem (Theorem B.3.2) that $r\left(f_{i}\right)=\mathrm{e}^{-\tilde{\mu}_{i} t}>1$. This verifies (H2'), in view of Remark E.2.1. (H3') follows from Theorem 5.2.2 and the fact that $\mu_{i}<0$.

We will verify the first part of (H5') using Lemma E.2.10. For that purpose, observe that for $i=1,2, D_{i} \Phi_{t}^{(i)}\left(E_{2}\right)$ is again an analytic semigroup generated by certain linear elliptic operators, so they are automatically compact and strongly monotone with respect to $X_{i}^{+}=C_{i}$. Moreover, $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)=\mathrm{e}^{-\tilde{\mu} t}$, where $\tilde{\mu}$ is the principal eigenvalue of

$$
\mathcal{L}_{2} \tilde{\phi}=\left(a_{2}-2 c_{2} \tilde{v}\right) \tilde{\phi}+\tilde{\mu} \tilde{\phi} \quad \text { in } \Omega, \quad \mathcal{B}_{2} \tilde{\phi}=0 \quad \text { on } \partial \Omega .
$$

Arguing as in Step 1 in the proof of Lemma 7.1.1, $\tilde{\mu}>0$, so that $r\left(D_{1} \Phi_{t}^{(1)}\left(E_{1}\right)\right)=$ $\mathrm{e}^{-\tilde{\mu} t}<1$. This verifies the first two hypotheses of Lemma E.2.10. The last hypothesis, which translates to $D_{1} \Phi_{t}^{(2)}\left(E_{2}\right)\left[p_{0}\right] \neq 0$ for $p_{0} \in C(\bar{\Omega}), p_{0}>0$ in $\bar{\Omega}$, holds since $c_{1}, b_{2}>0$ in $\bar{\Omega}$. Now, we can invoke Lemma E.2.10 to conclude that the first part of (H5') concerning $D \Phi_{t}\left(E_{2}\right)$ holds. The second part of (H5') concerning $D \Phi_{t}\left(E_{1}\right)$ holds by a symmetric argument.

Denote $[0, \infty)$ by $\mathbb{R}_{+}$, and let

$$
K=C\left(\bar{\Omega} ; \mathbb{R}_{+}\right) \times\left[-C\left(\bar{\Omega} ; \mathbb{R}_{+}\right)\right]
$$

In the following, the partial order $\left(u_{0}, v_{0}\right) \leq_{K}\left(u_{0}^{\prime}, v_{0}^{\prime}\right)\left(\right.$ resp. $\left.<_{K}, \ll_{K}\right)$ holds if and only if $\left(u_{0}^{\prime}-u_{0}, v_{0}^{\prime}-v_{0}\right) \in K$ (resp. $\in K \backslash\{(0,0)\}, \in \operatorname{Int} K$ ). For example, $\left(u_{0}, v_{0}\right) \leq_{K}\left(u_{0}^{\prime}, v_{0}^{\prime}\right)$ if $u_{0} \leq u_{0}^{\prime}$ and $v_{0} \geq v_{0}^{\prime}$ in $\Omega$.

Theorem 7.1.5 (Compression result) If the semitrivial equilibria $E_{1}$ and $E_{2}$ are linearly unstable (i.e. the principal eigenvalues $\mu_{E_{1}}, \mu_{E_{2}}$ of (7.5) and (7.6) are both negative), then (7.1) has positive equilibria $E_{*}=\left(u_{*}, v_{*}\right)$ and $E^{*}=\left(u^{*}, v^{*}\right)$, such that $u_{*} \leq u^{*}$ and $v_{*} \geq v^{*}$ and the following statements hold:

1. $(u, v) \rightarrow E_{*}$ if $E_{2} \ll_{K}\left(u_{0}, v_{0}\right) \leq_{K} E_{*}, u_{0}, v_{0} \not \equiv 0$;
2. $(u, v) \rightarrow E^{*}$ if $E^{*} \leq_{K}\left(u_{0}, v_{0}\right) \ll_{K} E_{1}, u_{0}, v_{0} \not \equiv 0$;
3. If $u_{0}, v_{0}$ are nonnegative and nontrivial, then

$$
\left\{\begin{array}{l}
u_{*}(x) \leq \liminf _{t \rightarrow \infty} u(x, t) \leq \limsup _{t \rightarrow \infty} u(x, t) \leq u^{*}(x), \\
v^{*}(x) \leq \liminf _{t \rightarrow \infty} v(x, t) \leq \limsup _{t \rightarrow \infty} v(x, t) \leq v_{*}(x) .
\end{array}\right.
$$

If, in addition, $E_{*}=E^{*}$, then $(u, v) \rightarrow E^{*}$ if $u_{0} \geq, \not \equiv 0$ and $v_{0} \geq, \not \equiv 0$.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-155.jpg?height=493&width=582&top_left_y=1432&top_left_x=476)
Fig. 7.1: A diagram illustrating the compression result (Theorem 7.1.5).

Proof We apply Theorem E.2.15. Having already verified (H1')-(H4'), we observe that $D_{2} \Phi_{t}^{(2)}\left(E_{1}\right): C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$ and $D_{1} \Phi_{t}^{(1)}\left(E_{2}\right): C(\bar{\Omega}) \rightarrow C(\bar{\Omega})$ are compact and strongly positive with respect to $C\left(\bar{\Omega} ; \mathbb{R}_{+}^{2}\right)$, and that

$$
r\left(D_{2} \Phi_{t}^{(2)}\left(E_{1}\right)\right)=\mathrm{e}^{-\mu_{E_{1}} t}>1, \quad \text { and } \quad r\left(D_{1} \Phi_{t}^{(1)}\left(E_{2}\right)\right)=\mathrm{e}^{-\mu_{E_{2}} t}>1,
$$

where $\mu_{E_{1}}$ and $\mu_{E_{2}}$ are, respectively, the principal eigenvalues of (7.5) and (7.6). The result directly follows from an application of Theorem E.2.15.

Theorem 7.1.6 Consider the semiflow generated by (7.1). Exactly one of the following statements hold.

1. (7.1) has at least one positive equilibrium ( $u^{*}, v^{*}$ ) such that $u^{*}>0$ and $v^{*}>0$ in $\bar{\Omega}$;
2. $E_{1}$ is globally asymptotically stable among all solutions of (7.1) with nonnegative, nontrivial initial data;
3. $E_{2}$ is globally asymptotically stable among all solutions of (7.1) with nonnegative, nontrivial initial data.

Proof Since we have already verified (H1')-(H5'), the result is a direct consequence of Theorem E.2.13.

Theorem 7.1.7 If (7.1) has at least one positive equilibrium, and if every positive equilibrium is locally asymptotically stable, then there exists a unique positive equilibrium $E^{*}$. Furthermore, $(u, v) \rightarrow E^{*}$ for every solution $(u, v)$ of (7.1) with nonnegative initial data ( $u_{0}, v_{0}$ ) satisfying $u_{0} \not \equiv 0$ and $v_{0} \not \equiv 0$.

Proof This is a direct consequence of Theorem E.2.14.

### 7.2 Lotka-Volterra Systems with Constant Coefficients

Consider

$$
\begin{cases}u_{t}-d_{1} \Delta u=u\left(a_{1}-b_{1} u-c_{1} v\right) & \text { in } \Omega \times(0, \infty),  \tag{7.13}\\ v_{t}-d_{2} \Delta v=v\left(a_{2}-b_{2} u-c_{2} v\right) & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty),\end{cases}
$$

with nonnegative and nontrivial initial data. The following theorem was first proved in [4].

Theorem 7.2.1 Suppose that $a_{i}, b_{i}, c_{i}$ are positive constants such that $\frac{b_{1}}{b_{2}}>\frac{a_{1}}{a_{2}}>\frac{c_{1}}{c_{2}}$. Then for any solution $(u, v)$ of (7.13) with nonnegative, nontrivial initial value, we have $(u, v) \rightarrow\left(u^{*}, v^{*}\right)$, where

$$
\left(u^{*}, v^{*}\right)=\left(\frac{a_{2} c_{1}-a_{1} c_{2}}{b_{2} c_{1}-b_{1} c_{2}}, \frac{a_{2} b_{1}-a_{1} b_{2}}{b_{2} c_{1}-b_{1} c_{2}}\right) .
$$

We prove Theorem 7.2.1 by constructing a Lyapunov function and invoking LaSalle's invariance principle.

Definition 7.2.2 1. $W:[C(\bar{\Omega})]^{2} \rightarrow \mathbb{R}$ is a Lyapunov function with respect to the semiflow generated by (7.13) in $[C(\bar{\Omega})]^{2}$ if $W$ is differentiable and

$$
\frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t)) \leq 0 \quad \text { for } t>0
$$

for each positive solution ( $u, v$ ) of (7.13).
2 . For $\left(u_{0}, v_{0}\right) \in[C(\bar{\Omega})]^{2}$, define

$$
\dot{W}\left(u_{0}, v_{0}\right)=\left.\frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t))\right|_{t=0},
$$

where ( $u, v$ ) is the solution of (7.13) with initial data $\left(u_{0}, v_{0}\right)$.
3. Define

$$
E=\left\{\left(u_{0}, v_{0}\right) \in[C(\bar{\Omega})]^{2}: \dot{W}\left(u_{0}, v_{0}\right)=0\right\} .
$$

4. We say that $\mathfrak{M} \subset E$ is the maximal invariant set of $E$ if

$$
\mathfrak{M}=\cup_{(\hat{u}, \hat{v})}\{(\hat{u}(\cdot, t), \hat{v}(\cdot, t)): t \in \mathbb{R}\}
$$

where the union is taken over all bounded entire solutions ${ }^{3}(\hat{u}, \hat{v})$ of (7.13) such that

$$
(\hat{u}(\cdot, t), \hat{v}(\cdot, t)) \in E \quad \text { for each } t \in \mathbb{R}
$$

Theorem 7.2.3 (LaSalle's invariance principle) Suppose that $W:[C(\bar{\Omega})]^{2} \rightarrow \mathbb{R}$ is a Lyapunov function with respect to the semiflow generated by (7.13) in $[C(\bar{\Omega})]^{2}$. Then for each solution $(u, v)$ of (7.13) with pre-compact trajectory (i.e. $\left\{(u(\cdot, t), v(\cdot, t): t \geq 0\}\right.$ is precompact in $\left.[C(\bar{\Omega})]^{2}\right)$, it holds that

$$
\operatorname{dist}((u(\cdot, t), v(\cdot, t)), \mathfrak{M}) \rightarrow 0 \quad \text { as } t \rightarrow \infty .
$$

Proof See, e.g. [23, 31].
Proof (of Theorem 7.2.1) Fix a solution ( $u, v$ ) of (7.13) with positive initial data in $[C(\bar{\Omega})]^{2}$. Thanks to parabolic estimates, $t \mapsto(u(\cdot, t), v(\cdot, t))$ is continuous in $C\left(\bar{\Omega} ; \mathbb{R}^{2}\right)$ and

$$
\sup _{t \geq 1} \|\left(u(\cdot, t), v(\cdot, t) \|_{C^{2}(\bar{\Omega})}<+\infty\right.
$$

so it has a precompact trajectory. Moreover, $u>0$ and $v>0$ in $\bar{\Omega} \times[0, \infty)$.

[^6]By replacing ( $u, v$ ) with $\left(\frac{b_{1}}{a_{1}} u, \frac{c_{2}}{a_{2}} v\right)$, we may reduce to the case that

$$
\begin{equation*}
a_{1}=b_{1}, a_{2}=c_{2}, c_{1}<a_{1}, b_{2}<a_{2} . \tag{7.14}
\end{equation*}
$$

In this case,

$$
\left(u^{*}, v^{*}\right):=\left(\frac{1-c_{0}}{1-b_{0} c_{0}}, \frac{1-b_{0}}{1-b_{0} c_{0}}\right), \quad \text { where }\left(b_{0}, c_{0}\right)=\left(\frac{a_{1} b_{2}}{a_{2} b_{1}}, \frac{a_{2} c_{1}}{a_{1} c_{2}}\right) .
$$

We will apply LaSalle's invariance principle to show that $(u(\cdot, t), v(\cdot, t)) \rightarrow\left(u^{*}, v^{*}\right)$. To this end, we set

$$
W(u, v)=\int_{\Omega}\left\{\frac{1}{a_{1}}\left[u-u^{*}-u^{*} \log \frac{u}{u^{*}}\right]+\frac{1}{a_{2}}\left[v-v^{*}-v^{*} \log \frac{v}{v^{*}}\right]\right\} \mathrm{d} x
$$

to obtain

$$
\begin{aligned}
\frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t))=- & \int_{\Omega}\left[\left|u-u^{*}\right|^{2}+\left(b_{0}+c_{0}\right)\left(u-u^{*}\right)\left(v-v^{*}\right)+\left|v-v^{*}\right|^{2}\right] \\
& -\frac{d_{1} u^{*}}{a_{1}} \int_{\Omega} \frac{|\nabla u|^{2}}{u^{2}}-\frac{d_{2} v^{*}}{a_{2}} \int_{\Omega} \frac{|\nabla v|^{2}}{v^{2}}
\end{aligned}
$$

Using $0<b_{0}+c_{0}<2$ it is not hard to see that there is a $\delta>0$ such that

$$
\frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t)) \leq-\delta \int_{\Omega}\left(\left|u(x, t)-u^{*}\right|^{2}+\left|v(x, t)-v^{*}\right|^{2}\right) \leq 0
$$

This shows that $W$ is a Lyapunov function. From this, we infer that the set $E$ and its maximal invariance set $\mathfrak{M}$ (see Definition 7.2.2) coincides with the singleton set

$$
E=\mathfrak{M}=\left\{\left(u^{*}, v^{*}\right)\right\} .
$$

By LaSalle's invariance principle (Theorem 7.2.3), it follows that $(u, v) \rightarrow\left(u^{*}, v^{*}\right)$ as $t \rightarrow \infty$. This shows that the equilibrium $\left(u^{*}, v^{*}\right)$ attracts all positive solutions.

Finally, if the initial condition of ( $u, v$ ) is nonnegative and nontrivial, then it follows from the strong maximum principle that $u(x, t)>0$ and $v(x, t)>0$ in $\bar{\Omega} \times(0, \infty)$, so it converges to $\left(u^{*}, v^{*}\right)$ as well.

Theorem 7.2.4 Let $(u, v)$ be a solution to (7.13). If $a_{i}=b_{i}=c_{i}=1$, then $(u, v) \rightarrow$ $(s, 1-s)$ for some $s \in[0,1]$.

Proof By considering the Lyapunov function $W:[C(\bar{\Omega})]^{2} \rightarrow \mathbb{R}$,

$$
W\left(u_{0}, v_{0}\right)=\int_{\Omega}\left[u_{0}(x)-\frac{1}{2}-\frac{1}{2} \log \left(\frac{u_{0}(x)}{1 / 2}\right)+v_{0}(x)-\frac{1}{2}-\frac{1}{2} \log \left(\frac{v_{0}(x)}{1 / 2}\right)\right],
$$

then a similar calculation as in the proof of Theorem 7.2.1 gives

$$
\begin{equation*}
\frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t))=-\int_{\Omega}(u+v-1)^{2}-\frac{d_{1}}{2} \int_{\Omega} \frac{|\nabla u|^{2}}{u^{2}}-\frac{d_{2}}{2} \int_{\Omega} \frac{|\nabla v|^{2}}{v^{2}} \tag{7.15}
\end{equation*}
$$

To determine the maximal invariance subset $\mathfrak{M}$ of $E=\{\dot{W}=0\}$, let $(\hat{u}, \hat{v})$ be an entire solution of (7.13) (with $a_{i}=b_{i}=c_{i}=1$ ) such that $\frac{\mathrm{d}}{\mathrm{d} t} W(\hat{u}, \hat{v})=0$ for all $t \in \mathbb{R}$. The identity (7.15) then implies that $\nabla \hat{u} \equiv \nabla \hat{v} \equiv 0$, and $\hat{u}=1-\hat{v}$. This implies that $\mathfrak{M}=\{(s, 1-s): 0 \leq s \leq 1\}$. It follows from LaSalle's invariance principle that

$$
\operatorname{dist}((u(\cdot, t), v(\cdot, t)),\{(s, 1-s): 0 \leq s \leq 1\}) \rightarrow 0 \quad \text { as } t \rightarrow \infty .
$$

To strengthen the conclusion to $(u, v) \rightarrow\left(s_{0}, 1-s_{0}\right)$ for some $s_{0} \in[0,1]$, it suffices to note that the omega limit set is non-ordered and hence can only contain a single element of the ordered set $\{(s, 1-s): 0 \leq s \leq 1\}$. More precisely, fix a $s_{0} \in[0,1]$ such that

$$
\left(u\left(\cdot, t_{k}\right), v\left(\cdot, t_{k}\right)\right) \rightarrow\left(s_{0}, 1-s_{0}\right) \quad \text { for some } t_{k} \rightarrow \infty
$$

Then for $\epsilon>0$,

$$
\begin{equation*}
s_{0}-\epsilon \leq u(x, t) \leq s_{0}+\epsilon, \quad 1-s_{0}-\epsilon \leq v(x, t) \leq 1-s_{0}+\epsilon \tag{7.16}
\end{equation*}
$$

holds for $(x, t) \in \Omega \times\left\{t_{k}\right\}$ for some $t_{k}$. By comparison, we deduce that (7.16) holds in $\Omega \times\left[t_{k}, \infty\right)$. Hence,

$$
\left\{\begin{array}{l}
s_{0}-\epsilon \leq \liminf _{t \rightarrow \infty} u(x, t) \leq \limsup _{t \rightarrow \infty} u(x, t) \leq s_{0}+\epsilon \\
1-s_{0}-\epsilon \leq \liminf _{t \rightarrow \infty} v(x, t) \leq \limsup _{t \rightarrow \infty} v(x, t) \leq 1-s_{0}+\epsilon
\end{array}\right.
$$

Since $\epsilon>0$ is arbitrary, it holds that $(u, v) \rightarrow\left(s_{0}, 1-s_{0}\right)$.
Theorem 7.2.5 Suppose $a_{i}, b_{i}, c_{i}$ are positive constants such that

$$
\frac{c_{1}}{c_{2}}<\frac{a_{1}}{a_{2}}, \quad \text { and } \quad \frac{b_{1}}{b_{2}} \leq \frac{a_{1}}{a_{2}} .
$$

Then for any solution $(u, v)$ of (7.13) with nonnegative, nontrivial initial value, we have

$$
(u, v) \rightarrow\left(\frac{a_{1}}{c_{1}}, 0\right) \quad \text { uniformly as } t \rightarrow \infty
$$

Proof As in the beginning of the proof of Theorem 7.2.1, we may assume without loss of generality that

$$
\begin{equation*}
a_{1}=b_{1}, \quad a_{2}=c_{2}, \quad \frac{c_{1}}{a_{1}}<1<\frac{b_{2}}{a_{2}}, \tag{7.17}
\end{equation*}
$$

so that the homogeneous equilibria are exactly $E_{0}=(0,0), E_{1}=(1,0)$ and $E_{2}=$ $(0,1)$ and there are no positive homogeneous equilibria.

In such a case, we can consider the same Lyapunov function

$$
W(u, v)=\int_{\Omega}\left\{\frac{1}{a_{1}}[u-1-\log u]+\frac{v}{a_{2}}\right\} \mathrm{d} x
$$

which is obtained by setting $\left(u^{*}, v^{*}\right)=(1,0)$ in the previous Lyapunov function. By an analogous computation, we obtain

$$
\begin{aligned}
\frac{\mathrm{d}}{\mathrm{~d} t} W(u, v) & =\int_{\Omega}\left[(u-1)\left(1-u-\frac{c_{1}}{a_{1}} v\right)+v\left(1-v-\frac{b_{2}}{a_{2}} u\right)\right]-d_{1} \int_{\Omega} \frac{|\nabla u|^{2}}{u^{2}} \\
& \leq \int_{\Omega}\left[(u-1)\left(1-u-\frac{c_{1}}{a_{1}} v\right)+v(1-v-u)\right] \\
& =-\int_{\Omega}\left[\left|u-u^{*}\right|^{2}+\left(\frac{c_{1}}{a_{1}}+1\right)\left(u-u^{*}\right) v+v^{2}\right] \\
& \leq-\delta \int_{\Omega}\left[|u-1|^{2}+v^{2}\right]
\end{aligned}
$$

It then follows from LaSalle's invariance principle that all positive solutions ( $u, v$ ) of (7.13) converge to $E_{1}=(1,0)$ as $t \rightarrow \infty$. This proves the theorem.

Next, we give a result for general two-species models.
Theorem 7.2.6 Consider the reaction-diffusion system with homogeneous Neumann conditions:

$$
\begin{cases}u_{t}=d_{1} \Delta u+f(u, v) & \text { in } \Omega \times(0, \infty),  \tag{7.18}\\ v_{t}=d_{2} \Delta v+g(u, v) & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=0=\mathbf{n} \cdot \nabla v & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega .\end{cases}
$$

Suppose the kinetic system admits a function $E(u, v)$ such that the following statements hold:

1. $E: \mathbb{R}^{2} \rightarrow \mathbb{R}$ is convex and there exists $\left(u^{*}, v^{*}\right) \in \mathbb{R}^{2}$ such that $E(u, v) \geq E\left(u^{*}, v^{*}\right)$ for all $u, v>0$.
2. $E(u, v)=E_{1}(u)+E_{2}(v)$ for some functions $E_{i}$.
3. $E$ is a Lyapunov function for the kinetic system, i.e.

$$
E_{1}^{\prime}(\eta) f(\eta, \xi)+E_{2}^{\prime}(\xi) g(\eta, \xi)<0 \quad \text { for all }(\eta, \xi) \neq\left(u^{*}, v^{*}\right)
$$

Then

$$
W(u, v):=\int_{\Omega}\left(E_{1}(u)+E_{2}(v)\right) \mathrm{d} x
$$

is a Lyapunov function for the PDE system (7.18). Moreover, let ( $u, v$ ) be a positive solution of (7.18). If

$$
\limsup _{t \rightarrow \infty} \|\left(u(\cdot, t), v(\cdot, t) \|_{C(\bar{\Omega})}<+\infty\right.
$$

then ( $u(\cdot, t), v(\cdot, t)$ ) converges uniformly to the homogeneous equilibrium ( $u^{*}, v^{*}$ ) as $t \rightarrow \infty$.

Proof Since $\sup _{t>0}\|(u(\cdot, t), v(\cdot, t))\|_{C(\bar{\Omega})} \leq C_{0}$, standard parabolic regularity yields that $\{(u(\cdot, t), v(\cdot, t): t \geq 0\}$ is precompact in $C(\bar{\Omega})$.

Next, we show $W(u, v)$ is a Lyapunov function.

$$
\begin{aligned}
& \frac{\mathrm{d}}{\mathrm{~d} t} W(u(\cdot, t), v(\cdot, t)) \\
= & \int_{\Omega} E_{1}^{\prime}(u)\left[d_{1} \Delta u+f(u, v)\right] \mathrm{d} x+\int_{\Omega} E_{2}^{\prime}(u)\left[d_{2} \Delta v+g(u, v)\right] \mathrm{d} x \\
= & -d_{1} \int_{\Omega} E_{1}^{\prime \prime}(u)|\nabla u|^{2} \mathrm{~d} x-d_{2} \int_{\Omega} E_{2}^{\prime \prime}(v)|\nabla v|^{2} \mathrm{~d} x \\
& +\int_{\Omega}\left[E_{1}^{\prime}(u) f(u, v)+E_{2}^{\prime}(v) g(u, v)\right] \mathrm{d} x \\
\leq & \int_{\Omega}\left[E_{1}^{\prime}(u) f(u, v)+E_{2}^{\prime}(v) g(u, v)\right] \mathrm{d} x \leq 0
\end{aligned}
$$

Next, observe that

$$
\dot{W}\left(u_{0}, v_{0}\right)=0 \quad \text { if and only if } \quad\left(u_{0}, v_{0}\right) \equiv\left(u^{*}, v^{*}\right) \quad \text { in } \Omega .
$$

So that $\mathfrak{M}=\left\{\left(u^{*}, v^{*}\right)\right\}$ and one may conclude by Theorem 7.2.3.
Remark 7.2.7 The above results used the fact that the coefficients of the problem as well as the equilibrium solution are constant in space. See [70] for a recent generalization to nonconstant equilibria under certain assumptions.

### 7.3 Lotka-Volterra Systems with Heterogeneous Coefficients

How does the spatial heterogeneity of an environment affect the invasion of exotic species and the competition outcome of native and exotic species? By the term heterogeneity, we mean the spatial or temporal variability of various environmental conditions. An example is the spatial heterogeneity of light intensity in the ocean, an essential resource for the growth of a phytoplankton population which is a decreasing function with respect to the depth due to background attenuation [49].

Consider the following competition-diffusion model with spatially heterogeneous coefficients, which reflects the heterogeneity in an environment.

$$
\begin{cases}u_{t}-d_{1} \Delta u=u\left(a_{1}(x)-b_{1}(x) u-c_{1}(x) v\right) & \text { in } \Omega \times(0, \infty)  \tag{7.19}\\ v_{t}-d_{2} \Delta v=v\left(a_{2}(x)-b_{2}(x) u-c_{2}(x) v\right) & \text { in } \Omega \times(0, \infty) \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty)\end{cases}
$$

with nonnegative initial data, where $a_{i}, b_{i}, c_{i} \in C^{\alpha}(\bar{\Omega})$, and are strictly positive in $\bar{\Omega}$. The following result concerns the global dynamics of (7.19) for small diffusion coefficients, as considered in [41].

Theorem 7.3.1 Let ( $u, v$ ) be a solution to (7.19) with nonnegative and nontrivial initial data. Suppose that

$$
\begin{equation*}
\frac{b_{1}(x)}{b_{2}(x)}>\frac{a_{1}(x)}{a_{2}(x)}>\frac{c_{1}(x)}{c_{2}(x)}, \quad x \in \bar{\Omega} . \tag{7.20}
\end{equation*}
$$

Then there exists a $\delta>0$ such that if $\max \left\{d_{1}, d_{2}\right\}<\delta$, then (7.19) has a unique positive equilibrium, denoted by $(\tilde{u}, \tilde{v})$, such that $(u, v) \rightarrow(\tilde{u}, \tilde{v})$ as $t \rightarrow \infty$. This equilibrium ( $\tilde{u}, \tilde{v}$ ) is globally asymptotically stable among all positive solutions of (7.19). Furthermore,

$$
(\tilde{u}, \tilde{v}) \rightarrow\left(u^{*}, v^{*}\right):=\left(\frac{a_{2} c_{1}-a_{1} c_{2}}{b_{2} c_{1}-b_{1} c_{2}}, \frac{a_{2} b_{1}-a_{1} b_{2}}{b_{2} c_{1}-b_{1} c_{2}}\right) \quad \text { as } \max \left\{d_{1}, d_{2}\right\} \rightarrow 0
$$

Remark 7.3.2 It will be of interest to consider the case when one of the diffusion rates is small. We conjecture that under the assumption (7.20), there exists a $\delta>0$ such that if $\min \left\{d_{1}, d_{2}\right\}<\delta$, then (7.19) has a unique positive equilibrium which is globally asymptotically stable among all positive solutions of (7.19).

Lemma 7.3.3 Let ( $\tilde{u}, \tilde{v}$ ) denote any positive equilibrium to (7.19). Suppose that (7.20) holds. Then $(\tilde{u}, \tilde{v}) \rightarrow\left(u^{*}, v^{*}\right)$ uniformly in $\bar{\Omega}$ as $d_{1}, d_{2} \rightarrow 0$.

Proof For the sake of clarity, set

$$
f(x, u, v)=a_{1}(x)-b_{1}(x) u-c_{1}(x) v, \quad g(x, u, v)=a_{2}(x)-b_{2}(x) u-c_{2}(x) v .
$$

Let $\bar{u}_{0}$ denote the unique positive solution of

$$
d_{1} \Delta \bar{u}_{0}+\bar{u}_{0} f\left(x, \bar{u}_{0}, 0\right)=0 \quad x \in \Omega, \quad \frac{\partial \bar{u}_{0}}{\partial n}=0 \quad x \in \partial \Omega .
$$

By the comparison principle, $\tilde{u} \leq \bar{u}_{0}$ in $\bar{\Omega}$. Hence, $\tilde{v}$ satisfies

$$
d_{2} \Delta \tilde{v}+\tilde{v} g\left(x, \bar{u}_{0}, \tilde{v}\right) \leq 0 \quad x \in \Omega, \quad \frac{\partial \tilde{v}}{\partial n}=0 \quad x \in \partial \Omega .
$$

As $\bar{u}_{0} \rightarrow a_{1} / b_{1}$ uniformly in $\bar{\Omega}$ when $d_{1} \rightarrow 0$, we see that $g\left(x, \bar{u}_{0}, 0\right) \rightarrow a_{2}-$ $a_{1} b_{2} / b_{1}>0$ uniformly in $\bar{\Omega}$. Thus for sufficiently small $d_{1}$, the following problem has a unique positive solution, denoted by $\underline{v}_{1}$ :

$$
d_{2} \Delta \underline{v}_{1}+\underline{v}_{1} g\left(x, \bar{u}_{0}, \underline{v}_{1}\right)=0 \quad x \in \Omega, \quad \frac{\partial \underline{v}_{1}}{\partial n}=0 \quad x \in \partial \Omega .
$$

By the comparison principle, $\tilde{v} \geq \underline{v}_{1}$ in $\bar{\Omega}$. By the equation of $\tilde{u}$, we have

$$
d_{1} \Delta \tilde{u}+\tilde{u} f\left(x, \tilde{u}, \underline{v}_{1}\right) \geq 0 \quad x \in \Omega, \quad \frac{\partial \tilde{u}}{\partial n}=0 \quad x \in \partial \Omega .
$$

Therefore, $\tilde{u} \leq \bar{u}_{1}$ in $\bar{\Omega}$, where $\bar{u}_{1}$ is the unique positive solution of the equation

$$
d_{1} \Delta \bar{u}_{1}+\bar{u}_{1} f\left(x, \bar{u}_{1}, \underline{v}_{1}\right)=0 \quad x \in \Omega, \quad \frac{\partial \bar{u}_{1}}{\partial n}=0 \quad x \in \partial \Omega
$$

Now, for each $k \geq 1$, define $\underline{v}_{k}$ and $\bar{u}_{k}$ successively as the unique positive solution of the equations

$$
d_{2} \Delta \underline{v}_{k}+\underline{v}_{k} g\left(x, \bar{u}_{k-1}, \underline{v}_{k}\right)=0 \quad x \in \Omega, \quad \frac{\partial \underline{v}_{k}}{\partial n}=0 \quad x \in \partial \Omega
$$

and

$$
d_{1} \Delta \bar{u}_{k}+\bar{u}_{k} f\left(x, \bar{u}_{k}, \underline{v}_{k}\right)=0 \quad x \in \Omega, \quad \frac{\partial \bar{u}_{k}}{\partial n}=0 \quad x \in \partial \Omega
$$

Furthermore, the following inequalities hold:

$$
\tilde{u} \leq \cdots \leq \bar{u}_{k} \leq \cdots \leq \bar{u}_{1} \leq \bar{u}_{0}, \quad \tilde{v} \geq \cdots \geq \underline{v}_{k} \geq \cdots \geq \underline{v}_{1} \quad \text { in } \Omega .
$$

Similarly, we can construct $\left\{\underline{u}_{k}\right\}_{k=1}^{\infty}$ and $\left\{\bar{v}_{k}\right\}_{k=0}^{\infty}$ as follows: $\bar{v}_{0}:=\tilde{v}$, and $\underline{u}_{k}$ and $\underline{v}_{k}$ successively as the unique positive solutions of the equations

$$
d_{1} \Delta \underline{u}_{k}+\underline{u}_{k} f\left(x, \underline{u}_{k}, \bar{v}_{k-1}\right)=0 \quad x \in \Omega, \quad \frac{\partial \underline{u}_{k}}{\partial n}=0 \quad x \in \partial \Omega
$$

and

$$
d_{2} \Delta \bar{v}_{k}+\bar{v}_{k} g\left(x, \underline{u}_{k}, \bar{v}_{k}\right)=0 \quad x \in \Omega, \quad \frac{\partial \bar{v}_{k}}{\partial n}=0 \quad x \in \partial \Omega
$$

Furthermore, the following inequalities hold:

$$
\tilde{u} \geq \cdots \geq \underline{u}_{k} \geq \cdots \geq \underline{u}_{1}, \quad \tilde{v} \leq \cdots \leq \bar{v}_{k} \leq \cdots \leq \bar{v}_{1} \leq \bar{v}_{0} \quad \text { in } \Omega .
$$

Next, we define $\left\{\bar{U}_{k}\right\}_{k=0}^{\infty}$ and $\left\{\underline{V}_{k}\right\}_{k=1}^{\infty}$ successively as follows:

$$
\begin{equation*}
\bar{U}_{0}=\frac{a_{1}}{b_{1}}, \quad g\left(x, \bar{U}_{k-1}, \underline{V}_{k}\right)=f\left(x, \bar{U}_{k}, \underline{V}_{k}\right)=0 \quad \text { in } \Omega, k \geq 1 \tag{7.21}
\end{equation*}
$$

Similarly, $\left\{\underline{U}_{k}\right\}_{k=1}^{\infty}$ and $\left\{\bar{V}_{k}\right\}_{k=0}^{\infty}$ can be defined by

$$
\begin{equation*}
\bar{V}_{0}=\frac{a_{2}}{b_{2}}, \quad f\left(x, \underline{U}_{k}, \bar{V}_{k}\right)=g\left(x, \underline{U}_{k-1}, \bar{V}_{k}\right)=0 \quad \text { in } \Omega, k \geq 1 . \tag{7.22}
\end{equation*}
$$

It is easy to show that as $d_{1}, d_{2} \rightarrow 0,\left(\bar{u}_{k}, \underline{v}_{k}\right) \rightarrow\left(\bar{U}_{k}, \underline{V}_{k}\right)$ and $\left(\underline{u}_{k}, \bar{v}_{k}\right) \rightarrow\left(\underline{U}_{k}, \bar{V}_{k}\right)$ uniformly in $\Omega$. Hence,

$$
\underline{U}_{1} \leq \cdots \leq \underline{U}_{k} \leq \cdots \leq \liminf _{d_{1}, d_{2} \rightarrow 0} \tilde{u} \leq \limsup _{d_{1}, d_{2} \rightarrow 0} \tilde{u} \leq \cdots \leq \bar{U}_{k} \leq \cdots \leq \bar{U}_{1} \quad \text { in } \Omega
$$

and

$$
\underline{V}_{1} \leq \cdots \leq \underline{V}_{k} \leq \cdots \leq \liminf _{d_{1}, d_{2} \rightarrow 0} \tilde{v} \leq \limsup _{d_{1}, d_{2} \rightarrow 0} \tilde{v} \leq \cdots \leq \bar{V}_{k} \leq \cdots \leq \bar{V}_{1} \quad \text { in } \Omega
$$

Set

$$
\bar{U}:=\lim _{k \rightarrow \infty} \bar{U}_{k}, \quad \underline{U}:=\lim _{k \rightarrow \infty} \underline{U}_{k}, \quad \bar{V}:=\lim _{k \rightarrow \infty} \bar{V}_{k}, \quad \underline{V}:=\lim _{k \rightarrow \infty} \underline{V}_{k} .
$$

Passing to the limit in (7.21) and (7.22) we have

$$
f(x, \bar{U}, \underline{V})=g(x, \bar{U}, \underline{V})=f(x, \underline{U}, \bar{V})=g(x, \underline{U}, \bar{V})=0 .
$$

Hence, $\bar{U}=\underline{U}=u^{*}$ and $\bar{V}=\underline{V}=v^{*}$. In particular, this yields that $\bar{U}_{k}, \underline{U}_{k} \rightarrow u^{*}$ and $\bar{V}_{k}, \underline{V}_{k} \rightarrow v^{*}$ uniformly as $k \rightarrow \infty$. This in turn implies that $\tilde{u} \rightarrow u^{*}$ and $\tilde{v} \rightarrow v^{*}$ uniformly in $\bar{\Omega}$ as $d_{1}, d_{2} \rightarrow 0$.

Lemma 7.3.4 There exists some positive constant $\delta$ such that if $0<d_{1}, d_{2} \leq \delta$, then every positive equilibrium of (7.19) is linearly stable.

Proof Let ( $\tilde{u}, \tilde{v}$ ) denote any positive equilibrium of (7.19). The stability of ( $\tilde{u}, \tilde{v}$ ) is determined by the sign of the principal eigenvalue, denoted by $\lambda_{1}$, of the linear problem

$$
\begin{cases}d_{1} \Delta \varphi+a_{11} \varphi+a_{12} \psi+\lambda_{1} \varphi=0 & \text { in } \Omega, \\ d_{2} \Delta \psi+a_{21} \varphi+a_{22} \psi+\lambda_{1} \psi=0 & \text { in } \Omega, \\ \frac{\partial \varphi}{\partial n}=\frac{\partial \psi}{\partial n}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $a_{i j}(i=1,2)$ are given by, respectively,

$$
\begin{aligned}
a_{11} & =f(x, \tilde{u}, \tilde{v})+\tilde{u} f_{u}(x, \tilde{u}, \tilde{v}), \\
a_{12} & =\tilde{u} f_{v}(x, \tilde{u}, \tilde{v}) \\
a_{21} & =\tilde{v} g_{u}(x, \tilde{u}, \tilde{v}) \\
a_{22} & =g(x, \tilde{u}, \tilde{v})+\tilde{v} g_{v}(x, \tilde{u}, \tilde{v}) .
\end{aligned}
$$

The existence of $\lambda_{1}$ follows from Theorem 3.3.3. It suffices to show that if $d_{\underline{1}}, d_{2}$ are sufficiently small, then $\lambda_{1}<0$. Since $\tilde{u} \rightarrow u^{*}$ and $\tilde{v} \rightarrow v^{*}$ uniformly in $\bar{\Omega}$ as $d_{1}, d_{2} \rightarrow 0$, we have

$$
a_{11} \rightarrow-b_{1} u^{*}, \quad a_{12} \rightarrow-c_{1} v^{*}, \quad a_{21} \rightarrow-b_{2} u^{*}, \quad a_{22} \rightarrow-c_{2} v^{*}
$$

uniformly in $\bar{\Omega}$. Next, consider the transformation $(\tilde{\varphi}, \tilde{\psi})=(\varphi,-\psi)$, then $\lambda_{1}$ is the principal eigenvalue of the cooperative system

$$
\begin{cases}d_{1} \Delta \tilde{\varphi}+a_{11} \tilde{\varphi}-a_{12} \tilde{\psi}+\lambda_{1} \tilde{\varphi}=0 & \text { in } \Omega, \\ d_{2} \Delta \tilde{\psi}-a_{21} \tilde{\varphi}+a_{22} \tilde{\psi}+\lambda_{1} \tilde{\psi}=0 & \text { in } \Omega, \\ \frac{\partial \tilde{\varphi}}{\partial n}=\frac{\partial \tilde{\psi}}{\partial n}=0 & \text { on } \partial \Omega .\end{cases}
$$

By Corollary 3.2.11, it follows that

$$
\begin{equation*}
\lim _{\max \left\{d_{i}\right\} \rightarrow 0} \lambda_{1}=-\max _{\bar{\Omega}} \Lambda_{1}\left(M^{*}(x)\right) \tag{7.23}
\end{equation*}
$$

where the matrix $M^{*}(x)$ is given by

$$
M^{*}(x)=\lim _{\max \left\{d_{i}\right\} \rightarrow 0}\left(\begin{array}{cc}
a_{11} & -a_{12} \\
-a_{21} & a_{22}
\end{array}\right)=\left(\begin{array}{cc}
-b_{1} u^{*}(x) & c_{1} v^{*}(x) \\
b_{2} u^{*}(x) & -c_{2} v^{*}(x)
\end{array}\right) \quad \text { for } x \in \bar{\Omega} .
$$

Since

$$
\operatorname{Trace}\left(M^{*}(x)\right)=-b_{1} u^{*}-c_{2} v^{*}<0, \quad \operatorname{Det}\left(M^{*}(x)\right)=u^{*} v^{*}\left(b_{1} c_{2}-b_{2} c_{1}\right)>0
$$

it follows that, for each $x \in \bar{\Omega}$, both eigenvalues of $M^{*}(x)$ are negative. Since $\Lambda_{1}\left(M^{*}(x)\right)$ is a simple eigenvalue, it depends continuously (in fact smoothly) on the coefficients. Hence,

$$
\max _{\bar{\Omega}} \Lambda_{1}\left(M^{*}(x)\right)<0
$$

By (7.23), this shows the linear stability of the positive equilibrium ( $\tilde{u}, \tilde{v}$ ) when $d_{i}$ is sufficiently small.

Proof (of Theorem 7.3.1) It is a consequence of Lemmas 7.3.3 and 7.3.4: First of all, when both $d_{1}$ and $d_{2}$ are sufficiently small, both semi-trivial equilibria are linearly unstable under the assumption $\frac{b_{1}}{b_{2}}>\frac{a_{1}}{a_{2}}>\frac{c_{1}}{c_{2}}$; see Problem 7.5.2. Hence, by the theory of monotone dynamical systems, (7.19) has at least one positive equilibrium. By Lemma 7.3.4 and the theory of monotone dynamical systems (specifically Theorem 7.1.7), the positive equilibrium of (7.19) is unique and globally asymptotically stable among all nonnegative and nontrivial initial data.

Theorem 7.3.5 Let $(u, v)$ be a solution to (7.19). Suppose that $\frac{\bar{b}_{1}}{\bar{b}_{2}}>\frac{\bar{a}_{1}}{\bar{a}_{2}}>\frac{\bar{c}_{1}}{\bar{c}_{2}}$, where $\bar{f}:=\int_{\Omega} f /|\Omega|$. Then there exists a $\delta>0$ such that if $\min \left\{d_{1}, d_{2}\right\}>\frac{1}{\delta}$, (7.19) has a unique positive equilibrium ( $u^{*}, v^{*}$ ), which is linearly stable and globally asymptotically stable. Moreover,

$$
\begin{equation*}
\left(u^{*}, v^{*}\right) \rightarrow\left(\frac{\bar{a}_{2} \bar{c}_{1}-\bar{a}_{1} \bar{c}_{2}}{\bar{b}_{2} \bar{c}_{1}-\bar{b}_{1} \bar{c}_{2}}, \frac{\bar{a}_{2} \bar{b}_{1}-\bar{a}_{1} \bar{b}_{2}}{\bar{b}_{2} \bar{c}_{1}-\bar{b}_{1} \bar{c}_{2}}\right) \quad \text { as } \min \left\{d_{1}, d_{2}\right\} \rightarrow \infty . \tag{7.24}
\end{equation*}
$$

Proof By Problem E.3.2, (7.19) has at least one positive equilibrium ( $u^{*}, v^{*}$ ) for $\max \left\{d_{i}\right\} \gg 1$. By Problem 7.5.5, every positive equilibrium ( $u^{*}, v^{*}$ ) is linearly stable. By Theorem 7.1.7, there exists an $M>0$ such that for $\min \left\{d_{i}\right\} \geq M$, (7.19) has a unique positive equilibrium $\left(u^{*}, v^{*}\right)$. Moreover, $\left(u^{*}, v^{*}\right)$ attracts all nonnegative, nontrivial solutions of (7.19). The formula (7.24) is proved in Problem 7.5.4.

### 7.3.1 Slow vs fast diffusing populations

It was shown in previous subsections that the successful invasion of an exotic species is often attributed to its competitive advantage over the resident species. However, in a heterogeneous environment, with the help of (having less) diffusion, invasion is still possible even though the exotic species does not possess any apparent competitive advantage. In this section, we consider some classical competition models to illustrate this phenomenon.

The following semilinear system

$$
\begin{cases}u_{t}=d_{1} \Delta u+u[m(x)-u-b v] & \text { in } \Omega \times(0, \infty),  \tag{7.25}\\ v_{t}=d_{2} \Delta v+v[m(x)-c u-v] & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty)\end{cases}
$$

models two species that are competing for the same resources, where $u(x, t)$ and $v(x, t)$ represent the population densities of two competing species with respective dispersal rates $d_{1}$ and $d_{2}$, the function $m(x)$ represents the common intrinsic growth rate, and $b$ and $c$ are inter-specific competition coefficients. Here we assume that the two species has the same intrinsic growth rate $m(x)$. This is possible if, for example, the two species depend on the same spatially distributed resource. We shall assume that $d_{1}, d_{2}, b$ and $c$ are positive constants, and $u(x, 0)$ and $v(x, 0)$ are nonnegative functions that are not identically equal to zero.

We say that an equilibrium of (7.25) is a coexistence equilibrium if both components are positive, and it is a semi-trivial equilibrium if one component is positive and the other is zero. If $m$ is nonnegative and nontrivial, (7.25) has two semi-trivial equilibria, denoted by $E_{1}=\left(\theta_{d_{1}}, 0\right)$ and $E_{2}=\left(0, \theta_{d_{2}}\right)$, where $\theta_{d}=\theta(\cdot, d)$ is the unique positive solution of

$$
d \Delta \theta+\theta(m-\theta)=0 \quad \text { in } \Omega, \quad \text { and } \quad \mathbf{n} \cdot \nabla \theta=0 \quad \text { on } \partial \Omega .
$$

We first consider the case $b=c=1$. If $m(x) \equiv 1$, then it was proved in Theorem 7.2.1 that $(u, v) \rightarrow(s, 1-s)$ for some $s \in[0,1]$ that depends on initial conditions. This means that diffusion plays no role in the outcome of the competition in homogeneous environments. When $m(x)$ is nonconstant, it was proved by Hastings [26] and Dockery et al. [19] that the slower diffuser always wins, as the following theorem illustrates.

Theorem 7.3.6 Let $0<d_{1}<d_{2}, b=c=1$ and $m(x)$ be nonnegative and nonconstant. Let ( $u, v$ ) be a solution to (7.25), then ( $u, v$ ) $\rightarrow E_{1}=\left(\theta_{d_{1}}, 0\right)$ regardless of initial conditions.
Proof The proof is divided into two steps.
Step 1. We claim that (7.25) has no positive equilibria. Suppose (7.25) has a positive equilibrium $\left(u^{*}, v^{*}\right)$. We claim that $m-u^{*}-v^{*}$ is nonconstant. Suppose not, then $m-u^{*}-v^{*}=C$, and so

$$
d_{1} \Delta u^{*}+C u^{*}=0 \quad \text { in } \Omega, \quad \mathbf{n} \cdot \nabla u^{*}=0 \quad \text { on } \partial \Omega .
$$

Hence $u^{*}$ is a positive eigenfunction of the Neumann Laplacian in $\Omega$. This implies that $u^{*}$ is constant. Similarly, $v^{*}$ is also a constant. This leads to the conclusion that $m=C+u^{*}+v^{*}$ is a constant, which is impossible. Hence $m-u^{*}-v^{*}$ is nonconstant in $\Omega$.

For $d>0$ and $h \in C(\bar{\Omega})$, denote by $\mu_{1}(d, h)$ the principal eigenvalue of

$$
-d \Delta \phi-h \phi=\lambda \phi \quad \text { in } \Omega, \quad \text { and } \quad \mathbf{n} \cdot \nabla \phi=0 \quad \text { on } \partial \Omega .
$$

By regarding $u^{*}$ and $v^{*}$ as positive eigenfunctions, we deduce from Remark 1.3.7 that

$$
\begin{equation*}
\mu_{1}\left(d_{i}, m-u^{*}-v^{*}\right)=0 \quad \text { for } i=1,2 . \tag{7.26}
\end{equation*}
$$

Since $m-u^{*}-v^{*}$ is nonconstant, it follows from Proposition 1.3.15 that $d \mapsto$ $\mu_{1}\left(d, m-u^{*}-v^{*}\right)$ is strictly increasing. This is a contradiction with (7.26). Hence, (7.25) has no positive equilibrium when $d_{1}<d_{2}$ and $b=c=1$.

Step 2. We claim that $E_{2}=\left(0, \theta_{d_{2}}\right)$ is linearly unstable, i.e. $u$ can invade when rare. First, one can argue similarly as above that $m-\theta_{d_{2}}$ is nonconstant. Second, it follows again from Remark 1.3.7 that $\mu_{1}\left(d_{2}, m-\theta_{d_{2}}\right)=0$, since $\theta_{d_{2}}$ supplies a positive eigenfunction. Thirdly, we apply Proposition 1.3.15 to deduce that $d \mapsto$ $\mu_{1}\left(d, m-\theta_{d_{2}}\right)$ is strictly increasing. Since $d_{1}<d_{2}$, we get

$$
\mu_{E_{2}}=\mu_{1}\left(d_{1}, m-\theta_{d_{2}}\right)<\mu_{1}\left(d_{2}, m-\theta_{d_{2}}\right)=0
$$

Thanks to Lemma 7.1.1, this implies that ( $0, \tilde{v}$ ) is linearly unstable.
Applying one of Theorems 7.1.2 or 7.1.6, we deduce that $(u, v) \rightarrow E_{1}=\left(\theta_{d_{1}}, 0\right)$ for every solution ( $u, v$ ) of (7.25) with nonnegative, nontrivial initial conditions.

Remark 7.3.7 For two-species competition models, if one species adopts random movement and the other species does not move, the global dynamics of such systems has been studied recently in [20, 61].

Remark 7.3.8 A challenging open problem, proposed by Dockery et al. [19], is to show that for any $N \geq 3$ and any set of diffusion rates $0<d_{1}<d_{2}<\cdots<d_{N}$, all positive solutions of the $N$-species competition model

$$
\begin{cases}\partial_{t} u_{i}=d_{i} \Delta u_{i}+u_{i}\left(m(x)-\sum_{j=1}^{N} u_{j}\right) & \text { in } \Omega \times(0, \infty), 1 \leq i \leq N, \\ \mathbf{n} \cdot \nabla u_{i}=0 & \text { on } \partial \Omega \times(0, \infty), 1 \leq i \leq N, \\ u_{i}(x, 0)=u_{i, 0}(x) & \text { in } \Omega, 1 \leq i \leq N,\end{cases}
$$

converge to the equilibrium $E_{1}=\left(\theta_{d_{1}}, 0, \ldots, 0\right)$.

### 7.3.2 Weak competition in a heterogeneous environment

Next, we discuss the weak competition case of (7.25), namely, we set $b, c \in(0,1)$. If $0<b, c<1$ and $m(x) \equiv \bar{m}$ for some positive constant $\bar{m}$, by Theorem 7.2.1,
every solution $(u, v)$ of (7.25) converges to $\left(\frac{1-b}{1-b c} \bar{m}, \frac{1-c}{1-b c} \bar{m}\right)$ for all diffusion rates $d_{1}, d_{2}$ and any initial data. However, the dynamics of (7.25) is less transparent when $m$ is nonconstant. To this end, we start by studying the stability of the semi-trivial equilibrium ( $\theta_{d_{1}}, 0$ ) of (7.25). For the rest of this subsection, we focus on the case $0<c<1$.

Lemma 7.3.9 If $m(x)$ is nonnegative and nonconstant, then there exists some constant $c_{*}=c_{*}(m, \Omega) \in(0,1)$ such that the following hold:
(a) For $c \in\left(0, c_{*}\right],\left(\theta_{d_{1}}, 0\right)$ is unstable for any $d_{1}, d_{2}>0$.
(b) For $c \in\left(c_{*}, 1\right)$, there exists a $d_{*}=d_{*}(c, m, \Omega)>0$ such that (i) for $d_{2} \in\left(0, d_{*}\right)$, ( $\theta_{d_{1}}, 0$ ) is unstable for any $d_{1}>0$; and (ii) for $d_{2}>d_{*},\left(\theta_{d_{1}}, 0\right)$ changes stability at least twice as $d_{1}$ increases from 0 to $d_{2}$.

Lemma 7.3.9 applies to any $b \geq 0$. The most interesting case is when $c_{*}<c<1$ and $d_{2}>d_{*}$, where the followings hold:
(i) If $b>1$, it is well known that without dispersal, species $v$ always drives species $u$ to extinction. However, with dispersal, for some ranges of dispersal rates, species $v$ may fail to invade when rare.
(ii) If $b<1$, it is well known that, without dispersal, species $u$ and $v$ always coexist. Surprisingly, for certain dispersal rates, species $u$ is able to drive species $v$ to extinction for arbitrary initial conditions.

Proof By Lemma 7.1.1, the stability of ( $\theta_{d_{1}}, 0$ ) is determined by the sign of the smallest eigenvalue, denoted by $\lambda_{1}$, of the problem

$$
\begin{cases}d_{2} \Delta \varphi+\left(m-c \theta_{d_{1}}\right) \varphi+\lambda \varphi=0 & \text { in } \Omega,  \tag{7.27}\\ \mathbf{n} \cdot \nabla \varphi=0 & \text { on } \partial \Omega .\end{cases}
$$

To determine the sign of $\lambda_{1}$, note that $\lambda_{1}$ is strictly increasing in $d_{2}$, and

$$
\begin{align*}
\lim _{d_{2} \rightarrow 0} \lambda_{1} & =\min _{\bar{\Omega}}\left(c \theta_{d_{1}}-m\right) \leq \min _{\bar{\Omega}}\left(\theta_{d_{1}}-m\right)<0 ;  \tag{7.28}\\
\lim _{d_{2} \rightarrow+\infty} \lambda_{1} & =\frac{\int_{\Omega} \theta_{d_{1}}}{|\Omega|}\left(c-\frac{\int_{\Omega} m}{\int_{\Omega} \theta_{d_{1}}}\right) . \tag{7.29}
\end{align*}
$$

Set

$$
c_{*}=\inf _{d_{1}>0} \frac{\int_{\Omega} m}{\int_{\Omega} \theta_{d_{1}}}
$$

By Corollary 6.2, $c_{*} \in(0,1)$.
For every $c \in\left(0, c_{*}\right]$ and any $d_{1}>0, \lim _{d_{2} \rightarrow+\infty} \lambda_{1} \leq 0$. Since $\lambda_{1}$ is strictly increasing in $d_{2}$, we see that $\lambda_{1}<0$ for any $d_{1}, d_{2}>0$. This proves part (a).

For every $c \in\left(c_{*}, 1\right)$, for simplicity assume that there exist two positive constants $\underline{d}<\bar{d}$ such that $c-\int_{\Omega} m / \int_{\Omega} \theta_{d_{1}}>0$ for $d_{1} \in(\underline{d}, \bar{d})$, and $c-\int_{\Omega} m / \int_{\Omega} \theta_{d_{1}}<0$ for $d_{1} \in(0, \underline{d}) \cup(\bar{d},+\infty)$. Define $d^{*}=d^{*}\left(d_{1}\right):=1 / \lambda_{1}\left(m-c \theta_{d_{1}}\right)$, i.e.

$$
d^{*}=\sup _{\varphi \in \mathcal{S}} \frac{\int_{\Omega}\left(m-c \theta_{d_{1}}\right) \varphi^{2}}{\int_{\Omega}|\nabla \varphi|^{2}}
$$

where

$$
\mathcal{S}=\left\{\varphi \in H^{1}(\Omega): \int_{\Omega}\left(m-c \theta_{d_{1}}\right) \varphi^{2}>0\right\}
$$

Now, $d^{*}=+\infty$ if and only if the set $\mathcal{S}$ contains the constant function $\varphi \equiv 1$, and the latter holds if and only if $c-\int_{\Omega} m / \int_{\underline{\Omega}} \theta_{d_{1}}<0$, i.e. $d \in(0, \underline{d}] \cup[\bar{d},+\infty)$. In particular, $d^{*}\left(d_{1}\right)$ is finite when $d_{1} \in(\underline{d}, \bar{d})$, and that $d^{*}\left(d_{1}\right) \rightarrow+\infty$ as $d_{1} \rightarrow \underline{d}-$ or $d_{1} \rightarrow \bar{d}+$. This allows us to define $d_{*}=\inf _{d_{1}>0} d^{*}\left(d_{1}\right)$. For $d_{2}<d_{*}$, we have $d_{2}<d^{*}\left(d_{1}\right)$ for all $d_{1}>0$. In this case, $\lambda_{1}<0$ for all $d_{1}>0$, which implies that ( $\theta_{d_{1}}, 0$ ) is unstable for any $d_{1}>0$ and $d_{2}<d_{*}$. For $d_{2}>d_{*}$, we likewise have $\lambda_{1}<0$ for $d_{1} \in(0, \underline{d}) \cup(\bar{d},+\infty)$; and $\lambda_{1}>0$ in some subinterval of $(\underline{d}, \bar{d})$. Therefore $\lambda_{1}$ changes sign twice as $d_{1}$ increases from 0 to $d_{2}$, i.e. part (b) is proved.

Remark 7.3.10 It holds that $\lambda_{1}<0$ whenever $c<1$ and $d_{1} \geq d_{2}$; see Problem 7.5.6.
For every $c>0$, define

$$
\begin{equation*}
\Sigma_{c}=\left\{\left(d_{1}, d_{2}\right) \in \mathbb{R}_{+}^{2}: E_{1}=\left(\theta_{d_{1}}, 0\right) \text { is linearly stable }\right\} . \tag{7.30}
\end{equation*}
$$

Note that $\Sigma_{c} \subset\left\{\left(d_{1}, d_{2}\right) \in \mathbb{R}_{+}^{2}: d_{1}<d_{2}\right\}$ since, by the comparison principle for principal eigenvalues, $\lambda_{1}<0$ for $d_{1} \geq d_{2}$. Clearly, $\Sigma_{c}$ is nonempty if and only if $c>c_{*}$ 。

In a series of works He and Ni classified the dynamics of a class of LotkaVolterra competition-diffusion models which include system (7.25) as a special case [27, 28, 29, 30]. One of their main results can be stated as follows:

Theorem 7.3.11 If $m(x)$ is nonnegative and nonconstant, $c \in\left(c_{*}, 1\right)$ and $0<b \leq 1$, then $\left(\theta_{d_{1}}, 0\right)$ is globally asymptotically stable for any $\left(d_{1}, d_{2}\right) \in \bar{\Sigma}_{c} ;$ if $d_{2}>d_{1}$ and $\left(d_{1}, d_{2}\right) \notin \bar{\Sigma}_{c}$, then system (7.25) has a unique positive equilibrium which is globally asymptotically stable.

The most interesting case of Theorem 7.3.11 is when $c_{*}<c<1$ and $d_{2}>d_{*}$ : Without dispersal, species $u$ and $v$ always coexist; with dispersal, for $\left(d_{1}, d_{2}\right) \in \bar{\Sigma}_{c}$, species $u$ will eliminate species $v$ for arbitrary initial data. By a previous result, $\Sigma_{c} \subset\left\{d_{1} \leq d_{2}\right\}$, i.e. species $u$ may exclude species $v$ only if $u$ is the slower diffuser. Furthermore, the set $\Sigma_{c}$ is nonempty for every $c \in\left(c_{*}, 1\right)$. It is not difficult to see that $\Sigma_{c_{1}} \subset \Sigma_{c_{2}}$ for any $c_{1}<c_{2}$ with $c_{1}, c_{2} \in\left(c_{*}, 1\right)$. In fact, the set $\Sigma_{c}$ converges to the set $\left\{\left(d_{1}, d_{2}\right): 0<d_{1}<d_{2}\right\}$ as $c \rightarrow 1-$, and this gives another perspective upon why the slower diffuser wins the competition for the case when $b=c=1$; see Theorem 7.3.6.

The key ingredient in the proof of Theorem 7.3.11 is the following lemma:
Lemma 7.3.12 If $b c<1$, then any positive equilibrium of (7.25), if it exists, is linearly stable.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-170.jpg?height=1196&width=1119&top_left_y=176&top_left_x=205)
Fig. 7.2: Three diagrams illustrating the long-time dynamics of (7.25), with $b=1$ and $c \in(0,1)$. For $d_{1}>d_{2}$, the equilibrium $E_{2}$ is always globally asymptotically stable (g.a.s.). The long-time dynamics when $d_{1}<d_{2}$ depends on the value of $c$. When $c \in\left(0, c_{*}\right)$, the set $\Sigma_{c}$ is empty, and both $E_{1}$ and $E_{2}$ are unstable for $d_{1}<d_{2}$ and there exists a unique positive equilibrium that is g.a.s. When $c \in\left(c_{*}, 1\right)$, there exists a nonempty subset $\Sigma_{c}$ of $\left\{d_{1}<d_{2}\right\}$ such that for $\left(d_{1}, d_{2}\right) \in \Sigma_{c}, E_{1}$ is g.a.s., whereas for $\left(d_{1}, d_{2}\right) \notin \Sigma_{c}$ such that $d_{1}<d_{2}$, there is a unique coexistence equilibrium that is g.a.s. Here $E_{1}=\left(\theta_{d_{1}}, 0\right)$ and $E_{2}=\left(0, \theta_{d_{2}}\right)$ are respectively the semitrivial equilibria of (7.25). Finally, one can show that $\Sigma_{c}$ is monotonically increasing in $c$, and converges to the set $\left\{d_{1}<d_{2}\right\}$ as $c \nearrow 1$.

Proof Suppose that (7.25) has a positive equilibrium $\left(u^{*}, v^{*}\right)$. The linear stability of ( $u^{*}, v^{*}$ ) is determined by the sign of the principal eigenvalue, denoted by $\mu_{1}$, of the problem

$$
\begin{cases}-d_{1} \Delta \varphi-\varphi\left(m-2 u^{*}-c v^{*}\right)+c u^{*} \psi=\mu_{1} \varphi & \text { in } \Omega,  \tag{7.31}\\ -d_{2} \Delta \psi+b v^{*} \varphi-\psi\left(m-b u^{*}-2 v^{*}\right)=\mu_{1} \psi & \text { in } \Omega, \\ \mathbf{n} \cdot \varphi=\mathbf{n} \cdot \psi=0 & \text { on } \partial \Omega .\end{cases}
$$

Setting $\varphi=u^{*} \tilde{\varphi}$ and $\psi=-v^{*} \tilde{\psi}$, we obtain the following equivalent eigenvalue problem:

$$
\begin{cases}-d_{1} \nabla \cdot\left[\left(u^{*}\right)^{2} \nabla \tilde{\varphi}\right]=-\left(u^{*}\right)^{3} \tilde{\varphi}+c\left(u^{*}\right)^{2} v^{*} \tilde{\psi}+\mu_{1}\left(u^{*}\right)^{2} \tilde{\varphi} & \text { in } \Omega,  \tag{7.32}\\ -d_{2} \nabla \cdot\left[\left(v^{*}\right)^{2} \nabla \tilde{\psi}\right]=b u^{*}\left(v^{*}\right)^{2} \tilde{\varphi}-\left(v^{*}\right)^{3} \tilde{\psi}+\mu_{1}\left(v^{*}\right)^{2} \tilde{\psi} & \text { in } \Omega, \\ \mathbf{n} \cdot \tilde{\varphi}=\mathbf{n} \cdot \tilde{\psi}=0 & \text { on } \partial \Omega .\end{cases}
$$

Since (7.32) is a cooperative system, we can apply Theorem 3.11 to deduce that (7.32) (and hence (7.31)) indeed has a principal value $\mu_{1} \in \mathbb{R}$ with the least real part. Moreover, the eigenfunction $(\tilde{\varphi}, \tilde{\psi})$ can be chosen such that $\tilde{\varphi}>0$ and $\tilde{\psi}>0$ in $\Omega$. It remains to show that $\mu_{1}>0$.

Suppose to the contrary that $\mu_{1} \leq 0$. Multiplying the first equation of (7.32) by $\tilde{\varphi}^{2}$ and integrating the result in $\Omega$, we have

$$
2 d_{1} \int_{\Omega}\left(u^{*}\right)^{2} \tilde{\varphi}|\nabla \tilde{\varphi}|^{2}=-\int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{3}+c \int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{2}\left(v^{*} \tilde{\psi}\right)+\mu_{1} \int_{\Omega}\left(u^{*}\right)^{2} \tilde{\varphi}^{3}
$$

By assumption, $\mu_{1} \leq 0$, so we have

$$
\int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{3} \leq c \int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{2}\left(v^{*} \tilde{\psi}\right) \leq c\left[\int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{3}\right]^{2 / 3}\left[\int_{\Omega}\left(v^{*} \tilde{\psi}\right)^{3}\right]^{1 / 3}
$$

where we used Hölder's inequality. Hence, we obtain

$$
\begin{equation*}
0<\int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{3} \leq c^{3} \int_{\Omega}\left(v^{*} \tilde{\psi}\right)^{3} \tag{7.33}
\end{equation*}
$$

By arguing analogously, we obtain

$$
\begin{equation*}
0<\int_{\Omega}\left(v^{*} \tilde{\psi}\right)^{3} \leq b^{3} \int_{\Omega}\left(u^{*} \tilde{\varphi}\right)^{3} \tag{7.34}
\end{equation*}
$$

However (7.33) and (7.34) are in contradiction with $b c<1$. This proves that $\mu_{1}>0$, which means that $\left(u^{*}, v^{*}\right)$ is linearly stable.

Now, we prove Theorem 7.3.11.
Proof (of Theorem 7.3.11) We only need to consider $0<d_{1}<d_{2}$. We claim that $E_{2}=\left(0, \theta_{d_{2}}\right)$ is linearly unstable. Indeed, this follows from Lemma 7.1.1 and

$$
\mu_{E_{2}}=\mu_{1}\left(d_{1}, m-b \theta_{d_{2}}\right)<\mu_{1}\left(d_{1}, m-\theta_{d_{2}}\right) \leq \mu_{1}\left(d_{2}, m-\theta_{d_{2}}\right)=0
$$

Let $d_{2}>d_{1}$ and $\left(d_{1}, d_{2}\right) \notin \bar{\Sigma}_{c}$. Then both $E_{1}=\left(\theta_{d_{1}}, 0\right)$ and $E_{2}=\left(0, \theta_{d_{2}}\right)$ are linearly unstable, and there exists at least one positive equilibrium $\left(u^{*}, v^{*}\right)$. By Lemma 7.3.12, every positive equilibrium is linearly stable, and hence locally asymptotically stable. It follows from Theorem 7.1.7 that ( $u^{*}, v^{*}$ ) is unique and is globally asymptotically stable.

Suppose next, that $\left(d_{1}, d_{2}\right) \in \Sigma_{c}$, then $E_{1}$ is linearly stable and $E_{2}$ is linearly unstable. We need to show that $E_{1}$ is globally asymptotically stable. In view of Theorem 7.1.6 and the instability of $E_{2}$, it remains to show the nonexistence of positive equilibria. Suppose to the contrary that there is one positive equilibrium $\left(u^{*}, v^{*}\right)$, then it follows from Theorem 7.1.7 that $\left(u^{*}, v^{*}\right)$ is unique and is globally asymptotically stable, which is impossible since $E_{1}$ is linearly stable and hence locally asymptotically stable. We conclude that $E_{1}$ is globally asymptotically stable when $\left(d_{1}, d_{2}\right) \in \Sigma_{c}$.

Finally, consider the case $\left(d_{1}, d_{2}\right) \in \partial \Sigma_{c}$. It is again enough to show that there is no positive equilibrium, so that the instability of $E_{2}$ implies $E_{1}$ is globally asymptotically stable, thanks to Theorem 7.1.6. Suppose to the contrary that there is one positive equilibrium ( $u^{*}, v^{*}$ ), then Lemma 7.3.12 asserts that ( $u^{*}, v^{*}$ ) is linearly stable and hence is nondegenerate. It then follows from the implicit function theorem that there is a neighborhood $\mathcal{N}$ of ( $d_{1}, d_{2}$ ) in $\mathbb{R}_{+}^{2}$ such that the competition system has at least one positive equilibrium whenever the diffusion rate lies in $\mathcal{N}$. But this is in contradiction with the fact that $\mathcal{N} \cap \Sigma_{c}$ is nonempty, and that $\left(d_{1}, d_{2}\right) \in \Sigma_{c}$ implies $E_{1}$ is globally asymptotically stable.

### 7.4 Competition in an Advective Environment

In advective environments, higher dispersal rates can evolve. In fact, populations with a higher dispersal rate can not only prevent the invasion of populations with a slower dispersal rate but can also invade and replace such populations. In this connection, consider the system

$$
\left\{\begin{array}{l}
u_{t}=d_{1} u_{x x}-q u_{x}+u(r-u-v), \quad 0<x<L, t>0  \tag{7.35}\\
v_{t}=d_{2} v_{x x}-q v_{x}+v(r-u-v), \quad 0<x<L, t>0 \\
d_{1} u_{x}(0, t)-q u(0, t)=d_{2} v_{x}(0, t)-q v(0, t)=0 \\
u_{x}(L, t)=v_{x}(L, t)=0
\end{array}\right.
$$

with nonnegative, nontrivial initial data. The population is subject to the no-flux boundary condition and a free-flow boundary condition; see [59]. Throughout this section, we assume that $q$ and $r$ are positive constants.

Remark 7.4.1 By the transformation

$$
\tilde{u}(x, t)=\mathrm{e}^{-q x / d_{1}} u(x, t) \text { and } \tilde{v}(x, t)=\mathrm{e}^{-q x / d_{2}} v(x, t) \text {, }
$$

we obtain

$$
\left\{\begin{array}{l}
\tilde{u}_{t}=d_{1} \tilde{u}_{x x}+q \tilde{u}_{x}+\tilde{u}\left(r-\mathrm{e}^{q x / d_{1}} \tilde{u}-\mathrm{e}^{q x / d_{2}} \tilde{v}\right), \quad 0<x<L, t>0, \\
\tilde{v}_{t}=d_{2} \tilde{v}_{x x}+q \tilde{v}_{x}+\tilde{v}\left(r-\mathrm{e}^{q x / d_{1}} \tilde{u}-\mathrm{e}^{q x / d_{2}} \tilde{v}\right), \quad 0<x<L, t>0, \\
\tilde{u}_{x}(0, t)=\tilde{v}_{x}(0, t)=0, \quad t>0, \\
d_{1} \tilde{u}_{x}(L, t)+q \tilde{u}(L, t)=d_{2} \tilde{v}_{x}(L, t)+q \tilde{v}(L, t)=0, \quad t>0,
\end{array}\right.
$$

with nonnegative initial data. This latter system is a special case of (7.1) and satisfies all the hypotheses in Section 7.1. In particular, Theorems 7.1.2, 7.1.5, 7.1.6 and 7.1.7 are applicable to the semiflow governing ( $\tilde{u}, \tilde{v}$ ), and also the semiflow governing ( $u, v$ ) by extension.

Theorem 7.4.2 Suppose that $q, r$ are positive constants. If $d_{1}>d_{2}$, then $\left(u^{*}, 0\right)$, whenever it exists, is globally asymptotically stable among all nonnegative and nontrivial initial data.

The proof of this theorem is preceded by a number of lemmas. We begin by considering the eigenvalue problem

$$
\left\{\begin{array}{l}
\tau \phi_{x x}-q \phi_{x}+h(x) \phi+\lambda \phi=0, \quad 0<x<L  \tag{7.36}\\
\tau \phi_{x}(0)=q \phi(0), \quad \phi_{x}(L)=0
\end{array}\right.
$$

For any $\tau>0$, let $\lambda(\tau)$ denote the principal eigenvalue and $\phi$ the corresponding eigenfunction, uniquely determined by $\max _{0 \leq x \leq L} \phi(x)=1$.

Lemma 7.4.3 Suppose $h(x)>0$ in $(0, L)$. Then $\lambda(\tau)$ has at most one positive root. Moreover, if $\lambda\left(\tau^{*}\right)=0$ for some $\tau^{*}>0$, then $\frac{\partial \lambda}{\partial \tau}\left(\tau^{*}\right)<0$.

Proof By direct calculations (see Problem 7.5.7),

$$
\begin{equation*}
\frac{\partial \lambda}{\partial \tau}=\frac{\int\left(\mathrm{e}^{-\alpha x} \phi\right)_{x} \phi_{x} \mathrm{~d} x}{\int \mathrm{e}^{-\alpha x} \phi^{2} \mathrm{~d} x} \tag{7.37}
\end{equation*}
$$

where $\alpha=q / \tau$. It is clear that our lemma is a consequence of the following assertion:

Claim: If $\lambda\left(\tau^{*}\right)=0$ for some $\tau^{*}>0$, then

$$
\begin{equation*}
\left.\frac{\partial \lambda}{\partial \tau}\right|_{\tau=\tau^{*}}<0 \tag{7.38}
\end{equation*}
$$

To establish (7.38), let $\phi^{*}$ denote the eigenfunction corresponding to $\lambda\left(\tau^{*}\right)$, uniquely determined by $\max \phi^{*}=1$. As $\lambda\left(\tau^{*}\right)=0, \phi^{*}$ satisfies

$$
\left\{\begin{array}{l}
\tau^{*} \phi_{x x}^{*}-q \phi_{x}^{*}+h(x) \phi^{*}=0, \quad 0<x<L  \tag{7.39}\\
\tau^{*} \phi_{x}^{*}(0)-q \phi^{*}(0)=\phi_{x}^{*}(L)=0
\end{array}\right.
$$

Integrating equation (7.39) from zero to $x$, we find

$$
\begin{equation*}
\tau^{*} \phi_{x}^{*}(x)-q \phi^{*}(x)+\int_{0}^{x} \phi^{*}(y) h(y) \mathrm{d} y=0 \tag{7.40}
\end{equation*}
$$

As $h>0$ in ( $0, L$ ), we conclude $0>\tau^{*} \phi_{x}^{*}-q \phi^{*}=\tau^{*} \mathrm{e}^{\alpha^{*} x}\left(\mathrm{e}^{-\alpha^{*} x} \phi^{*}\right)_{x}$, where $\alpha^{*}=q / \tau^{*}$.

Next we show that $\phi_{x}^{*}>0$ in $[0, L)$. If $\phi^{*}(0)=0$, then by the boundary condition of $\phi^{*}$ at $x=0$, we also have $\phi_{x}^{*}(0)=0$. By the equation of $\phi^{*}$ and the uniqueness of ODEs, we have $\phi^{*} \equiv 0$ in ( $0, L$ ), which is a contradiction. Hence, $\phi^{*}(0)>0$. This implies that $\phi_{x}^{*}(0)>0$. If $\phi_{x}^{*}>0$ in [ $0, L$ ) does not hold, there exists some $x_{0} \in(0, L)$ such that $\phi_{x}^{*}>0$ in $\left[0, x_{0}\right)$ and $\phi_{x}^{*}\left(x_{0}\right)=0$. Since $\phi_{x}^{*}(L)=0$, there must exist some $x_{1} \geq x_{0}$ such that $\phi_{x}^{*}\left(x_{1}\right)=0$ and $\phi_{x x}^{*}\left(x_{1}\right) \geq 0$. By the equation of $\phi^{*}$, $h\left(x_{1}\right) \leq 0$, which is a contradiction. Hence, $\phi_{x}^{*}>0$ in $[0, L)$.

Finally, using the facts that $\left(\mathrm{e}^{-\alpha^{*} x} \phi^{*}\right)_{x}<0$ and $\phi_{x}^{*}>0$ in ( $0, L$ ), we see that (7.37) implies (7.38).

Lemma 7.4.4 If $d_{1}>d_{2}$, then ( $u^{*}, 0$ ), whenever it exists, is linearly stable.
Proof Let $u^{*}$ be the unique positive solution of

$$
\left\{\begin{array}{l}
d_{1} u_{x x}^{*}-q u_{x}^{*}+u^{*}\left(r-u^{*}\right)=0, \quad 0<x<L  \tag{7.41}\\
d_{1} u_{x}^{*}(0)-q u^{*}(0)=0=u_{x}^{*}(L)
\end{array}\right.
$$

It remains to show that $\lambda\left(d_{2}\right)>0$, where $\lambda(\tau)$ is the principal eigenvalue of (7.36) with $h(x)=r-u^{*}$.

Note that $\lambda\left(d_{1}\right)=0$, since $u^{*}$ supplies a positive eigenfunction.
Since $\bar{u} \equiv r$ is a superequilibrium, it follows from Corollary 5.1.9 that $u^{*}<r$ in $[0, L]$ (see also Problem 7.5.8), i.e. $h>0$. It follows from Lemma 7.4.3 that $d_{1}$ is the unique positive root of $\lambda(\tau)$, and that $\lambda\left(d_{2}\right)>0$ since $d_{2} \in\left(0, d_{1}\right)$.

Next, we will show that (7.35) has no coexistence (positive) equilibrium. First, we establish the following a priori estimate on any positive equilibrium of (7.35).

Lemma 7.4.5 Let ( $u, v$ ) be any positive equilibrium of (7.35). Then $u_{x}, v_{x}>0$ in $[0, L)$ and $u+v<r$ in $[0, L]$.

Proof Differentiating the equations of $u$ and $v$ we obtain

$$
\left\{\begin{array}{l}
d_{1} u_{x x x}-q u_{x x}+u_{x}(r-2 u-v)-u v_{x}=0, \quad 0<x<L  \tag{7.42}\\
d_{2} v_{x x x}-q v_{x x}+v_{x}(r-u-2 v)-v u_{x}=0, \quad 0<x<L \\
d_{1} u_{x}-q u=d_{2} v_{x}-q v=0 \quad \text { at } x=0 \\
u_{x}=v_{x}=0 \quad \text { at } x=L
\end{array}\right.
$$

Set $w=u_{x} / u$ and $z=v_{x} / v$. Then $w$ and $z$ satisfy

$$
\left\{\begin{array}{l}
d_{1} w_{x x}+\left(2 d_{1} u_{x} / u-q\right) w_{x}-u w-v z=0, \quad 0<x<L  \tag{7.43}\\
d_{2} z_{x x}+\left(2 d_{2} v_{x} / v-q\right) z_{x}-u w-v z=0, \quad 0<x<L \\
w(0)=q / d_{1}>0, z(0)=q / d_{2}>0, w(L)=z(L)=0
\end{array}\right.
$$

We first show that $u(L)+v(L) \neq r$. To this end, we argue by contradiction: suppose that $u(L)+v(L)=r$. By the boundary condition $u_{x}(L)=v_{x}(L)=0$ and equations of $u$ and $v$, we obtain $u_{x x}(L)=v_{x x}(L)=0$. That is, $w_{x}(L)=z_{x}(L)=0$. As $w(L)=z(L)=0$, by the uniqueness of ODEs we obtain $w=z=0$ in $[0, L]$, i.e., both $u$ and $v$ are positive constants. However, this contradicts the boundary conditions at $x=0$. Hence, it suffices to consider two cases: (i) $u(L)+v(L)>r$; (ii) $u(L)+v(L)<r$.

Case (i). By the equations of $u, v$ and the boundary conditions $u_{x}(L)=v_{x}(L)=0$, there exists some $\delta>0$ such that $u_{x x}>0$ and $v_{x x}>0$ for $L-\delta \leq x \leq L$. Hence, $u_{x}<0$ and $v_{x}<0$ in $[L-\delta, L)$. Since $u_{x}(0)>0$ and $v_{x}(0)>0, u_{x}$ and $v_{x}$ must have some root in ( $0, L-\delta$ ). Without loss of generality, we may assume that there exists some $x_{1} \in(0, L-\delta)$ such that $u_{x}\left(x_{1}\right)=0, v_{x}\left(x_{1}\right) \leq 0, u_{x}<0$ and $v_{x}<0$ in ( $x_{1}, L$ ). Recall that $w=u_{x} / u$ in ( $x_{1}, L$ ). Choose $x_{2} \in\left(x_{1}, L\right)$ such that $w\left(x_{2}\right)=\min _{x_{1} \leq x \leq L} w(x)$. Hence, $w\left(x_{2}\right)<0, w_{x}\left(x_{2}\right)=0$, and $w_{x x}\left(x_{2}\right) \geq 0$. By the equation of $w$ we obtain $z\left(x_{2}\right)>0$, which is a contradiction. This rules out Case (i).

Case (ii). By the equations of $u, v$ and the boundary conditions $u_{x}(L)=v_{x}(L)=$ 0 , there exists some $\delta>0$ such that $u_{x x}<0$ and $v_{x x}<0$ for $L-\delta \leq x \leq L$. Hence, $u_{x}>0$ and $v_{x}>0$ in $[L-\delta, L)$. We claim that $u_{x}>0$ in $[0, L)$. Suppose to the contrary that there exists some $x_{3} \in(0, L-\delta)$ such that $u_{x}\left(x_{3}\right)=0$ and $u_{x}>0$ in $\left(x_{3}, L\right)$. Choose $x_{4} \in\left(x_{3}, L\right)$ such that $w\left(x_{4}\right)=\max _{x_{3} \leq x \leq L} w(x)$. Hence, $w\left(x_{4}\right)>0$, $w_{x}\left(x_{4}\right)=0$, and $w_{x x}\left(x_{4}\right) \leq 0$. By the equation of $w$ we obtain $z\left(x_{4}\right)<0$. Hence, as $v_{x}>0$ in $[L-\delta, L]$, there exists some $x_{5} \in\left(x_{4}, L-\delta\right)$ such that $z\left(x_{5}\right)=0$, $z>0$ in ( $x_{5}, L$ ). Choose $x_{6} \in\left(x_{5}, L\right)$ such that $z\left(x_{6}\right)=\max _{x_{5} \leq x \leq L} z(x)$. Hence, $z\left(x_{6}\right)>0, z_{x}\left(x_{6}\right)=0$, and $z_{x x}\left(x_{6}\right) \leq 0$. By the equation of $z$ we obtain $w\left(x_{6}\right)<0$, which is a contradiction as $u_{x}>0$ in ( $x_{3}, L$ ). Hence, $u_{x}>0$ in [ $0, L$ ). Similarly, $v_{x}>0$ in $[0, L)$. Furthermore, $u(x)+v(x) \leq u(L)+v(L)<r$ for any $x \in[0, L]$. This completes the proof.

Let $\left(u^{*}, v^{*}\right)$ denote any positive equilibrium of system (7.35). Consider the eigenvalue problem

$$
\begin{align*}
& \tau \phi_{x x}-q \phi_{x}+\phi\left(r-u^{*}-v^{*}\right)+\lambda \phi=0, \quad 0<x<L, \\
& \tau \phi_{x}(0)=q \phi(0), \quad \phi_{x}(L)=0 . \tag{7.44}
\end{align*}
$$

For any $\tau>0$, let $\lambda_{1}(\tau)$ denote the largest eigenvalue of problem (7.44).
Lemma 7.4.6 The dominant eigenvalue $\lambda_{1}(\tau)$ has at most one positive root.
Proof This follows from Lemmas 7.4.3 and 7.4.5.
Lemma 7.4.7 Suppose that $d_{1} \neq d_{2}$. Then system (7.35) has no positive equilibrium.
Proof Let $\left(u^{*}, v^{*}\right)$ denote any positive equilibrium of system (7.35). Then $u^{*}, v^{*}$ satisfy

$$
\left\{\begin{array}{l}
d_{1} u_{x x}^{*}-q u_{x}^{*}+u^{*}\left(r-u^{*}-v^{*}\right)=0, \quad 0<x<L  \tag{7.45}\\
d_{2} v_{x x}^{*}-q v_{x}^{*}+v^{*}\left(r-u^{*}-v^{*}\right)=0, \quad 0<x<L \\
d_{1} u_{x}^{*}(0)-q u^{*}(0)=d_{2} v_{x}^{*}(0)-q v^{*}(0)=0 \\
u_{x}^{*}(L)=v_{x}^{*}(L)=0
\end{array}\right.
$$

Hence, $\lambda_{1}\left(d_{1}\right)=\lambda_{1}\left(d_{2}\right)=0$. By Lemma 7.4.6, $d_{1}=d_{2}$, which is a contradiction.
Proof (of Theorem 7.4.2) By the maximum principle for cooperative systems and standard theory for parabolic equations, if the initial conditions of (7.35) are nonnegative and not identically zero, system (7.35) has a unique positive smooth solution, which exists for all time, and it defines a smooth dynamical system on $C([0, L]) \times C([0, L])$. The stability of equilibria of (7.35) is understood with respect to the topology of $C([0, L]) \times C([0, L])$. Furthermore, system (7.35) is a strongly monotone dynamical system.

Assume that $d_{1}>d_{2}$ and that the semi-trivial state ( $u^{*}, 0$ ) exists. If the semitrivial equilibrium $\left(0, v^{*}\right)$ also exists, Theorem 7.4.2 follows from Theorem 7.1.6, Lemmas 7.4.4 and 7.4.7. If $\left(0, v^{*}\right)$ does not exist, the solution of the single species equation

$$
\left\{\begin{array}{l}
V_{t}=d_{2} V_{x x}-q V_{x}+V(r-V), \quad 0<x<L, t>0,  \tag{7.46}\\
d_{2} V_{x}(0, t)-q V(0, t)=0, \quad V_{x}(L, t)=0
\end{array}\right.
$$

satisfies $V(x, t) \rightarrow 0$ uniformly in $x$ as $t \rightarrow \infty$. Let $(u(x, t), v(x, t))$ denote the solution of (7.35) with $v(x, 0)=V(x, 0)$. Since $u(x, t)>0, v(x, t)$ satisfies

$$
\left\{\begin{array}{l}
v_{t} \leq d_{2} v_{x x}-q v_{x}+v(r-v), \quad 0<x<L, t>0,  \tag{7.47}\\
d_{2} v_{x}(0, t)-q v(0, t)=0, \quad v_{x}(L, t)=0 .
\end{array}\right.
$$

By the comparison principle for parabolic equations, $v(x, t) \leq V(x, t)$ for any $x \in$ $[0, L]$ and $t \geq 0$. Hence, $v(x, t) \rightarrow 0$ uniformly in $x$ as $t \rightarrow \infty$, which in turn implies that $u(x, t) \rightarrow u^{*}$ uniformly in $x$ as $t \rightarrow \infty$.

In the previous model (7.35), the no-flux condition is imposed at the upper upstream and the free-flow condition is imposed at the downstream end. In the general situation, it might be more realistic to impose a certain rate at which the population is lost at the downstream boundary as individuals are being washed away. The following model was introduced in [59].

$$
\begin{cases}\partial_{t} u-\alpha \partial_{x x} u+q \partial_{x} u=u(r-u-v) & \text { in }(0, L) \times(0, \infty),  \tag{7.48}\\ \partial_{t} v-\beta \partial_{x x} v+q \partial_{x} v=v(r-u-v) & \text { in }(0, L) \times(0, \infty), \\ \alpha \partial_{x} u-q u=0=\beta \partial_{x} v-q v=0 & \text { on }\{0\} \times(0, \infty), \\ \alpha \partial_{x} u+(b-1) q u=0=\beta \partial_{x} v-(b-1) q v=0 & \text { on }\{L\} \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\alpha, \beta>0$ are the unconditional dispersal rates and $r>0$ is the intrinsic growth rate of the population. Both species are impacted by an advection with a common rate $q>0$ in the direction from $x=0$ towards $x=L$. The nondimensional parameter $b \geq 0$ informs the rate of population loss at the end of the river $x=L$. If $b=0$, we recover no-flux boundary condition at $x=0, L$; the case $b=1$ is called the free-flow condition, and the case $b=\infty$ corresponds to the lethal boundary condition.

Finally, we state a more general result where the faster diffusion is selected for.

Theorem 7.4.8 Suppose $q>0$ and $r$ is a positive constant, and that $0 \leq b \leq 1$, then the faster diffusion is selected; i.e. if $0<\beta<\alpha$, then the equilibrium $E_{1}=(\tilde{u}, 0)$, whenever it exists, is globally asymptotically stable.

Theorem 7.4.8 was first proved in the case $b=1$; see [59, Theorem 6.1]. Subsequently, it was generalized in [64, Theorem 3.1] to the case $0 \leq b<1$.

### 7.5 Further Reading

In Section 7.1, we applied the theory of monotone dynamical systems to deduce some useful abstract theorems for the dynamics of diffusive Lotka-Volterra systems. The theory of monotone dynamical systems grew out of the works of Hirsch [33, 34, 35, 36] and Matano [67, 68, 69]. The abstract treatment of competitive systems was initiated by Hess and Lazer [32], who first observed that the dynamics of twospecies competition has common features regardless of the fine details of the model, or its dimension. Hsu, Waltman and Ellermeyer [38] considered continuous time competitive systems using monotone dynamical systems theory, which was later extended in [37]. Further progress, particularly on the bistable dynamics and saddle point behaviors was obtained in [44, 57, 74]. Building on the framework of [37], we show that diffusive Lotka-Volterra systems satisfy an additional hypothesis and deduce an improved trichotomy result for long-time dynamics (Theorem 7.1.6). This improved an earlier result in [53]. For further references, see the monograph [72] and the survey paper [73] for more recent developments in monotone dynamical systems, and the monograph [75] concerning the dynamical systems approach to population persistence.

For the case of constant coefficients, Theorems 7.2.1 and 7.2.5 in Section 7.2 addressed the questions of coexistence and competitive exclusion. In particular, there exist no nonconstant positive equilibria. There is some important progress on the bistable case where both semi-trivial equilibria are locally stable: Kishimoto and Weinberger proved in [46] that if the underlying physical domain is convex, then there is no stable nonconstant positive equilibria. Unstable nonconstant positive equilibria, however, could exist in the bistable case; see [22, 45]. When the interspecific competition coefficients are sufficiently large, the spatial segregation of two competing species could occur; see [17, 18]. A question concerning the global dynamics in the bistable case is to determine the attraction domains of two locally stable semi-trivial equilibria and characterize the dynamics on the corresponding separatrix which serves as the boundary of the attraction domains. We refer to [43, 44, 71] for the related works.

For Lotka-Volterra competition-diffusion models in spatially heterogeneous environments, a large part of the study originated in the book of Cantrell and Cosner [7] on ecological dynamics and the applications to the evolution of dispersal in spatially homogeneous but temporally constant environments [19, 26]. Most of the earlier works are more focused on the ecological dynamics side; see [5,6,8,9,40,42,60]. An attempt to connect ecological and evolutionary dynamics was initiated in [58]
in the context of the two-species Lotka-Volterra competition model, which was significantly extended by the works [27,28,30,55]; for instance, a complete understanding of the full dynamics of two-species competition-diffusion systems in the weak competition case was established in the work [29] for a class of Lotka-Volterra models.

In [3] Belgacem and Cosner considered the combined movement of unbiased diffusion with the directed movement upward along the resource gradient for a single species. They showed that such combined movement could be beneficial to the persistence of a single species; see also [16] for further developments. Cantrell et al. considered a two-species competition model in which one species adopts unconditional diffusion while the other species adopts a combination of unconditional diffusion and directed movement upward along the resource gradient in [10]. They asked whether the directed movement upward along the resource gradient could convey competitive advantage to the species. The investigations in [11] suggested that the strong directed movement upward along the resource gradient could force the species with directed movement to concentrate at the locations with the most available resources, so that the other species with unconditional dispersal could use the resources elsewhere to coexist; see the works [13, 47, 48, 54, 56] for further developments. The study in [1] provided the global bifurcation diagrams of the positive equilibria in multiple parameters, revealing the complexity of the dynamics of the two-species competition-diffusion models with advection. For two-species competition-diffusion models in which both species adopt combinations of unconditional diffusion and directed movement upward along the resource gradient, we refer to [12,24,50,51], in which it is shown that intermediate diffusion or advection rates could be evolutionarily stable; a general philosophy is that the evolutionarily stable dispersal rates are proportional to the advection rates, suggesting that an optimal dispersal strategy is to bet and hedge, i.e. to apply the directed movement to locate the most favorable resources and to use the unconditional dispersal to find resources elsewhere. We refer to Chapter 9 for a discussion of evolutionary stable strategy and other notions of adaptive dynamics, and to the surveys [14, 15] for further discussions.

In their seminal work [76] Speirs and Gurney used reaction-diffusion-advection models to address the drift paradox, i.e. how can species persist in the water columns without being washed out. They found that when the lethal boundary condition is imposed at the downstream end, a necessary and sufficient condition for a single species to persist is that the river is sufficiently long and the diffusion rate falls into a proper range: a population with a small diffusion rate will not be able to resist the drift to the lethal downstream end, while one that has a large diffusion rate will also be losing too many individuals at the downstream end. When the free flow boundary is imposed at the downstream end, the persistence criteria was investigated in [77]. Recently, more general boundary conditions have been considered in [25], where a complete classification of the persistence criteria is found; see Proposition 5.3.2 (with an illustration in Fig. 5.1) and also the paper [82]. We refer to [65, 66] for further discussions of the modeling of single species population dynamics in rivers. The Allee effect on the persistence of a single species in rivers was considered in
[80, 81]. For two-species competition models with constant coefficients, it is shown in [59] that a faster dispersal rate is always selected when the free-flow boundary condition is imposed at the downstream end. This was subsequently extended to more general boundary conditions in [64], including no-flux boundary conditions at the downstream end. For two-species competition models with spatially heterogeneous coefficients, we refer to the works [52, 62, 63, 83, 84] for both ecological and evolutionary dynamics. These works are primarily focused on the situation when the resource distributions are static. In contrast, there are relatively fewer works on two-species competition models with nutrient dynamics; see [2, 78, 79].

## Problems

7.5.1 Consider the following system of ordinary differential equations.

$$
\begin{equation*}
x_{1}^{\prime}=x_{1}\left(1-x_{1}-x_{2}\right), \quad x_{2}^{\prime}=x_{2}\left(1-\mu x_{1}-x_{2}\right)^{3} . \tag{7.49}
\end{equation*}
$$

Suppose $\mu>1$. Show that the semiflow generated by (7.49) satisfies (H1')-(H4') and has no positive equilibrium; $E_{2}=(0,1)$ is locally asymptotically stable. Moreover, $E_{1}=(1,0)$ attracts some internal trajectories. [Hint: $E_{1}$ attracts all trajectories initiating in $\left\{\left(x_{1}, x_{2}\right) \in \mathbb{R}^{2}: x_{1}>1,0<x_{2}<\left(x_{1}-1\right)^{2}\right\}$.]
7.5.2 Assume the coefficients $a_{i}, b_{i}, c_{i} \in C(\bar{\Omega})$ satisfy

$$
\frac{b_{1}}{b_{2}}>\frac{a_{1}}{a_{2}}>\frac{c_{1}}{c_{2}} \quad \text { in } \Omega .
$$

Show that the semi-trivial equilibria of (7.19) are linearly unstable provided that both $d_{1}$ and $d_{2}$ are sufficiently small.
7.5.3 Consider the following predator-prey model in a bounded smooth domain $\Omega$ with homogeneous Neumann boundary condition

$$
\begin{cases}\partial_{t} u-d_{1} \Delta u=u\left(a_{1}-b_{1} u-c_{1} v\right) & \text { in } \Omega \times(0, T),  \tag{7.50}\\ \partial_{t} v-d_{2} \Delta v=a_{2} u-b_{2} v & \text { in } \Omega \times(0, T), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, T), \\ u(x, 0)=u_{0}(x)>0, \quad v(x, 0)=v_{0}(x)>0 & \text { in } \bar{\Omega},\end{cases}
$$

where $a_{i}, b_{i}, c_{i}, d_{i}$ are all positive constants. Show that, as $t \rightarrow \infty$,

$$
(u, v) \rightarrow\left(u^{*}, v^{*}\right):=\left(\frac{a_{1} b_{2}}{b_{1} b_{2}+c_{1} a_{1}}, \frac{a_{1} a_{2}}{b_{1} b_{2}+c_{1} a_{1}}\right) \quad \text { uniformly in } \Omega .
$$

[Hint: Prove that

$$
E(u, v)=\int_{u^{*}}^{u} \frac{\eta-u^{*}}{\eta} \mathrm{~d} \eta+\frac{c_{1}}{2 a_{2}}\left(v-v^{*}\right)^{2}
$$

is a Lyapunov function, and use Theorem 7.2.6.]
7.5.4 Suppose $\left(u^{*}, v^{*}\right)$ is a positive equilibrium of (7.19), i.e. it is a positive solution of

$$
\begin{cases}d_{1} \Delta u^{*}+u^{*}\left(a_{1}(x)-b_{1}(x) u^{*}-c_{1}(x) v^{*}\right)=0 & \text { in } \Omega,  \tag{7.51}\\ d_{2} \Delta v^{*}+v^{*}\left(a_{2}(x)-b_{2}(x) u^{*}-c_{2}(x) v^{*}\right)=0 & \text { in } \Omega, \\ \mathbf{n} \cdot u^{*}=\mathbf{n} \cdot v^{*}=0 & \text { on } \partial \Omega,\end{cases}
$$

where $a_{i}, b_{i}, c_{i} \in C^{\alpha}(\bar{\Omega})$, and are strictly positive in $\bar{\Omega}$, and that the spatially averaged system satisfies the weak competition hypothesis, i.e.

$$
\begin{equation*}
\frac{\bar{b}_{1}}{\bar{b}_{2}}>\frac{\bar{a}_{1}}{\bar{a}_{2}}>\frac{\bar{c}_{1}}{\bar{c}_{2}}, \tag{7.52}
\end{equation*}
$$

where $\bar{g}=\frac{1}{|\Omega|} \int_{\Omega} g \mathrm{~d} x$ for any function $g \in C(\bar{\Omega})$.

1. Show that $E_{1}=(\tilde{u}, 0)$ and $E_{2}=(0, \tilde{v})$ are both linearly unstable for $d_{1}, d_{2} \rightarrow \infty$. In particular, (7.51) has at least one positive solution for $\min \left\{d_{i}\right\} \gg 1$. [Hint: $\tilde{u} \rightarrow \bar{a}_{1} / \bar{b}_{1}$ as $d_{1} \rightarrow \infty$ and $\tilde{v} \rightarrow \bar{a}_{2} / \bar{c}_{2}$ as $d_{2} \rightarrow \infty$. Then consider the linearized eigenvalue problem.]
2. Prove the a priori $L^{\infty}$ estimate, i.e. there is a $C$ which is uniform $\operatorname{in} \min \left\{d_{1}, d_{2}\right\} \geq 1$ such that $\left\|u^{*}\right\|_{L^{\infty}(\Omega)}+\left\|v^{*}\right\|_{L^{\infty}(\Omega)} \leq C$.
3. Prove that, passing to a subsequence if necessary, there exist constants $\bar{U}, \bar{V}$ such that $\left(u^{*}, v^{*}\right) \rightarrow(\bar{U}, \bar{V})$ in $C(\bar{\Omega})$.
4. Show that $\bar{U}=\bar{V}=0$ is impossible. [Hint: By integrating (7.51) over $\Omega$, we obtain

$$
\int_{\Omega} u^{*}\left(a_{1}-b_{1} u^{*}-c_{1} v^{*}\right) \mathrm{d} x=0
$$

Then use the fact that $\inf _{\Omega} a_{1}>0$.]
5. Prove that

$$
\begin{equation*}
\bar{U}\left(\bar{a}_{1}-\bar{b}_{1} \bar{U}-\bar{c}_{1} \bar{V}\right)=0=\bar{V}\left(\bar{a}_{2}-\bar{b}_{2} \bar{U}-\bar{c}_{2} \bar{V}\right) \tag{7.53}
\end{equation*}
$$

and deduce that that $\bar{U}>0$ and $\bar{V}>0$. [Hint: Suppose $\bar{U}=0$, then it follows from the above step that $\bar{V}>0$. By (7.53), we have $\bar{V}=\bar{a}_{2} / \bar{c}_{2}$. Setting $w=$ $u^{*} /\left\|u^{*}\right\|_{L^{\infty}(\Omega)}$, we have $\|w\|_{L^{\infty}(\Omega)}=1$ and

$$
\Delta w=-\frac{1}{d_{1}} w\left(a_{1}-b_{1} u^{*}-c_{1} v^{*}\right) \quad \text { in } \Omega, \quad \mathbf{n} \cdot \nabla w=0 \quad \text { on } \partial \Omega
$$

Observe that $w \rightarrow 1$ in $C(\bar{\Omega})$ and deduce that

$$
\int_{\Omega}\left(a_{1}-c_{1} \bar{V}\right) \mathrm{d} x=\lim _{\min \left\{d_{i}\right\} \rightarrow \infty} \int_{\Omega} w\left(a_{1}-b_{1} u^{*}-c_{1} v^{*}\right) \mathrm{d} x=0
$$

This implies that $\bar{a}_{1}=\bar{c}_{1} \bar{V}=\frac{\bar{c}_{1} \bar{a}_{2}}{\bar{c}_{2}}$, which is impossible.]
6. Conclude that $\left(u^{*}, v^{*}\right) \rightarrow(\bar{U}, \bar{V})$ in $C(\bar{\Omega})$ as $\min \left\{d_{i}\right\} \rightarrow \infty$, where $(\bar{U}, \bar{V})$ is the unique positive root of (7.53). [Hint: The uniqueness of the subsequential limit implies the convergence of the full sequence as $\min \left\{d_{i}\right\} \rightarrow \infty$.]
7.5.5 (Every positive solution of (7.51) is linearly stable when $\min \left\{d_{i}\right\}$ is sufficiently large.) Assuming the same hypotheses as Problem E.3.2, show that there exists an $M>0$ such that if $\min \left\{d_{i}\right\} \geq M$, then any positive solution $\left(u^{*}, v^{*}\right)$ of (7.51) is linearly stable. Recall that the linear stability of ( $u^{*}, v^{*}$ ) is determined by the eigenvalue problem

$$
\begin{cases}d_{1} \Delta \phi+\left(a_{1}-2 b_{1} u^{*}-c_{1} v^{*}\right) \phi-c_{1} u^{*} \psi+\lambda_{1} \phi=0 & \text { in } \Omega,  \tag{7.54}\\ d_{2} \Delta \psi-c_{2} v^{*} \phi+\left(a_{2}-b_{2} u^{*}-2 c_{2} v^{*}\right) \psi+\lambda_{1} \psi=0 & \text { in } \Omega, \\ \mathbf{n} \cdot \nabla \phi=\mathbf{n} \cdot \nabla \psi=0 & \text { in } \partial \Omega .\end{cases}
$$

Without loss of generality, we may assume $|\Omega|=1$.

1. Show that (7.54) has a principal eigenvalue $\lambda_{1}$, (i.e. $\lambda_{1} \in \mathbb{R}$ is the eigenvalue with the least real part, and the corresponding eigenfunction ( $\phi, \psi$ ) can be chosen such that $\phi>0>\psi$ in $\bar{\Omega}$ ) by verifying the hypotheses of Theorem 3.3.3. In addition, we may normalize the eigenfunctions so that $\frac{1}{|\Omega|} \int_{\Omega}\left(\phi^{2}+\psi^{2}\right) \mathrm{d} x=1$.
2. Show that, passing to a subsequence if necessary, $(\phi, \psi) \rightarrow(\bar{\Phi}, \bar{\Psi})$ as $\min \left\{d_{i}\right\} \rightarrow$ $\infty$, for some constants $\bar{\Phi} \geq 0 \geq \bar{\Psi}$ such that $\bar{\Phi}^{2}+\bar{\Psi}^{2}=1$.
3. Show that there exists an $M \geq 0$, which depends on the $L^{\infty}$ bounds of $\left(u^{*}, v^{*}\right)$ but is independent of $d_{i}>0$, such that $\lambda_{1} \geq-M$.
4. Show that

$$
\liminf _{\min \left\{d_{i}\right\} \rightarrow \infty} \lambda_{1}>0
$$

[Hint: Assume to the contrary that, passing to a subsequence if necessary, $\lambda_{1} \rightarrow$ $\Lambda_{1} \leq 0$ as $\min \left\{d_{i}\right\} \rightarrow \infty$. By integrating (7.54), we have

$$
\left\{\begin{array}{l}
\int_{\Omega}\left[\left(a_{1}-2 b_{1} u^{*}-c_{1} v^{*}+\lambda_{1}\right) \phi-c_{1} u^{*} \psi\right] \mathrm{d} x=0 \\
\int_{\Omega}\left[\left(a_{2}-b_{2} u^{*}-2 c_{2} v^{*}+\lambda_{1}\right) \psi-b_{2} v^{*} \phi\right] \mathrm{d} x=0
\end{array}\right.
$$

Passing to the limit, so that

$$
\lambda_{1} \rightarrow \Lambda_{1}, \quad\left(u^{*}, v^{*}\right) \rightarrow(\bar{U}, \bar{V}), \quad(\phi, \psi) \rightarrow(\bar{\Phi}, \bar{\Psi}),
$$

and using (7.53), deduce that

$$
\left(\begin{array}{cc}
\Lambda_{1}-\bar{b}_{1} \bar{U} & -\bar{c}_{1} \bar{U} \\
-b_{2} \bar{V} & \Lambda_{1}-\bar{c}_{2} \bar{V}
\end{array}\right)\binom{\bar{\Phi}}{\bar{\Psi}}=\binom{0}{0}
$$

and therefore

$$
\operatorname{det}\left(\begin{array}{cc}
\Lambda_{1}-\bar{b}_{1} \bar{U} & -\bar{c}_{1} \bar{U} \\
-b_{2} \bar{V} & \Lambda_{1}-\bar{c}_{2} \bar{V}
\end{array}\right)=0 .
$$

By (7.52), we deduce that $\Lambda_{1}>0$. This is a contradiction.]
7.5.6 Let $\lambda_{1}$ be the principal eigenvalue of (7.27). Prove that $\lambda_{1}<0$ whenever $c<1$ and $d_{1} \geq d_{2}$. [Hint: Observe that $\lambda_{1}$ is monotone increasing in $c$ as well as in $d_{2}$, and that $\lambda_{1}=0$ when $c=1$ and when $d_{2}$ is increased to $d_{1}$.]
7.5.7 Let $\lambda$ be the principal eigenvalue of (7.36). Show that

$$
\begin{equation*}
\frac{\partial \lambda}{\partial \tau}=\frac{\int\left(\mathrm{e}^{-\alpha x} \phi\right)_{x} \phi_{x} \mathrm{~d} x}{\int \mathrm{e}^{-\alpha x} \phi^{2} \mathrm{~d} x}, \tag{7.55}
\end{equation*}
$$

where $\alpha=q / \tau$.
7.5.8 Suppose (7.41) has a unique positive solution $u^{*}$, where $d_{1}, q, r, L$ are positive constants. Show that $u^{*}(x)<r$ in $[0, L]$.

## References

1. I. Averill, K.-Y. Lam, and Y. Lou, The role of advection in a two-species competition model: a bifurcation approach, Mem. Amer. Math. Soc, 245 (2017). pp. 117.
2. M. Ballyk, L. Dung, D. A. Jones, and H. L. Smith, Effects of random motility on microbial growth and competition in a flow reactor, SIAM J. Appl. Math, 59 (1998), pp. 573-596.
3. F. Belgacem and C. Cosner, The effects of dispersal along environmental gradients on the dynamics of populations in heterogeneous environment, Canadian Appl. Math. Quarterly, 3 (1995), pp. 379-397.
4. P. N. Brown, Decay to uniform states in ecological interactions, SIAM J. Appl. Math., 38 (1980), pp. 22-37.
5. R. S. Cantrell and C. Cosner, The effects of spatial heterogeneity in population dynamics, J. Math. Biol., 29 (1991), pp. 315-338.
6. —, On the effects of spatial heterogeneity on the persistence of interacting species, J. Math. Biol., 37 (1998), pp. 103-145.
7. R. S. Cantrell and C. Cosner, Spatial ecology via reaction-diffusion equations, Wiley Series in Mathematical and Computational Biology, John Wiley \& Sons, Ltd., Chichester, 2003.
8. R. S. Cantrell, C. Cosner, and V. Huston, Permanence in ecological systems with spatial heterogeneity, Proc. Roy. Soc. Edinburgh Sect. A, 123 (1993), pp. 533-559.
9. , Ecological models, permanence and spatial heterogeneity, Rocky Mountain J. Math., 26 (1996), pp. 1-35.
10. R. S. Cantrell, C. Cosner, and Y. Lou, Movement towards better environments and the evolution of rapid diffusion, Math. Biosci., 240 (2006), pp. 199-214.
11. —, Advection-mediated coexistence of competing species, Proc. Roy. Soc. Edinburgh Sect. A, 137 (2007), pp. 497-518.
12. X. Chen, K.-Y. Lam, and Y. Lou, Dynamics of a reaction-diffusion-advection model for two competing species, Discrete Contin. Dyn. Syst., 32 (2012), pp. 3841-3859.
13. X. Chen and Y. Lou, Principal eigenvalue and eigenfunctions of an elliptic operator with large advection and its application to a competition model, Indiana Univ. Math. J., 57 (2008), pp. 627-657.
14. C. Cosner, Beyond diffusion: Conditional dispersal in ecological models, infinite dimensional dynamical systems, Fields Inst. Commun., 64 (2013), pp. 305-317.
15. —, Reaction-diffusion-advection models for the effects and evolution of dispersal, Discrete Contin. Dyn. Syst., 34 (2014), pp. 1701-1745.
16. C. Cosner and Y. Lou, Does movement toward better environments always benefit a population?, J. Math. Anal. Appl., 277 (2003), pp. 489-503.
17. E. N. Dancer and Y. H. Du, Competing species equations with diffusion, large interactions, and jumping nonlinearities, J. Differential Equations, 114 (1994), pp. 434-475.
18. E. N. Dancer, D. Hilhorst, M. Mimura, and L. A. Peletier, Spatial segregation limit of a competition-diffusion system, European J. Appl. Math., 10 (1999), pp. 97-115.
19. J. Dockery, V. Hutson, K. Mischaikow, and M. Pernarowski, The evolution of slow dispersal rates: a reaction diffusion model, J. Math. Biol., 37 (1998), pp. 61-83.
20. J. Doumate and R. Salako, Asymptotic behavior of solutions of an ODE-PDE hybrid competition system, J. Differential Equations, 334 (2022), pp. 216-225.
21. D. Gilbarg and N. S. Trudinger, Elliptic partial differential equations of second order, Classics in Mathematics, Springer-Verlag, Berlin, 2001. Reprint of the 1998 edition.
22. C. Gui and Y. Lou, Uniqueness and nonuniqueness of coexistence states in the Lotka-Volterra competition model, Comm. Pure Appl. Math., 47 (1994), p. 1571-1594.
23. J. K. Hale, Dynamical systems and stability, J. Math. Anal. Appl., 26 (1969), pp. 39-59.
24. R. Hambrock and Y. Lou, The evolution of conditional dispersal strategy in spatially heterogeneous habitats, Bull. Math. Biol., 71 (2009), pp. 1793-1817.
25. W. Hao, K.-Y. Lam, and Y. Lou, Ecological and evolutionary dynamics in advective environments: critical domain size and boundary conditions, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 367-400.
26. A. Hastings, Can spatial variation alone lead to selection for dispersal?, Theor. Pop. Biol., 24 (1983), pp. 244-251.
27. X. He and W.-M. Ni, The effects of diffusion and spatial variation in Lotka-Volterra competition-diffusion system I: Heterogeneity vs. homogeneity, J. Differential Equations, 254 (2013), pp. 528-546.
28. , The effects of diffusion and spatial variation in Lotka-Volterra competition-diffusion system II: The general case, J. Differential Equations, 254 (2013), pp. 4088-4108.
29. , Global dynamics of the Lotka-Volterra competition-diffusion system: diffusion and spatial heterogeneity I, Comm. Pure Appl. Math., 69 (2016), pp. 981-1014.
30. —, Global dynamics of the Lotka-Volterra competition-diffusion system with equal amount of total resources II,, Calc. Var. Partial Differential Equations, 55 (2016).
31. D. Henry, Geometric theory of semilinear parabolic equations, vol. 840 of Lecture Notes in Mathematics, Springer-Verlag, Berlin-New York, 1981.
32. P. Hess and A. C. Lazer, On an abstract competition model and applications, Nonlinear Anal., 16 (1991), pp. 917-940.
33. M. W. Hirsch, Systems of differential equations which are competitive or cooperative. I. Limit sets, SIAM J. Math. Anal., 13 (1982), pp. 167-179.
34. Whe dynamical systems approach to differential equations, Bull. Amer. Math. Soc. (N.S.), 11 (1984), pp. 1-64.
35. , Stability and convergence in strongly monotone dynamical systems, J. Reine Angew. Math., 383 (1988), pp. 1-53.
36. , Positive equilibria and convergence in subhomogeneous monotone dynamics, in Comparison methods and stability theory (Waterloo, ON, 1993), vol. 162 of Lecture Notes in Pure and Appl. Math., Dekker, New York, 1994, pp. 169-188.
37. S. B. Hsu, H. L. Smith, and P. Waltman, Competitive exclusion and coexistence for competitive systems on ordered Banach spaces, Trans. Amer. Math. Soc., 348 (1996), pp. 4083-4094.
38. S.-B. Hsu, P. Waltman, and S. F. Ellermeyer, A remark on the global asymptotic stability of a dynamical system modeling two species competition, Hiroshima Math. J., 24 (1994), pp. 435-445.
39. V. Hutson, J. López-Gómez, K. Mischaikow, and G. Vickers, Limit behaviour for a competing species problem with diffusion, in Dynamical systems and applications, vol. 4 of World Sci. Ser. Appl. Anal., World Sci. Publ., River Edge, NJ, 1995, pp. 343-358.
40. V. Hutson, Y. Lou, and K. Mischaikow, Spatial heterogeneity of resources versus LotkaVolterra dynamics, J. Differential Equations, 185 (2002), pp. 97-136.
41. Convergence in competition models with small diffusion coefficients, J. Differential Equations, 211 (2005), pp. 135-161.
42. V. Hutson, Y. Lou, K. Mischaikow, and P. Polacik, Competing species near the degenerate limit, SIAM J. Math. Anal., 35 (2003), pp. 453-491.
43. M. Iida, T. Muramatsu, H. Ninomiya, and E. Yanagida, Diffusion-induced extinction of a superior species in a competition system, Japan J. Indust. Appl. Math. J., 15 (1998), pp. 233252.
44. J. Jiang, X. Liang, and X.-Q. Zhao, Saddle-point behavior for monotone semiflows and reaction-diffusion models, J. Differential Equations, 203 (2004), pp. 313-330.
45. Y. Kan-on, Bifurcation structure of stationary solutions of a Lotka-Volterra competition model with diffusion, SIAM J. Math. Anal., 29 (1998), pp. 424-436.
46. K. Kishimoto and H. Weinberger, The spatial homogeneity of stable equilibria of some reaction-diffusion systems on convex domains, J. Differential Equations, 58 (1985), pp. 15-21.
47. K.-Y. Lam, Concentration phenomena of a semilinear elliptic equation with large advection in an ecological model, J. Differential Equations, 250 (2011), pp. 161-181.
48. Limiting profiles of semilinear elliptic equations with large advection in population dynamics ii, SIAM J. Math. Anal., 44 (2012), pp. 1808-1830.
49. K.-Y. Lam, S. Liu, and Y. Lou, Selected topics on reaction-diffusion-advection models from spatial ecology, Math. Appl. Sci. Eng., 1 (2020), pp. 150-180.
50. K.-Y. Lam and Y. Lou, Evolution of dispersal: evolutionarily stable strategies in spatial models, J. Math. Biol., 68 (2014), pp. 851-877.
51. ——, Evolutionarily stable and convergent stable strategies in reaction- diffusion models for conditional dispersal, Bull. Math. Biol., 76 (2014), pp. 261-291.
52. K.-Y. Lam, Y. Lou, and F. Lutscher, Evolution of dispersal in closed advective environments, J. Biol. Dyn., 9 (2015), pp. 188-212.
53. K.-Y. Lam and D. Munther, A remark on the global dynamics of competitive systems on ordered Banach spaces, Proc. Amer. Math. Soc., 144 (2016), pp. 1153-1159.
54. K.-Y. Lam and W. M. Ni, Limiting profiles of semilinear elliptic equations with large advection in population dynamics, Discrete Contin. Dyn. Syst., 28 (2010), pp. 1051-1067.
55. ——, Uniqueness and complete dynamics of the Lotka-Volterra competition diffusion system, SIAM J. Appl. Math., 72 (2012), pp. 1695-1712.
56. , Advection-mediated competition in general environments, J. Differential Equations, 257 (2014), pp. 3466-3500.
57. X. Liang and J. Jiang, On the finite-dimensional dynamical systems with limited competition, Trans. Amer. Math. Soc., 354 (2002), pp. 3535-3554.
58. Y. Lou, On the effects of migration and spatial heterogeneity on single and multiple species,, J. Differential Equations, 223 (2006), pp. 400-426.
59. Y. Lou and F. Lutscher, Evolution of dispersal in advective environments, J. Math Biol., 69 (2014), pp. 1319-1342.
60. Y. Lou, S. Martinez, and P. Polacik, Loops and branches of coexistence states in a LotkaVolterra competition model, J. Differential Equations, 230 (2006), pp. 720-742.
61. Y. Lou and R. Salako, Dynamics of a parabolic-ode competition system in heterogeneous environments, Proc. Amer. Math. Soc., 148 (2020), pp. 3025-3028.
62. Y. Lou, D. Xiao, and P. Zhou, Qualitative analysis for a Lotka-Volterra competition system in advective homogeneous environment, Discrete Contin. Dyn. Syst., 36 (2016), pp. 953-969.
63. Y. Lou, X. Zhao, and P. Zhou, Global dynamics of a Lotka-Volterra competition-diffusionadvection system in heterogeneous environments, J. Math. Pure. Appl., 121 (2019), pp. 47-82.
64. Y. Lou and P. Zhou, Evolution of dispersal in advective homogeneous environments: The effect of boundary conditions, J. Differential Equations, 259 (2015), pp. 141-171.
65. F. Lutscher, E. McCauley, and M. Lewis, Effects of heterogeneity on spread and persistence in rivers, Bull. Math. Biol., 68 (2006), pp. 2129-2160.
66. F. Lutscher, E. Pachepsixy, and M. Lewis, The effect of dispersal patterns on stream populations, SIAM Rev., 47 (2005), pp. 749-772.
67. H. Matano, Asymptotic behavior and stability of solutions of semilinear diffusion equations, Publ. Res. Inst. Math. Sci., 15 (1979), pp. 401-454.
68. -, Existence of nontrivial unstable sets for equilibriums of strongly order-preserving systems, J. Fac. Sci. Univ. Tokyo Sect. IA Math., 30 (1984), pp. 645-673.
69. H. Matano, Strongly order-preserving local semidynamical systems-theory and applications, in Semigroups, theory and applications, Vol. I (Trieste, 1984), vol. 141 of Pitman Res. Notes Math. Ser., Longman Sci. Tech., Harlow, 1986, pp. 178-185.
70. W. Ni, J. Shi, and M. Wang, Global stability of nonhomogeneous equilibrium solution for the diffusive Lotka-Volterra competition model, Calc. Var. Partial Differential Equations, 59 (2020), p. 28. Paper No. 132.
71. H. Ninomiya, Separatrices of competition-diffusion equations, J. Math. Kyoto Univ., 35 (1995), pp. 539-567.
72. H. L. Smith, Monotone dynamical systems, vol. 41 of Mathematical Surveys and Monographs, American Mathematical Society, Providence, RI, 1995. An introduction to the theory of competitive and cooperative systems.
73. —, Monotone dynamical systems: reflections on new advances \& applications, Discrete Contin. Dyn. Syst., 37 (2017), pp. 485-504.
74. H. L. Smith and H. R. Thieme, Stable coexistence and bi-stability for competitive systems on ordered Banach spaces, J. Differential Equations, 176 (2001), pp. 195-222.
75. ——, Dynamical systems and population persistence, vol. 118 of Graduate Studies in Mathematics, American Mathematical Society, Providence, RI, 2011.
76. D. C. Speirs and W. S. C. Gurney, Population persistence in rivers and estuaries, Ecology, 82 (2001), pp. 1219-1237.
77. O. Vasilyeva and F. Lutscher, Population dynamics in rivers: analysis of steady states, Can. Appl. Math. Quart., 18 (2011), pp. 439-469.
78. X. Wang, Qualitative behavior of solutions of chemotactic diffusion systems: effects of motility and chemotaxis and dynamics, SIAM J. Math. Anal., 31 (2000), pp. 535-560.
79. X. Wang and Y. Wu, Qualitative analysis on a chemotactic diffusion model for two species competing for a limited resource, Quart. Appl. Math, 60 (2002), pp. 505-531.
80. Y. Wang and J. Shi, Persistence and extinction of population in reaction-diffusion- advection model with weak allee effect growth, SIAM J. Appl. Math., 79 (2019), pp. 1293-1313.
81. Y. Wang, J. Shi, and J. Wang, Persistence and extinction of population in reaction- diffusionadvection model with strong allee effect growth, J. Math. Biol., 78 (2019), pp. 2093-2140.
82. F. Xu, W. Gan, and D. Tang, Population dynamics and evolution in river ecosystems, Nonlinear Anal. Real World App., 51 (2020), p. 102983.
83. X.-Q. Zhao and P. Zhou, On a Lotka-Volterra competition model: the effects of advection and spatial variation, Calc. Var. Partial Differential Equations, 55 (2016), p. 25. Art. 73.
84. P. Zhou, On a Lotka-Volterra competition system: diffusion vs advection, Calc. Var. Partial Differential Equations, 55 (2016), p. 29. Art. 137.

## Chapter 8 Dynamics of Phytoplankton Populations


#### Abstract

In this chapter we analyze reaction-diffusion-advection models for the growth of single or multiple phytoplankton species in a eutrophic, vertical water column. In such environments, the nutrients are in abundance and the phytoplankton species is limited by the light only. A strong comparison principle for the cumulative distribution function of the single phytoplankton species is established so that the monotone dynamical system theory is applicable to some specific positive cone which is unique to the model. This allows us to fully determine the global dynamics of the nonlinear scalar equation for the growth of a single phytoplankton species. Next we study two phytoplankton species which are limited by, and competing for, the light only. Again, a strong comparison principle for two phytoplankton species is proved. As an application, we show that for the model of two phytoplankton species which are identical except for their buoyant/sinking rates, the more buoyant (or less prone to sinking) phytoplankton species drives the other species to extinction. Finally, as an application of the principal Floquet bundle theory that is discussed in Chapter 4, we consider some N -species phytoplankton models and prove that in general the competition exclusion takes place when the species are similar to each other.


### 8.1 Introduction

Phytoplankton are microscopic plant-like photosynthetic organisms that drift in the water columns of lakes and oceans. They grow abundantly around the globe and are the foundation of the marine food chain. Since they transport a significant amount of atmospheric carbon dioxide into the deep oceans, they play a crucial role in climate dynamics. Nutrients and light are the essential resources for the growth of phytoplankton. There are three possible ways for phytoplankton to compete for nutrients and light. At one extreme, in oligotrophic ecosystems with an ample supply of light, species compete for limiting nutrients [27]. At the other extreme, in eutrophic ecosystems with ample nutrient supply, species compete for light [8, 17, 18, 36]. In
some ecosystems of intermediate conditions, they compete for both nutrients and light [26, 31, 38]. In the water column, phytoplankton diffuse by water turbulence, and also sink or buoy, depending on whether they are heavier than water or not [8].

We discuss a model proposed by Huisman et al. [18, 19, 20]. Consider a water column with unit cross-sectional area and with $N$ phytoplankton species, for some $N \geq 1$. Let $x$ denote the depth within the water column with length $L$, where $x$ varies from 0 (the water surface) to $L$ (the bottom), and let $u_{i}(x, t)$ denote the population density of the $i$-th species at the location $x$ and time $t$.

$$
\begin{equation*}
\partial_{t} u_{i}=D_{i} \partial_{x x} u_{i}-\alpha_{i} \partial_{x} u_{i}+u_{i}\left[g_{i}(I(x, t))-d_{i}\right] \quad \text { for } 0<x<L, t>0, \tag{8.1}
\end{equation*}
$$

for $i=1, \ldots, N$, and with no-flux boundary conditions

$$
\begin{equation*}
D_{i} \partial_{x} u_{i}-\alpha_{i} u_{i}=0 \quad \text { for } x=0, L, t>0, i=1, \ldots, N, \tag{8.2}
\end{equation*}
$$

and initial data

$$
\begin{equation*}
u_{i}(x, 0)=u_{i, 0}(x) \quad \text { for } 0 \leq x \leq L, i=1, \ldots, N . \tag{8.3}
\end{equation*}
$$

Here $D_{i}>0$ is the diffusion coefficient caused by turbulence, $\alpha_{i} \in \mathbb{R}$ is the sinking (if $\alpha_{i}<0$ ) or buoyant (if $\alpha_{i}>0$ ) velocity, $d_{i}>0$ is the loss rate. The term $g_{i}(I)$ represents the specific growth rate of the $i$-th phytoplankton species, which depends on the light intensity $I(x, t)$ at that specific location. By the Lambert-Beer law, the light intensity $I(x, t)$ takes the form

$$
\begin{equation*}
I(x, t)=I_{0} \exp \left(-k_{0} x-\sum_{j=1}^{N} k_{j} \int_{0}^{x} u_{j}(y, t) \mathrm{d} y\right) \tag{8.4}
\end{equation*}
$$

where $I_{0}>0$ is the incident light intensity, $k_{0}>0$ is the background turbidity, and $k_{j}$ is the absorption coefficient of the $j$-th phytoplankton species.

The system (8.1)-(8.4) is intended to model a eutrophic water column, where nutrient is in abundance, and phytoplankton species compete for light via shading. The integral appearing in (8.4) is due to the fact that the light is able to reach to depth $x$ only after being absorbed by water and the biomass population at depth between 0 and $x$. In other words, the competition for light is nonlocal in space. The functions $g_{i}$ are smooth and satisfy

$$
\begin{equation*}
g_{i}(0)=0, \quad g_{i}^{\prime}(I)>0 \quad \text { for } I>0 \quad \text { and } g_{i} \in L^{\infty}([0, \infty)) . \tag{8.5}
\end{equation*}
$$

Typical examples of $g_{i}$ include

$$
g_{i}(I)=\frac{m_{i} I}{a_{i}+I} \quad \text { and } \quad g_{i}(I)=\frac{m_{i}}{a_{i}}\left(1-\mathrm{e}^{-a_{i} I}\right)
$$

where $m_{i}, a_{i}$ are positive constants.

Proposition 8.1.1 For continuous, nonnegative initial data $\left(u_{i, 0}\right)_{i=1}^{N}$, the problem (8.1)-(8.4) has a unique solution

$$
u=\left(u_{i}\right)_{i=1}^{N} \in C\left([0, \infty) ; C\left([0, L] ; \mathbb{R}_{+}^{2}\right)\right) \cap C_{l o c}^{1}\left((0, \infty) ; C^{2}\left([0, L] ; \mathbb{R}_{+}^{2}\right)\right)
$$

which depends continuously on initial data. Moreover, if $u_{i, 0} \not \equiv 0$ for some $i$, then $u_{i}(x, t)>0$ for $(x, t) \in[0, L] \times(0, \infty)$.

Proof By the maximum principle, the solutions are nonnegative and uniformly bounded in $C([0, L] \times[0, T])$ for each $T>0$. The rest follows from [12, Chap. 3].

By letting $\check{u}_{i}=k_{i} u_{i}$ and by $\check{g}(s)=g\left(I_{0} s\right)$, we may assume without loss of generality that $I_{0}=1$ and $k_{i}=1$ for $i=1, \ldots, N$, which we enforce for the remainder of this chapter. For this particular model, the coefficients $k_{i}$ do not affect the dynamics of the system after suitable transformation, but in practice they affect the relative population size of each phytoplankton species.

### 8.2 Single Species in a Eutrophic Water Column

In this section, we consider the case of a single species. In this case, (8.1)-(8.4) become

$$
\begin{cases}\partial_{t} u=D \partial_{x x} u-\alpha \partial_{x} u+u[g(I(x, t))-d] & \text { for } 0<x<L, t>0,  \tag{8.6}\\ D \partial_{x} u-\alpha u=0 & \text { for } x=0, L, t>0, \\ u(x, 0)=u_{0}(x) & \text { for } 0 \leq x \leq L, \\ I(x, t)=\exp \left(-k_{0} x-\int_{0}^{x} u(y, t) \mathrm{d} y\right) & \text { for } 0 \leq x \leq L, t>0 .\end{cases}
$$

Note that we are assuming without loss of generality that $I_{0}=1$ and $k_{1}=1$.

### 8.2.1 Monotonicity of the single species model

Define

$$
\begin{equation*}
\mathcal{K}:=\left\{u_{0} \in C([0, L]): \int_{0}^{x} u_{0}(y) \mathrm{d} y \geq 0 \quad \text { for } 0 \leq x \leq L\right\}, \tag{8.7}
\end{equation*}
$$

which has nonempty interior $\operatorname{Int} \mathcal{K}$ in $C([0, L])$. We leave as an exercise (see Problem 8.5.1) for the readers to show that

$$
\begin{equation*}
\operatorname{Int} \mathcal{K}=\left\{u_{0} \in C([0, L]): u_{0}(0)>0 \quad \text { and } \quad \int_{0}^{x} u_{0}(y) \mathrm{d} y>0 \quad \text { for } 0<x \leq L\right\} . \tag{8.8}
\end{equation*}
$$

Definition 8.2.1 We say that $X=C([0, L])$ is a Banach space with order induced by the solid cone $\mathcal{K}$, such that

$$
u_{0} \leq_{\mathcal{K}} \bar{u}_{0} \quad\left(\text { resp. } \quad u_{0}<_{\mathcal{K}} \bar{u}_{0}, \quad u_{0} \ll \mathcal{K} \bar{u}_{0}\right)
$$

if and only if

$$
\bar{u}_{0}-u_{0} \in \mathcal{K} \quad\left(\text { resp. } \quad \bar{u}_{0}-u_{0} \in \mathcal{K} \backslash\{0\}, \quad \bar{u}_{0}-u_{0} \in \operatorname{Int} \mathcal{K}\right) .
$$

The following result says that (8.6) generates a strongly monotone semiflow in the Banach space $X=C([0, L])$ with order induced by the cone $\mathcal{K}$.

Proposition 8.2.2 Suppose $u_{i}(i=1,2)$ are two nonnegative solutions of (8.6). If

$$
u_{1}(\cdot, 0)<_{\mathcal{K}} u_{2}(\cdot, 0),
$$

then

$$
u_{1}(\cdot, t) \ll \mathcal{K} u_{2}(\cdot, t) \quad \text { for } t>0
$$

To show Proposition 8.2.2, we consider the cumulative distribution function

$$
U(x, t):=\int_{0}^{x} u(y, t) \mathrm{d} y
$$

so that $U(0, t) \equiv 0$ for $t \geq 0$, and $\partial_{x} U(x, t)=u(x, t)$. In this way, (8.6) is transformed into the following nonlocal system; see [32].

$$
\begin{cases}\partial_{t} U=D \partial_{x x} U-\alpha \partial_{x} U+G\left[U, \partial_{x} U\right], & \text { for } 0 \leq x \leq L, t>0  \tag{8.9}\\ U(0, t)=0, \quad D \partial_{x x} U(L, t)-\alpha \partial_{x} U(L, t)=0 & \text { for } t>0 \\ U(x, 0)=\int_{0}^{x} u_{0}(y) \mathrm{d} y & \text { for } 0 \leq x \leq L\end{cases}
$$

where, letting $F(x, U)=\int_{0}^{U} g\left(\mathrm{e}^{-k_{0} x-z}\right) \mathrm{d} z-d U$,

$$
\begin{align*}
G\left[U, \partial_{x} U\right](x, t) & =\int_{0}^{x}[g(I(y, t))-d] u(y, t) \mathrm{d} y \\
& =\int_{0}^{x}\left[g\left(\exp \left(-k_{0} y-U(y, t)\right)-d\right] \partial_{x} U(y, t) \mathrm{d} y\right. \\
& =\int_{0}^{x}\left\{\frac{\mathrm{~d}}{\mathrm{~d} y}[F(y, U(y, t))]-\partial_{x} F(y, U(y, t))\right\} \mathrm{d} y \\
& =F(x, U(x, t))-\int_{0}^{x} \partial_{x} F(y, U(y, t)) \mathrm{d} y \tag{8.10}
\end{align*}
$$

For (8.9), we define the Banach space

$$
Y=\left\{\phi \in C^{1}([0, L]): \phi(0)=0\right\}
$$

with the usual $C^{1}$ norm and the cone $P$ in $Y$

$$
P=\{\phi \in Y: \phi(x) \geq 0 \quad \text { for } 0 \leq x \leq L\}
$$

whose interior is nonempty and is given by

$$
\operatorname{Int} P=\left\{\phi \in Y: \phi^{\prime}(0)>0, \text { and } \phi(x)>0 \quad \text { for } 0<x \leq L\right\} .
$$

The cone $P$ generates the partial order relations $\leq_{P}, \quad<_{P}$ and $\ll_{P}$ in $Y$.
By construction, the solutions $U$ of (8.9) live in the convex set

$$
E=\left\{\phi \in C^{1}([0, L]): \phi(0)=0, \quad \text { and } \quad \phi^{\prime}(x) \geq 0 \quad \text { for } 0 \leq x \leq L\right\} .
$$

Lemma 8.2.3 Let $u_{i} \in C([0, L] \times[0, \infty)) \cap C^{2,1}([0, L] \times(0, \infty))(i=1,2)$ be given such that

$$
\begin{cases}\partial_{t} u_{2} \geq D \partial_{x x} u_{2}-\alpha \partial_{x} u_{2}+\left[g\left(\exp \left(-k_{0}-\int_{0}^{x} u_{2}\right)\right)-d\right] u_{2} & \text { in }[0, L] \times(0, \infty),  \tag{8.11}\\ D \partial_{x} u_{2}-\alpha u_{2}=0 & \text { in }\{0, L\} \times(0, \infty),\end{cases}
$$

and $u_{1}$ satisfies the reversed inequality and the same boundary conditions. If, for some $t^{*}>0$,

$$
\begin{equation*}
u_{1}(\cdot, t) \leq_{K} u_{2}(\cdot, t) \quad \text { for } 0 \leq t \leq t^{*} \tag{8.12}
\end{equation*}
$$

and $u_{2}\left(\cdot, t^{*}\right)-u_{1}\left(\cdot, t^{*}\right) \notin \operatorname{Int} \mathcal{K}$, i.e.
$u_{2}\left(0, t^{*}\right)-u_{1}\left(0, t^{*}\right)=0$ or $\int_{0}^{x^{\prime}}\left(u_{2}\left(y, t^{*}\right)-u_{1}\left(y, t^{*}\right)\right) \mathrm{d} y=0$ for some $0<x^{\prime} \leq L$,
then

$$
\begin{equation*}
u_{1}(x, t) \equiv u_{2}(x, t) \quad \text { for } 0 \leq x \leq L, 0 \leq t \leq t^{*} \tag{8.13}
\end{equation*}
$$

Remark 8.2.4 By examining the proof, we can actually relax (8.11) by replacing the $\leq$ in the classical sense, by the generalized sense, or even with $\leq \mathcal{K}$. This yields, in particular, a natural notion of super- (and sub-) solution for (8.6). (See Problem 8.5.3.) Since we do not need this fact here, we refer the readers to [25] for more details.

Proof Define

$$
U_{i}(x, t)=\int_{0}^{x} u_{i}(y, t) \mathrm{d} y \quad \text { for } i=1,2
$$

Then

$$
\begin{equation*}
U_{1}(x, t) \leq U_{2}(x, t) \quad \text { for } 0 \leq x \leq L, 0 \leq t \leq t^{*} \tag{8.14}
\end{equation*}
$$

and at least one of the following alternatives holds:

1. $U_{1}\left(x^{*}, t^{*}\right)=U_{2}\left(x^{*}, t^{*}\right)$ for some $0<x^{*} \leq L$;
2. $\left(U_{2}-U_{1}\right)_{x}\left(0, t^{*}\right)=0$.

Suppose the first case holds. Define $W(x, t)=U_{2}(x, t)-U_{1}(x, t)$. Then

$$
\begin{align*}
& \partial_{t} W-D \partial_{x x} W+\alpha \partial_{x} W \\
& \geq F\left(x, U_{2}(x, t)\right)-F\left(x, U_{1}(x, t)\right)+\int_{0}^{x}\left[\partial_{x} F\left(y, U_{1}(y, t)\right)-\partial_{x} F\left(y, U_{2}(y, t)\right)\right] \mathrm{d} y \\
& =h(x, t) W+\int_{0}^{x}\left[\int_{U_{2}(y, t)}^{U_{1}(y, t)}-k_{0} \mathrm{e}^{-k_{0} y-z} g^{\prime}\left(\mathrm{e}^{-k_{0} y-z}\right) \mathrm{d} z\right] \mathrm{d} y \\
& \geq h(x, t) W \tag{8.15}
\end{align*}
$$

where

$$
h(x, t)=\int_{0}^{1}\left\{g\left(\exp \left(-k_{0} x-\xi U_{2}(x, t)-(1-\xi) U_{1}(x, t)\right)\right)-d\right\} \mathrm{d} \xi
$$

and we used (8.9) and (8.10) for the first equality, and $g^{\prime} \geq 0$ for the last inequality. Thus $W=U_{2}-U_{1}$ is a nonnegative solution to the following linear differential inequality:

$$
\begin{equation*}
\partial_{t} W-D \partial_{x x} W+\alpha \partial_{x} W-h(x, t) W \geq 0, \quad \text { for } 0<x \leq L, 0<t \leq t^{*} . \tag{8.16}
\end{equation*}
$$

We claim that $W \equiv 0$ in $[0, L] \times\left[0, t^{*}\right]$. If not, then the strong maximum principle for parabolic equations implies that $W\left(x, t^{*}\right)>0$ for $0<x<L$. Therefore, if there exists some $x^{*} \in(0, L]$ such that $W\left(x^{*}, t^{*}\right)=0$, we must have $x^{*}=L$, i.e. $W\left(L, t^{*}\right)=0$, and hence $\partial_{t} W\left(L, t^{*}\right) \leq 0$. Note also that $D \partial_{x x} W\left(L, t^{*}\right)=\alpha \partial_{x} W\left(L, t^{*}\right)$ by the boundary conditions in (8.9). Hence, we deduce that the last equality holds in (8.15) at $(x, t)=\left(L, t^{*}\right)$, which means

$$
\int_{0}^{L}\left[\int_{U_{2}\left(y, t^{*}\right)}^{U_{1}\left(y, t^{*}\right)}-k_{0} \mathrm{e}^{-k_{0} x-z} g^{\prime}\left(\mathrm{e}^{-k_{0}-z}\right) \mathrm{d} z\right] \mathrm{d} y=0
$$

Since the integrand is strictly negative, we deduce that $U_{1}\left(x, t^{*}\right) \equiv U_{2}\left(x, t^{*}\right)$ for all $0 \leq x \leq L$. This is a contradiction.

Next, consider the second case, i.e. $\left(U_{2}-U_{1}\right)_{x}\left(0, t^{*}\right)=0$. We claim that necessarily there is a sequence $t_{j} \nearrow t^{*}$ such that case 1 holds, so that we can deduce similarly that $U_{1} \equiv U_{2}$ in $[0, L] \times\left[0, t_{j}\right]$ for all $j$, whence $U_{1} \equiv U_{2}$ in $[0, L] \times\left[0, t^{*}\right]$ by continuity. To see the claim, assume for contradiction that $U_{2}>U_{1}$ in ( $0, L$ ] $\times\left[t^{*}-\delta, t^{*}\right]$ for some $\delta$. Then, observe that the boundary condition ensures $W\left(0, t^{*}\right)=0$. Since $W$ satisfies the differential inequality (8.16), we may apply Hopf's boundary point lemma to deduce that $\left(U_{2}-U_{1}\right)_{x}\left(0, t^{*}\right)>0$. This is a contradiction. Thus the claim is established, which concludes the proof of the second case.

We are in position to prove Proposition 8.2.2.
Proof (of Proposition 8.2.2) Let $u_{i}(i=1,2)$ be given, and define $U_{i}(x, t)=$ $\int_{0}^{x} u_{i}(y, t) \mathrm{d} y$ as before.
Step 1. We claim that $U_{1}(x, t) \leq U_{2}(x, t)$ in $[0, L] \times(0, \infty)$.

We first prove the claim under the additional assumption that

$$
\begin{equation*}
\partial_{x}\left(U_{2}-U_{1}\right)(0,0)>0 \quad \text { and } \quad U_{1}(x, 0)<U_{2}(x, 0) \quad \text { for } 0<x \leq L . \tag{8.17}
\end{equation*}
$$

Let $t^{*}$ be the maximal time such that for $0<x \leq L$ and $0 \leq t<t^{*}$,

$$
\begin{equation*}
\partial_{x}\left(U_{2}-U_{1}\right)(0, t)>0 \quad \text { and } \quad U_{1}(x, t)<U_{2}(x, t) . \tag{8.18}
\end{equation*}
$$

By (8.17) and Proposition 8.1.1, $t^{*}>0$. It remains to show that $t^{*}=\infty$. Suppose to the contrary that $0<t^{*}<\infty$, then we can apply Lemma 8.2.3 to deduce that $U_{1} \equiv U_{2}$ in $[0, L] \times\left[0, t^{*}\right]$, which is in contradiction with (8.17). This proves Step 1 under the additional assumption (8.18).

In general, let $\delta>0$ and consider the solution $u_{2}^{\delta}$ of (8.6) with initial data $u_{2}(x, 0)+\delta$, then $U_{2}^{\delta}(x, 0):=\int_{0}^{x} u_{2}(y, 0) \mathrm{d} y+\delta x$ satisfies

$$
\partial_{x}\left(U_{2}^{\delta}-U_{1}\right)(0,0)>0 \quad \text { and } U_{1}(x, 0)<U_{2}^{\delta}(x, 0) \quad \text { for } 0<x \leq L .
$$

So that the above arguments apply to yield

$$
U_{1}(x, t)<U_{2}(x, t)+\delta x \quad \text { in }[0, L] \times(0, \infty) \text {. }
$$

Step 1 is completed as we take $\delta \rightarrow 0$.
Step 2. Having proved that $U_{1} \leq U_{2}$ in $[0, L] \times[0, \infty)$, i.e., $u_{1}(\cdot, t) \leq_{\mathcal{K}} u_{2}(\cdot, t)$ for $t \geq 0$, and noting that $u_{1}(\cdot, 0) \not \equiv u_{2}(\cdot, 0)$, we can apply Lemma 8.2.3 once again to deduce that $u_{1}(\cdot, t) \ll \mathcal{K} u_{2}(\cdot, t)$ for $t>0$.

### 8.2.2 Long-time dynamics of the single species model

Let $\mu_{1}$ be the principal eigenvalue of

$$
\begin{cases}D \varphi^{\prime \prime}-\alpha \varphi^{\prime}+\left[g\left(\mathrm{e}^{-k_{0} x}\right)-d\right] \varphi+\mu \varphi=0 & \text { in }[0, L]  \tag{8.19}\\ D \varphi^{\prime}-\alpha \varphi=0 & \text { for } x=0, L\end{cases}
$$

The long-time dynamics of (8.6) can be classified as follows:
Theorem 8.2.5 Let $\mu_{1}$ be the principal eigenvalue of (8.19).

1. If $\mu_{1} \geq 0$, then every nonnegative solution $u$ of (8.6) satisfies $\|u(\cdot, t)\|_{C([0, L])} \rightarrow 0$ as $t \rightarrow \infty$.
2. If $\mu_{1}<0$, then (8.6) has a unique positive equilibrium, denoted as $\theta$. Moreover, $\|u(\cdot, t)-\theta\|_{C([0, L])} \rightarrow 0$ as $t \rightarrow \infty$ provided that $u(x, 0)$ is nonnegative and nontrivial.

Remark 8.2.6 If $d<g\left(\mathrm{e}^{-k_{0} L}\right)$, then (8.6) has a unique positive solution $\theta$. Moreover, $\|u(\cdot, t)-\theta\|_{C([0, L])} \rightarrow 0$ as $t \rightarrow \infty$ provided that $u(x, 0)$ is nonnegative and nontrivial. Indeed, let $\mu_{1}$ be the principal eigenvalue of (8.19). Integrating (8.19) in $[0, L]$ and using the no-flux boundary conditions, we have

$$
\mu_{1} \int_{0}^{L} \varphi \mathrm{~d} x=\int_{0}^{L}\left[d-g\left(\mathrm{e}^{-k_{0} x}\right)\right] \varphi \mathrm{d} x \leq\left[d-g\left(\mathrm{e}^{-k_{0} L}\right)\right] \int_{0}^{L} \varphi \mathrm{~d} x<0
$$

Hence $\mu_{1}<0$, and we may conclude by Theorem 8.2.5. Indeed, it was shown in [14] (see also [8]) that there exists a number $d_{*}=d_{*}(D, \alpha, L)>0$ such that $\mu_{1}<0$ if and only if $d<d_{*}$; that is, $d_{*}$ is the critical death rate for the persistence of a single phytoplankton species. In particular, the above argument shows that $d_{*} \geq g\left(\mathrm{e}^{-k_{0} L}\right)$ holds for any $D, \alpha, L$.

Thanks to Proposition 8.1.1, Proposition 8.2.2 and Lemma 8.2.7, the single equation (8.6) generates a monotone dynamical system with precompact trajectories. Part 2 of Theorem 8.2.5 can then be proved by constructing super- and sub-solutions, and arguing similarly as in Chapter 5. Here, we present an alternative argument based on the concept of subhomogeneity (see e.g. [40, Chap. 2]).

First, we prove that (8.6) generates a dissipative system.
Lemma 8.2.7 There exists an $M_{0}>0$, independent of initial data, such that

$$
\limsup _{t \rightarrow \infty}\|u(\cdot, t)\|_{C^{1}([0, L])} \leq M_{0},
$$

for all nonnegative solutions u of (8.6).
Proof Define

$$
u_{*}(t)=\inf _{0<x<L} u(x, t) \quad \text { and } \quad u^{*}(t)=\sup _{0<x<L} u(x, t)
$$

By the fact that $0 \leq g\left(\exp \left(-k_{0} x-\int_{0}^{x} u(y, t) \mathrm{d} y\right)\right) \leq g(1)$ is uniformly bounded, the Harnack principle (Theorem 1.2.6) says that

$$
\begin{equation*}
u^{*}(t) \leq C^{\prime} u_{*}(t) \quad \text { for } t \geq 1 \tag{8.20}
\end{equation*}
$$

for some constant $C^{\prime}$ that is independent of $u$.
Choose $M_{1}>0$ such that $g\left(\mathrm{e}^{-M_{1}}\right)-d<0$ (using $g(0)=0$ ), and then choose $\delta_{1}>0$ such that

$$
\begin{equation*}
C^{\prime} \delta_{1}|g(1)-d|+\left(L-\delta_{1}\right)\left(g\left(\mathrm{e}^{-M_{1}}\right)-d\right)<0 \tag{8.21}
\end{equation*}
$$

Let $u$ be a nonnegative solution of (8.6) with initial data $u_{0}$. We first claim that

$$
\begin{equation*}
\limsup _{t \rightarrow \infty}\|u(\cdot, t)\|_{L^{1}([0, L])} \leq M_{0}^{\prime} \tag{8.22}
\end{equation*}
$$

where $M_{0}^{\prime}:=\max \left\{M_{1}, C^{\prime} L M_{1} / \delta_{1}\right\}$ is independent of initial data.

To this end, it is enough to show that there exists a $\delta_{2}>0$ such that the differential inequality

$$
\begin{equation*}
\frac{\mathrm{d}}{\mathrm{~d} t} \int_{0}^{L} u(x, t) \mathrm{d} x \leq-\delta_{2} \int_{0}^{L} u(x, t) \mathrm{d} x \tag{8.23}
\end{equation*}
$$

holds whenever $\int_{0}^{L} u(x, t) \mathrm{d} x>M_{0}^{\prime}:=\max \left\{M_{1}, C^{\prime} L M_{1} / \delta_{1}\right\}$.
Now,

$$
\begin{equation*}
M_{1}<\frac{\delta_{1}}{C^{\prime} L} \int_{0}^{L} u(x, t) \mathrm{d} x \leq \frac{\delta_{1}}{C^{\prime}} u^{*}(t) \leq \delta_{1} u_{*}(t) \tag{8.24}
\end{equation*}
$$

Integrating (8.6) over $[0, L]$, we obtain

$$
\begin{align*}
& \frac{\mathrm{d}}{\mathrm{~d} t} \int_{0}^{L} u(x, t) \mathrm{d} x \\
& \leq \int_{0}^{L}\left[g\left(\mathrm{e}^{-\int_{0}^{x} u(y, t) \mathrm{d} y}\right)-d\right] u(x, t) \mathrm{d} x \\
& \leq \int_{0}^{L}\left[g\left(\mathrm{e}^{-x u_{*}(t)}\right)-d\right] u(x, t) \mathrm{d} x \\
& \leq \int_{0}^{\delta_{1}}(g(1)-d) u(x, t) \mathrm{d} x+\int_{\delta_{1}}^{L}\left[g\left(\mathrm{e}^{-M_{1}}\right)-d\right] u(x, t) \mathrm{d} x \quad(\text { by }(8.21)  \tag{8.24}\\
& \leq u^{*}(t) \delta_{1}(g(1)-d)+u_{*}(t) \int_{\delta_{1}}^{L}\left(g\left(\mathrm{e}^{-M_{1}}\right)-d\right) \mathrm{d} x \\
& \leq u_{*}(t)\left[C^{\prime} \delta_{1}(g(1)-d)+\left(L-\delta_{1}\right)\left(g\left(\mathrm{e}^{-M_{1}}\right)-d\right)\right] \\
& \leq\left(\frac{1}{C^{\prime} L} \int_{0}^{L} u(x, t) \mathrm{d} x\right)\left[C^{\prime} \delta_{1}(g(1)-d)+\left(L-\delta_{1}\right)\left(g\left(\mathrm{e}^{-M_{1}}\right)-d\right)\right]
\end{align*}
$$

This proves (8.23) holds whenever $\int_{0}^{L} u(x, t) \mathrm{d} x>\max \left\{M_{1}, C^{\prime} L M_{1} / \delta_{1}\right\}$. We obtain (8.22).

It then follows from (8.22) and (8.20) that

$$
\begin{equation*}
\limsup _{t \rightarrow \infty}\|u(\cdot, t)\|_{C([0, L])} \leq M_{0}^{\prime \prime} \tag{8.25}
\end{equation*}
$$

for some $M_{0}^{\prime \prime}$ independent of $u$.
Finally, the uniform eventual boundedness in $C^{1}([0, L])$ follows from parabolic $L^{p}$ estimates and Sobolev embeddings.

Next, we observe that (8.6) generates a subhomogeneous dynamical system.
Lemma 8.2.8 Let $u$ be a nonnegative solution of (8.6) with initial data $u_{0}$, and let $u_{\lambda}$ be the solution of (8.6) with initial data $\lambda u_{0}$. If $0<\lambda<1$ and $u_{0} \geq \not \equiv 0$, then

$$
\begin{equation*}
\lambda u(\cdot, t) \ll \mathcal{K} u_{\lambda}(\cdot, t) \quad \text { for } t>0 . \tag{8.26}
\end{equation*}
$$

In particular, (8.6) has at most one positive equilibrium.

Proof It suffices to observe that $\lambda u$ satisfies
$\begin{cases}\partial_{t}(\lambda u)<D \partial_{x x}(\lambda u)-\alpha \partial_{x}(\lambda u)+\left[g\left(\mathrm{e}^{-k_{0} x-\int_{0}^{x}(\lambda u)}\right)-d\right](\lambda u) & \text { in }(0, L) \times(0, \infty), \\ D \partial_{x}(\lambda u)-\alpha(\lambda u)=0 & \text { in }\{0, L\} \times(0, \infty) .\end{cases}$
One can then repeat the proof of Proposition 8.2.2 (and Lemma 8.2.3) to prove (8.26).

It remains to show the uniqueness of positive equilibrium. Suppose to the contrary that there exist two distinct positive equilibrium solutions, $\theta_{1}$ and $\theta_{2}$, of (8.6). By interchanging $\theta_{1}, \theta_{2}$ if necessary, we assume that $\theta_{1}-\theta_{2} \notin \mathcal{K}$. Then

$$
\lambda^{*}:=\sup \left\{\lambda>0: \lambda \theta_{2} \leq_{\mathcal{K}} \theta_{1}\right\} \in(0,1) .
$$

However, (8.26) implies that

$$
\lambda^{*} \theta_{2} \ll \mathcal{K}_{\mathcal{K}} \theta_{1} .
$$

This contradicts the maximality of $\lambda^{*}$.

Proof (of Theorem 8.2.5) Let $X=C([0, L]), C=C\left([0, L] ; \mathbb{R}_{+}\right)$and $\mathcal{K}$ be given by (8.7). Let $\Phi_{t}: C \rightarrow C$ be the semiflow generated by (8.6). We will apply Corollary C.2.2. To this end, we need to verify hypotheses (S1')-(S3') and (S5') from Subsection C.2. First, it is clear that $\Phi_{t}(0)=0$ for all $t>0$. Therefore ( S 1 ') follows from Proposition 8.2.2. (S2') and (S3') are consequences of Lemmas 8.2.7 and 8.2.8 respectively. Finally, observe that for each $t>0, \Phi_{t}$ is compact and its Fréchet derivative at zero, denoted by $D \Phi_{t}(0): C \rightarrow C$, is given by $D \Phi_{t}(0)\left[\phi_{0}\right]=\phi(\cdot, t)$, where $\phi$ is the unique solution of

$$
\begin{cases}\partial_{t} \phi=D \partial_{x x} \phi-\alpha \partial_{x} \phi+\left[g\left(\mathrm{e}^{-k_{0} x}\right)-d\right] \phi & \text { in }[0, L] \times(0, \infty), \\ D \partial_{x} \phi-\alpha \phi=0 & \text { on }\{0, L\} \times(0, \infty), \\ \phi(x, 0)=\phi_{0}(x) & \text { in }[0, L] .\end{cases}
$$

This verifies (H5'). Now, let $\mu_{1}$ and $\phi_{1}$ be the principal eigenvalue and eigenfunction of (8.19). Since $D \Phi_{t}(0)\left[\phi_{1}\right]=\mathrm{e}^{-\mu_{1} t} \phi_{1}$ and $\phi_{1} \in C \backslash\{0\}$, we deduce that

$$
\begin{equation*}
r\left(D \Phi_{t}\right)=\mathrm{e}^{-\mu_{1} t} \tag{8.27}
\end{equation*}
$$

The conclusion thus follows from (8.27) and Theorem C.2.2.

### 8.3 Dynamics for Two Competing Phytoplankton Species

Consider the competition model for two phytoplankton species

$$
\begin{cases}\partial_{t} u_{i}=D_{i} \partial_{x x} u_{i}-\alpha_{i} \partial_{x} u_{i}+u_{i}\left[g_{i}(I(x, t))-d_{i}\right] & \text { for } 0<x<L, t>0, i=1,2,  \tag{8.28}\\ D_{i} \partial_{x} u_{i}-\alpha_{i} u_{i}=0 & \text { for } x=0, L, t>0, i=1,2, \\ u_{i}(x, 0)=u_{i, 0}(x) & \text { for } 0 \leq x \leq L, i=1,2, \\ I(x, t)=\exp \left(-k_{0} x-\sum_{i=1}^{2} \int_{0}^{x} u_{i}(y, t) \mathrm{d} y\right) & \text { for } 0 \leq x \leq L, t>0 .\end{cases}
$$

Note that we are assuming without loss of generality that $I_{0}=1$ and $k_{1}=k_{2}=1$. The two phytoplankton populations may differ in their dispersal rates, sinking rates, growth rates and death rates.

Suppose (8.28) has two semitrivial equilibria $E_{1}=(\hat{u}, 0)$ and $E_{2}=(0, \hat{v})$. According to Theorem 8.2.5, $E_{1}$ and $E_{2}$ exist if and only if, for $i=1,2$, the principal eigenvalue of

$$
\begin{cases}D_{i} \varphi^{\prime \prime}-\alpha_{i} \varphi^{\prime}+\left[g_{i}\left(\mathrm{e}^{-k_{0} x}\right)-d_{i}\right] \varphi+\mu \varphi=0 & \text { in }[0, L]  \tag{8.29}\\ D_{i} \varphi^{\prime}-\alpha_{i} \varphi=0 & \text { for } x=0, L\end{cases}
$$

is negative. (By Remark 8.2.6, this is guaranteed if $d_{i}<g_{i}\left(\mathrm{e}^{-k_{0} L}\right)$ for $i=1,2$.)
Definition 8.3.1 We say that $X=C([0, L]) \times C([0, L])$ is a Banach space with order induced by the solid cone $K=\mathcal{K} \times(-\mathcal{K})$, such that

$$
\left\{\begin{array}{lll}
\left(u_{0}, v_{0}\right) \leq_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right) & \text { iff } & \bar{u}_{0}-u_{0} \in \mathcal{K} \text { and } v_{0}-\bar{v}_{0} \in \mathcal{K} \\
\left(u_{0}, v_{0}\right)<_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right) & \text { iff } & \left(u_{0}, v_{0}\right) \leq_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right) \text { and }\left(u_{0}, v_{0}\right) \neq\left(\bar{u}_{0}, \bar{v}_{0}\right) \\
\left(u_{0}, v_{0}\right)<_{K}\left(\bar{u}_{0}, \bar{v}_{0}\right) & \text { iff } & \bar{u}_{0}-u_{0} \in \operatorname{Int} \mathcal{K} \text { and } v_{0}-\bar{v}_{0} \in \operatorname{Int} \mathcal{K}
\end{array}\right.
$$

It is proved in [25] that (8.28) generates a strongly monotone dynamical system in the ordered Banach space $X$ with the order induced by the cone $K$.

Theorem 8.3.2 Let ( $u_{1}, u_{2}$ ), ( $\bar{u}_{1}, \bar{u}_{2}$ ) be solutions of (8.28). Then the following hold:

1. If $\left(u_{1}(\cdot, 0), u_{2}(\cdot, 0)\right)<_{K}\left(\bar{u}_{1}(\cdot, 0), \bar{u}_{2}(\cdot, 0)\right)$, then

$$
\left(u_{1}(\cdot, t), u_{2}(\cdot, t)\right)<_{K}\left(\bar{u}_{1}(\cdot, t), \bar{u}_{2}(\cdot, t)\right) \quad \text { for each } t>0 .
$$

2. If $\left(u_{1}(\cdot, 0), u_{2}(\cdot, 0)\right)<_{K}\left(\bar{u}_{1}(\cdot, 0), \bar{u}_{2}(\cdot, 0)\right)$, and at least one of them belongs to $\operatorname{Int} \mathcal{K} \times \operatorname{Int} \mathcal{K}$, then

$$
\left(u_{1}(\cdot, t), u_{2}(\cdot, t)\right) \ll K\left(\bar{u}_{1}(\cdot, t), \bar{u}_{2}(\cdot, t)\right) \quad \text { for } t>0
$$

Proof The proof follows the ideas in Section 8.2.1. We refer the readers to [25, Corollary 3.4] for details.

Define $X=C([0, L]) \times C([0, L])$, and

$$
C=C_{1} \times C_{2}=C\left([0, L] ; \mathbb{R}_{+}\right) \times C\left([0, L] ; \mathbb{R}_{+}\right), \quad K=\mathcal{K} \times(-\mathcal{K}),
$$

where $\mathcal{K}$ is given in (8.7). We recall the hypotheses ( $\mathrm{H} 1^{\prime}$ )-(H5') from Appendix E .
Lemma 8.3.3 The semiflow $\Phi_{t}: C \rightarrow C$ generated by (7.1) is continuously differentiable, and satisfies the conditions (H1')-(H5').

Proof (of Lemma 8.3.3) Now, (H1') and (H4') follow directly from Theorem 8.3.2.
Next, notice that the semiflow operator is continuously differentiable. Furthermore, if ( $\tilde{u}, \tilde{v}$ ) is an equilibrium of $\Phi_{t}$, then $D \Phi_{t}(\tilde{u}, \tilde{v}): X \rightarrow X$ is given by $D \Phi_{t}(\tilde{u}, \tilde{v})\left[p_{0}, q_{0}\right]=(p(\cdot, t), q(\cdot, t))$, where $(p, q)$ is the unique solution of the linear parabolic system

$$
\left\{\begin{array}{l}
p_{t}-D_{1} p_{x x}+\alpha_{1} p_{x}=\left[g_{1}(\tilde{I})-d_{1}\right] p+\tilde{u} g_{1}^{\prime}(\tilde{I}) \tilde{I}\left[-\int_{0}^{x}(p(y, t)+q(y, t)) \mathrm{d} y\right]  \tag{8.30}\\
q_{t}-D_{2} q_{x x}+\alpha_{2} q_{x}=\left[g_{2}(\tilde{I})-d_{2}\right] q+\tilde{v} g_{2}^{\prime}(\tilde{I}) \tilde{I}\left[-\int_{0}^{x}(p(y, t)+q(y, t)) \mathrm{d} y\right]
\end{array}\right.
$$

in $[0, L] \times \mathbb{R}_{+}$and

$$
\begin{cases}\tilde{I}(x)=\mathrm{e}^{-k_{0} x-\int_{0}^{x} \tilde{u}(y) \mathrm{d} y-\int_{0}^{x} \tilde{v}(y) \mathrm{d} y} & \text { in }[0, L]  \tag{8.31}\\ D_{1} p_{x}-\alpha_{1} p=D_{2} q_{x}-\alpha_{2} q=0 & \text { on }\{0, L\} \times \mathbb{R}_{+} \\ p(x, 0)=p_{0}(x), \quad q(x, 0)=q_{0}(x) & \text { in } \Omega\end{cases}
$$

To verify condition (H2'), set ( $\tilde{u}, \tilde{v}$ ) = ( 0,0 ) in (8.30)-(8.31) so that the system decouples. Next, observe that

$$
D \Phi_{t}(0,0)\left[p_{0}, q_{0}\right]=\left(f_{1}\left(p_{0}\right), f_{2}\left(q_{0}\right)\right)=\left(\mathrm{e}^{t L_{1}}\left[p_{0}\right], \mathrm{e}^{t L_{2}}\left[q_{0}\right]\right),
$$

where $\mathrm{e}^{t L_{i}}$ denotes the analytic semigroup generated by

$$
L_{i}=D_{i} \partial_{x x}-\alpha_{i} \partial_{x}+g_{i}\left(\mathrm{e}^{-k_{0} x}\right)-d_{i}
$$

in the space $C(\bar{\Omega})$, such that the solution respects the no-flux boundary condition in positive time. For $i=1,2$, let $\tilde{\mu}_{i}$ and $\tilde{\phi}_{i}(x)>0$ be the principal eigenvalue and eigenfunctions of (8.29). Then $f_{i}\left(\tilde{\phi}_{i}\right)=\mathrm{e}^{-\tilde{\mu}_{i} t} \tilde{\phi}_{i}$. Since $f_{i}$ is linear and strongly positive in $C(\bar{\Omega})$ and since we enforce the condition $\mu_{i}<0$ in this chapter, it follows from the Krein-Rutman Theorem (Theorem B.3.2) that $r\left(f_{i}\right)=\mathrm{e}^{-\tilde{\mu}_{i} t}>1$. This verifies (H2'), in view of Remark E.2.1. (H3') follows from Theorem 8.2.5 and the fact that $\mu_{i}<0$.

We will verify (H5') using Lemma E.2.10. For that purpose, observe that $D_{1} \Phi_{t}^{(1)}\left(E_{2}\right)$ is an analytic semigroup generated by certain linear elliptic operators, so they are automatically compact and strongly monotone with respect to $C_{1}=C\left([0, L] ; \mathbb{R}_{+}\right)$. On the other hand, $D_{2} \Phi_{t}^{(2)}\left(E_{2}\right): X \rightarrow X$ is generated by the solution to the linear parabolic equation with nonlocal term:

$$
q_{t}-D_{2} q_{x x}+\alpha_{2} q_{x}=\left[g_{2}\left(\tilde{I}_{2}(x)\right)-d_{2}\right] q+\tilde{v} g_{2}^{\prime}(\tilde{I}(x)) \tilde{I}(x)\left[-\int_{0}^{x} q(y, t) \mathrm{d} y\right]
$$

on $[0, L] \times(0, \infty)$ with no-flux boundary conditions, where

$$
\tilde{I}_{2}(x)=\exp \left(-k_{0} x-\int_{0}^{x} \hat{v}(y) \mathrm{d} y\right) \text { and } E_{2}=(0, \hat{v})
$$

It is not hard to see that $D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)$ is compact. Furthermore, by the arguments in Section 8.2.1, we can once again show that the linear operator $D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)$ is strongly monotone with respect to $\mathcal{K}$. Moreover, $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)=\mathrm{e}^{-\tilde{\mu} t}$, where $\tilde{\mu} \in \mathbb{R}$ and $\phi \in \mathcal{K}$ are, respectively, the principal eigenvalue and principal eigenfunction of

$$
\begin{cases}-D_{2} \phi_{x x}+\alpha_{2} \phi_{x}=\left[g_{2}\left(\tilde{I}_{2}\right)-d_{2}\right] \phi+\tilde{v} g_{2}^{\prime}\left(\tilde{I}_{2}\right) \tilde{I}_{2}\left[-\int_{0}^{x} \phi(y, t) \mathrm{d} y\right]+\tilde{\mu} \phi, & 0<x<L,  \tag{8.32}\\ D_{2} \phi_{x}-\alpha_{2} \phi=0, & x=0, L .\end{cases}
$$

For details of the existence of $\phi$ and $\tilde{\mu}$, we refer to [25, Theorem 4.4].
We claim that $\tilde{\mu}>0$. Suppose to the contrary that $\tilde{\mu} \leq 0$, then we use the fact that $\phi \in \operatorname{Int} \mathcal{K}$ to get

$$
\tilde{v} g_{2}^{\prime}\left(\tilde{I}_{2}(x)\right) \tilde{I}_{2}(x) \int_{0}^{x} \phi(y, t) \mathrm{d} y>0 \quad \text { for } 0<x<L
$$

Then (8.32) yields that

$$
-D_{2} \phi_{x x}+\alpha_{2} \phi_{x}<\left[g_{2}\left(\tilde{I}_{2}(x)\right)-d_{2}\right] \phi+\tilde{\mu} \phi \quad \text { for } 0<x<L .
$$

Next, we use the facts that $\int_{0}^{x} \phi(y) \mathrm{d} y>0$ for $x \in(0, L]$ and $\inf _{[0, L]} \hat{v}>0$ to obtain a constant $c>0$ such that $\min _{[0, L]}(c \hat{v}-\phi)=0$. Then $\varphi=c \hat{v}-\phi$ satisfies

$$
\begin{cases}D_{2} \varphi_{x x}-\alpha_{2} \varphi_{x}+\left[g_{2}\left(\tilde{I}_{2}(x)\right)-d_{2}\right] \varphi+\tilde{\mu} \varphi<\tilde{\mu} c \hat{v} \leq 0 & \text { in }[0, L] \\ D_{2} \varphi_{x}-\alpha_{2} \varphi=0 & \text { for } x=0, L \\ \min _{[0, L]} \varphi=0 & \end{cases}
$$

By the strict differential inequality and nonnegativity of $\varphi$, we must have $\varphi>0$ in ( $0, L$ ) and that $\varphi\left(x_{0}\right)=0$ for some $x_{0} \in\{0, L\}$. But the Hopf boundary point lemma says that $\varphi_{x}\left(x_{0}\right) \neq 0$, which contradicts the boundary condition $D_{2} \varphi_{x}\left(x_{0}\right)-$ $\alpha_{2} \varphi\left(x_{0}\right)=0$. Hence, we have established that $\tilde{\mu}>0$, i.e. $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)=\mathrm{e}^{-\tilde{\mu} t}<1$. The last condition, which translates to $D_{1} \Phi_{t}^{(2)}\left(E_{2}\right)\left[p_{0}\right] \neq 0$ for $p_{0} \in C(\bar{\Omega}), p_{0}>0$ in $\bar{\Omega}$, also holds by virtue of (8.30)-(8.31).

Now, we can invoke Lemma E.2.10 to conclude that (H5') holds.
Hence, the results in Appendix E can be applied to establish the following results.
Theorem 8.3.4 If $E_{1}$ and $E_{2}$ are both linearly unstable, then (8.28) has at least one stable positive equilibrium $E^{*}=\left(u^{*}, v^{*}\right)$.

Proof This is a consequence of Theorem E.2.15.
Theorem 8.3.5 Suppose (8.28) has no positive equilibria, then exactly one of the following statements holds.

- $E_{1}$ is globally asymptotically stable among all solutions of (8.28) with nonnegative, nontrivial initial data.
- $E_{2}$ is globally asymptotically stable among all solutions of (8.28) with nonnegative, nontrivial initial data.

Proof This is a consequence of Theorem E.2.13.

## Selection for more buoyant phytoplankton species

As an application, we state and prove a theorem which says that, in a eutrophic water column in which competition is only limited by light, if both species have the same diffusion rate, then the more buoyant (or less prone to sinking) phytoplankton species is selected. Before doing so, we first prove two eigenvalue lemmas. For $D>0, \alpha \in \mathbb{R}$ and $h \in C([0, L])$, let $\lambda_{1}(D, \alpha, h)$ and $\psi$ be the principal eigenvalue and positive eigenfunction of

$$
\begin{cases}D \psi_{x x}+\alpha \psi_{x}+h(x) \psi+\lambda_{1} \psi=0, & 0<x<L  \tag{8.33}\\ \psi_{x}=0, & x=0, L\end{cases}
$$

Lemma 8.3.6 If $h \in C([0, L])$ is strictly decreasing, then $\psi_{x}<0$ for $0<x<L$.
Proof Rewrite (8.33) as

$$
\begin{cases}D\left(\mathrm{e}^{\alpha x / D} \psi_{x}\right)_{x}+\mathrm{e}^{\alpha x / D}\left[h(x)+\lambda_{1}\right] \psi=0, & 0<x<L  \tag{8.34}\\ \psi_{x}=0, & x=0, L\end{cases}
$$

Integrating (8.34) over ( $0, L$ ), we have

$$
\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi\left[h(x)+\lambda_{1}\right] \mathrm{d} x=0
$$

which implies that $h(x)+\lambda_{1}$ changes sign in ( $0, L$ ). Since $h(x)$ is strictly decreasing in ( $0, L$ ), there exists a unique $x_{0} \in(0, L)$ such that $h(x)+\lambda_{1}>0$ for $0<x<x_{0}$ and $h(x)+\lambda_{1}<0$ for $x_{0}<x<L$. Hence, by (8.34) we see that $\left(\mathrm{e}^{\alpha x / D} \psi_{x}\right)_{x}<0$ for $0<x<x_{0}$ and $\left(\mathrm{e}^{\alpha x / D} \psi_{x}\right)_{x}>0$ for $x_{0}<x<L$. That is, $\mathrm{e}^{\alpha x / D} \psi_{x}$ is strictly decreasing in ( $0, x_{0}$ ) and strictly increasing in ( $x_{0}, L$ ). Since $\psi_{x}(0)=\psi_{x}(L)=0$, we have $\psi_{x}<0$ in ( $0, L$ ).

Lemma 8.3.7 If $h \in C([0, L])$ is strictly decreasing, then

$$
\partial_{\alpha} \lambda_{1}(D, \alpha, h)>0 \quad \text { for any } D>0 \text { and } \alpha \in \mathbb{R} .
$$

Proof For definiteness, normalize the positive eigenfunction $\psi$ by $\max _{[0, L]} \psi=1$, so that it is uniquely determined. By arguing as in Proposition 1.3.15, it follows that $\lambda_{1}(D, \alpha, h)$ is smooth in $D>0$ and $\alpha \in \mathbb{R}$. For simplicity of notation, we denote $\partial_{\alpha} \psi$ by $\psi^{\prime}$, etc. Differentiating (8.34) with respect to $\alpha$, we have

$$
\begin{cases}D \psi_{x x}^{\prime}+\alpha \psi_{x}^{\prime}+\psi_{x}+\left[h(x)+\lambda_{1}\right] \psi^{\prime}=-\lambda_{1}^{\prime} \psi, & 0<x<L  \tag{8.35}\\ \psi_{x}^{\prime}=0, & x=0, L\end{cases}
$$

Multiplying (8.35) by $\mathrm{e}^{\alpha x / D}$, we can write the first equation as

$$
\begin{equation*}
D\left(\mathrm{e}^{\alpha x / D} \psi_{x}^{\prime}\right)_{x}+\mathrm{e}^{\alpha x / D}\left[h(x)+\lambda_{1}\right] \psi^{\prime}=-\mathrm{e}^{\alpha x / D} \psi_{x}-\mathrm{e}^{\alpha x / D} \lambda_{1}^{\prime} \psi \tag{8.36}
\end{equation*}
$$

Multiplying (8.36) by $\psi$ and integrating by parts, we have

$$
\begin{aligned}
& -D \int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi_{x} \psi_{x}^{\prime}+\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi^{\prime} \psi\left[h(x)+\lambda_{1}\right] \\
& =-\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi \psi_{x}-\lambda_{1}^{\prime} \int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi^{2}
\end{aligned}
$$

Integrating by parts again, we have

$$
\begin{aligned}
0 & =\int_{0}^{L} \psi^{\prime}\left[D\left(\mathrm{e}^{\alpha x / D} \psi_{x}\right)_{x}+\mathrm{e}^{\alpha x / D} \psi\left[h(x)+\lambda_{1}\right]\right. \\
& =-\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi \psi_{x}-\lambda_{1}^{\prime} \int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi^{2}
\end{aligned}
$$

where the first equality follows from (8.34). Hence, we have

$$
\lambda_{1}^{\prime}=-\frac{\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi \psi_{x}}{\int_{0}^{L} \mathrm{e}^{\alpha x / D} \psi^{2}}>0
$$

where the last inequality follows from $\psi_{x}<0$, which is proved in Lemma 8.3.6.
Now we state and prove the selection for buoyant species in a eutrophic water column [25, Theorem 2.2], i.e. the buoyant species has the advantage provided other factors are held constant. For this purpose, we set $D_{1}=D_{2}, \alpha_{1}<\alpha_{2}, g_{1}=g_{2}$, $d_{1}=d_{2}:=d$ in (8.28) and consider the following competition system.

$$
\begin{cases}\partial_{t} u_{i}=D \partial_{x x} u_{i}-\alpha_{i} \partial_{x} u_{i}+u_{i}[g(I(x, t))-d] & \text { for } 0<x<L, t>0, i=1,2  \tag{8.37}\\ D \partial_{x} u_{i}-\alpha_{i} u_{i}=0 & \text { for } x=0, L, t>0, i=1,2 \\ u_{i}(x, 0)=u_{i, 0}(x) & \text { for } 0 \leq x \leq L, i=1,2 \\ I(x, t)=\exp \left(-k_{0} x-\sum_{i=1}^{2} \int_{0}^{x} u_{i}(y, t) \mathrm{d} y\right) & \text { for } 0 \leq x \leq L, t>0\end{cases}
$$

Theorem 8.3.8 If $\alpha_{1}<\alpha_{2}$, and both semi-trivial equilibria exist, then the more buoyant species $u_{1}$ drives the less buoyant species $u_{2}$ to extinction, as long as the initial data $u_{i, 0}$ is nonnegative and nontrivial for $i=1,2$.

Proof By Theorem 8.3.5, it suffices to establish, for system (8.37), the linear instability of $E_{2}$ and the nonexistence of positive equilibria. ${ }^{1}$ Recall that $E_{2}=(0, \tilde{v})$, where $\tilde{v}$ is the unique positive solution of

$$
\begin{cases}D \tilde{v}_{x x}-\alpha_{2} \tilde{v}_{x}+\tilde{v}\left[g\left(\sigma_{2}\right)-d\right]=0, & 0<x<L  \tag{8.38}\\ D \tilde{v}_{x}-\alpha_{2} \tilde{v}=0, & x=0, L\end{cases}
$$

where $\sigma_{2}(x)=\exp \left(-k_{0} x-\int_{0}^{x} \tilde{v}(s) \mathrm{d} s\right)$.
Step 1 . We claim that $\lambda_{1}\left(D, \alpha_{2}, g\left(\sigma_{2}\right)-d\right)=0$. Indeed, one can easily verify that zero is an eigenvalue of (8.33) with the positive eigenfunction being $\mathrm{e}^{-\alpha_{2} x / D_{\tilde{v}}}$. By the characterization of the principal eigenvalue (Theorem 1.3.6, assertion 4), it follows that $\lambda_{1}\left(D, \alpha_{2}, g\left(\sigma_{2}\right)-d\right)=0$.

Step 2. To show that $E_{2}=(0, \tilde{v})$ is linearly unstable, it suffices to show that $\lambda_{1}\left(D, \alpha_{1}, g\left(\sigma_{2}\right)-d\right)<0$, where $\lambda_{1}(D, \alpha, h)$ is the principal eigenvalue of (8.33); see [25, Proposition 4.5]. Indeed, the equilibrium $E_{2}$ is unstable if and only if the first species can invade when rare, which is in turn equivalent to the negativity of the principal eigenvalue $\tilde{\lambda}$ of

$$
\begin{cases}D \tilde{\phi}_{x x}-\alpha_{1} \tilde{\phi}_{x}+\left[g\left(\sigma_{2}\right)-d\right] \tilde{\phi}+\tilde{\lambda} \tilde{\phi}=0 & \text { for } 0<x<L  \tag{8.39}\\ D \tilde{\phi}_{x}-\alpha_{1} \tilde{\phi}=0 & \text { for } x=0, L\end{cases}
$$

By the transformation $\psi=\mathrm{e}^{-\alpha_{1} x / D} \tilde{\phi}$, we deduce that $\tilde{\lambda}=\lambda_{1}\left(D, \alpha_{1}, g\left(\sigma_{2}\right)-d\right)$. Hence, it remains to show that $\lambda_{1}\left(D, \alpha_{1}, g\left(\sigma_{2}\right)-d\right)<0$. Since $s \mapsto g(s)$ is strictly increasing and $x \mapsto \sigma_{2}$ is strictly decreasing, it follows from Lemma 8.3.7 that $\lambda_{1}\left(D, \alpha, g\left(\sigma_{2}\right)-d\right)$ is strictly increasing in $\alpha$. Combining with Step 1, we have

$$
\lambda_{1}\left(D, \alpha_{1}, g\left(\sigma_{2}\right)-d\right)<\lambda_{1}\left(D, \alpha_{2}, g\left(\sigma_{2}\right)-d\right)=0 .
$$

This shows the linear instability of $E_{2}$.
Step 3. We claim that (8.37) has no positive equilibrium. Assume to the contrary that (8.37) has a positive equilibrium ( $u_{1}, v_{1}$ ). Then it follows again by assertion 4 of Theorem 1.3.6 that

$$
\begin{equation*}
\lambda_{1}\left(D, \alpha_{1}, g\left(\sigma^{*}\right)-d\right)=0=\lambda_{1}\left(D, \alpha_{2}, g\left(\sigma^{*}\right)-d\right) \tag{8.40}
\end{equation*}
$$

[^7]where $\sigma^{*}(x)=\exp \left(-k_{0} x-\int_{0}^{x}\left[u_{1}(s)+v_{1}(s)\right] \mathrm{d} s\right)$. However, since $g\left(\sigma^{*}\right)-d$ is strictly decreasing, Lemma 8.3.7 implies that $\lambda_{1}\left(D, \alpha, g\left(\sigma^{*}\right)-d\right)$ is strictly increasing in $\alpha$. This is in contradiction with (8.40).

### 8.4 The $N$-Species Model - Application of the Principal Floquet Bundle

Let $N \geq 2$ and consider the $N$-species competition model.

$$
\begin{cases}\partial_{t} u_{i}=D \partial_{x x} u_{i}-\alpha_{i} \partial_{x} u_{i}+u_{i}[g(I(x, t))-d] & \text { for } 0<x<L, t>0,1 \leq i \leq N,  \tag{8.41}\\ D \partial_{x} u_{i}-\alpha_{i} u_{i}=0 & \text { for } x=0, L, t>0,1 \leq i \leq N, \\ u_{i}(x, 0)=u_{i, 0}(x) & \text { for } 0 \leq x \leq L, 1 \leq i \leq N, \\ I(x, t)=\exp \left(-k_{0} x-\sum_{i=1}^{N} \int_{0}^{x} u_{i}(y, t) \mathrm{d} y\right) & \text { for } 0 \leq x \leq L, t>0,\end{cases}
$$

where $D, d>0$ are constants independent of $i$, and $\alpha_{1}<\alpha_{2}<\cdots<\alpha_{N}$. Also, we assume for simplicity that all species have the same growth response function $g$. Note also that we are assuming without loss of generality that $I_{0}=1$ and $k_{i}=1$ for all $i$.

We also assume that

$$
\begin{equation*}
d<g\left(\mathrm{e}^{-k_{0} L}\right) . \tag{8.42}
\end{equation*}
$$

Under the assumption (8.42), it follows from Remark 8.2.6 that, for each $\alpha \in \mathbb{R}$, the single species problem (8.6) has a unique positive equilibrium $\theta_{\alpha}(x)$ that is globally asymptotically stable among all positive solutions of (8.6). In particular,

$$
E_{i}=\left(0, \ldots, 0, \theta_{\alpha_{i}}, 0, \ldots, 0\right)
$$

is an equilibrium of (8.41), for each $i$.
We will prove that, in general, competition exclusion takes place when the $N$ species are similar, i.e. $\alpha_{i}$ lies in a small interval.

Theorem 8.4.1 For each $\hat{\alpha} \in \mathbb{R}$, there exists an $\epsilon>0$ such that for arbitrary $N$ and arbitrary increasing sequence $\left(\alpha_{i}\right)_{i=1}^{N} \subset(\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon)$, every positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41) converges to the equilibrium $E_{1}=\left(\theta_{\alpha_{1}}, 0, \ldots, 0\right)$ as $t \rightarrow \infty$.

The rest of this section is organized as follows: In Subsection 8.4.1, we derive some uniform bounds for positive solutions to the time-dependent problem (8.41). In Subsection 8.4.2, we use the smallness of $\epsilon$ to show that for any positive solutions $\left(u_{i}\right)_{i=1}^{N}$ of (8.41), the total population $\sum_{i=1}^{N} u_{i}$ eventually enters a neighborhood of the positive equilibrium of the single species problem. In Subsection 8.4.3, we introduce the notion of normalized principal bundle, which is a generalized notion of principal eigenvalue for elliptic or periodic-parabolic operators. In Subsection 8.4.4, we prove a general exclusion criterion and then give the proof of Theorem 8.4.1.

### 8.4.1 A priori estimates

Define

$$
\begin{equation*}
G(s)=\int_{0}^{s} g\left(\mathrm{e}^{-\tau}\right) \mathrm{d} \tau-s d \tag{8.43}
\end{equation*}
$$

Then $G(0)=0, G^{\prime}(s)=g\left(\mathrm{e}^{-s}\right)-d$, and, since $G^{\prime}(+\infty)=-d<0$, there exists an $M_{1}>0$ such that

$$
\begin{equation*}
G(s)<0 \quad \text { for } s \geq M_{1} . \tag{8.44}
\end{equation*}
$$

In the following we will also use the notation

$$
\hat{u}(x, t)=\sum_{i=1}^{N} u_{i}(x, t), \quad U_{i}(x, t):=\int_{0}^{x} u_{i}(y, t) \mathrm{d} y \text { and } \hat{U}(x, t)=\sum_{i=1}^{N} U_{i}(x, t) .
$$

Lemma 8.4.2 Let $\left(u_{i}\right)_{i=1}^{N}$ be a nonnegative solution of (8.41) such that

$$
\sum_{i=1}^{N}\left\|u_{i}(x, 0)\right\|_{L^{1}([0, L])} \leq M
$$

then

$$
\left\{\begin{array}{l}
\sup _{t \geq 0} \sum_{i=1}^{N}\left\|u_{i}(x, t)\right\|_{L^{1}([0, L])} \leq \max \left\{M, M_{1}\right\},  \tag{8.45}\\
\limsup _{t \rightarrow \infty} \sum_{i=1}^{N}\left\|u_{i}(x, t)\right\|_{L^{1}([0, L])} \leq M_{1} .
\end{array}\right.
$$

Proof Integrating (8.41) with respect to $x$ from 0 to $L$, and adding $i$ from 1 to $N$, we obtain

$$
\begin{aligned}
\frac{\mathrm{d}}{\mathrm{~d} t} \hat{U}(L, t) & =\int_{0}^{L} \sum_{i=1}^{N}\left[g\left(\exp \left(-k_{0} x-\hat{U}(x, t)\right)\right)-d\right] u_{i}(x, t) \mathrm{d} x \\
& \leq \int_{0}^{L}\left[g(\exp (-\hat{U}(x, t))-d] \partial_{x} \hat{U}(x, t) \mathrm{d} x\right. \\
& =\int_{0}^{L} \partial_{x}[G(\hat{U}(x, t))] \mathrm{d} x=G(\hat{U}(L, t))
\end{aligned}
$$

where we used $G(0)=0$ and $\hat{U}(0, t)=0$ in the last equality. Since $G(s)<0$ for $s \geq M_{1}$, it is not difficult to deduce (8.45) from the above differential inequality.

Lemma 8.4.3 There exists a $C_{1}$ such that for any $N$ and any $\left(\alpha_{i}\right)_{i=1}^{N} \subset \mathbb{R}$, every positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41) satisfies

$$
\begin{equation*}
\limsup _{t \rightarrow \infty} \sum_{i=1}^{N}\left\|u_{i}(x, t)\right\|_{C^{2+\beta, 1+\beta / 2}([0, L] \times[t, t+1))} \leq C_{1}, \tag{8.46}
\end{equation*}
$$

where $C_{1}$ depends on $\max \left\{\left|\alpha_{i}\right|\right\}$, but does not depend on the number $N$ and the initial data.

Proof Fix an arbitrary positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41). By Lemma 8.4.2,

$$
\limsup _{t \rightarrow \infty} \sum_{i=1}^{N}\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} \leq 4 M_{1}
$$

so there exists a $T_{0}>0$ such that

$$
\sum_{j=1}^{N}\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} \leq 5 M_{1} \quad \text { for } t \geq T_{0} .
$$

Observe that the equation of $u_{i}$ can be regarded as a linear parabolic equation with non-autonomous coefficients:

$$
\begin{cases}\partial_{t} u_{i}-D \partial_{x x} u_{i}-\alpha_{i} \partial_{x} u_{i}=\tilde{\sigma}(x, t) u_{i} & \text { in }[0, L] \times(0, \infty),  \tag{8.47}\\ D \partial_{x} u_{i}-\alpha_{i} u_{i}=0 & \text { on }\{0, L\} \times(0, \infty),\end{cases}
$$

where

$$
\tilde{\sigma}(x, t)=g\left(\exp \left(-k_{0} x-\hat{U}(x, t)\right)\right)-d
$$

is uniformly bounded in $L^{\infty}([0, L] \times[0, \infty))$. We can apply the Harnack principle (Theorem 1.2.6) to deduce that

$$
\begin{equation*}
\sup _{0<x<L} u_{i}(x, t) \leq C_{H} \inf _{0<x<L} u_{i}(x, t) \quad \text { for } t \geq 1, \tag{8.48}
\end{equation*}
$$

where $C_{H}$ does not depend on $i$ or the initial data. Then, we apply the local maximum principle (Theorem 1.2.7) to yield

$$
\begin{equation*}
\left\|u_{i}\right\|_{L^{\infty}([0, L] \times[t-3, t])} \leq C\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} \quad \text { for } t \geq 5 . \tag{8.49}
\end{equation*}
$$

Next, we apply the Sobolev embedding theorem and the parabolic $L^{p}$ estimate to the linear parabolic equation to improve the above estimate to ( $C^{\prime}$ denotes a generic constant)

$$
\begin{align*}
\left\|u_{i}\right\|_{C^{\beta, \beta / 2}([0, L] \times[t-2, t])} & \leq C^{\prime}\left\|u_{i}\right\|_{W^{2+p, 1+p}([0, L] \times[t-2, t])} \\
& \leq C^{\prime}\left\|u_{i}\right\|_{L^{\infty}([0, L] \times[t-3, t])} \leq C^{\prime}\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} . \tag{8.50}
\end{align*}
$$

Then $\tilde{\sigma}(x, t)$ in (8.47) is Hölder continuous, so that by a parabolic Schauder estimate, the above can then be improved to

$$
\begin{equation*}
\left\|u_{i}\right\|_{C^{2+\beta, 1+\beta / 2}([0, L] \times[t-1, t])} \leq C^{\prime}\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} . \tag{8.51}
\end{equation*}
$$

The desired conclusion follows by summing $i$ from 1 to $N$, and taking the supremum for $t \geq T_{0}$ to obtain

$$
\sum_{j=1}^{N}\left\|u_{i}\right\|_{C^{2+\beta, 1+\beta / 2}\left([0, L] \times\left[T_{0}-1, \infty\right)\right)} \leq C^{\prime} \sup _{t \geq T_{0}} \sum_{j=1}^{N}\left\|u_{i}\right\|_{L^{1}([0, L] \times[t-4, t])} \leq 5 C M_{1} .
$$

Note that the constants depend on $\max \left\{\left|\alpha_{i}\right|\right\}$ but are independent of $N$. This completes the proof.

Lemma 8.4.4 There exists a constant $\delta_{0}>0$ such that for any positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41), we have

$$
\liminf _{t \rightarrow \infty}\left[\inf _{0<x<L} \sum_{i=1}^{N} u_{i}(x, t)\right] \geq \delta_{0}
$$

Proof Let $\left(u_{i}\right)_{i=1}^{N}$ be a positive solution of (8.41). Integrating (8.41) with respect to $x \in[0, L]$ and summing $i$ from 1 to $N$, we have

$$
\begin{align*}
\frac{\mathrm{d}}{\mathrm{~d} t} \hat{U}(L, t)= & \int_{0}^{L}\left[g\left(\mathrm{e}^{-k_{0} x-\hat{U}(x, t)}\right)-d\right] \sum_{i=1}^{N} u_{i}(x, t) \mathrm{d} x \\
= & \int_{0}^{L} \partial_{x}\left[G\left(k_{0} x+\hat{U}(x, t)\right)-G\left(k_{0} x\right)\right] \mathrm{d} x \\
& +k_{0} \int_{0}^{L}\left[g\left(\mathrm{e}^{-k_{0} x}\right)-g\left(\mathrm{e}^{-k_{0} x-\hat{U}(x, t)}\right)\right] \mathrm{d} x \\
\geq & G\left(k_{0} L+\hat{U}(L, t)\right)-G\left(k_{0} L\right) \tag{8.52}
\end{align*}
$$

where $G(s)=\int_{0}^{s}\left[g\left(\mathrm{e}^{-\tau}\right)-d\right] \mathrm{d} \tau$. Note that the last inequality follows from the fact that $g^{\prime}(s)>0$ for $s>0$.

Observe now that, by (8.42),

$$
G^{\prime}\left(k_{0} L\right)=g\left(\mathrm{e}^{-k_{0} L}\right)-d>0
$$

Hence there exists a $\delta_{1}>0$ such that $G\left(k_{0} L+s\right)-G\left(k_{0} L\right)>0$ for $s \in\left(0, \delta_{1}\right]$. Since the mapping $t \mapsto \hat{U}(L, t)$ satisfies the differential inequality (8.52), it follows that

$$
\liminf _{t \rightarrow \infty} \sum_{i=1}^{N}\left\|u_{i}\right\|_{L^{1}[0, L]}=\liminf _{t \rightarrow \infty} \hat{U}(L, t) \geq \delta_{1}
$$

By applying Harnack's inequality (8.48) once again, we can convert the above lower estimate of the $L^{1}$ integral to the desired pointwise estimate. This proves the lemma.

### 8.4.2 A rough estimate

Proposition 8.4.5 For each $\eta>0$ and $\hat{\alpha} \in \mathbb{R}$, there exists an $\epsilon>0$ such that for any $N \in \mathbb{N}$ and $\left(\alpha_{i}\right)_{i=1}^{N} \subset(\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon)$, any positive solution of (8.41) satisfies

$$
\begin{equation*}
\limsup _{t \rightarrow \infty}\left\|\sum_{i=1}^{N} u_{i}(x, t)-\theta_{\hat{\alpha}}(x)\right\|_{C^{\beta, \beta / 2}([0, L] \times[t, \infty))}<\eta . \tag{8.53}
\end{equation*}
$$

Proof Let a positive solution $\left(u_{i}\right)_{i=1}^{N}$ of the time-dependent problem (8.41) be given. By interpolation and the a priori estimate (8.46), it is enough to show

$$
\begin{equation*}
\limsup _{t \rightarrow \infty}\left\|\sum_{i=1}^{N} u_{i}(\cdot, t)-\theta_{\hat{\alpha}}\right\|_{C([0, L])}<\eta . \tag{8.54}
\end{equation*}
$$

Suppose to the contrary that there is an $\eta_{0}>0$ such that for $k \in \mathbb{N}$, there exist $N_{k} \in \mathbb{N}$, and a sequence $\left\{\alpha_{i}^{k}\right\}_{i=1}^{N_{k}}$ and a positive solution $\left(u_{i}^{k}\right)_{i=1}^{N_{k}}$ such that

$$
\sup _{i}\left|\alpha_{i}^{k}-\hat{\alpha}\right|<\frac{1}{k}, \quad \limsup _{t \rightarrow \infty}\left\|\hat{U}^{k}(x, t)-\theta_{\hat{\alpha}}(x)\right\|_{C([0, L])} \geq \eta_{0},
$$

where $\hat{U}^{k}(x, t)=\sum_{i=1}^{N_{k}} u_{i}^{k}(x, t)$. We can infer that for each $k$, there exists $\left\{t_{j}^{k}\right\}_{j=1}^{\infty}$ such that

$$
\lim _{j \rightarrow \infty} t_{j}^{k}=+\infty, \quad \text { and } \quad\left\|\hat{U}^{k}\left(\cdot, t_{j}^{k}\right)-\theta_{\hat{\alpha}}\right\|_{C([0, L])} \geq \eta_{0}, \quad \text { for all } j \geq 1
$$

By the estimate established in Lemma 8.4.3, we can pass to a subsequence so that

$$
u_{i}^{k}\left(x, t+t_{j}^{k}\right) \rightarrow \check{u}_{i}^{k}(x, t) \quad \text { as } j \rightarrow \infty, \text { in } C_{\text {loc }}([0, L] \times \mathbb{R}),
$$

where $\left(\check{u}_{i}^{k}\right)_{i}$ is some entire solution of (8.41) such that $\check{U}^{k}=\sum_{i} \check{u}_{i}^{k}$ satisfies

$$
\begin{equation*}
\left\|\check{U}^{k}(\cdot, 0)-\theta_{\hat{\alpha}}\right\|_{C([0, L])} \geq \eta_{0} \quad \text { for all } k . \tag{8.55}
\end{equation*}
$$

By Lemma 8.4.4 and by possibly taking a smaller $\eta_{0}$, we may also assume that

$$
\begin{equation*}
\inf _{[0, L] \times \mathbb{R}} \check{U}^{k}(x, t) \geq \eta_{0} \quad \text { for all } k \geq 1 \tag{8.56}
\end{equation*}
$$

Now, since the estimate of Lemma 8.4.3 is independent of $N$, there is a $C_{1}$, independent of $k$, such that

$$
\begin{equation*}
\left\|\check{U}^{k}\right\|_{C^{2+\beta, 1+\beta / 2}([0, L] \times \mathbb{R})} \leq C_{1} . \tag{8.57}
\end{equation*}
$$

Hence we can again pass to the limit to assume that, as $k \rightarrow \infty$, the sequence $\left\{\check{U}^{k}\right\}_{k}$ converges in $C_{\text {loc }}([0, L] \times \mathbb{R})$ to some bounded entire solution $\check{U}$ of the single species equation (8.6) with $\alpha=\hat{\alpha}$. Moreover, by (8.56) and (8.57), $\check{U}$ is bounded and satisfies

$$
\begin{equation*}
\inf _{[0, L] \times \mathbb{R}} \check{U}(x, t) \geq \eta_{0} . \tag{8.58}
\end{equation*}
$$

By the global attractivity of $\theta_{\hat{\alpha}}$, we must have $\check{U}(x, t) \equiv \theta_{\hat{\alpha}}(x)$ in $[0, L] \times \mathbb{R}$. But this is in contradiction with (8.55).

### 8.4.3 The normalized principal bundle

Given two constants, $D>0, \alpha \in \mathbb{R}$ and a function $h(x, t) \in C^{\beta, \beta / 2}([0, L] \times \mathbb{R})$, consider

$$
\begin{cases}\partial_{t} \Psi_{1}(x, t)-D \partial_{x x} \Psi_{1}(x, t)+\alpha \partial_{x} \Psi_{1}(x, t) & -h(x, t) \Psi_{1}(x, t)+d \Psi_{1}(x, t)  \tag{8.59}\\ \multicolumn{1}{c}{=H_{1}(t) \Psi_{1}(x, t)} & \text { for } 0<x<L, t \in \mathbb{R} \\ D \partial_{x} \Psi_{1}(x, t)-\alpha \Psi_{1}(x, t)=0 & \text { for } x \in\{0, L\}, t \in \mathbb{R} \\ \int_{0}^{L} \mathrm{e}^{-\alpha x / D} \Psi_{1}(x, t) \mathrm{d} x=1 & \text { for } t \in \mathbb{R} \\ \Psi_{1}(x, t)>0 & \text { for } x \in[0, L], t \in \mathbb{R}\end{cases}
$$

We call the pair ( $\Psi_{1}(x, t), H_{1}(t)$ ) the normalized principal bundle corresponding to (8.59).

Proposition 8.4.6 The problem (8.59) has a unique solution

$$
\left(\Psi_{1}, H_{1}\right) \in C^{2+\beta, 1+\beta / 2}([0, L] \times \mathbb{R}) \times C^{1+\beta / 2}(\mathbb{R})
$$

Moreover, the following statements hold.

1. For each $M>1$, there exists a constant $C_{M}$ such that

$$
\begin{equation*}
\frac{1}{C_{M}} \leq \Psi_{1}(x, t) \leq C_{M} \quad \text { in } \bar{\Omega} \times \mathbb{R} \tag{8.60}
\end{equation*}
$$

provided $(D, \alpha) \in\left[\frac{1}{M}, M\right] \times[-M, M]$.
2. The normalized principal bundle as a mapping

$$
\begin{aligned}
(D, \alpha, h) & \mapsto\left(\Psi_{1}, H_{1}\right) \\
\mathbb{R}_{+} \times \mathbb{R} \times C^{\beta, \beta / 2}([0, L] \times \mathbb{R}) & \rightarrow C^{2+\beta, 1+\beta / 2}([0, L] \times \mathbb{R}) \times C^{1+\beta / 2}(\mathbb{R}),
\end{aligned}
$$

is smooth.
Proof Letting $\psi_{1}(x, t):=\mathrm{e}^{-\alpha x / D} \Psi_{1}(x, t)$, the above problem can be transformed to

$$
\begin{cases}\partial_{t} \psi_{1}(x, t)-D \partial_{x x} \psi_{1}(x, t)-\alpha \partial_{x} \psi_{1}(x, t)-h(x, t) \psi_{1}(x, t)+d \psi_{1}(x, t)  \tag{8.61}\\ \quad=H_{1}(t) \psi_{1}(x, t) & \text { for } 0<x<L, t \in \mathbb{R}, \\ \partial_{x} \psi_{1}(x, t)=0 & \text { for } x \in\{0, L\}, t \in \mathbb{R}, \\ \int_{0}^{L} \psi_{1}(x, t) \mathrm{d} x=1 & \text { for } t \in \mathbb{R}, \\ \psi_{1}(x, t)>0 & \text { for } x \in[0, L], t \in \mathbb{R} .\end{cases}
$$

The existence and uniqueness of ( $\psi_{1}(x, t), H_{1}(t)$ ) are proved in Theorem 4.1.4. The bounds in (8.60) follow from the Harnack principle (Theorem 1.2.6) and the fact that $\int_{0}^{L} \mathrm{e}^{-\alpha x / D} \Psi(x, t) \mathrm{d} x=1$. (See, e.g. the proof of Theorem 4.2.2 for details.) The smooth dependence on coefficients is proved in Theorem 4.3.4.

Definition 8.4.7 For given $\hat{\alpha}, \alpha \in \mathbb{R}$, let $\lambda(\alpha, \hat{\alpha})$ and $\phi(x ; \alpha, \hat{\alpha})$ be the principal eigenvalue and eigenfunction of

$$
\begin{cases}D \phi^{\prime \prime}(x)+\alpha \phi^{\prime}(x)+\hat{h}(x) \phi(x)+\lambda \phi(x)=0 & \text { for } 0<x<L,  \tag{8.62}\\ \phi^{\prime}(x)=0 & \text { for } x=0, L,\end{cases}
$$

where

$$
\begin{equation*}
\hat{h}(x)=g\left(\exp \left(-k_{0} x-\int_{0}^{x} \theta_{\hat{\alpha}}(y) \mathrm{d} y\right)\right)-d \tag{8.63}
\end{equation*}
$$

By Lemma 8.3.7, we have

$$
\begin{equation*}
\partial_{\alpha} \lambda(\alpha, \hat{\alpha})>0 \quad \text { for } \alpha, \hat{\alpha} \in \mathbb{R} . \tag{8.64}
\end{equation*}
$$

Corollary 8.4.8 There exists $\eta^{\prime}>0$ such that for any $\alpha \in \mathbb{R}$ and any function $h(x, t) \in C^{\beta, \beta / 2}([0, L] \times \mathbb{R})$, if

$$
\begin{equation*}
|\alpha-\hat{\alpha}|<\eta^{\prime}, \quad \text { and } \quad\|h(x, t)-\hat{h}(x)\|_{C^{\beta, \beta / 2}([0, L] \times \mathbb{R})}<\eta^{\prime}, \tag{8.65}
\end{equation*}
$$

then

$$
\partial_{\alpha} H_{1}(t ; \alpha) \geq \eta^{\prime} \quad \text { for all } t \in \mathbb{R}, \alpha \in\left(\hat{\alpha}-\eta^{\prime}, \hat{\alpha}+\eta^{\prime}\right),
$$

where $\partial_{\alpha} H_{1}(t ; \alpha, h)$ is the partial derivative of $H_{1}(t ; \alpha, h)$ with respect to the scalar parameter $\alpha$.

Proof Taking $h(x, t)=\hat{h}(x)$, then by uniqueness of the principal Floquet bundle,

$$
\left(\Psi_{1}(x, t ; \alpha, \hat{h}), H_{1}(t ; \alpha, \hat{h})\right)=(\phi(x), \lambda(\alpha, \hat{\alpha})),
$$

where ( $\phi(x), \lambda(\alpha, \hat{\alpha})$ ) is the principal eigenpair of (8.62). By (8.64) and continuous dependence, there is an $\epsilon_{1}>0$ such that

$$
\eta_{0}:=\inf _{\alpha \in\left[\hat{\alpha}-\epsilon_{1}, \hat{\alpha}+\epsilon_{1}\right]} \frac{\partial}{\partial \alpha} \lambda(\alpha, \hat{\alpha})>0 .
$$

Now it follows from the smooth dependence of ( $\Psi_{1}, H_{1}$ ) on ( $\alpha, h$ ) that there exists $\eta^{\prime} \in\left(0, \eta_{0} / 2\right)$ such that if (8.65) holds, then

$$
\begin{aligned}
& \sup _{\alpha \in\left[\hat{\alpha}-\epsilon_{1}, \hat{\alpha}+\epsilon_{1}\right]}\left\|\partial_{\alpha} H_{1}(\cdot ; \alpha, h)-\partial_{\alpha} H_{1}(\cdot ; \alpha, \hat{h})\right\|_{C^{\beta, \beta / 2}([0, L] \times \mathbb{R})} \\
& =\left\|\partial_{\alpha} H_{1}(\cdot ; \alpha, h)-\left.\partial_{\alpha} \lambda(\alpha, \hat{\alpha})\right|_{\alpha=\hat{\alpha}}\right\|_{C^{\beta, \beta / 2}([0, L] \times \mathbb{R})}<\frac{\eta_{0}}{2} .
\end{aligned}
$$

Hence, for $\alpha \in\left[\hat{\alpha}-\epsilon_{1}, \hat{\alpha}+\epsilon_{1}\right]$,

$$
\partial_{\alpha} H_{1}(t ; \alpha, h)>\left.\partial_{\alpha} \lambda(\alpha, \hat{\alpha})\right|_{\alpha=\hat{\alpha}}-\frac{\eta_{0}}{2} \geq \frac{\eta_{0}}{2}>\eta^{\prime} \quad \text { for } t \in \mathbb{R}
$$

This proves the corollary.

### 8.4.4 A general exclusion criterion

Proposition 8.4.9 There exists an $\eta>0$ such that if (8.53) holds, then for any $N$ and any increasing sequence $\left(\alpha_{i}\right)_{i=1}^{N} \subset(\hat{\alpha}-\eta, \hat{\alpha}+\eta)$, every positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41) converges to the equilibrium solution $E_{1}=\left(\theta_{\alpha_{1}}, 0, \ldots, 0\right)$ as $t \rightarrow \infty$; i.e. the equilibrium $E_{1}$ is globally asymptotically stable among all positive solutions.

Proof Let $\eta^{\prime}>0$ be as given in Corollary 8.4.8. It follows from Proposition 8.4.5 that there is an $\epsilon \in\left(0, \eta^{\prime}\right)$ such that for any $N$ and any $\left(\alpha_{i}\right)_{i=1}^{N} \subset(\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon)$,

$$
\begin{equation*}
\limsup _{t \rightarrow \infty}\|h(x, t)-\hat{h}(x)\|_{C^{\beta, \beta / 2}([0, L] \times[t, t+1])}<\eta^{\prime}, \tag{8.66}
\end{equation*}
$$

where

$$
\begin{align*}
h(x, t) & =g\left(\exp \left(-k_{0} x-\hat{U}(x, t)\right)\right)-d \\
& =g\left(\exp \left(-k_{0} x-\sum_{j=1}^{N} \int_{0}^{x} u_{j}(y, t) \mathrm{d} y\right)\right)-d \tag{8.67}
\end{align*}
$$

and $\hat{h}(x)$ is given in (8.63).
By (8.66), after possibly a translation in time, we may assume without loss of generality that

$$
\begin{equation*}
\|h(\cdot, t)-\hat{h}\|_{C^{\beta, \beta / 2}([0, L] \times[0, \infty))}<\eta^{\prime} \tag{8.68}
\end{equation*}
$$

Extend $h(x, t)$ evenly in $t$, so that it is defined for $(x, t) \in[0, L] \times \mathbb{R}$. Since $(\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon) \subset\left(\hat{\alpha}-\eta^{\prime}, \hat{\alpha}+\eta^{\prime}\right)$, we have verified (8.65).

Let $\Psi_{1}(x, t ; \alpha, h)$ and $H_{1}(t ; \alpha, h)$ be the normalized principal bundle considered in the statement of Corollary 8.4.8. We have, for any $\alpha \in[\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon]$,

$$
\begin{equation*}
\inf _{t \in \mathbb{R}} \partial_{\alpha} H_{1}(t ; \alpha, h) \geq \eta^{\prime}>0 \tag{8.69}
\end{equation*}
$$

For each $i$, we claim that there are $\bar{c}_{i}>\underline{c}_{i}>0$ such that

$$
\begin{equation*}
\underline{c}_{i} \mathrm{e}^{-\int_{0}^{t} H_{1}\left(s ; \alpha_{i}, h\right) d s} \Psi_{1}\left(x, t ; \alpha_{i}, h\right) \leq u_{i}(x, t) \leq \bar{c}_{i} \mathrm{e}^{-\int_{0}^{t} H_{1}\left(s ; \alpha_{i}, h\right) d s} \Psi_{1}\left(x, t ; \alpha_{i}, h\right) \tag{8.70}
\end{equation*}
$$

for $(x, t) \in[0, L] \times[0, \infty)$.

Indeed, the left- and right-hand sides of (8.70) are positive solutions to the same linear parabolic equation as $u_{i}$. Thanks to (8.60), $\Psi_{i}(\cdot, 0)$ and the positive solution $u_{i}(\cdot, 0)$ are bounded uniformly from above and below by positive constants at time $t=0$. Hence we can choose $\bar{c}_{i}$ large enough and $\underline{c}_{i}$ small enough (both being independent of $t \geq 0$ ) to deduce (8.70) from the classical comparison theorem of linear parabolic equations. This proves (8.70).

By (8.69), we have

$$
H_{1}\left(t ; \alpha_{i}, h\right)-H_{1}\left(t ; \alpha_{1}, h\right) \geq\left(\alpha_{i}-\alpha_{1}\right) \eta^{\prime}>0 \quad \text { for all } i>1, \text { and all } t \in \mathbb{R} .
$$

Hence, we derive from (8.70) that, for $i>1$,

$$
\begin{aligned}
\frac{u_{i}(x, t)}{u_{1}(x, t)} & \leq C \exp \left(-\int_{0}^{t}\left(H_{1}\left(s ; \alpha_{i}\right)-H_{1}\left(s ; \alpha_{1}\right)\right) \mathrm{d} s\right) \frac{\Psi_{1}\left(x, t ; \alpha_{i}, h\right)}{\Psi_{1}\left(x, t ; \alpha_{1}, h\right)} \\
& \leq C^{\prime} \exp \left(-\left(\alpha_{i}-\alpha_{1}\right) \eta^{\prime} t\right) \rightarrow 0 \quad \text { as } t \rightarrow \infty
\end{aligned}
$$

Note that we have used (8.60) again in the second inequality. Since we also have $\limsup \sum_{i=1}^{N}\left\|u_{i}\right\| \leq C_{1}$ (by Lemmas 8.4.2 and 8.4.3), we deduce that $u_{i} \rightarrow 0$ $\stackrel{t \rightarrow \infty}{\text { uniformly for } i}=2, \ldots, N$. Hence the semiflow generated by (8.41) is asymptotic to the single species model consisting of only the first species $u_{1}$. By the compactness of the semiflow, there is a sequence $t_{k} \rightarrow \infty$ such that

$$
\left(\tilde{u}_{i}^{k}(x, t)\right)_{i=1}^{N}=\left(u_{i}\left(x, t-t_{k}\right)\right)_{i=1}^{N} \rightarrow\left(\tilde{u}_{i}(x, t)\right)_{i=1}^{N} \quad \text { in } C_{l o c}^{2,1}([0, L] \times \mathbb{R}),
$$

where $\left(\tilde{u}_{i}\right)_{i=1}^{N}$ is an entire solution that is contained in the omega limit set. By the above discussion, $\tilde{u}_{i} \equiv 0$ for all $i=2, . ., N$. Hence, the omega limit set takes the form $\omega_{1} \times\{(0, \ldots, 0)\}$.

By Lemmas 8.4.3 and Lemma 8.4.4, there exists a $\delta_{0}>0$ such that for any $\tilde{u}_{1} \in \omega_{1}$,

$$
\delta_{0} \leq \tilde{u}_{1}(x, t) \leq \frac{1}{\delta_{0}} \quad \text { in } \Omega \times \mathbb{R}
$$

Now, since $\omega=\left\{\left(\tilde{u}_{1}, 0, \ldots, 0\right): \tilde{u}_{1} \in \omega_{1}\right\}$ is the omega limit set of a trajectory, it follows that $\omega$ is internally chain transitive ${ }^{2}$ with respect to the semiflow generated by (8.41). It follows then that $\omega_{1}$ is internally chain transitive with respect to the semiflow generated by the single species problem. Since every nonnegative nontrivial solution of the single species equation converges to $\theta_{\alpha_{1}}$, it follows that either $\omega_{1}=\{0\}$

[^8]or $\omega_{1}=\left\{\theta_{\alpha_{1}}\right\}$. Using Lemma 8.4.4, we deduce that $\omega_{1}=\left\{\theta_{\alpha_{1}}\right\}$, i.e. $u_{1} \rightarrow \theta_{\alpha_{1}}$ uniformly as $t \rightarrow \infty$.

Proof (of Theorem 8.4.1) Let $\eta$ be given by Proposition 8.4.9. We can then choose $\epsilon \in(0, \eta)$ by Proposition 8.4.5 such that for any $N$ and $\left(\alpha_{i}\right)_{i=1}^{N} \in(\hat{\alpha}-\epsilon, \hat{\alpha}+\epsilon)$, any positive solution $\left(u_{i}\right)_{i=1}^{N}$ of (8.41) satisfies (8.53). It then follows from the choice of $\eta$ above and Proposition 8.4.9 that $E_{1}=\left(\theta_{\alpha_{1}}, 0 \ldots, 0\right)$ is globally asymptotically stable among all positive solutions of (8.41).

### 8.5 Further Reading

In this chapter, we limit ourselves to the relatively simple situation of a eutrophic water column where light is the only limiting factor of population growth. In other situations, factors such as temperature [9], nutrient availability [2] and predation [10] can also be important drivers of the population dynamics.

Much of the existing mathematical literature on phytoplankton is focused on a single species. The single species model was considered in [36] for the selfshading case (i.e., $k_{0}=0$ ) in infinitely long water columns ( $L=\infty$ ). The existence, uniqueness, and global stability of the steady state are established in [22,23,36]. It is shown in [28] that the self-shading model with any finite water column depth has a stable positive steady state, which means that the self-shading model has no critical water column depth beyond which the phytoplankton cannot persist.

For the case with background turbidity ( $k_{0}>0$ ), it is illustrated in [8] that the condition for phytoplankton bloom development can be characterized by critical water column depth and some critical values of the vertical turbulent diffusion coefficient. Du and Hsu [5] studied both single and multiple species competing for light with no advection. For the single-species model, the existence, uniqueness, and global attractivity of a positive equilibrium was established. Hsu and Lou [14] analyzed the critical death rate, critical water column depth, critical sinking or buoyant coefficient, and critical turbulent diffusion rate. Du and Mei [7] investigated the global dynamics of the single species model for the case $D=D(x), \alpha=\alpha(x)$ and the asymptotic profiles of the positive steady states for small or large diffusion and deep water column when $D, \alpha$ are constants. Peng and Zhao [35] considered the effect of time-periodic light intensity $I_{0}$ at the surface, due to the diurnal light cycle and seasonal changes. Ma and Ou [32] further studied the model in [35] and assumed that $D(t), \alpha(t)$ were time-periodic functions. They obtained the uniqueness and the global attractivity of the positive periodic solution of the single-species model, when it exists. Du et al. [6] studied the effect of photoinhibition on the single phytoplankton species, and they found that, in contrast to the case of no photoinhibition, where at most one positive steady state can exist, the model with photoinhibition possesses at least two positive steady states in certain parameter ranges. Hsu et al. [15] examined the dynamics of a single species under the assumption that the amount of light absorbed by individuals is proportional to cell size, which varies for populations
that reproduced by simple cell division into two equal-sized daughter cells, whereas Pang et al. [34] considered the crowding effect.

Although many mathematical theories have been developed for the single-species phytoplankton model, there are few results for two or more phytoplankton species competing for light. The existence of positive steady state and uniform persistence for two-species model were proved in [5], where there is no sinking or buoyancy; see also [33]. The global dynamics was obtained only recently; see [24, 25] for some classification results based on establishing a generalized comparison principle and the application of the theory of monotone dynamical systems.

Unlike the two-species Lotka-Volterra competition model with diffusion, one main difficulty for the system (8.1)-(8.4) is the lack of a comparison principle, i.e., if $N=2$ and ( $u_{1}, u_{2}$ ) and ( $\tilde{u}_{1}, \tilde{u}_{2}$ ) are solutions to (8.1)-(8.4), then

$$
\begin{aligned}
& u_{1}(x, 0) \leq \tilde{u}_{1}(x, 0), \quad u_{2}(x, 0) \geq \tilde{u}_{2}(x, 0) \quad \text { pointwise in }[0, L] \\
& \quad \nRightarrow u_{1}(x, t) \leq \tilde{u}_{1}(x, t), \quad u_{2}(x, t) \geq \tilde{u}_{2}(x, t) \quad \text { pointwise in }[0, L] \times(0, \infty) .
\end{aligned}
$$

For order-preserving properties in the single-species model, Shigesada and Okubo [33] observed that, in the self-shading case (with $k_{0}=0$ ), the cumulative distribution function $U(x, t):=\int_{0}^{x} u(s, t) \mathrm{d} s$ satisfies a single reaction-diffusion equation without nonlocal terms. Subsequently, Ishii and Takagi [22,23] showed that the flow retains the natural order in $U$. For a related model with a water column of infinite depth, they made use of this fact to obtain a complete classification of the long-time behavior of the population. This fact was used again in Du and Hsu [5] to determine the long-time dynamics for a single-species model with finite water depth. Subsequently, the weak maximum principle for $U$ in the single-species model was established in [32]. The strong maximum principle for $U$ and the generalization to the two-species model is due to [25].

For $N \geq 3$, the competitive system no longer admits a comparison principle. Recently, a sufficient condition leading to competitive exclusion was obtained in [3], which uses the theory of normalized principal Floquet bundles (see Chapter 4). Indeed, when $N=2$, we have shown that the phytoplankton competition system is a monotone dynamical system, so that the trajectory generically converges to some equilibrium. In such case, the reduction principle [1] concerning the linearized problem within the set of equilibria is enough to ascertain the large time limit of the dynamical system. However, for nonmonotone systems, it is not sufficient to only classify the stability of the set of equilibria. In fact, a generalized reduction principle for the nonautonomous, nonperiodic situation is needed, and the principal Floquet bundle seems to be the appropriate notion to study. See [4,29], where monotonicity results for principal Floquet bundles are established, with application to the evolution of slow dispersal.

The paradox of the plankton proposed by Hutchinson [21] raised the lack of explanation of the diversity of phytoplankton species, despite the small number of limiting factors, such as light, nitrogen, carbon, phosphorus, etc. Based on our results concerning competitive exclusion in eutrophic water columns, it seems that other factors (e.g. nutrient availability and predation) have to be included to account for
the coexistence of multiple phytoplankton species. Recently, mathematical models considering the full spectrum of light have been proposed, which are based on the fact that different phytoplankton species have differential preference among different colors of light. We mention [11] which introduces a reaction-diffusion model that generalizes the model in [37] to the spatial context. Finally, in real situations the turbulent diffusion rate is likely to vary with water depth. In this direction, we mention the works [38, 39] investigating the situation of a stratified lake with a well mixed top layer and a poorly mixed bottom layer.

## Problems

8.5.1 Let $\mathcal{K}$ be given by (8.7). Show that $\mathcal{K}$ has nonempty interior with respect to the topology of $C([0, L])$, and that (8.8) holds.
8.5.2 Prove part 2 of Theorem 8.2.5 in the following steps.

1. Find $\rho \in C^{2}([0, L])$ such that

$$
\left\{\begin{array}{l}
D \rho^{\prime \prime}-\alpha \rho^{\prime}+\left(g\left(\exp \left(-k_{0} x-\int_{0}^{x} \rho(y) \mathrm{d} y\right)\right)-d\right) \rho<0 \quad \text { for } 0 \leq x \leq L \\
D \rho^{\prime}(0)-\alpha \rho(0) \leq 0 \leq D \rho^{\prime}(L)-\alpha \rho(L)
\end{array}\right.
$$

2. Let $\tilde{\mu}_{1}$ and $\tilde{\varphi}$ be the principal eigenvalue and positive eigenfunction of

$$
\begin{cases}D \tilde{\varphi}^{\prime \prime}-\alpha \tilde{\varphi}^{\prime}+\left[g\left(\mathrm{e}^{-k_{0} x-\delta_{0} x}\right)-d\right] \tilde{\varphi}+\tilde{\mu} \tilde{\varphi}=0 & \text { in }[0, L]  \tag{8.71}\\ D \tilde{\varphi}^{\prime}-\alpha \tilde{\varphi}=0 & \text { for } x=0, L\end{cases}
$$

Assume that $\tilde{\mu}_{1}<0$. Let $\underline{u}_{\delta}$ and $\bar{u}_{M}$ be respectively solutions of (8.6) with initial data $\delta \tilde{\varphi}$ and $M \rho$. Deduce that, for $0<\delta \ll 1$ and $M \gg 1$, we have

$$
\underline{u}_{\delta}\left(\cdot, t_{1}\right) \leq \mathcal{K} \underline{u}_{\delta}\left(\cdot, t_{2}\right), \quad \bar{u}_{M}\left(\cdot, t_{1}\right) \geq_{\mathcal{K}} \bar{u}_{M}\left(\cdot, t_{2}\right) \quad \text { for } 0 \leq t_{1}<t_{2} .
$$

3. Show that $\underline{u}_{\delta}(x, t) \rightarrow \underline{\theta}(x)$ and $\bar{u}_{M} \rightarrow \bar{\theta}$, where $0<\underline{\theta} \leq_{K} \bar{\theta}$ are positive equilibria of (8.6).
4. Show that $\underline{\theta}=\bar{\theta}$, and conclude that (8.6) has a unique positive equilibrium which attracts all nonnegative, nontrivial solutions.
8.5.3 We say that $\bar{u}$ is a super-solution of (8.6) provided

$$
D \partial_{x} \bar{u}(0, t)-\alpha \bar{u}(0, t) \leq 0 \leq D \partial_{x} \bar{u}(L, t)-\alpha \bar{u}(L, t)
$$

and

$$
\partial_{t} \bar{u} \geq_{\mathcal{K}} D \partial_{x x} \bar{u}-\alpha \partial_{x} \bar{u}+\left[g\left(\exp \left(-k_{0} x-\int_{0}^{x} \bar{u}(y, t) \mathrm{d} y\right)\right)-d\right] \bar{u}
$$

holds for each $t>0$. Define similarly the notion of sub-solution of (8.6) by reversing the inequalities. Here we recall that for $\phi, \tilde{\phi} \in C([0, L]), \phi \leq_{\mathcal{K}} \tilde{\phi}$ if and only if $\int_{0}^{x}(\tilde{\phi}-\phi) \mathrm{d} y \geq 0$ for all $0 \leq x \leq L$.

Prove that if $\underline{u}$ and $\bar{u}$ is a pair of sub- and super-solutions of (8.6) in the above sense, and if $\underline{u}(\cdot, 0) \leq \mathcal{K} \bar{u}(\cdot, 0)$, then

$$
\underline{u}(\cdot, t) \leq \mathcal{K} \bar{u}(\cdot, t) \quad \text { for } t>0 .
$$

## References

1. L. Altenberg, Resolvent positive linear operators exhibit the reduction phenomenon, Proc. Natl. Acad. Sci. USA, 109 (2012), pp. 3705-3710.
2. A. Burson, M. Stomp, E. Greenwell, J. Grosse, and J. Huisman, Competition for nutrients and light: testing advances in resource competition with a natural phytoplankton community, Ecology, 99 (2018), pp. 1108-1118.
3. R. S. Cantrell and K.-Y. Lam, Competitive exclusion in phytoplankton communities in a eutrophic water column, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 1783-1795.
4. —, On the evolution of slow dispersal in multispecies communities, SIAM J. Math. Anal., 53 (2021), pp. 4933-4964.
5. Y. Du and S.-B. Hsu, On a nonlocal reaction-diffusion problem arising from the modeling of phytoplankton growth, SIAM J. Math. Anal., 42 (2010), pp. 1305-1333.
6. Y. Du, S.-B. Hsu, and Y. Lou, Multiple steady-states in phytoplankton population induced by photoinhibition, J. Differential Equations, 258 (2015), pp. 2408-2434.
7. Y. Du and L. Mei, On a nonlocal reaction-diffusion-advection equation modelling phytoplankton dynamics, Nonlinearity, 24 (2011), pp. 319-349.
8. U. Ebert, M. Arrayás, N. Temme, B. Sommeijer, and J. Huisman, Critical conditions for phytoplankton blooms, Bulletin of Mathematical Biology, 63 (2001), pp. 1095-1124.
9. K. F. Edwards, M. K. Thomas, C. A. Klausmeier, and E. Litchman, Phytoplankton growth and the interaction of light and temperature: A synthesis at the species and community level, Limnology and Oceanography, 61 (2016), pp. 1232-1244.
10. J. J. Elser and R. P. Hassett, A stoichiometric analysis of the zooplankton-phytoplankton interaction in marine and freshwater ecosystems, Nature, 370 (1994), pp. 211-213.
11. C. M. Heggerud, K.-Y. Lam, and H. Wang, Niche differentiation in the light spectrum promotes coexistence of phytoplankton species: a spatial modelling approach, 2021. arXiv:2109.02634 [math.AP].
12. D. Henry, Geometric theory of semilinear parabolic equations, vol. 840 of Lecture Notes in Mathematics, Springer-Verlag, Berlin-New York, 1981.
13. P. Hess and A. C. Lazer, On an abstract competition model and applications, Nonlinear Anal., 16 (1991), pp. 917-940.
14. S.-B. Hsu and Y. Lou, Single phytoplankton species growth with light and advection in a water column, SIAM J. Appl. Math., 70 (2010), pp. 2942-2974.
15. S.-B. Hsu, L. Mei, and F.-B. Wang, On a nonlocal reaction-diffusion-advection system modelling the growth of phytoplankton with cell quota structure, J. Differential Equations, 259 (2015), pp. 5353-5378.
16. S. B. Hsu, H. L. Smith, and P. Waltman, Competitive exclusion and coexistence for competitive systems on ordered Banach spaces, Trans. Amer. Math. Soc., 348 (1996), pp. 4083-4094.
17. J. Huisman, P. van Oostveen, and F. J. Weissing, Critical depth and critical turbulence: Two different mechanisms for the development of phytoplankton blooms, Limnology and Oceanography, 44 (1999), pp. 1781-1787.
18. , Species dynamics in phytoplankton blooms: Incomplete mixing and competition for light., The American Naturalist, 154 (1999), pp. 46-68.
19. J. Huisman and F. J. Weissing, Light-limited growth and competition for light in well-mixed aquatic environments: An elementary model, Ecology, 75 (1994), pp. 570-520.
20. ——Competition for nutrients and light in a mixed water column: A theoretical analysis, The American Naturalist, 146 (1995), pp. 536-564.
21. G. E. Hutchinson, The paradox of the plankton, Am. Nat., 95 (1961), pp. 137-145.
22. H. Ishii and I. Takagi, Global stability of stationary solutions to a nonlinear diffusion equation in phytoplankton dynamics, J. Math. Biol., 16 (1982/83), pp. 1-24.
23. H. Ishii and I. Takagi, A nonlinear diffusion equation in phytoplankton dynamics with selfshading effect, in Mathematics in biology and medicine (Bari, 1983), vol. 57 of Lecture Notes in Biomath., Springer, Berlin, 1985, pp. 66-71.
24. D. Jiang, K.-Y. Lam, and Y. Lou, Competitive exclusion in a nonlocal reaction-diffusionadvection model of phytoplankton populations, Nonlinear Anal. Real World Appl., 61 (2021), p. 15. Paper No. 103350.
25. D. Jiang, K.-Y. Lam, Y. Lou, and Z.-C. Wang, Monotonicity and global dynamics of a nonlocal two-species phytoplankton model, SIAM J. Appl. Math., 79 (2019), pp. 716-742.
26. C. A. Klausmeier and E. Litchman, Algal games: The vertical distribution of phytoplankton in poorly mixed water columns, Limnology and Oceanography, 46 (2001), pp. 1998-2007.
27. C. A. Klausmeier, E. Litchman, and S. A. Levin, Phytoplankton growth and stoichiometry under multiple nutrient limitation, Limnology and Oceanography, 49 (2004), pp. 1463-1470.
28. T. Kolokolnikov, C. Ou, and Y. Yuan, Phytoplankton depth profiles and their transitions near the critical sinking velocity, J. Math. Biol., 59 (2009), pp. 105-122.
29. K.-Y. Lam and Y. Lou, The principal floquet bundle and the dynamics of fast diffusing communities. Manuscript submitted for publication.
30. K.-Y. Lam and D. Munther, A remark on the global dynamics of competitive systems on ordered Banach spaces, Proc. Amer. Math. Soc., 144 (2016), pp. 1153-1159.
31. E. Litchman, C. A. Klausmeier, J. R. Miller, O. M. Schofield, and P. G. Falkowski, Multi-nutrient, multi-group model of present and future oceanic phytoplankton communities, Biogeosciences, 3 (2006), pp. 585-606.
32. M. Ma and C. Ou, Existence, uniqueness, stability and bifurcation of periodic patterns for a seasonal single phytoplankton model with self-shading effect, J. Differential Equations, 263 (2017), pp. 5630-5655.
33. L. Mei and X. Zhang, Existence and nonexistence of positive steady states in multi-species phytoplankton dynamics, J. Differential Equations, 253 (2012), pp. 2025-2063.
34. D. Pang, H. Nie, and J. Wu, Single phytoplankton species growth with light and crowding effect in a water column, Discrete Contin. Dyn. Syst., 39 (2019), pp. 41-74.
35. R. Peng and X.-Q. Zhao, A nonlocal and periodic reaction-diffusion-advection model of a single phytoplankton species, J. Math. Biol., 72 (2016), pp. 755-791.
36. N. Shigesada and A. Okubo, Analysis of the self-shading effect on algal vertical distribution in natural waters, J. Math. Biol., 12 (1981), pp. 311-326.
37. M. Stomp, J. Huisman, L. J. Stal, and H. C. P. Matthis, Colorful niches of phototrophic microorganisms shaped by vibrations of the water molecule, ISME J., (2007), pp. 271-282.
38. K. Yoshiyama, J. P. Mellard, E. Litchman, and C. A. Klausmeier, Phytoplankton competition for nutrients and light in a stratified water column., The American Naturalist, 174 (2009), pp. 190-203.
39. J. Zhang, J. D. Kong, J. Shi, and H. Wang, Phytoplankton competition for nutrients and light in a stratified lake: a mathematical model connecting epilimnion and hypolimnion, J. Nonlinear Sci., 31 (2021), p. 42. Paper No. 35.
40. X.-Q. Zhao, Dynamical systems in population biology, CMS Books in Mathematics/Ouvrages de Mathématiques de la SMC, Springer, Cham, second ed., 2017.

Part III
Evolutionary Dynamics

## Chapter 9 Elements of Adaptive Dynamics


#### Abstract

Adaptive dynamics is a conceptual framework enabling the exploration of evolutionary questions using ecological models. We discuss the framework of adaptive dynamics in the context of a river population model, hoping to offer to the readers a PDE viewpoint of the theory. Specifically, we introduce the key notions of adaptive dynamics, including invasion exponent, selection gradient, singular strategy, convergence stable strategy, evolutionary stable strategy (ESS), continuously stable strategy, neighborhood invader strategy, dimorphism (coexistence of strategies) and evolutionary branching point, in concrete terms for a reaction-diffusion-advection model, supplemented by analytical results and examples.


### 9.1 Introduction

Adaptive dynamics is a conceptual framework which focuses on phenotypic evolution in replication, while ignoring the effect of genes and sex, and is a part of the theory of evolution [23,24,35]. It is based on the assumption of the separation of time scales between ecological and evolutionary dynamics; the selection principle which favors the individuals with the best adapted trait operates at a fast time scale, while mutational effects due to small variations of the offspring from the parent, of each generation, accumulate over a much longer (evolutionary) time scale.

The simplest situation concerns a single species, which exists initially with a dominant phenotype that is inherited at the time of birth. Since mutation is rare, we assume that the population maintains at an ecological equilibrium, as determined by a single species model, until the rare event that a mutant phenotype is introduced (or arises by mutation). The main questions are: will it coexist with the resident phenotype or competitively exclude the resident? These questions can then be answered by analyzing the corresponding two-phenotype model. In the case of a one-dimensional phenotypic space, one can then record the invasion outcome of a rare phenotype (denoted as $\beta \in \mathbb{R}$ ) into the equilibrium population of phenotype (denoted as $\alpha \in \mathbb{R}$ ) by way of a plot over the ( $\alpha, \beta$ ) parameter space, and observe the trend of the invasion
dynamics. Here the goal of the game is not to maximize the population size, but to minimize the chance of being invaded by exotic phenotypes. This latter consideration leads to the notion of invasion fitness that indicates whether a given phenotype near equilibrium can be invaded by a second phenotype when rare.

The evolution of dispersal can be studied in the above framework. Indeed, A. Hastings [41] considered the mutual invasibility of two species in a spatially heterogeneous but temporally constant environment. Assuming these two species are identical except for their dispersal rates, it was shown that an invasion by a rare mutant is successful if and only if the mutant is the slower diffuser. Regarded as a trait, diffusion is selected against in temporally constant environments. (In contrast, diffusion may be selected for in an advective environment where dispersal is conditional, or in some annual plants in an environment that varies in both space and time.) Later, more specific results were obtained by Dockery et al. [26] for the following reaction-diffusion model:

$$
\begin{cases}\partial_{t} u-\alpha \Delta u=u(m(x)-u-v) & \text { in } \Omega \times(0, \infty),  \tag{9.1}\\ \partial_{t} v-\beta \Delta v=v(m(x)-u-v) & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\Omega$ is a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$ and outer unit normal vector $\mathbf{n}$; the constants $\alpha, \beta>0$ are the dispersal rates; $m(x) \in C^{2}(\bar{\Omega})$ is the intrinsic growth rate. Assuming $m(x) \geq 0$ and is nonconstant, it follows from Theorem 5.2.4 that (9.1) has at least three equilibria:

$$
E_{0}=(0,0), \quad E_{1}=(\tilde{u}, 0), \quad E_{2}=(0, \tilde{v}) .
$$

Regarding the long-time dynamics, Theorem 7.3.6 says that then the slower diffuser can invade the faster diffuser when rare, but not vice versa. In fact, when $\alpha<$ $\beta, E_{1}=(\tilde{u}, 0)$ is globally asymptotically stable with respect to all nonnegative, nontrivial solutions.

The above invasion dynamics can be recorded by a pairwise invasibility plot (PIP); see Figure 9.1. It follows from the PIP that only mutations bearing a trait less than the resident trait will succeed. Moreover, it was shown (Theorem 7.3.6) that the slower mutant goes to fixation every time, i.e. the slower mutant phenotype with smaller trait value replaces the original resident phenotype, and becomes the new dominant resident phenotype. This suggests that, with successive mutations, the dominant trait generally decreases, i.e. evolution selects for slower diffusion rate.

Remark 9.1.1 It can be proved that the mutant phenotype, upon successful invasion, can generally go to fixation, provided that the two phenotypes are away from the socalled "singular strategy"; see [32, 34] for the results in finite-dimensional systems, and [11] for the results in infinite-dimensional systems.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-219.jpg?height=446&width=581&top_left_y=185&top_left_x=474)
Fig. 9.1: Pairwise-invasibility-plot of (9.1). The shaded area $\{(\alpha, \beta): 0<\beta<\alpha\}$ indicates the parameter space where the mutant with trait $\beta$ can invade the resident population (with trait $\alpha$ ) when rare, i.e. $E_{1}=(\tilde{u}, 0)$ is unstable.

### 9.2 Evolution of Dispersal in Advective Environments

We will introduce key concepts in adaptive dynamics by applying them to a specific reaction-diffusion model concerning two competing phenotypes in an advective environment, which is used to model organisms residing in a water column or a river. In the former case, the individuals are pulled by gravity, and in the latter case, the individuals are washed downstream by water flow. Let $\Omega=(0, L)$ be a bounded interval on $\mathbb{R}$, and consider

$$
\begin{cases}\partial_{t} u-\alpha \partial_{x x} u+q \partial_{x} u-u(m(x)-u-v)=0 & \text { in }(0, L) \times(0, \infty),  \tag{9.2}\\ \partial_{t} v-\beta \partial_{x x} v+q \partial_{x} v-v(m(x)-u-v)=0 & \text { in }(0, L) \times(0, \infty), \\ \alpha \partial_{x} u-q u=0=\beta \partial_{x} v-q v=0 & \text { on }\{0, L\} \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in }[0, L],\end{cases}
$$

where $\alpha, \beta>0$ are the unconditional dispersal rates; $m(x)$ is the intrinsic growth rate of the population, which we assume to be continuous and positive in $[0, L]$. Both species are subject to the drift in the direction from $x=0$ towards $x=L$, with a constant rate $q>0$. No-flux boundary conditions are imposed at both upstream $(x=0)$ and downstream ends $(x=L)$. In such a case, by examining the stability of the trivial solution, it can be proved (via results in Chapter 5) that for any $\alpha, \beta>0$ and $q \geq 0$, the system (9.2) has at least three equilibria $E_{0}=(0,0), E_{1}=(\tilde{u}, 0)$ and $E_{2}=(0, \tilde{v})$.

## The invasion exponent

We define the invasion exponent, denoted as $\lambda(\beta, \alpha)$, to be the principal eigenvalue of the linear problem

$$
\begin{cases}\beta \phi_{x x}-q \phi_{x}+(m(x)-\tilde{u}) \phi+\lambda \phi=0 & \text { in }(0, L)  \tag{9.3}\\ \beta \phi_{x}-q \phi=0 & \text { for } x=0, L\end{cases}
$$

where $\tilde{u}$ is the unique positive solution of the scalar equation

$$
\begin{cases}\alpha \tilde{u}_{x x}-q \tilde{u}_{x}+(m(x)-\tilde{u}) \tilde{u}=0 & \text { in }(0, L),  \tag{9.4}\\ \alpha \tilde{u}_{x}-q \tilde{u}=0 & \text { for } x=0, L .\end{cases}
$$

Note the dependence of $\lambda(\beta, \alpha)$ on the diffusion rate $\beta$ of (9.3), and its dependence on $\alpha$ via the equilibrium population density $\tilde{u}$. By Lemma 7.1.1, the sign of $\lambda(\beta, \alpha)$ characterizes the linear stability of ( $\tilde{u}, 0$ ). Specifically,

1. If $\lambda(\beta, \alpha)<0$, then the mutant population with trait $\beta$, when rare, can invade the resident population with trait $\alpha$.
2. If $\lambda(\beta, \alpha)>0$, then the mutant population with trait $\beta$, when rare, fails to invade the resident population with trait $\alpha$.

Observe that

$$
\lambda(\beta, \alpha)=0 \quad \text { when } \quad \beta=\alpha .
$$

Indeed, in such a case zero is an eigenvalue of (9.3) with a positive eigenfunction $\tilde{u}$. By the characterization of the principal eigenvalue, we deduce $\lambda(\alpha, \alpha)=0$. Differentiating the identity once yields

$$
\begin{equation*}
\partial_{\alpha} \lambda(\alpha, \alpha)+\partial_{\beta} \lambda(\alpha, \alpha)=0 \quad \text { for all } \alpha . \tag{9.5}
\end{equation*}
$$

Differentiating (9.5) with respect to $\alpha$ yields

$$
\begin{equation*}
\partial_{\alpha \alpha}^{2} \lambda(\alpha, \alpha)+2 \partial_{\beta \alpha}^{2} \lambda(\alpha, \alpha)+\partial_{\beta \beta}^{2} \lambda(\alpha, \alpha)=0 \quad \text { for all } \alpha \tag{9.6}
\end{equation*}
$$

## The selection gradient

Next, let us fix a resident trait with value $\alpha$, and let $\beta \neq \alpha$ be a nearby mutant trait. Since $\lambda(\alpha, \alpha)=0$, the sign of the selection gradient, given by

$$
\begin{equation*}
\lambda_{\beta}(\alpha, \alpha):=\left[\partial_{\beta} \lambda(\beta, \alpha)\right]_{\beta=\alpha} \tag{9.7}
\end{equation*}
$$

tells us in which direction the mutant trait is able to invade the current resident trait $\alpha$. On the one hand, if the sign is positive then $\lambda(\beta, \alpha)<0$ for $\beta<\alpha$ and $\beta \approx \alpha$, i.e. $\beta$ slightly smaller than $\alpha$ is favored. On the other hand, if it is negative then the slightly greater trait is favored. By (9.5), the selection gradient is also equal to $-\lambda_{\alpha}(\alpha, \alpha)$.

Lemma 9.2.1 Let $\alpha>0$ be fixed, and let $\lambda_{\beta}(\alpha, \alpha)$ be the invasion exponent given in (9.7), then

$$
\begin{equation*}
\lambda_{\beta}(\alpha, \alpha)=-\frac{\int_{0}^{L}\left(\mathrm{e}^{-\alpha x / q} \tilde{u}\right)_{x} \tilde{u}_{x} \mathrm{~d} x}{\int_{0}^{L} \mathrm{e}^{-\alpha x / q} \tilde{u}^{2} \mathrm{~d} x} \tag{9.8}
\end{equation*}
$$

where $\tilde{u}$ is the unique positive solution of (9.4).
Proof Differentiating (9.3) with respect to $\beta$ (denoting by ' the derivative with respect to $\beta$ ), we obtain

$$
\begin{cases}\beta \phi_{x x}^{\prime}-q \phi_{x}^{\prime}+(m(x)-\tilde{u}) \phi^{\prime}+\lambda \phi^{\prime}=-\phi_{x x}-\lambda^{\prime} \phi & \text { in }(0, L)  \tag{9.9}\\ \beta \phi_{x}^{\prime}-q \phi^{\prime}=-\phi_{x} & \text { for } x=0, L\end{cases}
$$

Next, note that when $\beta=\alpha, 0$ is an eigenvalue of (9.3) with the positive eigenfunction $\tilde{u}$. By the characterization of the principal eigenvalue (Theorem 1.3.6), we have

$$
\lambda=0 \quad \text { and } \quad \phi=\tilde{u} \quad \text { when } \beta=\alpha .
$$

Setting $\beta=\alpha$ in (9.9), we obtain

$$
\begin{cases}\beta\left(\mathrm{e}^{q x / \beta}\left(\mathrm{e}^{-q x / \beta} \phi^{\prime}\right)_{x}\right)_{x}+(m(x)-\tilde{u}) \phi^{\prime}=-\tilde{u}_{x x}-\lambda^{\prime} \tilde{u} & \text { in }(0, L)  \tag{9.10}\\ \beta \phi_{x}^{\prime}-q \phi^{\prime}=-\tilde{u}_{x} & \text { for } x=0, L\end{cases}
$$

where we have used the identity

$$
\beta \phi_{x x}^{\prime}-q \phi_{x}^{\prime}=\beta\left(\mathrm{e}^{q x / \beta}\left(\mathrm{e}^{-q x / \beta} \phi^{\prime}\right)_{x}\right)_{x}
$$

Multiplying (9.4) by $\mathrm{e}^{-q x / \beta} \phi^{\prime}$ and integrating, we get

$$
\begin{equation*}
\beta \int_{0}^{L} \mathrm{e}^{-q x / \beta} \phi^{\prime}\left(\mathrm{e}^{q x / \beta}\left(\mathrm{e}^{-q x / \beta} \tilde{u}\right)_{x}\right)_{x} \mathrm{~d} x+\int_{0}^{L} \mathrm{e}^{-q x / \beta} \phi^{\prime}(m(x)-\tilde{u}) \tilde{u} \mathrm{~d} x=0 \tag{9.11}
\end{equation*}
$$

Similarly, multiply (9.10) by $\mathrm{e}^{-q x / \beta} \tilde{u}$ to get

$$
\begin{align*}
& \beta \int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u}\left(\mathrm{e}^{q x / \beta}\left(\mathrm{e}^{-q x / \beta} \phi^{\prime}\right)_{x}\right)_{x} \mathrm{~d} x+\int_{0}^{L} \mathrm{e}^{-q x / \beta} \phi^{\prime}(m-\tilde{u}) \tilde{u} \mathrm{~d} x \\
& =-\int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u} \tilde{u}_{x x} \mathrm{~d} x-\lambda^{\prime} \int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u}^{2} \mathrm{~d} x \tag{9.12}
\end{align*}
$$

Integrating by parts and subtracting (9.12) from (9.11), we get

$$
\begin{align*}
& \beta\left[\left.\phi^{\prime}\left(\mathrm{e}^{-q x / \beta} \tilde{u}\right)_{x}\right|_{0} ^{L}-\left.\tilde{u}\left(\mathrm{e}^{-q x / \beta} \phi^{\prime}\right)_{x}\right|_{0} ^{L}\right]-\int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u} \tilde{u}_{x x} \mathrm{~d} x \\
& =-\lambda^{\prime} \int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u}^{2} \mathrm{~d} x \tag{9.13}
\end{align*}
$$

Next, by the boundary condition in (9.4) and (9.10), we have

$$
\begin{equation*}
\left.\beta \phi^{\prime}\left(\mathrm{e}^{-q x / \beta} \tilde{u}\right)_{x}\right|_{0} ^{L}=\left.\mathrm{e}^{-q x / \beta} \phi^{\prime}\left(\beta \tilde{u}_{x}-q \tilde{u}\right)\right|_{0} ^{L}=0 \tag{9.14}
\end{equation*}
$$

and

$$
\begin{equation*}
\left.\beta \tilde{u}\left(\mathrm{e}^{-q x / \beta} \phi^{\prime}\right)_{x}\right|_{0} ^{L}=\left.\mathrm{e}^{-q x / \beta} \tilde{u}\left(\beta \tilde{\phi}_{x}^{\prime}-q \tilde{\phi}^{\prime}\right)\right|_{0} ^{L}=-\left.\mathrm{e}^{-q x / \beta} \tilde{u} \tilde{u}_{x}\right|_{0} ^{L} . \tag{9.15}
\end{equation*}
$$

Substituting (9.14) and (9.15) into (9.13), we have

$$
\left.\mathrm{e}^{-q x / \beta} \tilde{u} \tilde{u}_{x}\right|_{0} ^{L}-\int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u} \tilde{u}_{x x}=-\lambda^{\prime} \int_{0}^{L} \mathrm{e}^{-q x / \beta} \tilde{u}^{2} \mathrm{~d} x
$$

Integrating the left-hand side by parts again, we obtain (9.8).
Remark 9.2.2 With a minor modification of the proof, one can show that the formula (9.8) holds for a general Robin type boundary condition; see [65, Lemma 5.1].

## Singular strategy

A trait $\hat{\alpha}$ is called a singular strategy if it is a value at which the selection gradient vanishes, i.e.

$$
\left[\partial_{\beta} \lambda(\beta, \alpha)\right]_{(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha})}=0
$$

that is, $\lambda_{\beta}(\hat{\alpha}, \hat{\alpha})=0$. By (9.5), a singular strategy $\hat{\alpha}$ is also characterized by the equation $\lambda_{\alpha}(\hat{\alpha}, \hat{\alpha})=0$.

Example. Assume $m(x)=a \mathrm{e}^{b x}$ for some $a, b>0$. Take $\hat{\alpha}:=q / b$, then $\tilde{u}(x ; \hat{\alpha})=$ $m(x)$, so

$$
\begin{cases}\beta \phi_{x x}-q \phi_{x}+\lambda(\beta, \hat{\alpha}) \phi=0 & \text { in }[0, L] \\ \beta \phi_{x}-q \phi=0 & \text { for } x=0, L\end{cases}
$$

This implies that $\phi=\mathrm{e}^{q x / \beta}$ and $\lambda(\beta, \hat{\alpha}) \equiv 0$ for all $\beta$. In particular, $\lambda_{\beta}(\hat{\alpha}, \hat{\alpha})=0$. That is, $\hat{\alpha}=q / b$ is a singular strategy.

## Convergence stable strategy

As we have seen, for a monomorphic resident population, the direction of advantageous mutation is determined by the sign of the selection gradient. By successive mutation, it can be argued that the endpoint $\hat{\alpha}$ of adaptive dynamics is a singular strategy satisfying, for some $\delta>0$,

$$
\left[\partial_{\beta} \lambda(\beta, \alpha)\right]_{\beta=\alpha} \begin{cases}<0 & \text { when } \alpha \in(\hat{\alpha}-\delta, \hat{\alpha}),  \tag{9.16}\\ =0 & \text { when } \alpha=\hat{\alpha}, \\ >0 & \text { when } \alpha \in(\hat{\alpha}, \hat{\alpha}+\delta) .\end{cases}
$$

We say that $\hat{\alpha}$ is a convergence stable strategy if it is a singular strategy and (9.16) holds; see Figure 9.2.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-223.jpg?height=455&width=1119&top_left_y=510&top_left_x=205)
Fig. 9.2: Pairwise-invasibility-plot of (9.2). The dominant trait of the population evolves towards a convergence stable strategy upon successive mutations. The shaded areas indicate the parameter space where the mutant with trait $\beta$ can invade the resident population (with trait $\alpha$ ) when rare, i.e. $E_{1}=(\tilde{u}, 0)$ is unstable. If we denote the nullcline different from the diagonal by $\beta=g(\alpha)$, then the left panel has $\beta$ as an increasing function of $\alpha$, while in the right panel $\beta$ is a decreasing function of $\alpha$. In both cases the singular strategy $\hat{\alpha}$ is convergence stable, but $\hat{\alpha}$ is an evolutionary branching point (hence not an evolutionary endpoint) on the left panel, while it is an ESS (hence an evolutionary endpoint) in the right panel.

Proposition 9.2.3 Suppose that $m_{x}, m>0$ in $[0, L]$, and $m_{x} / m$ is monotone in $[0, L]$, then there exists a $q_{1}>0$ such that for any $q \in\left(0, q_{1}\right]$, there exists an $\hat{\alpha}=\hat{\alpha}(q)$ such that

$$
\partial_{\beta} \lambda(\hat{\alpha}, \hat{\alpha})=0 \quad \text { and } \quad \frac{\mathrm{d}}{\mathrm{~d} s}\left[\partial_{\beta} \lambda(s, s)\right]_{s=\hat{\alpha}}>0 .
$$

In fact, we have

$$
\left[\partial_{\beta} \lambda(\beta, \alpha)\right]_{\beta=\alpha}= \begin{cases}<0 & \text { when } \alpha \in(0, \hat{\alpha}) \\ =0 & \text { when } \alpha=\hat{\alpha} \\ >0 & \text { when } \alpha \in(\hat{\alpha}, \infty)\end{cases}
$$

In particular, for each $q \in\left(0, q_{1}\right]$, there is a unique singular strategy $\hat{\alpha}(q)$, which is also a convergence stable strategy.

Proof See [60, Corollary 5.10].
Example. Assume $m(x)=a \mathrm{e}^{b x}$ for some $a, b>0$. Take $\hat{\alpha}:=q / b$. By Proposition 9.2.3, $\hat{\alpha}$ is a convergence stable strategy. Note that strict monotonicity of $m_{x} / m$ is not needed therein.

What happens if the population is near or has reached the convergence stable strategy? Next, we discuss two important situations: the evolutionarily stable strategy and the evolutionary branching point, which are displayed respectively on the left and right panels in Figure 9.2.

## Evolutionarily stable strategy

An important concept in Adaptive Dynamics is that of an Evolutionarily Stable Strategy, introduced by Maynard Smith and Price [67]. A strategy is said to be evolutionarily stable if a population using it cannot be invaded by any small population using a different strategy. We will adopt the standard abbreviation ESS for "Evolutionarily Stable Strategy"; see Figure 9.3 for a typical PIP for ESS.

Definition 9.2.4 Suppose there is an open interval $I$ such that (9.4) has a unique positive solution for all $\alpha \in I$.

- $\hat{\alpha} \in I$ is said to be an ESS if

$$
\lambda(\beta, \hat{\alpha})>0 \quad \text { for all } \beta \in I \backslash\{\hat{\alpha}\} .
$$

- $\hat{\alpha} \in I$ is said to be a local ESS if

$$
\lambda(\beta, \hat{\alpha})>0 \quad \text { for all } \beta \in I \backslash\{\hat{\alpha}\} \text { such that } \beta \approx \hat{\alpha} .
$$

Theorem 9.2.5 Suppose $m, m_{x}>0$ in $[0, L]$ and

$$
\begin{equation*}
2 \inf _{[0, L]} \frac{m_{x}}{m}>\sup _{[0, L]} \frac{m_{x}}{m} . \tag{9.17}
\end{equation*}
$$

If $m_{x} / m$ is nondecreasing and nonconstant, then for each $0<q \ll 1$, the unique singular strategy given in Proposition 9.2.3 is a local ESS.

Proof It is enough to show that

$$
\lim _{q \rightarrow 0}\left[\partial_{\beta \beta} \lambda(\beta, \alpha)\right]_{(\beta, \alpha)=(\hat{\alpha}(q), \hat{\alpha}(q))}>0
$$

See [60, Corollary 6.6] for the details.
Example. Assume $L=1$ and $m(x)=\mathrm{e}^{x+a x^{2}}$ for some $a \in \mathbb{R}$. It is easy to check that if $a<0$, then $m(x)$ satisfies all the assumptions in Theorem 9.2.5. Note that when $a=0, m(x)$ satisfies all other assumptions except $m_{x} / m$ being nonconstant.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-225.jpg?height=444&width=581&top_left_y=187&top_left_x=474)
Fig. 9.3: Pairwise-invasibility-plot in the case where there is an ESS. The shaded area indicates the parameter region where the mutant with trait $\beta$ can invade the resident population (with trait $\alpha$ ) when rare, i.e. $E_{1}=(\tilde{u}, 0)$ is unstable. The strategy $\hat{\alpha}$, as identified as the point of intersection ( $\hat{\alpha}, \hat{\alpha}$ ) on the diagonal, is an ESS.

By definition, a strategy $\hat{\alpha}$ is an ESS (resp. local ESS) if it can resist invasion by all other strategies (resp. all nearby strategies), i.e. any kind of mutation does not alter the evolutionary dynamics once the population adopts the ESS. A stronger concept is needed to ensure that a monomorphic population with a different initial strategy will converge towards it in the long run.

## Continuously stable strategy

We say that $\hat{\alpha}$ is a continuously stable strategy [28,29] if it is a convergence stable strategy as well as an ESS. In fact, the ESS depicted in Figure 9.3 is also a continuously stable strategy. Combining Proposition 9.2.3 and Theorem 9.2.5, we obtain the following.

Corollary 9.2.6 Under the assumptions of (9.2.5), for sufficiently small $q>0$, the unique singular strategy $\hat{\alpha}(q)$ identified in Proposition 9.2.3 is a continuously stable strategy.

## Neighborhood invader strategy

We say that $\hat{\alpha}$ is a neighborhood invader strategy [1] if there exists a $\delta>0$ such that the equilibrium $E_{1}=(\tilde{u}, 0)$ of the system (9.2) is globally asymptotically stable provided

$$
\alpha=\hat{\alpha}, \quad \text { and } \quad 0<|\beta-\hat{\alpha}|<\delta .
$$

In particular, if $\hat{\alpha}$ is a neighborhood invader strategy, then it is an ESS.
In [11], it is proved that for a large class of models including reaction-diffusion models, a continuously stable strategy must be a neighborhood invader strategy.

Theorem 9.2.7 Under the assumptions of (9.2.5), for sufficiently small $q>0$, the unique singular strategy $\hat{\alpha}(q)$ identified in Proposition 9.2.3 is a neighborhood invader strategy.

Proof By Proposition 9.2.3 and Corollary 9.2.6, $\hat{\alpha}(q)$ is a continuously stable strategy. The conclusion follows from [11, Theorem 6.2].

## Dimorphism (coexistence of phenotypes)

Fix the two trait values $\alpha, \beta$ and consider the competition system (9.2). Suppose that the two phenotypes are mutually invasible, i.e.

$$
\lambda(\beta, \alpha)<0 \quad \text { and } \quad \lambda(\alpha, \beta)<0,
$$

then the two species coexist by a general theorem in monotone dynamical systems; see [44, Corollary 1], or Corollary E.2.8. One can therefore use the PIP to explore the parameter space in the $\alpha-\beta$ plane for coexistence, by superimposing the PIP with its reflection along the diagonal. In [85], these so-called mutual invasibility plots were introduced, and the parameter region of dimorphism was studied via singularity and unfolding theory; see [36] for its application to reaction-diffusion models. Coexistence regions can typically be found around a singular strategy $\hat{\alpha}$. See Figure 9.4 for an illustration. A generic condition is given in the following lemma.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-226.jpg?height=468&width=1097&top_left_y=1215&top_left_x=216)
Fig. 9.4: The left panel is a PIP of (9.2) indicating the local stability of $E_{1}=$ ( $\tilde{u}, 0$ ). The right panel is the corresponding mutual invasibility plot, which is the superposition of the PIP with its reflection across the diagonal (that indicates the local stability of $E_{2}=(0, \tilde{v})$ ). The regions of mutual invasibility, i.e. where both $E_{1}$ and $E_{2}$ are unstable, are indicated.

Lemma 9.2.8 Let $\hat{\alpha}$ be a singular strategy. If

$$
\begin{equation*}
\left[\partial_{\beta \beta}^{2} \lambda+\partial_{\alpha \alpha}^{2} \lambda\right]_{(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha})}<0 \tag{9.18}
\end{equation*}
$$

then there exists a $\delta>0$ such that

$$
\lambda(\hat{\alpha}+s, \hat{\alpha}-s)<0 \quad \text { and } \quad \lambda(\hat{\alpha}-s, \hat{\alpha}+s)<0 \quad \text { for all } s \in(0, \delta] .
$$

In particular, the two phenotypes $\hat{\alpha} \pm s$ are mutually invasible for all $0<s \ll 1$.
Proof It is enough to show that $g(s):=\lambda(\hat{\alpha}+s, \hat{\alpha}-s)$ has a strict local maximum at $s=0$. Indeed,

$$
g^{\prime}(0)=\left(\partial_{\alpha} \lambda-\lambda_{\beta} \lambda\right)=0 \quad \text { at }(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha}),
$$

as $\hat{\alpha}$ is a singular strategy, and that

$$
g^{\prime \prime}(0)=\partial_{\alpha \alpha}^{2} \lambda-2 \partial_{\beta \alpha}^{2} \lambda+\partial_{\beta \beta}^{2} \lambda=2\left(\partial_{\alpha \alpha}^{2} \lambda+\partial_{\beta \beta}^{2} \lambda\right)<0 \quad \text { at }(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha}),
$$

where the second equality follows from (9.6). This completes the proof.
Example. Assume $L=1$ and $m(x)=\exp \left(b_{1} x\right)+\exp \left(b_{2} x\right)$ for some $b_{1}>b_{2}>$ 0 . Then for $\alpha=q / b_{1}$ and $\beta=q / b_{2}$, (9.2) has a positive steady state given by $\left(e^{b_{1} x}, \mathrm{e}^{b_{2} x}\right)$, which suggests that these two phenotypes are mutually invasible. We conjecture that for this example, there exists a unique singular strategy, which is an evolutionary branching point defined below.

For the choice of $m$ in the previous example, it seems that there is a singular strategy which is a convergent stable strategy but it is not an ESS. This brings up the concept of evolutionary branching point, which we will discuss next.

## Evolutionary branching point

We say that $\hat{\alpha}$ is an evolutionary branching point if it is a singular strategy and it satisfies

$$
\partial_{\alpha \alpha}^{2} \lambda<\partial_{\beta \beta}^{2} \lambda<0 \quad \text { at }(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha}) .
$$

Note that an evolutionary branching point is locally convergence stable, since it is a singular strategy and

$$
\begin{aligned}
\frac{\mathrm{d}}{\mathrm{~d} s}\left[\partial_{\beta} \lambda(s, s)\right]_{s=\hat{\alpha}} & =\partial_{\beta \alpha}^{2} \lambda(\hat{\alpha}, \hat{\alpha})+\partial_{\beta \beta}^{2} \lambda(\hat{\alpha}, \hat{\alpha}) \\
& =\frac{1}{2}\left[\partial_{\beta \beta}^{2} \lambda(\hat{\alpha}, \hat{\alpha})-\partial_{\alpha \alpha}^{2} \lambda(\hat{\alpha}, \hat{\alpha})\right]>0
\end{aligned}
$$

where we used (9.6) in the second equality. Intuitively, if one starts with a monomorphic population with trait $\alpha_{0}$, then the adaptive dynamics framework suggests that
the monomorphic population will evolve towards the evolutionary branching point $\hat{\alpha}$. But what happens after that is very different from our previous discussion of ESS or continuously stable strategies. Indeed, note that

$$
\partial_{\beta} \lambda(\hat{\alpha}, \hat{\alpha})=0 \quad \text { and } \quad \partial_{\beta \beta}^{2} \lambda(\hat{\alpha}, \hat{\alpha})<0,
$$

which mean that $\hat{\alpha}$ is a fitness minimum, i.e. all nearby mutant phenotypes can invade the resident phenotype with trait $\hat{\alpha}$. In this case, the monomorphic population is not an evolutionary endpoint, so we are led outside of the monomorphic framework and we have to extend the formalism. In fact, we expect that the resident population will become dimorphic, i.e. consisting of two distinct phenotypes ( $\beta, \alpha$ ) belonging to the parameter space of dimorphism; see [20, 63, 70].

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-228.jpg?height=446&width=581&top_left_y=740&top_left_x=474)
Fig. 9.5: Pairwise-invasibility-plot in the case where there is an evolutionary branching point. The shaded area indicates the parameter space where the mutant with trait $\beta$ can invade the resident population (with trait $\alpha$ ) when rare, i.e. $E_{1}=(\tilde{u}, 0)$ is unstable. The strategy $\hat{\alpha}$, as identified as the point of intersection ( $\hat{\alpha}, \hat{\alpha}$ ) on the diagonal, is an evolutionary branching point.

In [60], we proved that spatial heterogeneity alone is enough to cause evolutionary branching in the model (9.2).

Theorem 9.2.9 Suppose $m, m_{x}>0$ in $[0, L]$ and

$$
\begin{equation*}
2 \inf _{[0, L]} \frac{m_{x}}{m}>\sup _{[0, L]} \frac{m_{x}}{m} . \tag{9.19}
\end{equation*}
$$

If $m_{x} / m$ is nonincreasing and nonconstant, then for each $0<q \ll 1$, the unique singular strategy given in Proposition 9.2.3 is an evolutionary branching point.

Proof By Proposition 9.2.3, we have

$$
\partial_{\alpha \alpha}^{2} \lambda<\partial_{\beta \beta}^{2} \lambda \quad \text { at }(\beta, \alpha)=(\hat{\alpha}, \hat{\alpha}) .
$$

Next, the inequality $\partial_{\beta \beta}^{2}(\hat{\alpha}, \hat{\alpha})<0$ follows from the proof of [60, Theorem 6.5], specifically, using equation (57) therein and the sentence that follows.

Example. Assume $L=1$ and $m(x)=\mathrm{e}^{x+a x^{2}}$ for some $a \in \mathbb{R}$. It is easy to check that if $a>0$, then $m(x)$ satisfies all assumptions in Theorem 9.2.5. Note that when $a=0$, $m(x)$ satisfies all assumptions except $m_{x} / m$ being nonconstant. Indeed, Theorem 9.2.5 does not hold for the case $a=0$.

Example. Assume $L=1$ and $m(x)=\exp \left(b_{1} x\right)+\exp \left(b_{2} x\right)$ for some $b_{1}>b_{2}>0$. It is easy to check that all assumptions in Theorem 9.2.9 are satisfied, including

$$
\left(\frac{m_{x}}{m}\right)_{x}=\frac{\left(b_{1}-b_{2}\right)^{2} \mathrm{e}^{\left(b_{1}+b_{2}\right) x}}{\left(\mathrm{e}^{b_{1} x}+\mathrm{e}^{b_{2} x}\right)^{2}}>0 .
$$

### 9.3 Further Reading

The application of game theory to the study of evolution flourished after Maynard Smith and Price introduced the pioneering concept of the evolutionarily stable strategy (ESS) [67, 82], which is closely related to the concept of Nash equilibrium [75] in noncooperative games. Among the first applications to theoretical biology are the so-called matrix models with discrete trait space [42, 43]. Also, Auslander et al. [2] applied the Nash equilibrium concept to evolutionary games with continuous traits. Several researchers merged Maynard Smith's evolutionary game theory with more conventional game theory [5, 6, 81], allowing evolutionary biologists to solve specific problems of biological interest. Later, a group of scientists advanced the dynamics aspect of evolutionary game theory by formalizing the framework which is called adaptive dynamics [23, 35]. Adaptive dynamics thus provides a unified and coherent framework encompassing the concepts of ESS, convergence stable strategy, evolutionary branching points, and more. See [68] for a more comprehensive survey article, as well as the monographs [22,33] and references therein. We also recommend the interested readers to read the excellent introductory lecture notes by Odo Diekmann [24]. See also [50] for a database of research papers in adaptive dynamics.

The framework of adaptive dynamics has been applied to many specific biological problems. However, in most cases the underlying biological model is given by a set of ordinary differential equations. In particular, studies of the evolution of dispersal using spatially explicit models are relatively rare. In this direction, we first mention the paper of Hamilton and May [38], who developed a discrete-time model of seed dispersal; see also [37].

In this chapter, we give a quick exposition of various concepts in adaptive dynamics in terms of a concrete reaction-diffusion-advection model, with applications to the evolution of dispersal in mind. For continuous-time models, in the absence of spatial drift or directed movement, the evolution of unconditional dispersal was considered in [26,41] for spatially varying and temporally constant environments. Here
the faster diffusion rate is selected against, and zero diffusion rate is convergence stable. For time-periodic environments, this is no longer the case [45, 62, 69]. See also [4] for more precise results, and [59] for general time-varying environments, which are not necessarily time-periodic.

In the above works, movement of the individuals are assumed to be unconditional, i.e. equal in all directions. Selection acts differently on the dispersal behavior in the presence of environmental drift or when directed movement is involved. In [56, 57], the following model was considered

$$
\begin{cases}\partial_{t} u-\operatorname{div}\left(\mu_{1} \nabla u-\alpha_{1} u \nabla m\right)=u(m-u-v) & \text { for } x \in \Omega, t>0,  \tag{9.20}\\ \partial_{t} v-\operatorname{div}\left(\mu_{2} \nabla v-\alpha_{2} v \nabla m\right)=v(m-u-v) & \text { for } x \in \Omega, t>0, \\ \mathbf{n} \cdot\left(\mu_{1} \nabla u-\alpha_{1} u \nabla m\right)=\mathbf{n} \cdot\left(\mu_{2} \nabla v-\alpha_{2} v \nabla m\right)=0 & \text { for } x \in \partial \Omega, t>0,\end{cases}
$$

with nonnegative, nontrivial initial data. Here the individuals of the $i$-th species adopt a combination of unconditional dispersal with rate $\mu_{i}$ and a directed movement up the gradient of $m(x)$, which is a nonconstant function of space representing the habitat quality. In contrast to the results in [26,41], it is shown that intermediate value of dispersal can evolve, and both very slow and very fast movements are selected against. Indeed, when $\alpha_{i} / \mu_{i}$ is large, the species tends to specialize on the region around local maximum points of $m(x)$, while it adopts a generalist strategy when $\alpha_{i} / \mu_{i}$ is small. Sufficient conditions are given for the existence of ESS. Intuitively, the magnitude of the ESS in diffusion rate remains proportional to the magnitude of the drift rate.

Next, consider the following model of river populations:

$$
\begin{cases}\partial_{t} u-\mu_{1} \partial_{x x}^{2} u-q \partial_{x} u=u(r-u-v) & \text { for }[0, L] \times \mathbb{R},  \tag{9.21}\\ \partial_{t} v-\mu_{2} \partial_{x x}^{2} v-q \partial_{x} v=v(r-u-v) & \text { for }[0, L] \times \mathbb{R}, \\ \mu_{1} \partial_{x} u-q u=\mu_{2} \partial_{x} v-q v=0 & \text { for } x=0, t>0, \\ \mu_{1} \partial_{x} u-q u=-b q u, \quad \mu_{2} \partial_{x} v-q v=-b q v & \text { for } x=L, t>0,\end{cases}
$$

with nonnegative, nontrivial initial data. Here $\mu_{i}, q, r, b$ are positive constants. A net loss of individuals with rate $b q$ is imposed at the downstream end ( $x=L$ ), while the no-flux condition is imposed on the upstream end ( $x=0$ ). This model was previously considered in [83, 84] for other ecological questions. In [60, 65, 66], the evolution of diffusion rate was studied. Depending on the values of the model parameters, we find up to 9 qualitatively different PIPs, and that for a given environment there sometimes exist up to three distinct evolutionarily stable strategies; see [40]. We also mention the recent work [46, 47] wherein the influence of network topology on the resulting PIP is investigated for a patch model.

One of the contributions of adaptive dynamics is to demonstrate that evolution of a monomorphic population can bring the focal species to a fitness minima, from which evolutionary branching initiates. To explain this fact, suppose the trait of the focal species is given by $\bar{\alpha}(t)$, as a function of the evolutionary time $t$. Then the invasion fitness at time $t$ is given by $\lambda(\beta, \bar{\alpha}(t))$ and coevolves according to the trait
$\bar{\alpha}(t)$ of the focal species, while the selection gradient $\partial_{\beta} \lambda(\bar{\alpha}(t), \bar{\alpha}(t))$ determines the direction of evolution. The evolution towards a fitness minima is thus possible since the invasion fitness "landscape" can change as the trait $\bar{\alpha}(t)$ of the focal species changes. Mechanisms causing evolutionary branching include predatorial trade-off between two different preys [86], temporally and spatially varying carrying capacities [69], cyclic or chaotic (in time) local dynamics [27], and temporal variation caused by catastrophes [78]. In [60], it is shown that spatial heterogeneity alone in LotkaVolterra systems can lead to evolutionary branching.

The evolution of dispersal is closely connected to the theory of habitat choice. Ideal free distribution is a special kind of habitat choice which was introduced by Fretwell and Lucas [30, 31]. In our modeling setting, it corresponds to the perfect alignment between the population distribution and the carrying capacity. It has been shown, robustly across a range of mathematical modeling frameworks, that a dispersal strategy leading to ideal free distribution is both an ESS and a neighborhood invader strategy in spatially heterogeneous but temporally constant environments [3, 13, 14, 15, 16, 17, 21, 51, 52, 53]. See also [10, 12] for the recent extension of ideal free distribution theory in time-periodic environments. In particular, a novel generalized notion of ideal free distribution is introduced in [12] in case resource matching is no longer feasible. Roughly speaking, IFD is attainable by some dispersal strategy provided the environment has no generalized sinks.

In a series of papers, Champagnat et al. [18, 19, 20] introduced a probabilistic model describing a population of discrete individuals, whose phenotypes are described by a vector of trait values. By combining various scalings in the size of population, birth/death rates, the size and rate of mutation, this microscopic model is shown to lead to a range of different macroscopic models. In the limit of large population size and rare mutations, the so-called trait substitution sequence, in which the population is monomorphic with the dominant trait modeled by a jump process in the direction dictated by the selection gradient, is rigorously justified. If one further lets the step size of mutation tend to zero, one then recovers the so-called canonical equation of adaptive dynamics. This provides a rigorous foundation of the "large population, small and rare mutation" heuristics in the framework of adaptive dynamics.

Alternatively, one may start from the probabilistic model of discrete individuals to first pass to the limit of large population size alone (without the rare mutation limit), which leads to deterministic selection-mutation models for the density of traits [19]. Under a further limit of small mutations, and with a proper time scaling, these integro-PDE models exhibits dynamics on the set of finite sums of Dirac masses on the trait space. This latter program is partly studied in [25, 64] for specific models, and an alternative version of canonical equation is derived. Note that the mutation here is small but not necessarily rare, and there remains a trace of the phenotypic distribution in the dynamics. Precisely, in the small mutation limit, the phenotypic distribution is approximately a sum of Dirac masses, and takes the form of $\exp \left(-\frac{u(x, t)+o(1)}{\epsilon}\right)$, where $\epsilon$ is the small mutation rate, and $u(x, t)$ satisfies a class of Hamilton-Jacobi equations with a special nonnegativity constraint; see [9, 48, 74, 79] for recent progress on the uniqueness of the solutions to such equations.

More generally, the equilibrium solutions of selection-mutation models tend to select ESS values, under the small mutation limit. For selection-mutation equations involving a continuous trait variable [49], Bürger proved the existence and uniqueness of globally stable equilibrium distributions in $L^{1}$ [7]. Later, selection-mutation equations with ecological background were introduced; see [8] for competitive and prey-predator interactions, and [76] which treats age of maturity as an evolutionary trait. In these works, the ESS is often unique and globally attractive. See also [55] where, depending on parameters and initial data, the selection-mutation model of competitive interaction may select between two alternative ESSs (two alternative evolutionary endpoints); or form a Dirac measure supported at two distinct traits, thus forming an ESS coalition.

The incorporation of migration and spatial structure to the selection-mutation models brings new mathematical challenges; see [39, 54, 58, 71, 72, 80] for the convergence of equilibria to the stationary Dirac mass supported at an ESS trait, and [61, 73, 77] for the moving Dirac concentrations in the small mutation limit of the time-dependent problem. The topic of selection-mutation models will be further discussed in Chapter 10.

## Problems

9.3.1 Consider a species with phenotypic space $[-1,1]$. For given $\alpha, \beta \in[-1,1]$, let $u(t)$ (resp. $v(t)$ ) be the population of the phenotype $\alpha$ (resp. $\beta$ ). Suppose that $(u, v)$ satisfies the following ODE system

$$
\left\{\begin{array}{l}
\frac{\mathrm{d}}{\mathrm{~d} t} u=u(r(\alpha)-K(\alpha, \alpha) u-K(\alpha, \beta) v) \\
\frac{\mathrm{d}}{\mathrm{~d} t} v=v(r(\beta)-K(\beta, \alpha) u-K(\beta, \beta) v)
\end{array}\right.
$$

where $r, K$ are smooth and have positive infimum over $[-1,1]$ and $[-1,1]^{2}$ respectively. Show that the invasion exponent is given by

$$
\lambda(\beta, \alpha)=r(\beta)-\frac{K(\beta, \alpha) r(\alpha)}{K(\alpha, \alpha)} .
$$

9.3.2 In the setting of Problem 9.3.1 suppose, in addition, that

$$
r \equiv 1, \quad \text { and } \quad K(\beta, \alpha)=1-\eta(\beta-\alpha)(\beta+k \alpha),
$$

where $\eta$ is small enough so that $\inf K>0$. Show that the invasion exponent is given by

$$
\lambda(\beta, \alpha)=\eta(\beta-\alpha)(\beta-k \alpha) .
$$

Show the following.

1. 0 is a singular strategy.
2. If $\eta(1-k)<0$, then 0 is a convergence stable strategy.
3. If $\eta<0$, then 0 is an ESS.
4. If $\eta>0$ and $k>1$, then 0 is an evolutionary branching point.
5. If $\eta>0$ and $k<0$, then $\pm 1$ are local ESS.
6. If $\eta>0$ and $k<-1$, show that $\pm 1$ are global ESS.

Here local and global ESS are considered within the class of strategies $[-1,1]$.

## References

1. J. Apaloo, Revisiting strategic models of evolution: The concept of neighborhood invader strategies, Theor. Pop. Biol., 52 (1997), pp. 71-77.
2. D. Auslander, J. Guckenheimer, and G. Oster, Random evolutionarily stable strategies, Theor. Pop. Biol., 13 (1978), pp. 276-293.
3. I. Averill, Y. Lou, and D. Munther, On several conjectures from evolution of dispersal, J. Biol. Dyn., 6 (2012), pp. 117-130.
4. X. Bai, X. He, and W.-M. Ni, Dynamics of a periodic-parabolic Lotka-Volterra competitiondiffusion system in heterogeneous environments. J. Eur. Math. Soc. (2022), in press, 2022.
5. J. S. Brown and T. L. Vincent, Coevolution as an evolutionary game, Evolution, 41 (1987), pp. 66-79.
6. J. S. Brown and T. L. Vincent, A theory for the evolutionary game, Theor. Pop. Biol., 31 (1987), pp. 140-166.
7. R. Bürger, Perturbations of positive semigroups and applications to population genetics, Math. Z., 197 (1988), pp. 259-272.
8. A. Calsina and C. Perelló, Equations for biological evolution, Proc. Roy. Soc. Edinburgh Sect. A, 125 (1995), pp. 939-958.
9. V. Calvez and K.-Y. Lam, Uniqueness of the viscosity solution of a constrained HamiltonJacobi equation, Calc. Var. Partial Differential Equations, 59 (2020), p. 46. Paper No. 163.
10. R. S. Cantrell and C. Cosner, Evolutionary stability of ideal free dispersal under spatial heterogeneity and time periodicity, Math. Biosci., 305 (2018), pp. 71-76.
11. R. S. Cantrell, C. Cosner, and K.-Y. Lam, Resident-invader dynamics in infinite dimensional systems, J. Differential Equations, 263 (2017), pp. 4565-4616.
12. ——, Ideal free dispersal under general spatial heterogeneity and time periodicity, SIAM J. Appl. Math., 81 (2021), pp. 789-813.
13. R. S. Cantrell, C. Cosner, and Y. Lou, Evolution of dispersal and the ideal free distribution, Math. Biosci. Eng., 7 (2010), pp. 17-36.
14. ——, Evolutionary stability of ideal free dispersal strategies in patchy environments, J. Math. Biol., 65 (2012), pp. 943-965.
15. R. S. Cantrell, C. Cosner, Y. Lou, and D. Ryan, Evolutionary stability of ideal free dispersal strategies: a nonlocal dispersal model, Can. Appl. Math. Q., 20 (2012), pp. 15-38.
16. R. S. Cantrell, C. Cosner, Y. Lou, and S. J. Schreiber, Evolution of natal dispersal in spatially heterogenous environments, Math. Biosci., 283 (2017), pp. 136-144.
17. R. S. Cantrell, C. Cosner, and Y. Zhou, Ideal free dispersal in integrodifference models, J. Math. Biol., 85 (2022). Paper No. 6.
18. N. Champagnat, R. Ferrière, and S. Méléard, From individual stochastic processes to macroscopic models in adaptive evolution, Stoch. Models, 24 (2008), pp. 2-44.
19. N. Champagnat, R. Ferrière, and S. Méléard, Unifying evolutionary dynamics: From individual stochastic processes to macroscopic models, Theor. Pop. Biol., 69 (2006), pp. 297321.
20. N. Champagnat and S. Méléard, Polymorphic evolution sequence and evolutionary branching, Probab. Theory Related Fields, 151 (2011), pp. 45-94.
21. C. Cosner, Reaction-diffusion-advection models for the effects and evolution of dispersal, Discrete Contin. Dyn. Syst., 34 (2014), pp. 1701-1745.
22. F. Dercole and S. Rinaldi, Analysis of Evolutionary Processes: The Adaptive Dynamics Approach and Its Applications: The Adaptive Dynamics Approach and Its Applications, Princeton University Press, 2008.
23. U. Dieckmann and R. Law, The dynamical theory of coevolution: a derivation from stochastic ecological processes, J. Math. Biol., 34 (1996), pp. 579-612.
24. O. Diekmann, A beginner's guide to adaptive dynamics, in Mathematical modelling of population dynamics, vol. 63 of Banach Center Publ., Polish Acad. Sci. Inst. Math., Warsaw, 2004, pp. 47-86.
25. O. Diekmann, P.-E. Jabin, S. Mischler, and B. Perthame, The dynamics of adaptation: An illuminating example and a Hamilton-Jacobi approach, Theor. Pop. Biol., 67 (2005), pp. 257-271.
26. J. Dockery, V. Hutson, K. Mischaikow, and M. Pernarowski, The evolution of slow dispersal rates: a reaction diffusion model, J. Math. Biol., 37 (1998), pp. 61-83.
27. M. Doebeli and G. D. Ruxton, Evolution of dispersal rates in metapopulation models: Branching and cyclic dynamics in phenotype space, Evolution, 51 (1997), pp. 1730-1741.
28. I. Eshel, Evolutionary and continuous stability, J. Theoret. Biol., 103 (1983), pp. 99-111.
29. I. Eshel and U. Motro, Kin selection and strong evolutionary stability of mutual help, Theor. Pop. Biol., 19 (1981), pp. 420-433.
30. S. D. Fretwell, Populations in a Seasonal Environment, Princeton University Press, 1972.
31. S. D. Fretwell and H. L. Lucas, On territorial behavior and other factors influencing habitat distribution in birds, Acta Biotheor., 19 (1969), pp. 16-36.
32. S. A. H. Geritz, Resident-invader dynamics and the coexistence of similar strategies, J. Math. Biol., 50 (2005), pp. 67-82.
33. S. A. H. Geritz and M. Gyllenberg, The Mathematical Theory of Adaptive Dynamics, Cambridge University Press, 2008.
34. S. A. H. Geritz, M. Gyllenberg, F. J. A. Jacobs, and K. Parvinen, Invasion dynamics and attractor inheritance, J. Math. Biol., 44 (2002), pp. 548-560.
35. S. A. H. Geritz, E. Kisdi, J. A. J. Metz, et al., Evolutionarily singular strategies and the adaptive growth and branching of the evolutionary tree, Evolutionary ecology, 12 (1998), pp. 35-57.
36. M. Golubitsky, W. Hao, K.-Y. Lam, and Y. Lou, Dimorphism by singularity theory in a model for river ecology, Bull. Math. Biol., 79 (2017), pp. 1051-1069.
37. M. Gyllenberg, E. Kisdi, and M. Utz, Evolution of condition-dependent dispersal under kin competition, J. Math. Biol., 57 (2008), pp. 285-307.
38. W. D. Hamilton and R. M. May, Dispersal in stable habitats, Nature, 269 (1977), pp. 578581.
39. W. Hao, K.-Y. Lam, and Y. Lou, Concentration phenomena in an integro-PDE model for evolution of conditional dispersal, Indiana Univ. Math. J., 68 (2019), pp. 881-923.
40. ——, Ecological and evolutionary dynamics in advective environments: critical domain size and boundary conditions, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 367-400.
41. A. Hastings, Can spatial variation alone lead to selection for dispersal?, Theor. Pop. Biol., 24 (1983), pp. 244-251.
42. J. Hofbauer and K. Sigmund, The theory of evolution and dynamical systems. Mathematical aspects of selection, vol. 7 of London Mathematical Society Student Texts, Cambridge University Press, Cambridge, 1988. Translated from the German.
43. -, Evolutionary game dynamics, Bull. Amer. Math. Soc. (N.S.), 40 (2003), pp. 479-519.
44. S. B. Hsu, H. L. Smith, and P. Waltman, Competitive exclusion and coexistence for competitive systems on ordered Banach spaces, Trans. Amer. Math. Soc., 348 (1996), pp. 4083-4094.
45. V. Hutson, K. Mischaikow, and P. Poláčik, The evolution of dispersal rates in a heterogeneous time-periodic environment, J. Math. Biol., 43 (2001), pp. 501-533.
46. H. Jiang, K.-Y. Lam, and Y. Lou, Are two-patch models sufficient? The evolution of dispersal and topology of river network modules, Bull. Math. Biol., 82 (2020), p. 42. Paper No. 131.
47. ——, Three-patch models for the evolution of dispersal in advective environments: varying drift and network topology, Bull. Math. Biol., 83 (2021), p. 46. Paper No. 109.
48. Y. Kim, On the uniqueness of solutions to one-dimensional constrained Hamilton-Jacobi equations, Min. Theor. Appl., 6 (2021), pp. 145-154.
49. M. Kimura, $A$ stochastic model concerning the maintenance of genetic variability in quantitative characters, Proceedings of the National Academy of Sciences, 54 (1965), pp. 731-736.
50. E. Kisdi, A list of papers in adaptive dynamics. https://www.mv.helsinki.fi/home/kisdi/addyn.htm. Accessed: 2022-05-18.
51. L. Korobenko and E. Braverman, A logistic model with a carrying capacity driven diffusion, Can. Appl. Math. Q., 17 (2009), pp. 85-104.
52. ——, On logistic models with a carrying capacity dependent diffusion: stability of equilibria and coexistence with a regularly diffusing population, Nonlinear Anal. Real World Appl., 13 (2012), pp. 2648-2658.
53. On evolutionary stability of carrying capacity driven dispersal in competition with regularly diffusing populations, J. Math. Biol., 69 (2014), pp. 1181-1206.
54. K.-Y. Lam, Stability of Dirac concentrations in an integro-PDE model for evolution of dispersal, Calc. Var. Partial Differential Equations, 56 (2017), p. 46. Paper No. 79.
55. Dirac-concentrations in an integro-PDE model from evolutionary game theory, Discrete Contin. Dyn. Syst. Ser. B, 24 (2019), pp. 737-754.
56. K.-Y. Lam and Y. Lou, Evolution of conditional dispersal: evolutionarily stable strategies in spatial models, J. Math. Biol., 68 (2014), pp. 851-877.
57. ,-, Evolutionarily stable and convergent stable strategies in reaction-diffusion models for conditional dispersal, Bull. Math. Biol., 76 (2014), pp. 261-291.
58. —, An integro-PDE model for evolution of random dispersal, J. Funct. Anal., 272 (2017), pp. 1755-1790.
59. , The principal floquet bundle and the dynamics of fast diffusing communities. Manuscript submitted for publication, 2022.
60. K.-Y. Lam, Y. Lou, and F. Lutscher, Evolution of dispersal in closed advective environments, J. Biol. Dyn., 9 (2015), pp. 188-212.
61. K.-Y. Lam, Y. Lou, and B. Perthame, A Hamilton-Jacobi approach to evolution of dispersal, 2022. arXiv:2205.05534 [math.AP].
62. S. A. Levin, D. Cohen, and A. Hastings, Dispersal strategies in patchy environments, Theor. Pop. Biol., 26 (1984), pp. 165-191.
63. S. Lion, Theoretical approaches in evolutionary ecology: Environmental feedback as a unifying perspective, Am. Nat., 191 (2018), pp. 21-44.
64. A. Lorz, S. Mirrahimi, and B. Perthame, Dirac mass dynamics in multidimensional nonlocal parabolic equations, Comm. Partial Differential Equations, 36 (2011), pp. 1071-1098.
65. Y. Lou and F. Lutscher, Evolution of dispersal in open advective environments, J. Math. Biol., 69 (2014), pp. 1319-1342.
66. Y. Lou and P. Zhou, Evolution of dispersal in advective homogeneous environment: the effect of boundary conditions, J. Differential Equations, 259 (2015), pp. 141-171.
67. J. F. Maynard Smith and G. R. Price, The logic of animal conflict, Nature, 246 (1973), pp. 15-18.
68. B. J. McGill and J. S. Brown, Evolutionary game theory and adaptive dynamics of continuous traits, Annual Review of Ecology, Evolution, and Systematics, 38 (2007), pp. 403-435.
69. M. A. McPeek and R. D. Holt, The evolution of dispersal in spatially and temporally varying environments, The American Naturalist, 140 (1992), pp. 1010-1027.
70. J. A. J. Metz, S. A. H. Geritz, G. Meszéna, F. J. A. Jacobs, and J. S. Van Heerwaarden, Adaptive dynamics: a geometrical study of the consequences of nearly faithful reproduction, North-Holland, Amsterdam, 1996, pp. 183-231.
71. S. Mirrahimi, A Hamilton-Jacobi approach to characterize the evolutionary equilibria in heterogeneous environments, Math. Models Methods Appl. Sci., 27 (2017), pp. 2425-2460.
72. S. Mirrahimi and S. Gandon, Evolution of specialization in heterogeneous environments: Equilibrium between selection, mutation and migration, Genetics, 214 (2020), pp. 479-491.
73. S. Mirrahimi and B. Perthame, Asymptotic analysis of a selection model with space, J. Math. Pures Appl. (9), 104 (2015), pp. 1108-1118.
74. S. Mirrahimi and J.-M. Roquejoffre, A class of Hamilton-Jacobi equations with constraint: uniqueness and constructive approach, J. Differential Equations, 260 (2016), pp. 4717-4738.
75. J. F. Nash, Jr., Equilibrium points in n-person games, Proc. Nat. Acad. Sci. U.S.A., 36 (1950), pp. 48-49.
76. Àngel Calsina and J. M. Palmada, Steady states of a selection-mutation model for an age structured population, J. Math. Anal. Appl., 400 (2013), pp. 386-395.
77. S. Nordmann and B. Perthame, Dynamics of concentration in a population structured by age and a phenotypic trait with mutations. Convergence of the corrector, J. Differential Equations, 290 (2021), pp. 223-261.
78. K. Parvinen, Evolutionary branching of dispersal strategies in structured metapopulations, J. Math. Biol., 45 (2002), pp. 106-124.
79. B. Perthame and G. Barles, Dirac concentrations in Lotka-Volterra parabolic PDEs, Indiana Univ. Math. J., 57 (2008), pp. 3275-3301.
80. B. Perthame and P. E. Souganidis, Rare mutations limit of a steady state dispersal evolution model, Math. Model. Nat. Phenom., 11 (2016), pp. 154-166.
81. J. Roughgarden, Resource partitioning among competing species-a coevolutionary approach, Theor. Pop. Biol., 9 (1976), pp. 388-424.
82. J. M. Smith, Evolution and the Theory of Games, Cambridge University Press, 1982.
83. D. C. Speirs and W. S. C. Gurney, Population persistence in rivers and estuaries, Ecology, 82 (2001), pp. 1219-1237.
84. O. Vasilyeva and F. Lutscher, Population dynamics in rivers: analysis of steady states, Can Appl Math Q, 18 (2011), pp. 439-469.
85. X. Wang and M. Golubitsky, Singularity theory of fitness functions under dimorphism equivalence, J. Math. Biol., 73 (2016), pp. 525-573.
86. J. Zu, K. Wang, and M. Mimura, Evolutionary branching and evolutionarily stable coexistence of predator species: Critical function analysis, Mathematical Biosciences, 231 (2011), pp. 210-224.

## Chapter 10 Selection-Mutation Models


#### Abstract

In this chapter, we discuss the class of selection-mutation models. This class of models describe populations that are structured by, in addition to other variables, continuous (phenotypic) trait variables such as movement rate. The dynamical and equilibrium solutions of these models exhibit the dominant phenotype under the processes of selection and mutation. In Section 10.1, we will discuss a selectionmutation model studied by Magal and Webb, where the population is structured by trait and time only. In Section 10.2, we consider the problem of evolution of dispersal rate by incorporating the spatial variable in the model, and discuss a result of Perthame and Souganidis related to the evolution of slow dispersal in spatially heterogeneous and temporally constant environments.


### 10.1 Populations Structured by a Phenotypic Trait

Consider a population structured by a phenotypic trait $z \in \Omega$, where $\Omega$ is a bounded and smooth domain in $\mathbb{R}^{N}$. The theory of evolution asserts that phenotypic frequency is being shaped by the processes of mutation and selection. Let $u(z, t)$ be the frequency function, then

$$
\partial_{t} u=\underbrace{M[u]}_{\text {Mutation }}+\underbrace{F(z, u(\cdot, t)) u}_{\text {Selection }}
$$

where $F(z, u(\cdot, t))$ is the fitness of the trait $z$ when the resident population distribution is $u(\cdot, t)$. The mutation is usually modeled by a second-order operator or an integral operator. See [8] for a more detailed discussion of mutation and selection models.

Magal and Webb [29] considered the following more specific model.

$$
\begin{cases}\partial_{t} u=\epsilon^{2} \Delta u+u\left[m(z)-\int_{\Omega} u(y, t) \mathrm{d} y\right] & \text { for } z \in \Omega, t>0  \tag{10.1}\\ \mathbf{n} \cdot \nabla u=0 & \text { for } z \in \partial \Omega, t>0 \\ u(z, 0)=u_{0}(z) & \text { for } z \in \Omega\end{cases}
$$

where mutation is modeled by a diffusion process with rate $\epsilon^{2}$. The fitness of a particular trait $z \in \Omega$ at time $t$ is given by $m(z)-\int_{\Omega} u(y, t) \mathrm{d} y$, where $m(z)$ is a positive continuous function modeling the proliferation rate of phenotype $z$, and the integral in the square bracket indicates that all phenotypes compete equally. In the following result, the statement concerning the long-time convergence to equilibrium is due to [29, Theorem 3.1].

Theorem 10.1.1 Let $m=m(z)$ be a continuous function which is strictly positive in $\bar{\Omega}$. Then, for each $\epsilon>0$, the model (10.1) has a unique positive equilibrium $\theta_{\epsilon}$, which attracts all nonnegative, nontrivial solutions of (10.1). Furthermore, if $m$ attains its supremum in $\Omega$ at a unique interior point $\hat{z} \in \Omega$, then as $\epsilon \rightarrow 0$,

$$
\begin{equation*}
\theta_{\epsilon}(z) \rightarrow\left(\sup _{\Omega} m\right) \delta_{0}(z-\hat{z}) \quad \text { in distribution. } \tag{10.2}
\end{equation*}
$$

Proof Fix $\epsilon>0$, and consider the eigenvalue problem

$$
\begin{cases}-\epsilon^{2} \Delta \phi=m(z) \phi+\mu \phi & \text { for } z \in \Omega  \tag{10.3}\\ \mathbf{n} \cdot \nabla \phi=0 & \text { for } z \in \partial \Omega\end{cases}
$$

By Theorem 1.3.6, the eigenvalue problem (10.3) has a principal eigenvalue $\mu_{\epsilon} \in \mathbb{R}$ such that $\mu_{\epsilon}$ is simple and has a positive eigenfunction $\phi_{\epsilon}$, which we normalize by $\int_{\Omega} \phi_{\epsilon} \mathrm{d} y=1$. Also, by evaluating at the minimum point of $\phi_{\epsilon}$, and using $\inf _{\Omega} m>0$, we deduce that $\mu_{\epsilon} \leq-\inf m<0$. Note that $\theta_{\epsilon}=-\mu_{\epsilon} \phi_{\epsilon}$ is a positive equilibrium.

Next, define $\mathcal{L}=-\epsilon^{2} \Delta-m-\mu_{\epsilon}$ and let $v(\cdot, t)=\mathrm{e}^{-\mathcal{L} t} v_{0}$ be the unique solution of

$$
\begin{cases}\partial_{t} v-\epsilon^{2} \Delta v=m(z) v+\mu_{\epsilon} v & \text { for } z \in \Omega, t>0 \\ \mathbf{n} \cdot \nabla v=0 & \text { for } z \in \partial \Omega, t>0 \\ v(z, 0)=v_{0}(z) & \text { for } z \in \Omega\end{cases}
$$

By Remark 4.2.3, there exist $C, \gamma>0$ such that

$$
\begin{equation*}
\left\|\mathrm{e}^{-\mathcal{L} t} v_{0}\right\|_{C(\bar{\Omega})} \leq C \mathrm{e}^{-\gamma t}\left\|v_{0}\right\|_{C(\bar{\Omega})} \quad \text { for } t>0, \tag{10.4}
\end{equation*}
$$

whenever $v_{0} \in C(\bar{\Omega})$ satisfies $\int_{\Omega} v_{0} \phi_{\epsilon} \mathrm{d} y=0$.
Given a nonnegative, nontrivial initial data $u_{0}(z)$. Write

$$
u_{0}(z)=k_{0} \phi_{\epsilon}(z)+v_{0}(z)
$$

where we set $k_{0}=\int_{\Omega} \phi_{\epsilon} u_{0} \mathrm{~d} y / \int_{\Omega}\left|\phi_{\epsilon}\right|^{2} \mathrm{~d} y$. Note that $k_{0}>0$, since $u_{0}$ is nonnegative and nontrivial. Also, this means $\int_{\Omega} v_{0} \phi_{\epsilon} \mathrm{d} y=0$. It is clear that

$$
\mathrm{e}^{-\mathcal{L} t} u_{0}=k_{0} \phi_{\epsilon}+\mathrm{e}^{-\mathcal{L} t} v_{0}
$$

By (10.4), we obtain

$$
\begin{equation*}
\mathrm{e}^{-\mathcal{L} t} u_{0} \rightarrow k_{0} \phi_{\epsilon}>0 \quad \text { in } C(\bar{\Omega}) \text { as } t \rightarrow \infty . \tag{10.5}
\end{equation*}
$$

Now let $u(z, t)$ be the solution of (10.1) with initial data $u_{0}$, and define

$$
\rho(t)=\int_{\Omega} u(y, t) \mathrm{d} y \quad \text { and } \quad \sigma(t)=\int_{\Omega} \phi_{\epsilon}(y) u(y, t) \mathrm{d} y
$$

Note that $\rho(t)>0$ and $\sigma(t)>0$ for $t \geq 0$.
Multiplying (10.1) by $\phi_{\epsilon}$, and integrating in $z$, we obtain

$$
\begin{equation*}
\frac{\mathrm{d}}{\mathrm{~d} t} \sigma(t)=\left(-\mu_{\epsilon}-\rho(t)\right) \sigma(t) \tag{10.6}
\end{equation*}
$$

which implies

$$
\begin{equation*}
\sigma(t)=\sigma(0) \mathrm{e}^{-\mu_{\epsilon} t-\int_{0}^{t} \rho(\tau) \mathrm{d} \tau} \tag{10.7}
\end{equation*}
$$

Next, notice that the solution $u(z, t)$ can be written as

$$
\begin{equation*}
u(z, t)=\mathrm{e}^{-\mu_{\epsilon} t-\int_{0}^{t} \rho(\tau) \mathrm{d} \tau} \mathrm{e}^{-t \mathcal{L}} u_{0}=\frac{\sigma(t)}{\sigma(0)}\left(k_{0} \phi_{\epsilon}+o(1)\right), \tag{10.8}
\end{equation*}
$$

where we used (10.5). Integrating the above in $z$, we obtain

$$
\begin{equation*}
\rho(t)=\frac{\sigma(t)}{\sigma(0)}\left(k_{0} \int_{\Omega} \phi_{\epsilon} \mathrm{d} y+o(1)\right)=\frac{\sigma(t)}{\sigma(0)}\left(k_{0}+o(1)\right) \tag{10.9}
\end{equation*}
$$

Substituting (10.9) into (10.6), we have

$$
\frac{\mathrm{d}}{\mathrm{~d} t} \sigma(t)=\left(-\mu_{\epsilon}-\frac{k_{0} \sigma(t)}{\sigma(0)}+o(1)\right) \sigma(t) \quad \text { for } t \gg 1
$$

It then follows that $\sigma(t) \rightarrow-\frac{\mu_{\epsilon}}{k_{0}} \sigma(0)$ as $t \rightarrow \infty$. Substituting back into (10.8), we deduce that

$$
u(z, t)=\left(-\frac{\mu_{\epsilon}}{k_{0}}+o(1)\right)\left(k_{0} \phi_{\epsilon}(z)+o(1)\right) \rightarrow-\mu_{\epsilon} \phi_{\epsilon}(z) \quad \text { as } t \rightarrow \infty .
$$

This proves part 1 concerning the global convergence to the equilibrium $-\mu_{\epsilon} \phi_{\epsilon}(z)$.
Finally, we apply Proposition 1.3.17 to deduce that, as $\epsilon \rightarrow 0$,

$$
\phi_{\epsilon}(z) \rightarrow \delta_{0}(z-\hat{z}) \quad \text { in distribution. }
$$

This completes the proof.
Remark 10.1.2 When $\Omega=\mathbb{R}$, and $m(z)$ is confining, i.e. $m(z) \rightarrow-\infty$ as $|z| \rightarrow \infty$, then the convergence to a scalar multiple of the principal eigenfunction is proved in [4]. When $m(z)$ is not confining, then there may no longer be a "fittest phenotype" and convergence to equilibrium is no longer expected. See, e.g. [3].

Remark 10.1.3 The convergence of $\theta_{\epsilon}$ to a Dirac measure in (10.2) is based upon a special case of semiclassical analysis. More generally, if the critical points of $m$ are nondegenerate, and $m$ attains the global maximum at more than one point, then the limit measure is supported in a subset of these points, and the exact weights at each point depend on the associated Hessian matrices [20]. In general, we expect the solution to concentrate on a subset of the global maximum points where mutation causes the minimal decrease in fitness, i.e. the biological niche is widest. See also [27].

A way to obtain multi-modal distribution is by symmetry:
Example 1. [One-dimensional domain] Choose

$$
\Omega=(-2,2), \quad \text { and } \quad m(z)=2-\cos \left(\frac{z}{\pi}\right)
$$

then for small mutation the unique equilibrium is symmetric with respect to $z=0$ and is supported at the two points $z= \pm 1$.

Example 2. [Higher-dimensional domain] Let $N \geq 2$. If $\Omega$ is the unit ball in $\mathbb{C}$, and $\overline{m(z)}$ is nonconstant and rotationally symmetric, i.e.

$$
m(z)=m\left(\mathrm{e}^{\frac{2 \pi i}{N}} z\right) \quad \text { for } z \in \Omega
$$

Then under mild conditions, one can show that, for small mutation, the support of the equilibrium solution consists of at least $N$ points.

Remark 10.1.4 In fact, several theoretical studies have shown that the phenotypic distributions in continuous trait space often evolve towards single or multiple peaks that represent distinct phenotypes in nature [14, 15, 21, 35, 37].

Remark 10.1.5 In the previous example, the distinct points are the global maximum point(s) of $m(z)$, which form a discrete set in the generic situation. Also, the case of global maximum attained at more than one point is not generic since the maximum values at various peaks are generically distinct. In [23], the following mutationselection model with nontrivial competition kernel was considered.

$$
\begin{cases}\partial_{t} u=\Delta u+u\left(m(z)-\int_{\Omega} K\left(z, z^{\prime}\right) u\left(z^{\prime}, t\right) \mathrm{d} z^{\prime}\right) & \text { in } \Omega \times(0, \infty) \\ \mathbf{n} \cdot \nabla u=0 & \text { on } \partial \Omega \times(0, \infty) \\ u(z, 0)=u_{0}(z) & \text { in } \Omega\end{cases}
$$

Under various assumptions on $m(z)$ and $K\left(z, z^{\prime}\right)$, it is proved that equilibrium solutions exhibiting (i) a single boundary Dirac mass; (ii) a single interior Dirac mass; or (iii) two Dirac masses, exist and are stable with respect to small perturbation of model parameters.

## The Case $\boldsymbol{\Omega}=\mathbb{R}^{\boldsymbol{N}}$

The following nonlocal parabolic equation is considered in [6, 28, 35].

$$
\begin{cases}\epsilon \partial_{t} u_{\epsilon}=\epsilon^{2} \Delta u_{\epsilon}+u_{\epsilon} R\left(z, I_{\epsilon}(t)\right) & \text { for } z \in \mathbb{R}^{N}, t>0  \tag{10.10}\\ u_{\epsilon}(z, 0)=u_{\epsilon}^{0}(z) & \text { for } z \in \mathbb{R}^{N}\end{cases}
$$

where $R$ is bounded from above, strictly decreasing in the second argument, and

$$
\begin{equation*}
I_{\epsilon}(t)=\int_{\mathbb{R}^{N}} \psi(z) u_{\epsilon}(z, t) \mathrm{d} z \tag{10.11}
\end{equation*}
$$

The model (10.10) arises in the theory of adaptive evolution, which describes the evolution of a population structured with phenotypic trait $z$, where $u_{\epsilon}(z, t)$ denotes the number of individuals with trait $z \in \mathbb{R}^{N}$ at time $t>0$. The term $I_{\epsilon}(t)$ given in (10.11) describes the population burden, or the competition among different phenotypes, that is weighted by $\psi(z)$. Roughly speaking, a phenotype consumes more resources if $\psi(z)$ is larger. If $\psi \equiv 1$, then we obtain the same population burden in (10.1). The population dynamics is driven by births and deaths, as represented by the net growth rate $R$. Note that growth rate is in general a nonconstant function of the phenotypic trait, meaning that some individuals are better adapted. In the special case

$$
R(z, I)=m(z)-I, \quad \psi(z) \equiv 1,
$$

the equation (10.10) is a version of (10.1) with a rescaling in time. Under suitable assumptions, the selection for higher growth rate and the dynamics of adaptation cause the population density to concentrate on a set of dominant traits, meaning that it degenerates to a Dirac mass, or a sum of Dirac masses, located at the dominant trait(s), and the rescaling in time is crucial to capture the dynamics of the Dirac masses. Namely, as $\epsilon \rightarrow 0$,

$$
\begin{equation*}
u_{\epsilon}(z, t) \rightarrow M(t) \delta(z-\bar{z}(t)) \quad \text { in distribution, } \tag{10.12}
\end{equation*}
$$

where $M(t)>0$ is the total population and $\bar{z}$ is the dominant trait at time $t$.
Below, we briefly outline the proof, which is based on the WKB-ansatz

$$
v_{\epsilon}(z, t)=-\epsilon \log u_{\epsilon}(z, t) .
$$

Then (10.10) becomes

$$
\begin{cases}\partial_{t} v_{\epsilon}-\epsilon \Delta v_{\epsilon}+\left|\nabla v_{\epsilon}\right|^{2}+R\left(z, I_{\epsilon}(t)\right)=0 & \text { for } z \in \mathbb{R}^{N}, t>0  \tag{10.13}\\ v_{\epsilon}(z, 0)=v_{\epsilon}^{0}(z) \equiv-\epsilon \log u_{\epsilon}^{0}(z) & \text { for } z \in \mathbb{R}^{N}\end{cases}
$$

By establishing the uniform Lipschitz estimate for $v_{\epsilon}$ on compact subsets of $\mathbb{R}^{N} \times \mathbb{R}_{+}$, and the BV estimate for $I_{\epsilon}$, one can then pass to a subsequence to obtain

$$
v_{\epsilon} \rightarrow v \quad \text { in } C_{\text {loc }}\left(\mathbb{R}^{N} \times \mathbb{R}_{+}\right) \quad \text { and } \quad I_{\epsilon}(t) \rightarrow I(t) \quad \text { in } L_{\text {loc }}^{1}\left(\mathbb{R}_{+}\right),
$$

for some $v \in C_{\text {loc }}\left(\mathbb{R}^{N} \times \mathbb{R}\right)_{+}$and $I \in \mathrm{BV}_{\text {loc }}\left(\mathbb{R}_{+}\right)$. See [6] for details. It can then be verified that the limits ( $v(z, t), I(t)$ ) form the viscosity solution of a Hamilton-Jacobi equation with a constraint:

$$
\begin{cases}\partial_{t} v+|\nabla v|^{2}+R(z, I(t))=0 & \text { for } z \in \mathbb{R}^{N}, t>0  \tag{10.14}\\ \inf _{z \in \mathbb{R}^{N}} v(z, t)=0 & \text { for } t>0 \\ v(z, 0)=v^{0}(z) & \end{cases}
$$

(See, e.g. [5] for the definition of viscosity solution.) The positivity constraint $\inf v(\cdot, t) \equiv 0$ comes from a uniform positive upper and lower bounds for the total population $I_{\epsilon}(t)$.

The solution ( $v(z, t), I(t)$ ) of (10.14) characterizes the Dirac dynamics. In the case when

$$
\begin{equation*}
z \mapsto R(z, I) \text { is strictly concave and } v^{0}(z) \text { is strictly convex, } \tag{10.15}
\end{equation*}
$$

it is proved in [28] that there exists a continuous function $\bar{z}(t)$ such that

$$
v(z, t)=0 \quad \text { if and only if } \quad z=\bar{z}(t) .
$$

Since $v(z, t)>0$ for $z \neq \bar{z}$, we have $u_{\epsilon}(z, t)=\exp \left(-\frac{v(z, t)+o(1)}{\epsilon}\right) \rightarrow 0$ for $z \neq \bar{z}(t)$. Hence, (10.12) holds. (In fact, it holds with $M(t)=I(t) / \psi(\bar{z}(t))$.)

In general (with $R$ not necessarily concave), $u_{\epsilon}(z, t)$ converges to a measure supported on the null set of $z \mapsto v(z, t)$. A natural question is whether the limiting equation (10.14) has a unique solution ( $v, I$ ); if so, then the evolutionary dynamics can be uniquely determined by the first-order equation (10.14). The uniqueness of (10.14) in the class of $\operatorname{Lip}_{\text {loc }}\left(\mathbb{R}^{N} \times \mathbb{R}_{+}\right) \times \mathrm{BV}_{\text {loc }}\left(\mathbb{R}_{+}\right)$was first established in [35] for the case when $R(z, I)$ is separable:

$$
R(z, I)=B(z) Q(I)-D(z) \quad \text { or } \quad B(z)-D(z) Q(I)
$$

with $Q(I)$ being a monotone function. Subsequently, it was proved in [31] with $R(z, I)$ being strictly decreasing in $I$, under the convex regime (10.15). The general uniqueness is established in [10], assuming only that $R(z, I)$ is strictly decreasing in $I$ and $v(z) \rightarrow \infty$ as $|z| \rightarrow \infty$.

In [15], a similar selection-mutation problem is considered for the case of competition for two independent resources $I_{1}(t)$ and $I_{2}(t)$, and it can similarly be proved that the local uniform limit of the rate function $v_{\boldsymbol{\epsilon}}$ and the two resources, denoted by $\left(v(z, t), I_{1}(t), I_{2}(t)\right)$, satisfy a similar Hamilton-Jacobi equation with positive constraint. Note that there is one more parameter $I_{i}$ to be determined from the positivity constraint. It is an interesting open question to prove if, and in what sense, the limit ( $v(z, t), I_{1}(t), I_{2}(t)$ ) can be uniquely determined by the constrained Hamilton-Jacobi equation.

### 10.2 Populations Structured by Space and a Phenotypic Trait

In this section, we discuss the evolution of dispersal in bounded spatial domains. For this purpose we shall introduce a selection-mutation model of a population structured by space and a phenotypic trait. We will discuss a result due to Perthame and Souganidis [36]; see also [24].

To motivate the model, consider first the following multi-species model in [16].

$$
\begin{cases}\partial_{t} u_{i}=z_{i} \Delta u_{i}+u_{i}\left(m(x)-\sum_{j=1}^{N} u_{j}\right)+\epsilon^{2} \sum_{j=1}^{N} M_{i j} u_{j} & \text { for } x \in D, t>0,  \tag{10.16}\\ \mathbf{n} \cdot \nabla u_{i}=0 & \text { for } x \in \partial D, t>0, \\ u_{i}(x, 0)=u_{i, 0}(x) & \text { for } x \in D,\end{cases}
$$

where $N \geq 2,1 \leq i \leq N$ and $D$ is a bounded domain in $\mathbb{R}^{n}$ with smooth boundary $\partial D$ and outer unit normal vector $\mathbf{n} ; z_{i}$ is the spatial diffusion rate of the $i$-th species. In addition to the Lotka-Volterra competition nonlinearity, the mutation process is modeled by the term $\epsilon^{2} M_{i j}$, where $\epsilon^{2}$ is the mutation rate.

If we formally let the number of species $N \rightarrow \infty$, we obtain the following integroPDE studied in [24, 36]. In the following $u=u(x, z, t)$, where $x \in D$ is the spatial variable, $z \in \mathbb{R}$ is the trait variable, and $t>0$ is time. The mutation-selection model is given by

$$
\begin{cases}\partial_{t} u=\Theta(z) \Delta_{x} u+u\left(m(x)-\int_{0}^{1} u(x, z, t) \mathrm{d} z\right)+\epsilon^{2} \partial_{z z} u & \text { for } x \in D, z \in \mathbb{R}, t>0  \tag{10.17}\\ \mathbf{n} \cdot \nabla_{x} u=0 & \text { for } x \in \partial D, z \in \mathbb{R}, t>0\end{cases}
$$

where $\Theta: \mathbb{R} \rightarrow \mathbb{R}$ is a positive, 1-periodic function, and periodic initial data is imposed:

$$
u(x, z, 0)=u_{0}(x, z) \quad \text { is 1-periodic in } z .
$$

In Chapter 7, we saw that a slower diffuser is selected when there are two distinct phenotypes with different diffusion rates. This result generalizes to the $N$-species case in some situations [11, 25]. Here we prove a similar result in the context of the mutation-selection model. We will analyze the positive equilibrium solutions of (10.17). Any such solution, denoted by $u_{\epsilon}(x, z),{ }^{1}$ satisfies the following nonlocal semilinear elliptic equation:

$$
\begin{cases}\Theta(z) \Delta_{x} u_{\epsilon}+u_{\epsilon}\left(m(x)-\rho_{\epsilon}(x)\right)+\epsilon^{2} \partial_{z z} u_{\epsilon}=0 & \text { for } x \in D, z \in \mathbb{R},  \tag{10.18}\\ \mathbf{n} \cdot \nabla_{x} u_{\epsilon}=0 & \text { for } x \in \partial D, z \in \mathbb{R}, \\ u_{\epsilon}(x, z)=u_{\epsilon}(x, z+1) & \text { for } x \in D, z \in \mathbb{R},\end{cases}
$$

where $\rho_{\epsilon}(x)$ is given by

[^9]$$
\begin{equation*}
\rho_{\epsilon}(x)=\int_{0}^{1} u_{\epsilon}(x, z) \mathrm{d} z \tag{10.19}
\end{equation*}
$$

In the following, we show that $u_{\epsilon}$ concentrates as a Dirac mass supported at the trait value with the minimal spatial diffusion rate, i.e. the slowest diffuser is selected.

## Theorem 10.2.1 Suppose that

1. $m(x)$ is positive and nonconstant in $\bar{D}$;
2. $\Theta(z)$ is continuous, positive and 1 -periodic;
3. there exists a unique $\hat{z} \in(0,1)$ such that $\inf _{\mathbb{R}} \Theta=\Theta(\hat{z})$.

Let $u_{\epsilon}$ be any positive solution of (10.18), then as $\epsilon \rightarrow 0$, we have

$$
\begin{equation*}
u_{\epsilon}(x, z) \rightarrow \delta_{0}(z-\hat{z}) \hat{\theta}(x) \quad \text { in distribution in } D \times I, \tag{10.20}
\end{equation*}
$$

where $\hat{\theta}$ is the unique positive solution of

$$
\begin{cases}\Theta(\hat{z}) \Delta \hat{\theta}+\hat{\theta}(m(x)-\hat{\theta})=0 & \text { in } D,  \tag{10.21}\\ \mathbf{n} \cdot \nabla \hat{\theta}=0 & \text { on } \partial D .\end{cases}
$$

For convenience, we define

$$
a=\inf _{\mathbb{R}} \Theta(z) \quad \text { and } \quad b=\sup _{\mathbb{R}} \Theta(z) .
$$

Since $\Theta(z)$ is positive and 1 -periodic, it is clear that $0<a<b$.
Below we give some an a priori estimate of $\rho_{\epsilon}$. Note that estimates similar to that in (10.20) are possible even if we replace the periodic condition in $z$ by a Neumann or Dirichlet condition; see [19, 24].

Lemma 10.2.2 For each $p>1$, there exists a constant $C_{1}$ independent of $\epsilon \in(0,1]$ such that for any positive solution $u_{\epsilon}(x, z)$ of (10.18), we have

$$
\left\|\rho_{\epsilon}\right\|_{W^{2, p}(D)} \leq C_{1},
$$

and for $0<\epsilon \ll 1$,

$$
\begin{equation*}
0<\frac{1}{2} \inf _{D} m \leq \rho_{\epsilon}(x) \leq 2 \sup _{D} m \quad \text { for } x \in D, \tag{10.22}
\end{equation*}
$$

where $\rho_{\epsilon}(x)=\int_{0}^{1} u_{\epsilon}(x, z) \mathrm{d} z$.
Proof First, we estimate $\left\|\rho_{\epsilon}\right\|_{C(\bar{D})}$. To this end, divide (10.18) by $\Theta(z)$ and integrate in $z$ over $[0,1]$ to get

$$
\begin{cases}\Delta_{x} \rho_{\epsilon}+\epsilon^{2} P_{\epsilon}+Q_{\epsilon}\left(m(x)-\rho_{\epsilon}(x)\right)=0 & \text { in } D,  \tag{10.23}\\ \mathbf{n} \cdot \nabla \rho_{\epsilon}=0 & \text { on } \partial D,\end{cases}
$$

where, using the periodicity of $\Theta$ and $u_{\epsilon}$ in $z$,

$$
P_{\epsilon}(x)=\int_{0}^{1} \frac{1}{\Theta(z)} \partial_{z z} u_{\epsilon} \mathrm{d} z=\int_{0}^{1} \partial_{z z}\left(\frac{1}{\Theta(z)}\right) u_{\epsilon} \mathrm{d} z
$$

and $Q_{\epsilon}=\int_{0}^{1} \frac{1}{\Theta(z)} u_{\epsilon}(x, z) \mathrm{d} z$ is a positive function. Using the fact that

$$
\left|P_{\epsilon}(x)\right| \leq b\left\|\partial_{z z}\left(\frac{1}{\Theta(z)}\right)\right\|_{L^{\infty}([0,1])} Q_{\epsilon}(x)=C_{0} Q_{\epsilon}(x) \quad \text { in } D
$$

we can rewrite (10.23) as

$$
\Delta_{x} \rho_{\epsilon}+Q_{\epsilon}\left[O\left(\epsilon^{2}\right)+m(x)-\rho_{\epsilon}(x)\right]=0 \quad \text { in } D, \quad \mathbf{n} \cdot \nabla \rho_{\epsilon}=0 \quad \text { on } \partial D
$$

By the maximum principle, we deduce (10.22) for $0<\epsilon \ll 1$. Since $Q_{\epsilon}$ also satisfies

$$
\begin{equation*}
\frac{1}{b} \rho_{\epsilon}(x) \leq Q_{\epsilon}(x) \leq \frac{1}{a} \rho_{\epsilon}(x) \quad \text { in } D \tag{10.24}
\end{equation*}
$$

we deduce that $\left\|Q_{\epsilon}\right\|_{L^{\infty}(D)}$ is also bounded uniformly in $\epsilon>0$. Furthermore, by (10.23) we obtain

$$
\begin{align*}
\left|\Delta_{x} \rho_{\epsilon}\right| & \leq \epsilon^{2} \int_{0}^{1}\left|\partial_{z z}\left(\frac{1}{\Theta(z)}\right)\right| u_{\epsilon} \mathrm{d} z+\left|Q_{\epsilon}\right|\left|m-\rho_{\epsilon}\right| \\
& \leq \epsilon^{2}\left\|\partial_{z z}\left(\frac{1}{\Theta(z)}\right)\right\|_{L^{\infty}([0,1])}\left|\rho_{\epsilon}\right|+\left|Q_{\epsilon}\right|\left|m-\rho_{\epsilon}\right| \tag{10.25}
\end{align*}
$$

Since $\left\|Q_{\epsilon}\right\|_{L^{\infty}}$ and $\left\|\rho_{\epsilon}\right\|_{L^{\infty}}$ are bounded uniformly in $\epsilon>0$, we may apply the elliptic $L^{p}$ estimate to obtain the desired $W^{2, p}$ bound of $\rho_{\epsilon}$ which is uniform in $\epsilon$.

By Lemma 10.2.2, one can pass to a sequence and assume that $\lim _{\epsilon \rightarrow 0} \rho_{\epsilon}$ converges in $C^{1}(\bar{D})$. In the following, we show that $m-\lim _{\epsilon \rightarrow 0} \rho_{\epsilon}$ is nonconstant.

Lemma 10.2.3 Suppose that there exist $\rho \in C^{1}(\bar{\Omega})$ and a sequence $\epsilon=\epsilon_{n} \rightarrow 0$ such that $\rho_{\epsilon} \rightarrow \rho$ in $C^{1}(\bar{\Omega})$. Then $m-\rho$ is nonconstant.

Proof Suppose to the contrary that, along a sequence, $m-\rho_{\epsilon} \rightarrow C$ for some constant $C \in \mathbb{R}$. We divide our discussion into two cases: $C=0$ or $C \neq 0$.

Suppose $m-\rho_{\epsilon} \rightarrow 0$, then (10.25) implies $\Delta \rho_{\epsilon} \rightarrow 0$ uniformly in $D$. This, together with the homogeneous Neumann boundary condition, implies that $\rho_{\epsilon}$ converges to a constant. But this contradicts the fact that $m-\rho_{\epsilon} \rightarrow 0$ and that $m$ is nonconstant in $D$.

Next, suppose $m-\rho_{\epsilon} \rightarrow C$ for some $C \neq 0$. Then we may assume that $m-\rho_{\epsilon}$ does not change sign in $D$. However, this is in contradiction with

$$
\begin{equation*}
\int_{D} \rho_{\epsilon}\left(m(x)-\rho_{\epsilon}\right) \mathrm{d} x=0 \tag{10.26}
\end{equation*}
$$

which is obtained if we integrate (10.18) over $D \times[0,1]$.
Lemma 10.2.4 There exists a $C_{1}$ independent of $\epsilon$ such that

$$
\begin{equation*}
\epsilon\left\|\frac{\partial_{z} u_{\epsilon}}{u_{\epsilon}}\right\|_{C(\bar{D} \times[0,1])}+\left\|\frac{\nabla_{x} u_{\epsilon}}{u_{\epsilon}}\right\|_{C(\bar{D} \times[0,1])} \leq C_{1} . \tag{10.27}
\end{equation*}
$$

Proof For each $z_{0} \in \mathbb{R}$, define

$$
U_{\epsilon}(x, y):=u_{\epsilon}\left(x, z_{0}+\epsilon y\right)
$$

Then $U_{\epsilon}$ is a positive solution to

$$
\mathcal{L}_{\epsilon} U_{\epsilon}=A(y, \epsilon) \Delta_{x} U_{\epsilon}+\partial_{z z} U_{\epsilon}+h_{\epsilon}(x) U_{\epsilon}=0 \quad \text { in } D \times \mathbb{R}
$$

and satisfies the Neumann boundary condition when $x \in \partial D$. Here $A(y, \epsilon)$ is a Lipschitz continuous function (with Lipschitz constant bounded uniformly in $\epsilon$ ), such that $a \leq A(y, \epsilon) \leq b$, i.e. it is uniformly elliptic. We can then apply the Harnack inequality to $D \times[-1,1]$ and deduce

$$
\begin{equation*}
\sup _{D \times[-1,1]} U_{\epsilon} \leq C \inf _{D \times[-1,1]} U_{\epsilon} \tag{10.28}
\end{equation*}
$$

for some constant $C$ that is independent of $z_{0} \in D$ and $\epsilon>0$. Note that the estimate holds up to the boundary of $x$ variable, thanks to the Neumann boundary condition. Next, fix $p>1$ suitably large to apply the Sobolev embedding to get

$$
\begin{equation*}
\sup _{D \times(-1 / 2,1 / 2)}\left[\left|\partial_{z} U_{\epsilon}\right|+\left|\nabla_{x} U_{\epsilon}\right|\right] \leq C\left\|U_{\epsilon}\right\|_{W^{2, p}(D \times(-3 / 4,3 / 4))} \tag{10.29}
\end{equation*}
$$

Next, we recall the elliptic interior $L^{p}$ estimate

$$
\begin{equation*}
\left\|U_{\epsilon}\right\|_{W^{2, p}(D \times(-3 / 4,3 / 4))} \leq C\left\|U_{\epsilon}\right\|_{L^{p}(D \times(-1,1))} \tag{10.30}
\end{equation*}
$$

Note that the constants in (10.29) and (10.30) are independent of $z_{0}$ and $\epsilon$. Combining the above, we have

$$
\begin{equation*}
\sup _{D \times(-1 / 2,1 / 2)}\left[\left|\partial_{z} U_{\epsilon}\right|+\left|\nabla_{x} U_{\epsilon}\right|\right] \leq C\left\|U_{\epsilon}\right\|_{L^{p}(D \times(-1,1))} \leq C \sup _{D \times[-1,1]} U_{\epsilon} . \tag{10.31}
\end{equation*}
$$

In view of (10.28), we deduce that

$$
\left|\partial_{z} U_{\epsilon}(x, 0)\right|+\left|\nabla_{x} U_{\epsilon}(x, 0)\right| \leq C \inf _{D \times[-1,1]} U_{\epsilon} \leq C^{\prime \prime} U_{\epsilon}(x, 0) \quad \text { for } x \in D
$$

for some constant $C^{\prime \prime}$ that is independent of $z_{0}, \epsilon$, and $x \in D$. This can be written as

$$
\epsilon\left|\partial_{z} u_{\epsilon}\left(x, z_{0}\right)\right|+\left|\nabla_{x} u_{\epsilon}\left(x, z_{0}\right)\right| \leq C^{\prime \prime} u_{\epsilon}\left(x, z_{0}\right) .
$$

This proves (10.27).

Introduce the WKB-ansatz

$$
\begin{equation*}
w_{\epsilon}(x, z)=-\epsilon \log u_{\epsilon}(x, z) \tag{10.32}
\end{equation*}
$$

Then we have

$$
\begin{equation*}
-\epsilon \partial_{z z} w_{\epsilon}+\left|\partial_{z} w_{\epsilon}\right|^{2}+m(x)-\rho_{\epsilon}(x)=\Theta(z)\left(\frac{\Delta_{x} w_{\epsilon}}{\epsilon}-\frac{\left|\nabla_{x} w_{\epsilon}\right|^{2}}{\epsilon^{2}}\right) \quad \text { in } D \times \mathbb{R} \tag{10.33}
\end{equation*}
$$

and satisfies the Neumann boundary condition on $\partial D \times[0,1]$ while being 1-periodic in $z$.

Lemma 10.2.5 $\left\{w_{\epsilon}\right\}$ is precompact in $C(\bar{D} \times[0,1])$ and satisfies

$$
\begin{equation*}
\lim _{\epsilon \rightarrow 0} \inf _{D \times[0,1]} w_{\epsilon}=0 \tag{10.34}
\end{equation*}
$$

Proof By Lemma 10.2.4, we have

$$
\begin{equation*}
\sup _{D \times[0,1]}\left[\left|\partial_{z} w_{\epsilon}\right|+\frac{1}{\epsilon}\left|\nabla_{x} w_{\epsilon}\right|\right] \leq C \tag{10.35}
\end{equation*}
$$

i.e. $w_{\epsilon}$ is equicontinuous. It suffices to show (10.34), since then the precompactness in $C(\bar{D} \times[0,1])$ follows directly from the Arzelà-Ascoli Theorem.

We will show (10.34) in two steps. First, we claim that

$$
\begin{equation*}
\limsup _{\epsilon \rightarrow 0} \inf _{D \times[0,1]} w_{\epsilon} \leq 0 \tag{10.36}
\end{equation*}
$$

Otherwise, one can pass to a sequence in $\epsilon \rightarrow 0$ such that $u_{\epsilon}=\exp \left(-\frac{w_{\epsilon}}{\epsilon}\right) \rightarrow 0$ in $C(\bar{D} \times[0,1])$, and hence $\rho_{\epsilon} \rightarrow 0$ in $C(\bar{D})$. This is impossible in view of (10.22).

It remains to show that

$$
\begin{equation*}
\liminf _{\epsilon \rightarrow 0} \inf _{D \times I} w_{\epsilon} \geq 0 \tag{10.37}
\end{equation*}
$$

Otherwise, there exist a sequence $\epsilon \rightarrow 0$ and $\left(x_{\epsilon}, z_{\epsilon}\right) \in D \times I$ such that

$$
\limsup _{\epsilon \rightarrow 0} w_{\epsilon}\left(x_{\epsilon}, z_{\epsilon}\right)<0
$$

By the equicontinuity, there exists a $\delta>0$ independent of $\epsilon$ such that

$$
\limsup _{\epsilon \rightarrow 0} \sup _{B_{\delta}\left(x_{\epsilon}, z_{\epsilon}\right)} w_{\epsilon} \leq-\eta_{0} \quad \text { for some } \eta_{0}>0
$$

But this implies that

$$
\liminf _{\epsilon \rightarrow 0} \inf _{B_{\delta}\left(x_{\epsilon}, z_{\epsilon}\right)} u_{\epsilon} \geq \exp \left(\frac{\eta_{0}}{\epsilon}\right)
$$

This is in contradiction with (10.22), which says that $\rho_{\epsilon}(x) \leq 2 \sup _{D} m$.

By Lemmas 10.2.4 and 10.2.5, we may pass to a sequence $\epsilon=\epsilon_{n} \rightarrow 0$ and assume that

$$
\begin{equation*}
w_{\epsilon}(x, z) \rightarrow w(z) \quad \text { and } \quad \rho_{\epsilon} \rightarrow \rho(x) \tag{10.38}
\end{equation*}
$$

respectively in $C(\bar{D} \times I)$ and $C(\bar{D})$. Note that the limit $w(z)$ is independent of $x$ due to (10.27). We will show that the two limit functions $w$ and $\rho$ are related via a Hamilton-Jacobi equation.

Definition 10.2.6 For each $z \in \mathbb{R}$ and $h \in L^{\infty}(D)$, define $\Lambda_{h}(z)$ and $\phi_{h}(x, z)$ to be the principal eigenvalue and eigenfunction of

$$
\begin{cases}-\Theta(z) \Delta_{x} \phi=(m(x)-h(x)) \phi+\Lambda \phi & \text { in } D  \tag{10.39}\\ \mathbf{n} \cdot \nabla_{x} \phi=0 & \text { on } \partial D\end{cases}
$$

Next, we introduce the notion of a viscosity solution to a first-order Hamilton-Jacobi equation.

Definition 10.2.7 Let $w \in C(\mathbb{R})$ and $\rho \in C(\bar{D})$.

1. We say that $w \in C(\mathbb{R})$ is a viscosity supersolution of

$$
\begin{equation*}
\left|w^{\prime}\right|^{2}-\Lambda_{\rho}(z)=0 \quad \text { in } I \tag{10.40}
\end{equation*}
$$

if, for any $\varphi \in C^{\infty}(\mathbb{R})$, if $w-\varphi$ attains a strict local minimum at $z_{0} \in \mathbb{R}$, then it holds that

$$
\left|\varphi^{\prime}\left(z_{0}\right)\right|^{2}-\Lambda_{\rho}\left(z_{0}\right) \geq 0
$$

2. We say that $w \in C(\mathbb{R})$ is a viscosity subsolution of (10.40) if, for any $\varphi \in C^{\infty}(\mathbb{R})$, if $w-\varphi$ attains a strict local maximum at $z_{0} \in \mathbb{R}$, then it holds that

$$
\left|\varphi^{\prime}\left(z_{0}\right)\right|^{2}-\Lambda_{\rho}\left(z_{0}\right) \leq 0
$$

3. We say that $w \in C(\mathbb{R})$ is a viscosity solution of (10.40) if it is both a viscosity subsolution and a viscosity supersolution of (10.40).

Lemma 10.2.8 Suppose that, along a sequence $\epsilon=\epsilon_{n} \rightarrow 0$, the convergence (10.38) holds for some $w \in C(I)$ and $\rho \in C(\bar{D})$. Then $w$ is a viscosity solution of (10.40).

Proof We apply the method of perturbed test functions [17]. Let $\psi(x, z)=$ $\log \phi_{\rho}(x, z)$, where $\phi_{\rho}(\cdot, z)$ is the positive eigenfunction associated with the principal eigenvalue $\Lambda_{\rho}(z)$ of (10.39). Note that

$$
\begin{equation*}
-\Theta(z)\left(\left|\nabla_{x} \psi\right|^{2}+\Delta_{x} \psi\right)=m(x)-\rho(x)+\Lambda_{\rho}(z) \quad \text { in } D \times \mathbb{R} \tag{10.41}
\end{equation*}
$$

Suppose $w-\varphi$ attains a strict local minimum point at $z_{0} \in I$. Then $w_{\epsilon}(x, z)-$ $\varphi(z)+\epsilon \psi(x, z)$ has a local minimum $\left(x_{\epsilon}, z_{\epsilon}\right) \in \bar{D} \times I$ such that $z_{\epsilon} \rightarrow z_{0}$. At the point ( $x_{\epsilon}, z_{\epsilon}$ ), we have

$$
\left\{\begin{array}{l}
\Delta_{x} w_{\epsilon}\left(x_{\epsilon}, z_{\epsilon}\right) \geq-\epsilon \Delta_{x} \psi\left(x_{\epsilon}, z_{\epsilon}\right), \quad \nabla_{x} w_{\epsilon}\left(x_{\epsilon}, z_{\epsilon}\right)=-\epsilon \nabla_{x} \psi\left(x_{\epsilon}, z_{\epsilon}\right) \\
\partial_{z z} w_{\epsilon}\left(x_{\epsilon}, z_{\epsilon}\right) \geq-\epsilon \partial_{z z} \psi\left(x_{\epsilon}, z_{\epsilon}\right)+\varphi^{\prime \prime}\left(z_{\epsilon}\right) \\
\partial_{z} w_{\epsilon}\left(x_{\epsilon}, z_{\epsilon}\right)=-\epsilon \partial_{z} \psi\left(x_{\epsilon}, z_{\epsilon}\right)+\varphi^{\prime}\left(z_{\epsilon}\right)
\end{array}\right.
$$

Note that the above holds even if $x_{\epsilon} \in \partial D$. (This can be proved by extending the function by reflecting along the boundary, and observing that the extended function also satisfies the same PDE in a neighborhood of $\partial D \times \mathbb{R}$. Here we used the homogeneous Neumann boundary condition.) Substituting the above into (10.33) and using (10.41), we deduce that at the point $\left(x_{\epsilon}, z_{\epsilon}\right)$,

$$
\begin{aligned}
& \epsilon\left(\epsilon \partial_{z z} \psi\left(x_{\epsilon}, z_{\epsilon}\right)-\varphi^{\prime \prime}\left(z_{\epsilon}\right)\right)+\left|-\epsilon \partial_{z} \psi\left(x_{\epsilon}, z_{\epsilon}\right)+\varphi^{\prime}\left(z_{\epsilon}\right)\right|^{2} \\
& \geq \rho_{\epsilon}\left(x_{\epsilon}\right)-\rho\left(x_{\epsilon}\right)+\Lambda_{\rho}\left(z_{\epsilon}\right)
\end{aligned}
$$

Using the fact that $\psi$ and $\Lambda_{\rho}$ are smooth in $z \in I$ (see Proposition 1.3.15), we may take $\epsilon \rightarrow 0$ in the above inequality, and obtain $\left|\varphi^{\prime}\left(z_{0}\right)\right|^{2} \geq \Lambda_{\rho}\left(z_{0}\right)$. This proves that $\varphi$ is a viscosity supersolution of (10.40). It follows in a similar manner that $\varphi$ is also a viscosity subsolution.

By the property of viscosity solutions, we obtain some qualitative properties of $w$.

Lemma 10.2.9 Under the assumptions of Lemma 10.2.8, suppose there is a $\hat{z} \in[0,1]$ such that $\Theta(z)>\Theta(\hat{z})$ if $z \in[0,1] \backslash\{\hat{z}\}$. Then

1. $\Lambda_{\rho}(z)>0$ if $z \in[0,1] \backslash\{\hat{z}\}$;
2. $w(z)>0$ if $z \in[0,1] \backslash\{\hat{z}\}$.

Proof We claim that

$$
\begin{equation*}
\Lambda_{\rho}(z) \geq 0 \quad \text { for all } z \in \mathbb{R} \tag{10.42}
\end{equation*}
$$

Indeed, for each interval $\left[a^{\prime}, b^{\prime}\right] \subset \mathbb{R}$, we can take $\varphi=1 / \tilde{\sigma}$ where $\tilde{\sigma}$ is a test function such that $\tilde{\sigma}>0$ in $\left(a^{\prime}, b^{\prime}\right)$ and $\tilde{\sigma}=0$ otherwise. Then $w-\varphi$ attains its maximum at some point $z^{\prime} \in\left(a^{\prime}, b^{\prime}\right)$, so that the definition of viscosity subsolution yields

$$
\Lambda_{\rho}\left(z^{\prime}\right) \geq\left|\varphi^{\prime}\left(z^{\prime}\right)\right|^{2} \geq 0
$$

Since $\left(a^{\prime}, b^{\prime}\right) \subset I$ is arbitrary, we deduce that $\Lambda_{\rho}(z) \geq 0$ on a dense subset of $I$. By continuity, we have $\Lambda_{\rho}(z) \geq 0$ for all $z \in I$.

By Lemma 10.2.3, $m-\rho$ is nonconstant, so that the principal eigenvalue $\Lambda_{\rho}$ of (10.39) (with $h=\rho$ ) is strictly increasing in diffusion rate (Proposition 1.3.15). Hence, if $z \in[0,1] \backslash\{\hat{z}\}$, then $\Theta(z)>\Theta(\hat{z})$ and hence

$$
\Lambda_{\rho}(z)>\Lambda_{\rho}(\hat{z}) \geq 0
$$

This proves the first assertion.

For the second assertion, we note that $\inf _{I} w=0$ in $I$, by Lemma 10.2.5. Suppose $w\left(z_{0}\right)=0$ for some $z_{0} \in[0,1]$, it remains to show that $z_{0}=\hat{z}$. Indeed, $w+\left|z-z_{0}\right|^{2}$ attains a strict local minimum at $z_{0}$. By virtue of $w$ being a viscosity supersolution of (10.40), $-\Lambda_{\rho}\left(z_{0}\right) \geq 0$. By the first assertion, we must have $z_{0}=\hat{z}$.

Proof (of Theorem 10.2.1) Passing to a sequence, we may assume that $w_{\boldsymbol{\epsilon}}(x, z) \rightarrow$ $w(z)$ in $C(\bar{W} \times[0,1])$ and $\rho_{\epsilon}(x) \rightarrow \rho(x)$ in $C^{1}(\bar{D})$ as $\epsilon \rightarrow 0$. By Lemma 10.2.9, $w(z)>0$ in $[0,1] \backslash\{\hat{z}\}$, where we recall that $\hat{z}$ is the unique point in $[0,1]$ such that $\Theta(\hat{z})=\inf \Theta$. It then follows that

$$
u_{\epsilon}(x, z)=\exp \left(-\frac{w_{\epsilon}(x, z)}{\epsilon}\right)=\exp \left(-\frac{w(z)+o(1)}{\epsilon}\right) \rightarrow 0
$$

in compact subsets of $\bar{D} \times([0,1] \backslash\{\hat{z}\})$.
It remains to show that $\rho_{\epsilon} \rightarrow \hat{\theta}$, where $\hat{\theta}$ is the unique positive solution of (10.21). To this end, rewrite (10.18) as

$$
\Theta(\hat{z}) \Delta_{x} u_{\epsilon}+u_{\epsilon}\left(m(x)-\rho_{\epsilon}\right)=-(\Theta(z)-\Theta(\hat{z})) \Delta_{x} u_{\epsilon} \quad \text { in } D \times \mathbb{R}
$$

Integrate in $z$ from 0 to 1 , we obtain

$$
\Theta(\hat{z}) \Delta_{x} \rho_{\epsilon}+\rho_{\epsilon}\left(m-\rho_{\epsilon}\right)=-\int_{0}^{1}(\Theta(z)-\Theta(\hat{z})) \Delta_{x} u_{\epsilon} \mathrm{d} z
$$

Multiplying by a test function $\varphi(x) \in C^{1}(\bar{D})$, and integrating by parts,

$$
\begin{equation*}
-\Theta(\hat{z}) \int_{D} \nabla_{x} \rho_{\epsilon} \cdot \nabla_{x} \varphi \mathrm{~d} x+\int_{D} \varphi \rho_{\epsilon}\left(m-\rho_{\epsilon}\right) \mathrm{d} x=\tilde{R}_{\epsilon} \tag{10.43}
\end{equation*}
$$

where $\tilde{R}_{\epsilon}=\int_{D \times[0,1]}(\Theta(z)-\Theta(\hat{z})) \nabla_{x} u_{\epsilon} \cdot \nabla_{x} \varphi \mathrm{~d} z \mathrm{~d} x$.
We claim that $\tilde{R}_{\epsilon} \rightarrow 0$. Indeed,

$$
\begin{aligned}
\left|\tilde{R}_{\epsilon}\right| & \leq \int_{D \times[0,1]}|\Theta(z)-\Theta(\hat{z})| \nabla_{x} u_{\epsilon}| | \nabla_{x} \varphi \mid \mathrm{d} z \mathrm{~d} x \\
& \leq C \int_{D \times[0,1]}|z-\hat{z}| u_{\epsilon}(x, z) \mathrm{d} z \mathrm{~d} x \\
& \leq C\left[\delta \int_{D} \rho_{\epsilon} \mathrm{d} x+\int_{D \times[0, \hat{z}-\delta]} u_{\epsilon}(x, z) \mathrm{d} x \mathrm{~d} z+\int_{D \times[\hat{z}+\delta, 1]} u_{\epsilon}(x, z) \mathrm{d} x \mathrm{~d} z\right]
\end{aligned}
$$

where we used (10.27) for the second inequality. Hence,

$$
\limsup \left|\tilde{R}_{\epsilon}\right| \leq C \delta
$$

Letting $\delta \rightarrow 0$, we deduce that $\tilde{R}_{\epsilon} \rightarrow 0$.

Hence, letting $\epsilon \rightarrow 0$ in (10.43), we deduce that

$$
-\Theta(\hat{z}) \int_{D} \nabla_{x} \rho \cdot \nabla \varphi \mathrm{~d} x+\int_{D} \varphi \rho(m-\rho) \mathrm{d} x=0
$$

Hence, $\rho$ is a weak solution (and thus a classical solution by the elliptic regularity theory) to (10.21). Since $\rho$ is positive (thanks to Lemma 10.2.2), it must coincide with the unique positive solution $\hat{\theta}$ of (10.21).

Remark 10.2.10 A related problem in bounded regions with the Neumann boundary condition is studied in [24], where more detailed asymptotics of the equilibrium solutions, as $\epsilon \rightarrow 0$, are obtained. These asymptotics are used in proving the stability and uniqueness of equilibrium solution in [22].

Remark 10.2.11 It is conjectured in [36] that, for well-prepared initial data, the time-dependent problem (10.17) possesses solutions exhibiting moving Dirac concentrations. See [26] for a recent result.

### 10.3 Further Reading

In this chapter, we are interested in models of a population which is structured by a continuous phenotypic trait. Such models can be viewed as the analogue of competition models of infinitely many species. Although mutation is modeled by diffusion in the trait variable, we note that other more realistic formulations, such as integral operators, are also possible [6].

The first half of this chapter concerns the selection of the fittest trait in the context of maximizing growth rate in the nonspatial context. We establish the wellknown result that such models often admit a unique (globally asymptotically stable) positive equilibria [7], and that the positive equilibria tends to a single or multiple Dirac mass(es) in the small mutation limit. See also [1, 2] for measure-valued selection-mutation models.

More recently, the dynamics of Dirac concentrations of (10.10) has been investigated with a Hamilton-Jacobi approach. This latter body of work started with a paper of Diekmann et al. [15], which formally derived the Hamilton-Jacobi equation with a constraint for a model with two substitutable resources and a consumer population structured by a continuous trait parameterizing the preference towards the two resources. Asymptotic analysis of phenotype-structured population models has been carried out for various situations, see [12, 14, 15, 33, 34]. The particular case of (10.10) is considered in [6, 28, 34, 35]. See also [18] for the case of time-periodic environments.

The selection-mutation model can be considered as a population approach to rigorously derive the evolutionary dynamics as suggested by the formal adaptive dynamics framework [9,12,15,23,34]. The models considered in this chapter form a special class that can be obtained by taking appropriate limits from stochastic
individual based models as the population size becomes large [13]. Other types of models, such as the class of pure selection models [14,21], are also possible.

The second half of this chapter concerns a population structured by both spatial and trait variables, in which the slowest diffuser is selected, in the sense that the unique equilibria, which is also locally asymptotically stable, converges to a Diracconcentration at the slowest diffusing phenotype when the mutation rate tends to zero. See also [30]. With the incorporation of spatial structure, it is more challenging to resolve the time-dependent problem concerning the dynamics of Dirac masses. It is an open problem to show that solutions converge to moving Dirac masses in the small mutation limit, under proper rescaling in time. See [26] for some recent progress for the model (10.17), and also [32] for a result with a similar flavor concerning another selection-mutation model with age structure.

Granted, the selection of slowest diffuser is well known for the two species case, assuming unconditional movement and a spatially heterogeneous environment. The significance of the present approach (with a population structured by space and trait) is to suggest an alternative method to identify an ESS in a given ecological situation. Recently, we performed a detailed analysis of equilibrium in the river model where the population is structured by space and the diffusion rate (as the phenotypic trait) [19]. Depending on the environmental conditions, we proved the convergence of the positive equilibrium to a single interior Dirac-concentration, a boundary Dirac-concentration, and two boundary Dirac-concentrations. These represent different endpoints of evolutionary dynamics. Namely, the presence of an ESS (in fact continuously stable strategy), the absence of a singular strategy (so that one of the boundary traits is convergence stable), and the existence of an evolutionary branching point. The third situation demonstrates the flexibility of the continuum framework in handling a nonmonomorphic population. For the corresponding results in a non-spatial setting where the population is structured only by a continuous trait, see also [23], where it is proved in addition that the problem can have bistability, which is caused by two alternative global ESSs in the adaptive dynamics.

## Problems

10.3.1 Let $\epsilon>0$ and $m \in C^{1}(\bar{D})$ be given.

1. Suppose $m \leq 0$ in $D$, show that every nonnegative, nontrivial solution of (10.17) satisfies $u \rightarrow 0$ as $t \rightarrow \infty$.
2. Suppose the principal eigenvalue $\lambda_{1}$ of

$$
\begin{cases}-\Theta(z) \Delta_{x} \phi-\epsilon^{2} \partial_{z z}^{2} \phi=m(x) \phi+\lambda \phi=0 & \text { in } D \times[0,1] \\ \mathbf{n} \cdot \nabla_{x} \phi=0 & \text { on } \partial D \times[0,1] \\ \phi(x, 0)=\phi(x, 1) & \text { in } D\end{cases}
$$

is nonnegative, then every nonnegative, nontrivial solution of (10.17) satisfies $u \rightarrow 0$ as $t \rightarrow \infty$.
[On the other hand, if $\lambda_{1}<0$, then it is shown in [22] that there is a $\delta>0$ such that

$$
\delta \leq \liminf _{t \rightarrow \infty} \inf _{D \times[0,1]} u \leq \limsup _{t \rightarrow \infty} \sup _{D \times[0,1]} u \leq \frac{1}{\delta},
$$

and that (10.17) has at least one positive equilibrium.]
10.3.2 Suppose $m(x) \equiv 1$.

1. Verify that $\mathbf{1}(x, z)=1$ is an equilibrium of (10.17).
2. Show that

$$
V(u):=\int_{D \times[0,1]}(u-1-\log u)
$$

is a Lyapunov function (see Definition 7.2.2), i.e. if $u(x, z, t)$ is a solution of (10.17), then

$$
\frac{\mathrm{d}}{\mathrm{~d} t} V(u(\cdot, \cdot, t)) \leq 0 \quad \text { for } t \geq 0
$$

3. Show that $u(x, z, t) \rightarrow 1$ as $t \rightarrow \infty$, for any nonnegative, nontrivial solution $u$ of (10.17), by invoking LaSalle's invariance principle (Theorem 7.2.3).

## References

1. A. S. Ackleh, J. Cleveland, and H. R. Thieme, Population dynamics under selection and mutation: long-time behavior for differential equations in measure spaces, J. Differential Equations, 261 (2016), pp. 1472-1505.
2. A. S. Ackleh and N. Saintier, Diffusive limit to a selection-mutation equation with small mutation formulated on the space of measures, Discrete Contin. Dyn. Syst. Ser. B, 26 (2021), pp. 1469-1497.
3. M. Alfaro and R. Carles, Explicit solutions for replicator-mutator equations: extinction versus acceleration, SIAM J. Appl. Math., 74 (2014), pp. 1919-1934.
4. M. Alfaro and M. Veruete, Evolutionary branching via replicator-mutator equations, J. Dynam. Differential Equations, 31 (2019), pp. 2029-2052.
5. G. Barles, An introduction to the theory of viscosity solutions for first-order Hamilton-Jacobi equations and applications, in Hamilton-Jacobi equations: approximations, numerical analysis and applications, vol. 2074 of Lecture Notes in Math., Springer, Heidelberg, 2013, pp. 49-109.
6. G. Barles, S. Mirrahimi, and B. Perthame, Concentration in Lotka-Volterra parabolic or integral equations: a general convergence result, Methods Appl. Anal., 16 (2009), pp. 321-340.
7. R. Bürger, Perturbations of positive semigroups and applications to population genetics, Math. Z., 197 (1988), pp. 259-272.
8. , The mathematical theory of selection, recombination, and mutation, Wiley Series in Mathematical and Computational Biology, John Wiley \& Sons, Ltd., Chichester, 2000.
9. A. Calsina, S. Cuadrado, L. Desvillettes, and G. Raoul, Asymptotics of steady states of a selection-mutation equation for small mutation rate, Proc. Roy. Soc. Edinburgh Sect. A, 143 (2013), pp. 1123-1146.
10. V. Calvez and K.-Y. Lam, Uniqueness of the viscosity solution of a constrained HamiltonJacobi equation, Calc. Var. Partial Differential Equations, 59 (2020), p. 22. Paper No. 163.
11. R. S. Cantrell and K.-Y. Lam, On the evolution of slow dispersal in multispecies communities, SIAM J. Math. Anal., 53 (2021), pp. 4933-4964.
12. J. A. Carrillo, S. Cuadrado, and B. Perthame, Adaptive dynamics via Hamilton-Jacobi approach and entropy methods for a juvenile-adult model, Math. Biosci., 205 (2007), pp. 137161.
13. N. Champagnat, R. Ferrière, and S. Méléard, Unifying evolutionary dynamics: From individual stochastic processes to macroscopic models, Theor. Pop. Biol., 69 (2006), pp. 297321.
14. L. Desvillettes, P.-E. Jabin, S. Mischler, and G. Raoul, On selection dynamics for continuous structured populations, Commun. Math. Sci., 6 (2008), pp. 729-747.
15. O. Diekmann, P.-E. Jabin, S. Mischler, and B. Perthame, The dynamics of adaptation: An illuminating example and a Hamilton--Jacobi approach, Theor. Pop. Biol., 67 (2005), pp. 257-271.
16. J. Dockery, V. Hutson, K. Mischaikow, and M. Pernarowski, The evolution of slow dispersal rates: a reaction diffusion model, J. Math. Biol., 37 (1998), pp. 61-83.
17. L. C. Evans, The perturbed test function method for viscosity solutions of nonlinear PDE, Proc. Roy. Soc. Edinburgh Sect. A, 111 (1989), pp. 359-375.
18. S. Figueroa Iglesias and S. Mirrahimi, Long time evolutionary dynamics of phenotypically structured populations in time-periodic environments, SIAM J. Math. Anal., 50 (2018), pp. 5537-5568.
19. W. Hao, K.-Y. Lam, and Y. Lou, Concentration phenomena in an integro-PDE model for evolution of conditional dispersal, Indiana Univ. Math. J., 68 (2019), pp. 881-923.
20. D. Holcman and I. Kupka, Singular perturbation for the first eigenfunction and blow-up analysis, Forum Math., 18 (2006), pp. 445-518.
21. P.-E. Jabin and G. Raoul, On selection dynamics for competitive interactions, J. Math. Biol., 63 (2011), pp. 493-517.
22. K.-Y. Lam, Stability of Dirac concentrations in an integro-PDE model for evolution of dispersal, Calc. Var. Partial Differential Equations, 56 (2017), p. 32. Paper No. 79.
23. Dirac-concentrations in an integro-pde model from evolutionary game theory, Discrete Contin. Dyn. Syst. Ser. B, 24 (2019), pp. 737-754.
24. K.-Y. Lam and Y. Lou, An integro-PDE model for evolution of random dispersal, J. Funct. Anal., 272 (2017), pp. 1755-1790.
25. , The principal Floquet bundle and the dynamics of fast diffusing communities. Manuscript submitted for publication, 2022.
26. K.-Y. Lam, Y. Lou, and B. Perthame, A Hamilton-Jacobi approach to evolution of dispersal, 2022. arXiv:2205.05534 [math.AP].
27. T. Lorenzi and C. Pouchol, Asymptotic analysis of selection-mutation models in the presence of multiple fitness peaks, Nonlinearity, 33 (2020), pp. 5791-5816.
28. A. Lorz, S. Mirrahimi, and B. Perthame, Dirac mass dynamics in multidimensional nonlocal parabolic equations, Comm. Partial Differential Equations, 36 (2011), pp. 1071-1098.
29. P. Magal and G. F. Webb, Mutation, selection, and recombination in a model of phenotype evolution, Discrete Contin. Dynam. Systems, 6 (2000), pp. 221-236.
30. S. Mirrahimi, A Hamilton-Jacobi approach to characterize the evolutionary equilibria in heterogeneous environments, Math. Models Methods Appl. Sci., 27 (2017), pp. 2425-2460.
31. S. Mirrahimi and J.-M. Roquejoffre, A class of Hamilton-Jacobi equations with constraint: uniqueness and constructive approach, J. Differential Equations, 260 (2016), pp. 4717-4738.
32. S. Nordmann and B. Perthame, Dynamics of concentration in a population structured by age and a phenotypic trait with mutations. Convergence of the corrector, J. Differential Equations, 290 (2021), pp. 223-261.
33. S. Nordmann, B. Perthame, and C. Taing, Dynamics of concentration in a population model structured by age and a phenotypical trait, Acta Appl. Math., 155 (2018), pp. 197-225.
34. B. Perthame, Transport equations in biology, Frontiers in Mathematics, Birkhäuser Verlag, Basel, 2007.
35. B. Perthame and G. Barles, Dirac concentrations in Lotka-Volterra parabolic PDEs, Indiana Univ. Math. J., 57 (2008), pp. 3275-3301.
36. B. Perthame and P. E. Souganidis, Rare mutations limit of a steady state dispersal evolution model, Math. Model. Nat. Phenom., 11 (2016), pp. 154-166.
37. A. Sasaki and S. Ellner, The evolutionarily stable phenotype distribution in a random environment, Evolution, 49 (1995), pp. 337-350.

## Appendices

## Appendix A The Fixed Point Index

Abstract In this appendix, we recall the Leray-Schauder degree, and derive the closely related notion of the fixed point index. Our treatment follows Amann [1].

## A. 1 Properties of the Leray-Schauder Degree

Let $X$ be a Banach space, and let
$\mathcal{A}_{L S}=\{(f, U): U$ is an open subset of $X, f: \bar{U} \rightarrow X$ is compact and continuous, $f(x) \neq x \quad$ for any $x \in \partial U\}$.

Theorem A.1.1 There exists a unique function that assigns to each $(f, U) \in \mathcal{A}_{L S}$ an integer $\operatorname{deg}(I-f, U, 0)$ with the following properties:
(Normalization) $\operatorname{deg}(I, U, 0)=1$ if $0 \in U$.
(Additivity) If $U_{1}, U_{2}$ are open, disjoint subsets of $U$ such that $f(x) \neq x$ in $\bar{U} \backslash\left(U_{1} \cup\right.$ $\left.U_{2}\right)$, then

$$
\operatorname{deg}(I-f, U, 0)=\operatorname{deg}\left(I-f, U_{1}, 0\right)+\operatorname{deg}\left(I-f, U_{2}, 0\right)
$$

(Homotopy invariance) Suppose $h:[0,1] \times \bar{U} \rightarrow X$ is (i) continuous, (ii) for each $\tau \in[0,1], x \mapsto h(\tau, x)$ is a compact mapping from $\bar{U}$ to $X$, (iii) $x \neq h(\tau, x)$ in $[0,1] \times \partial U$. Then

$$
\operatorname{deg}(I-h(0, \cdot), U, 0)=\operatorname{deg}(I-h(1, \cdot), U, 0) .
$$

(Excision) If $A$ is a closed set contained in $\bar{U}$ and $f(x) \neq x$ in $A \cup(\partial U)$, then

$$
\operatorname{deg}(I-f, U, 0)=\operatorname{deg}(I-f, U \backslash A, 0)
$$

Such a function $\operatorname{deg}(I-f, U, 0)$ is called the Leray-Schauder degree of $I-f$.

See, e.g. [4] for the existence and uniqueness of the Leray-Schauder degree.

## A. 2 The Fixed Point Index

In many applications, one is interested in a nonlinear map $f$ that is defined on a certain convex subset $K$ of a Banach space $X$, e.g., the family of nonnegative functions in $C^{0}(\bar{\Omega})$ or $L^{p}(\Omega)$ for some bounded domain $\Omega$ in $\mathbb{R}^{N}$. Frequently, the fixed points of the nonlinear map lie on the boundary of the convex subset. In fact, sometimes these convex subsets have no interior points at all. In these instances, the Leray-Schauder degree is not immediately applicable. If the convex subset $K$ is a retract of $X$, then it is possible to define the fixed point index. The fixed point index is equivalent to the Leray-Schauder degree, but is less well known. In this subsection, we will define the fixed point index in terms of the Leray-Schauder degree.

Definition A.2.1 Let $X$ be a Banach space. A nonempty subset $K$ of $X$ is called a retract of $X$ if there exists a continuous map $r: X \rightarrow K$ such that $r(x)=x$ for $x \in K$. In this case, $r$ is called a retraction.

Remark A.2.2 1. (Exercise) Every retract of $X$ is a closed subset of $X$.
2. It is proved by Dugundji that every nonempty closed convex subset of a Banach space $X$ is a retract of $X[2,3]$.
3. The set $K=\left\{u_{0} \in C(\bar{\Omega}): u_{0} \geq 0\right.$ in $\left.\Omega\right\}$ is a retract of $C(\bar{\Omega})$ with the corresponding retraction being $r\left(u_{0}\right)=\max \left\{u_{0}, 0\right\}$. The same holds with $C(\bar{\Omega})$ replaced by $L^{p}(\Omega)$.

Definition A.2.3 Let $K$ be a retract of some Banach space $X$. We say that $U$ is an open (resp. closed) subset of $K$ if $U=K \cap \tilde{U}$ for some open (resp. closed) subset $\tilde{U}$ of $X$. We define the boundary $\partial_{K}(U)$ of $U$ relative to $K$ by $\partial_{K}(U)=\partial \tilde{U} \cap K$.

A triple ( $f, U, K$ ) is called admissible if $K$ is a retract of $X, U$ is an open subset relative to $K$, and $f: \bar{U} \rightarrow K$ is a compact, continuous mapping such that $f(x) \neq x$ in $\partial_{K}(U)$.

Theorem A.2.4 There exists a unique function $i$ that assigns to each admissible ( $f, U, K$ ) an integer $i(f, U, K)$ with the following properties:
(Normalization) If $f: \bar{U} \rightarrow K$ is a constant map from $\bar{U}$ into $U$, i.e. $f(x) \equiv x_{0}$ for some $x_{0} \in U$, then $i(f, U, K)=1$.
(Additivity) Let $U_{1}, U_{2}$ be disjoint subsets of $U$ that are open relative to $K$. If $f(x) \neq x$ in $\bar{U} \backslash\left(U_{1} \cup U_{2}\right)$, then

$$
i(f, U, K)=i\left(f, U_{1}, K\right)+i\left(f, U_{2}, K\right)
$$

with the convention $i\left(f, U_{k}, K\right):=i\left(\left.f\right|_{\bar{U}_{k}}, U_{k}, K\right)$, for $k=1,2$.
(Homotopy invariance) Suppose $h:[0,1] \times \bar{U} \rightarrow X$ is (i) continuous, (ii) for each $\tau \in[0,1], x \mapsto h(\tau, x)$ is a compact mapping from $\bar{U}$ to $X$, (iii) $x \neq h(\tau, x)$ in $[0,1] \times \partial_{K}(U)$. Then

$$
i(h(0, \cdot), U, K)=i(h(1, \cdot), U, K)
$$

(Permanence) If $K_{1}$ is a retract of $K$ and $f(\bar{U}) \subset K_{1}$, then

$$
i(f, U, K)=i\left(f, U \cap K_{1}, K_{1}\right),
$$

with the convention $i\left(f, U \cap K_{1}, K_{1}\right):=i\left(\left.f\right|_{\overline{U \cap K_{1}}}, U \cap K_{1}, K_{1}\right)$.
(Excision) If $A$ is a closed subset of $\bar{U}$, and $f(x) \neq x$ in $A \cup\left(\partial_{K}(U)\right)$, then

$$
i(f, U, K)=i(f, U \backslash A, K)
$$

Such a function $i(f, U, K)$ is called the fixed point index of $f$ over $U$ with respect to the retract $K$ of $X$.

Proof The proof is taken from [1, Theorem 11.1]. We first observe that if $K=X$, then the normalization, additivity homotopy invariance, and excision properties are precisely the properties which characterize the Leray-Schauder degree. Hence, $i(f, U, X)$ is uniquely determined by

$$
i(f, U, X)=\operatorname{deg}(I-f, U, 0)
$$

Suppose now that $K$ is an arbitrary retract of $X$ and denote by $r: X \rightarrow K$ the retraction. Then by the permanence property,

$$
i(f, U, K)=i\left(f \circ r, r^{-1}(U), X\right)=\operatorname{deg}\left(I-f \circ r, r^{-1}(U), 0\right) .
$$

Hence $i(f, U, K)$ is again uniquely determined. This proves uniqueness of the fixed point index.

To show existence, we will define the fixed point index in terms of the LeraySchauder degree. By the uniqueness proof, we are led to define

$$
\begin{equation*}
i(f, U, K)=\operatorname{deg}\left(I-f \circ r_{0}, r_{0}^{-1}(U), 0\right), \tag{A.1}
\end{equation*}
$$

where $r_{0}: X \rightarrow K$ is an arbitrary retraction.
We need to show that the above definition is independent of the choice of retraction $r_{0}: X \rightarrow K$. Let $r_{1}: X \rightarrow K$ be another retraction, and let $V:=r_{0}^{-1}(U) \cap r_{1}^{-1}(U)$. Since $r_{j}^{-1}(U) \backslash V$ belongs to $X \backslash K$, and the range of $f$ is $K$, we have $\left(f \circ r_{j}\right)(x) \neq x$ in $r_{j}^{-1}(U) \backslash V$. By the excision property of the Leray-Schauder degree, we have

$$
\operatorname{deg}\left(I-f \circ r_{j}, r_{j}^{-1}(U), 0\right)=\operatorname{deg}\left(I-f \circ r_{j}, V, 0\right) \quad \text { for } j=0,1
$$

We now define $h:[0,1] \times \bar{V} \rightarrow K$ by

$$
h(\tau, x)=r_{0}\left((1-\tau) f\left(r_{0}(x)\right)+\tau f\left(r_{1}(x)\right)\right) .
$$

We claim that $h(\tau, x) \neq x$ in $[0,1] \times \partial V$. Indeed, suppose to the contrary that $h(\tau, x)=x$ for some $0 \leq \tau \leq 1$ and $x \in \partial V$. Since $h$ takes values in $K$, we have
$x \in(\partial V) \cap K=\partial_{K}(U)$ and hence $r_{j}(x)=x$ for $j=0$, 1 . The equality $h(\tau, x)=x$ then becomes $f(x)=x$ for some $x \in \partial_{K}(U)$, which is impossible since ( $f, U, K$ ) is admissible.

Hence, we can apply the homotopy invariance property of the Leray-Schauder degree to get

$$
\operatorname{deg}\left(I-f \circ r_{0}, V, 0\right)=\operatorname{deg}\left(I-f \circ r_{1}, V, 0\right)
$$

Consequently, the definition $i(f, U, K)$ according to (A.1) is independent of the particular choice of retraction $r_{0}$.

Finally, we verify the remaining permanence property. Let $K$ be a retract of $X$ with retraction $r_{0}: X \rightarrow K$, and $Y$ be a retract of $K$ with retraction $r_{2}: K \rightarrow Y$, then $Y$ is a retract of $X$ with retraction $r_{3}=r_{2} \circ r_{0}$. Let $f: \bar{U} \rightarrow X$ such that $f(\bar{U}) \subset Y$ be given. Indeed, we can proceed similarly as before. First, we define $V=r_{3}^{-1}(U \cap Y) \cap r_{0}^{-1}(U)$, and observe that by excision,

$$
\left\{\begin{array}{l}
i(f, U, K)=\operatorname{deg}\left(I-f \circ r_{0}, r_{0}^{-1}(U), 0\right)=\operatorname{deg}\left(I-f \circ r_{0}, V, 0\right) \\
i(f, U \cap Y, Y)=\operatorname{deg}\left(I-f \circ r_{3}, r_{3}^{-1}(U \cap Y), 0\right)=\operatorname{deg}\left(I-f \circ r_{3}, V, 0\right)
\end{array}\right.
$$

Next, we take $h(\tau, x)=r_{3}\left((1-\tau) f\left(r_{0}(x)\right)+\tau f\left(r_{3}(x)\right)\right)$ and observe that $h(\tau, x) \neq x$ in $\partial V$, so that homotopy invariance of the degree implies that

$$
i(f, U, K)=\operatorname{deg}\left(I-f \circ r_{0}, V, 0\right)=\operatorname{deg}\left(I-f \circ r_{3}, V, 0\right)=i(f, U \cap Y, Y)
$$

This completes the proof of the permanence property.
Corollary A.2.5 The following statements hold.

1. $i(f, \emptyset, K)=0$.
2. If $i(f, U, K) \neq 0$, then $f$ has at least one fixed point in $U$.

Proof The first assertion follows from additivity:

$$
i(f, \emptyset, K)=i(f, \emptyset, K)+i(f, \emptyset, K)
$$

To prove the second assertion, let $(f, U, K)$ be admissible and let $f(x) \neq x$ in $\bar{U}$. By taking $K=\bar{U}$, the excision property and Corollary A.2.5 yields $i(f, U, K)=$ $i(f, \emptyset, K)=0$.

## References

1. H. Amann, Fixed point equations and nonlinear eigenvalue problems in ordered Banach spaces, SIAM Rev., 18 (1976), pp. 620-709.
2. J. Dugundsi, An extension of Tietze's theorem, Pacific J. Math., 1 (1951), pp. 353-367.
3. J. Dugundii, Topology, Allyn and Bacon, Inc., Boston, Mass., 1966.
4. L. Nirenberg, Topics in nonlinear functional analysis, vol. 6 of Courant Lecture Notes in Mathematics, New York University, Courant Institute of Mathematical Sciences, New York; American Mathematical Society, Providence, RI, 2001. Revised reprint of the 1974 original.

## Appendix B <br> The Krein-Rutman Theorem


#### Abstract

We present a self-contained treatment of the Krein-Rutman theorem. Our treatment follows mainly the lecture note of Nussbaum [13], with some modifications. We first prove the Krein-Rutman theorem for positive, compact and homogeneous maps on a cone (see Corollaries B.4.4 and B.4.5), then we derive the classical Krein-Rutman theorem for positive compact linear operators.


## B. 1 Introduction

It has long been recognized that the full Krein-Rutman theorem can be proved by using fixed point theory, e.g. using the Schauder fixed point theorem. Here we present a fixed point index argument due to Nussbaum [13]. Since the fixed point index (for cones) is directly defined from the Leray-Schauder degree, the argument we present here can be considered a method for obtaining the Krein-Rutman theorem from the Leray-Schauder degree. For simplicity, we restrict ourselves to compact operators, but most of these results can be generalized to $\alpha$-contractions, provided that the spectral radius is strictly greater than the radius of the essential spectrum. We refer to [10] for recent results and open problems.

## B. 2 Cones and Orderings

Definition B.2.1 Let $K$ be a subset of a Banach space $X$.

1. The set $K$ is a cone if (i) $K$ is closed and convex, (ii) $\mu K \subset K$ for all $\mu \geq 0$, and (iii) $K \cap(-K)=\{0\}$.
2. $K$ is a total cone if it is a cone and $K-K=\{x-y: x, y \in K\}$ is dense in $X$.
3. $K$ is a solid cone if it is a cone with nonempty interior.

Note that a cone $K$ is total if it is solid.

Definition B.2.2 The cone $K$ in $X$ induces a partial ordering of $X$. For $x, y \in X$, we write

$$
x \leq y \quad(\text { resp. } \quad x<y, \quad x \ll y)
$$

if

$$
y-x \in K \quad(\text { resp. } y-x \in K \backslash\{0\}, \quad y-x \in \operatorname{Int} K) .
$$

We say that $X$ is an ordered Banach space with order induced by the cone $K$.
Remark B.2.3 Since any cone $K \subset X$ is convex, Dugundji's theorem [2,3] asserts that any closed cone $K$ in $X$ is a retract of $X$, so the fixed point index $i(f, U, K)$ is well-defined for any relatively open subset $U$ in $K$, and any compact and continuous map $f: \bar{U} \rightarrow K$ such that $f(x) \neq x$ in $\bar{U} \backslash U$.

We give several examples of cones.

1. For $X=\mathbb{R}^{N}, K=[0, \infty)^{N}$.
2. Let $X$ be a metric space. The Banach space $X=C(X ; \mathbb{R})$ of all continuous real-valued functions can be regarded as an ordered Banach space with the order induced by the cone of non-negative functions $K=\{u \in C(X): u(x) \geq$ 0 for $x \in X\}$. Furthermore, $K$ is a solid, and total cone.
3. Let $\Omega$ be a bounded open set in $\mathbb{R}^{N}$, and let $X=L^{p}(\Omega)$. Then $K=\{u \in$ $L^{p}(\Omega): u \geq 0$ a.e. in $\left.\Omega\right\}$ is a total cone. But it is not a solid cone.
4. Let $\Omega$ be a smooth bounded domain in $\mathbb{R}^{N}$. Fix $u_{e} \in C(\bar{\Omega})$ such that for some $0<\alpha<\beta$, we have

$$
\alpha \operatorname{dist}(x, \partial \Omega) \leq u_{e}(x) \leq \beta \operatorname{dist}(x, \partial \Omega) \quad \text { in } \Omega .
$$

Define

$$
C_{e}(\bar{\Omega})=\left\{u \in C(\bar{\Omega} ; \mathbb{R}): \alpha u_{e} \leq u \leq \beta u_{e} \text { in } \Omega, \text { for some } \alpha, \beta \in \mathbb{R}\right\}
$$

endowed with the norm

$$
\|u\|_{e}=\inf \left\{\alpha>0:-\alpha u_{e} \leq u \leq \alpha u_{e} \text { in } \Omega\right\} .
$$

Then $X=C_{e}(\bar{\Omega})$ is an ordered Banach space with the order induced by the cone

$$
K=\left\{u \in C(\bar{\Omega} ; \mathbb{R}): \alpha u_{e} \leq u \leq \beta u_{e} \text { in } \Omega, \text { for some } \alpha, \beta \geq 0\right\} .
$$

Furthermore, $K$ is a solid, and total cone.
Next, we consider maps and linear operators.

Definition B.2.4 Let $X$ be a real Banach space and let $T: X \rightarrow X$ be a bounded linear operator.

1. We denote the spectral radius of $T$ by Gelfand's formula

$$
\begin{equation*}
r(T)=\lim _{n \rightarrow \infty}\left\|T^{n}\right\|^{1 / n}, \quad \text { where }\left\|T^{n}\right\|=\sup _{\|x\| \leq 1}\left\|T^{n} x\right\| \tag{B.1}
\end{equation*}
$$

2. We define the complexification of $X$ by $\tilde{X}=\{x+i y: x, y \in X\}$ with

$$
\|x+i y\|=\sup _{0 \leq \theta \leq 2 \pi}\|(\cos \theta) x+(\sin \theta) y\|
$$

and $\tilde{T}$ to be the usual linear extension of $T$ to $\tilde{X}$ :

$$
\begin{equation*}
\|\tilde{T}\|=\|T\| \quad \text { so that } \quad r(\tilde{T})=r(T) \tag{B.2}
\end{equation*}
$$

Equation (B.2) implies that ${ }^{1}$

$$
r(T)=\sup \{|z|: z \in \sigma(\tilde{T})\}
$$

where $\sigma(\tilde{T})$ denotes the spectrum, which is the complement of the resolvent set of $\tilde{T}$. Since we will also discuss the Krein-Rutman theorem associated with maps $f: K \rightarrow K$, we define the monotone property for maps.

Definition B.2.5 Let $X$ be an ordered Banach space with order induced by the cone $K$.

1. Let $C$ be a subset of $X$. A map $f: C \rightarrow X$ is monotone (with respect to the partial order generated by $K$ ) if

$$
f(x) \leq f(y) \quad \text { whenever } x \leq y
$$

It is called strongly monotone if $K$ is a solid cone and

$$
f(x) \ll f(y) \quad \text { whenever } x<y \text {. }
$$

2. A map $f: K \rightarrow K$ is positively homogeneous with degree one if

$$
f(t x)=t f(x) \quad \text { for all } x \in K, \text { and } t \geq 0,
$$

and we also define $\|f\|_{K}=\sup \{\|f(x)\|: x \in K,\|x\| \leq 1\}$.
3. The Bonsall cone spectral radius is given by

$$
\begin{equation*}
\tilde{r}_{K}(f)=\limsup _{n \rightarrow \infty}\left\|f^{n}\right\|_{K}^{1 / n} \tag{B.3}
\end{equation*}
$$

[^10]In particular, a linear operator $T: X \rightarrow X$ is said to be monotone (resp. strongly monotone) if

$$
T(K) \subset K \quad(\text { resp. } \quad T(K \backslash\{0\}) \subset \operatorname{Int} K) .
$$

## B. 3 The Classical Krein-Rutman theorem

Here we state the classical Krein-Rutman theorem [8] for compact positive linear operators.

Theorem B.3.1 (Krein and Rutman, weak form) Suppose that $X$ is a real ordered Banach space with order induced by the cone $K$, and $T: X \rightarrow X$ is a compact linear operator such that $T(K) \subset K$. If $r=r(T)>0$ and $K$ is a total cone, then there exist $x_{0} \in K \backslash\{0\}$ and $f_{0} \in K^{*} \backslash\{0\}$ such that

$$
T x_{0}=r x_{0} \quad \text { and } \quad T^{*} f_{0}=r f_{0}
$$

where $T^{*}$ is the adjoint of $T$, and $K^{*}$ is the adjoint cone

$$
K^{*}=\left\{f \in X^{*}: f(x) \geq 0 \quad \text { for all } x \in K\right\} .
$$

If $K$ is a solid cone in $X$ and $T$ is strongly monotone, then a stronger version of the theorem holds.

Theorem B.3.2 (Krein and Rutman, strong form) Suppose that $X$ is a real ordered Banach space with order induced by the cone $K$. If $K$ is a solid cone and $T: X \rightarrow X$ is a compact linear operator which is strongly monotone, i.e. $T(K \backslash\{0\}) \subset \operatorname{Int} K$, then

1. $r(T)>0$ and it is a geometrically simple eigenvalue of $T$.
2. There exists an $\epsilon>0$ such that $|\lambda|<r(T)-\epsilon$ for all eigenvalues $\lambda \in \mathbb{C} \backslash\{r(T)\}$.
3. If $\lambda>0$ is an eigenvalue with an eigenvector in $K \backslash\{0\}$, then $\lambda=r(T)$.

The proofs of Theorems B.3.1 and B.3.2 can be found at the end of this section, as a consequence of the corresponding result for positively homogeneous maps (Corollaries B.4.4 and B.4.5).

Remark B.3.3 Under the assumptions of Theorem B.3.2, the principal eigenvalue $r(T)$ is, in fact, algebraically simple, i.e. $\operatorname{Ker}(r(T) I-T)=\operatorname{Ker}(r(T) I-T)^{2}$. This is a consequence of Theorem B.3.4 below.

We note that $r(T)$ is called the principal eigenvalue of $T$. Before we end this section, we derive a useful consequence of Theorem B.3.2 concerning the inhomogeneous equation

$$
\begin{equation*}
\lambda x-T x=h \quad \text { in } X . \tag{B.4}
\end{equation*}
$$

Theorem B.3.4 Under the hypotheses of Theorem B.3.2, the following statements hold.

1. If $\lambda>r(T)$ and $h \in K \backslash\{0\}$, then (B.4) has a unique solution $x$. Moreover, $x \in \operatorname{Int} K$.
2. If $\lambda \leq r(T)$ and $h \in K \backslash\{0\}$, then (B.4) has no solution in $K$.
3. If $\lambda \geq r(T)$ and $h \in K \backslash\{0\}$, then (B.4) has no solution in $X \backslash K$.

Proof (of Theorem B.3.4) Let $r=r(T)$. By Theorem B.3.2, $r>0$ and there exists an $x_{0} \in \operatorname{Int} K$ such that $T x_{0}=r x_{0}$.

We first prove assertion 1 . Since $\lambda>r(T)$, we see that $\lambda$ belongs to the resolvent set of $T$, so that $x=(\lambda I-T)^{-1} h$ exists and is unique. Note that

$$
\begin{equation*}
T\left(t x_{0}+x\right)<r t x_{0}+\lambda x<\lambda\left(t x_{0}+x\right) \quad \text { for all } t \geq 0 . \tag{B.5}
\end{equation*}
$$

Define

$$
B:=\left\{t^{\prime} \geq 0: t^{\prime} x_{0}+x \in \operatorname{Int} K\right\}
$$

Since $x_{0} \in \operatorname{Int} K$, we see that $B$ contains all sufficiently large $t$ and is nonempty.
Next, we claim that $t x_{0}+x \notin \partial K$ for any $t \geq 0$. Suppose $t x_{0}+x \in \partial K$, then it follows from (B.5) that $t x_{0}+x \in K \backslash\{0\}$, so that $T\left(t x_{0}+x\right) \gg 0$. Then (B.5) implies that $t x_{0}+x \in \operatorname{Int} K$, which is a contradiction.

Hence, $t x_{0}+x \notin \partial K$ for any $t \geq 0$. We can then deduce that $B=[0, \infty)$, and in particular that $x \in \operatorname{Int} K$. This proves assertion 1 .

Next, we prove assertion 2 . Suppose to the contrary that $\lambda \leq r(T)$ and $\lambda x-T x>0$ for some $x \in K$. Then $x \neq 0$, so that $\lambda x>T x \gg 0$. This means $\lambda>0$ and $x \in \operatorname{Int} K$. Hence, $t x-x_{0} \in \operatorname{Int} K$ for all $t$ sufficiently large. Now,

$$
\begin{equation*}
T\left(t x-x_{0}\right)<r\left(t x-x_{0}\right) \quad \text { for all } t>0 \tag{B.6}
\end{equation*}
$$

and we observe again that $t x-x_{0} \notin \partial K$ for all $t>0$. This implies that $t x-x_{0} \in \operatorname{Int} K$ for all $t>0$. Letting $t \rightarrow 0$, we obtain $-x_{0} \in K$, which is absurd.

Next, we prove assertion 3. Suppose to the contrary that (B.4) holds for some $\lambda \geq r(T)>0, x \in X \backslash K$ and $h \in K \backslash\{0\}$. By assertion 1, we have $\lambda=r(T)$. Since $x_{0} \in \operatorname{Int} K$ and $x \in X \backslash K$, we may scale $x_{0}$ so that $x_{0}+x \in \partial K$. Also, $r(T) x-T x \neq 0$ implies $x \neq-x_{0}$. Now the strong monotonicity of $T$ implies

$$
r\left(x_{0}+x\right)>T\left(x_{0}+x\right) \gg 0
$$

which means $x_{0}+x \in \operatorname{Int} K$. This is a contradiction.

## B. 4 The Generalized Krein-Rutman theorem for Homogeneous Maps

Theorem B.4.1 Suppose that $X$ is an ordered Banach space with order induced by the cone $K$. Let $f: K \rightarrow K$ be a compact, continuous, monotone map which is positively homogeneous of degree one. Assume that there exists a $u \in K$ such that $\left\{\left\|f^{j}(u)\right\|\right\}_{j=1}^{\infty}$ is unbounded, where $f^{j}$ is the composition of $f$ with itself $j$ times. Then there exist $x \in K$ and $t \geq 1$ such that $\|x\|=1$ and

$$
\begin{equation*}
f(x)=t x \tag{B.7}
\end{equation*}
$$

Assume, in addition, that $f(y) \neq y$ for all $y \in K \backslash\{0\}$, then $i(f, U, K)=0$ for any neighborhood $U$ of 0 which is a relatively open subset of $K$.

Proof We will first prove two separate claims in Steps 1 and 2.
Step 1. If (i) there exists a $u$ such that $\left\{\left\|f^{j}(u)\right\|\right\}_{j=1}^{\infty}$ is unbounded and (ii) $f(x) \neq x$ for all $x \in K$ such that $\|x\|=1$, then $i(f, U, K)=0$ for any $U \subset K$ open relative to $K$ which contains 0 .

By the positive homogeneity of $f$, we have $f(x) \neq x$ for all $x \in K \backslash\{0\}$. By the compactness of $f$, there exists a $\delta>0$ such that

$$
\inf \left\{\|x-f(x)\|: x \in \partial_{K}(U)\right\}>\delta
$$

Because $f$ is positively homogeneous of degree one, we may replace $u$ by $\delta u /\|u\|$, and assume without loss of generality that $\|u\| \leq \delta$.

Define $g(x)=f(x)+u$ and consider the homotopy $h(\tau, x)=f(x)+\tau u$ for $\tau \in[0,1]$. It is clear that

$$
h(\tau, x)=f(x)+\tau u \neq x \quad \text { for }(\tau, x) \in[0,1] \times \partial_{K}(U),
$$

so we can conclude that

$$
\begin{equation*}
i(f, U, K)=i(g, U, K) \tag{B.8}
\end{equation*}
$$

To complete Step 1, it suffices to prove that $g(x) \neq x$ for all $x \in \bar{U}$, so that $i(g, U, K)=0$ by Corollary A.2.5.

Since $g(x) \neq x$ on $\partial_{K}(U)=\bar{U} \backslash U$, we assume to the contrary that $g(x)=x$ for some $x \in U$. Then,

$$
x=f(x)+u \geq u
$$

We can iterate and deduce

$$
x=g(x)=f(x)+u \geq f(x) \geq f(u)
$$

By induction, we deduce that

$$
\begin{equation*}
x \geq f^{m}(u) \quad \text { for all } m \in \mathbb{N} \tag{B.9}
\end{equation*}
$$

Define $a_{m}=\left\|f^{m}(u)\right\|$. By the hypothesis of $\limsup _{m \rightarrow \infty} a_{m}=+\infty$, we may choose a subsequence $a_{m_{i}}$ such that

$$
a_{m_{i}} \geq i \quad \text { and } \quad a_{m_{i}}=\max _{1 \leq j \leq m_{i}}\left\{a_{j}\right\}
$$

Define

$$
V:=\left\{\frac{f^{m_{i}-1}(u)}{\left\|f^{m_{i}}(u)\right\|}: i \geq 1\right\}
$$

Then $V$ is a bounded set, since

$$
\left\|f^{m_{i}-1}(u)\right\|=a_{m_{i}-1} \leq a_{m_{i}}=\left\|f^{m_{i}}(u)\right\|
$$

Since $f$ maps bounded sets into precompact sets ${ }^{2}$, the set

$$
f(V)=\left\{v_{m_{i}}: i \geq 1\right\} \quad \text { where } \quad v_{m_{i}}=\frac{f^{m_{i}}(u)}{\left\|f^{m_{i}}(u)\right\|}
$$

is precompact. We can take a further subsequence in $w_{j}=v_{m_{i_{j}}}$ in $f(V)$ such that $w_{j} \rightarrow w$ in $K$ and $\|w\|=1$. Then (B.9) gives

$$
\left(a_{m_{i_{j}}}\right)^{-1} x-w_{j} \in K
$$

and by taking limits as $j \rightarrow \infty$, we derive $-w \in K$, which is a contradiction as $w \in K \backslash\{0\}$.
Step 2. If $f(x) \neq t x$ for all $\|x\|=1$ and all $t \geq 1$, then $i(f, B, K)=1$, where $B=\{x \in K:\|x\|<1\}$.

Consider the homotopy

$$
h(\tau, x)=\tau f(x) \quad \text { for }(\tau, x) \in[0,1] \times \bar{B}
$$

By assumption, $h(\tau, x) \neq x$ for $x \in \partial_{K}(B)$ and $\tau \in[0,1]$. Now,

$$
i(f, B, K)=i(h(1, \cdot), B, K)=i(h(0, \cdot), B, K)
$$

where the second and third equalities are consequences of homotopy invariance and the normalization property of the fixed point index, respectively.

Step 3. We are now in position to conclude the proof. Suppose there is a $u \in K$ such that $\left\{\left\|f^{j}(u)\right\|\right\}$ is unbounded, then Steps 1 and 2 combined imply that there exist an $x \in K$ with $\|x\|=1$ and $t \geq 1$ such that $f(x)=t x$. (Otherwise the fixed point index $i(f, B, K)$ is both zero and one.) The last assertion is already proved in Step 1.

[^11]Motivated by the condition in Theorem B.4.1, we also define

$$
\begin{equation*}
r_{K}(f)=\sup _{x \in K,\|x\| \leq 1}\left(\limsup _{n \rightarrow \infty}\left\|f^{n}(x)\right\|^{1 / n}\right) \tag{B.10}
\end{equation*}
$$

The quantity $r_{K}(f)$ is referred to as the cone spectral radius of $f: K \rightarrow K$ in [10]. The following result is an immediate consequence of Theorem B.4.1.

Lemma B.4.2 Let $X$ be an ordered Banach space with order induced by the cone $K \subset X$, and let $f: K \rightarrow K$ be under the same assumptions as in Theorem B.4.1. If $r_{K}(f)>0$, then there exists an $x \in K \backslash\{0\}$ such that $f(x)=r_{K}(f) x$.

Proof Let $r=r_{K}(f)$. For each $\lambda \in(0, r)$, there exists a $u \in K$ such that $\left\{\left\|(f / \lambda)^{j}(u)\right\|\right\}_{j=1}^{n}$ is unbounded. It follows from Theorem B.4.1 that

$$
f\left(x_{\lambda}\right)=t_{\lambda} x_{\lambda} \quad \text { for some } x_{\lambda} \in K,\left\|x_{\lambda}\right\|=1 \text { and } t_{\lambda} \in[\lambda, r] .
$$

Since $f$ is compact, we may take a sequence $\lambda \rightarrow r$ such that $x_{\lambda}$ converges to some $x \in K$ with $\|x\|=1$. This proves that $f(x)=r x$ for some nonzero $x \in K$.

Next, we discuss the relationship of $r_{K}(f)$ with the Bonsall cone spectral radius $\tilde{r}_{K}(f)$. The following result, due to Mallet-Paret and Nussbaum [9, Theorem 2.3], says that $r_{K}(f)=\tilde{r}_{K}(f)$ for a quite general class of maps; see also [14, Theorem 4.3]. We note that if $f$ is a linear map, then the following result is a consequence of Lemma B.4.9.

Lemma B.4.3 ([9, Theorem 2.3]) Suppose that $X$ is a normed space with order induced by a cone $K$, and let $f: K \rightarrow K$ be continuous, compact and positively homogeneous of degree one. Then $r_{K}(f)=\tilde{r}_{K}(f)$, where $r_{K}(f)$ and $\tilde{r}_{K}(f)$ are given in (B.10) and (B.3) respectively.

Proof Obviously $r_{K}(f) \leq \tilde{r}_{K}(f)$, so it suffices to show the reverse inequality. Henceforth, we assume $r_{K}(f)$ is finite, otherwise there is nothing to prove. Assume to the contrary that $r_{K}(f)<\lambda<\tilde{r}_{K}(f)$ for some $\lambda$. Letting $g(x)=\frac{1}{\lambda} f(x)$, then $r_{K}(g)<1$ and hence

$$
\begin{equation*}
\lim _{n \rightarrow \infty} g^{n}(x)=0 \quad \text { for every } x \in K \tag{B.11}
\end{equation*}
$$

Let $B=\{x \in K:\|x\|<1\}$ and $Q=\overline{g(B)}$. Then $Q$ is compact since $\frac{1}{\lambda} f$ is a compact map.

Next, fix an arbitrary $x \in Q$. Observe from (B.11) that there exists an integer $n(x)$ such that $g^{n(x)-1}(x) \in B$, and hence $g^{n(x)}(x) \in B$. By continuity, there exists a neighborhood $U_{x} \subset K$ of $x$, which is open relative to $K$, such that

$$
g^{n(x)-1}\left(U_{x}\right) \subset B \quad \text { and hence } g^{n(x)}\left(U_{x}\right) \subset Q .
$$

By compactness of the set $Q$, there exists a finite set of points $\left\{x_{i}\right\}_{i=1}^{k} \subset Q$ such that

$$
Q \subset \bigcup_{i=1}^{k} U_{x_{i}}
$$

Let us set $n_{0}=\max _{1 \leq i \leq k} n_{i}$, where $n_{i}=n\left(x_{i}\right)$. Roughly speaking, this means that for each $x \in Q, g^{n}(x) \in Q$ for some $n \leq n_{0}$. Precisely, define

$$
Q_{0}=\bigcup_{i=0}^{n_{0}-1} g^{i}(Q)
$$

We claim that $g\left(Q_{0}\right) \subset Q_{0}$, i.e. $Q_{0}$ is forward-invariant. Based on the form of $Q_{0}$, it is sufficient to prove that $g^{n_{0}}(Q) \subset Q_{0}$. To this end, let $y$ be a point of $g^{n_{0}}(Q)$, i.e. $y=g^{n_{0}}(x)$ for some $x \in Q$. Then $x \in U_{x_{i}}$ for some $i$, and so $g^{n_{i}}(x) \in Q$. Then

$$
y=g^{n_{0}-n_{i}}\left(g^{n_{i}}(x)\right) \in g^{n_{0}-n_{i}}(Q) .
$$

Since $0 \leq n_{0}-n_{i}<n_{0}$, it follows that $y \in Q_{0}$. This establishes the claim.
Finally, notice that for $x \in B$, we have $g(x) \in Q \subset Q_{0}$, and hence $g^{n}(x) \in Q_{0}$ for all $n \geq 1$. Since $Q_{0}$ is compact and hence bounded, it follows that $\left\|g^{n}\right\|_{K}$ is bounded independent of $n \geq 1$. This implies $\tilde{r}_{K}(g) \leq 1$, or that $\tilde{r}_{K}(f) \leq \lambda$. This is a contradiction.

We are now in position to prove the Krein-Rutman theorems for maps.
Corollary B.4.4 Suppose that $X$ is an ordered Banach space with order induced by the cone $K$, and let $f: K \rightarrow K$ be a compact, continuous map which is positively homogeneous of degree one and monotone. If $\tilde{r}_{K}(f)>0$, then there exists an $\tilde{x} \in K$ with $\|\tilde{x}\|=1$ such that

$$
f(\tilde{x})=\tilde{r} \tilde{x} \quad \text { where } \quad \tilde{r}=\tilde{r}_{K}(f)
$$

Next, we see that if $K$ has nonempty interior and $f$ is strongly monotone, then the eigenvalue $t$ given in Theorem B.4.1 is geometrically simple.

Corollary B.4.5 Suppose that $X$ is an ordered Banach space with order induced by the cone $K$. If $K$ is a solid cone and $f: K \rightarrow K$ a compact, continuous map which is positively homogeneous of degree one and strongly monotone, then $\tilde{r}_{K}(f)>0$ and there exists an $\tilde{x} \in \operatorname{Int} K$ such that

$$
f(\tilde{x})=\tilde{r} \tilde{x} \quad \text { where } \quad \tilde{r}=\tilde{r}_{K}(f) .
$$

Furthermore, whenever $f\left(x^{\prime}\right)=t^{\prime} x^{\prime}$ for some $t^{\prime}>0$ and $x^{\prime} \in K \backslash\{0\}$, it must hold that $x^{\prime} \in \operatorname{span}\{\tilde{x}\}$ and $t^{\prime}=\tilde{r}_{K}(f)$.

Remark B.4.6 Under the assumptions of Corollary B.4.5, the principal eigenvalue $\tilde{r}_{K}(f)$ is, in fact, algebraically simple, i.e. $\operatorname{Ker}\left(\tilde{r}_{K}(f) I-f\right)=\operatorname{Ker}\left(\left(\tilde{r}_{K}(f) I-f\right)^{2}\right)$. This is a consequence of Lemma B.4.8 below.

Remark B.4.7 See Problem B.5.7 for a cooperative system where the Krein-Rutman theorems for maps (Corollaries B.4.4 and B.4.5) is needed. See, e.g. [4, 6] for applications of these results to questions arising in ecology.

We also refer to [10] for recent results and open problems in the more general setting involving two cones $K \subset D$ in a Banach space $X$, where $f: K \rightarrow K$ is a positively homogeneous map which preserves the order induced by the cone $D$.

Proof (of Corollaries B.4.4 and B.4.5) First, we show Corollary B.4.4. By Lemma B.4.3, $r_{K}(f)=\tilde{r}_{K}(f)>0$. Denote by $\tilde{r}$ their common value, then Lemma B.4.2 implies that $f(\tilde{x})=\tilde{r} \tilde{x}$ for some nonzero $\tilde{x}$.

Next, we assume $K$ has nonempty interior and $f$ is strongly monotone and show Corollary B.4.5. Clearly, $\tilde{x} \in \operatorname{Int} K$ since $f(K \backslash\{0\}) \subset \operatorname{Int} K$.

Suppose now $f\left(x^{\prime}\right)=r^{\prime} x^{\prime}$ for some $x^{\prime} \in K \backslash\{0\}$, we claim that $r^{\prime}=\tilde{r}$ and $x^{\prime} \in$ $\operatorname{span}\{\tilde{x}\}$. To this end, suppose to the contrary that $x^{\prime} \notin \operatorname{span}\{\tilde{x}\}$. Since $\tilde{r}=\tilde{r}_{K}(f)$, we must have $r^{\prime} \leq \tilde{r}$. By the strong monotonicity property, we again have $x^{\prime} \in \operatorname{Int} K$, so that $x^{\prime}-\tau \tilde{x} \in \operatorname{Int} K$ for small positive $\tau$. We observe that

$$
\tilde{\tau}:=\sup \left\{\tau \in[0, \infty): x^{\prime}-\tau \tilde{x} \in \operatorname{Int} K\right\}
$$

is finite, since otherwise we deduce $-\tilde{x} \in K$, which is impossible. Since $x^{\prime} \notin \operatorname{span}\{\tilde{x}\}$, we have $x^{\prime} \neq \tilde{\tau} x$. Applying $f$ to the inequality $\tilde{\tau} \tilde{x}<x^{\prime}$, the strong monotonicity property implies

$$
\tilde{\tau} \tilde{x}=\frac{1}{\tilde{r}} f(\tilde{\tau} \tilde{x}) \ll \frac{1}{\tilde{r}} f\left(x^{\prime}\right)=\frac{r^{\prime}}{\tilde{r}} x^{\prime} \leq x^{\prime}
$$

This is in contradiction with the maximality of $\tilde{\tau}$. Hence, $r^{\prime}=\tilde{r}$ and $x^{\prime} \in \operatorname{span}\{\tilde{x}\}$. This completes the proof.

Lemma B.4.8 Under the assumption of Corollary B.4.5, for $0 \leq \lambda \leq \tilde{r}_{K}(f)$ and $h \in K \backslash\{0\}$, the inhomogeneous equation

$$
\begin{equation*}
\lambda x-f(x)=h \tag{B.12}
\end{equation*}
$$

has no solution in $K$.
Proof Let $\tilde{r}=\tilde{r}_{K}(f)>0$ and $\tilde{x} \in \operatorname{Int} K$ be given by Corollary B.4.5. Suppose to the contrary that $\lambda x-f(x)>0$ for some $x$. First observe that $x \neq 0$ and $\lambda x>f(x) \gg 0$. This means $\lambda$ is a positive real number and $x \gg 0$. In particular, $t x-\tilde{x} \gg 0$ for all positive and large real number $t$. Let

$$
t^{*}=\inf \{t>0: t x-\tilde{x} \in K\},
$$

which is well-defined and $t^{*} \geq 0$. We note that $t^{*}>0$, since $\tilde{x} \gg 0$. Hence, $t^{*} x-\tilde{x} \in \partial K$ for some $t^{*}>0$. Now, $t^{*} x-\tilde{x} \neq 0$, otherwise

$$
0=\tilde{r} \tilde{x}-f(\tilde{x})=\tilde{r} t^{*} x-f\left(t^{*} x\right) \geq t^{*}(\lambda x-f(x))>0
$$

which is absurd. Hence, $t^{*} x-\tilde{x} \in \partial K \backslash\{0\}$, but then

$$
0 \ll f\left(t^{*} x\right)-f(\tilde{x}) \leq \tilde{r}\left(t^{*} x-\tilde{x}\right),
$$

which implies that $t^{*} x-\tilde{x} \notin \partial K$. This is a contradiction.
Next, we turn our attention to compact linear operators $T: X \rightarrow X$. The following result should be compared with Lemma B.4.3.

Lemma B.4.9 Suppose that $X$ is a real ordered Banach space with order induced by the cone $K$. If $K$ is a total cone and $T: X \rightarrow X$ is a compact linear map such that $r(T)>0$ and $T(K) \subset K$, then

$$
\tilde{r}_{K}(T)=r_{K}(T)=r(T) .
$$

Proof Clearly, $r_{K}(T) \leq \tilde{r}_{K}(T) \leq r(T)$. Thus we only need to prove $r_{K}(T) \geq r(T)$. Suppose, for the moment, that

$$
\begin{equation*}
\limsup _{n \rightarrow \infty} \frac{\left\|T^{n} x\right\|}{\left\|T^{n}\right\|}=\delta>0 \quad \text { for some } x \in X . \tag{B.13}
\end{equation*}
$$

Because $K$ is total, there exists a $y$ satisfying $\|x-y\|<\frac{\delta}{2}$ and such that $y=v-w$ for some $v, w \in K$. Then

$$
\limsup _{n \rightarrow \infty} \frac{\left\|T^{n} y\right\|}{\left\|T^{n}\right\|} \geq \frac{\delta}{2}>0 .
$$

Since $y=v-w$, by taking $u=v$ or $w$, we have

$$
\limsup _{n \rightarrow \infty} \frac{\left\|T^{n} u\right\|}{\left\|T^{n}\right\|}>0 \quad \text { for some } u \in K .
$$

Hence,

$$
r_{K}(T) \geq \limsup _{n \rightarrow \infty}\left\|T^{n} u\right\|^{1 / n} \geq \lim _{n \rightarrow \infty}\left\|T^{n}\right\|^{1 / n}=r(T)
$$

Since we always have $r_{K}(T) \leq r(T)$, we have $r_{K}(T)=r(T)$ and the lemma is proved.

It remains to prove (B.13). Assume to the contrary that

$$
\limsup _{n \rightarrow \infty} \frac{\left\|T^{n} x\right\|}{\left\|T^{n}\right\|}=0 \quad \text { for all } x \in X
$$

By the compactness of $T(B)$ where $B$ is the unit ball in $X$, there exists a finite collection of balls $\left\{B_{j}\right\}_{j=1}^{m}$ with center $x_{j}$ and radius $r(T) / 4$ such that

$$
T(B) \subset \bigcup_{j=1}^{m} B_{j} .
$$

Choose $N_{1} \in \mathbb{N}$ such that

$$
\frac{\left\|T^{n} x_{j}\right\|}{\left\|T^{n}\right\|}<\frac{r(T)}{4} \quad \text { for } n \geq N_{1}, 1 \leq j \leq m
$$

Then for any $x \in B$, we have $T x \in B_{j}$ for some $j$ so that

$$
\begin{aligned}
\left\|T^{n+1} x\right\| & \leq\left\|T^{n}\left(T x-x_{j}\right)\right\|+\left\|T^{n} x_{j}\right\| \\
& \leq\left\|T^{n}\right\|\left(\frac{r(T)}{4}+\frac{r(T)}{4}\right) \quad \text { for } n \geq N_{1}
\end{aligned}
$$

Taking supremum in $x \in B$, we deduce that $\left\|T^{n+1}\right\| \leq \frac{r(T)}{2}\left\|T^{n}\right\|$ for $n \geq N_{1}$, and hence

$$
\left\|T^{n}\right\| \leq\left(\frac{r(T)}{2}\right)^{n-N_{1}}\left\|T^{N_{1}}\right\| \quad \text { for } n \geq N_{1}
$$

Taking the $n$-th root on both sides, and letting $n \rightarrow \infty$, we obtain $r(T) \leq \frac{r(T)}{2}$, which is a contradiction to $r(T)>0$.

Theorem B.3.1 follows directly from Corollary B.4.4 and Lemma B.4.9.
Proof (of Theorem B.3.1) Since $K$ is a total cone, and $r(T)>0$, Lemma B.4.9 asserts that $\tilde{r}_{K}(T)=r(T)>0$. It then follows from Corollary B.4.4 that there exists an $\tilde{x} \in K$ with $\|\tilde{x}\|=1$ such that $T \tilde{x}=r(T) \tilde{x}$.

It remains to show the existence of an $f_{0} \in K^{*} \backslash\{0\}$ such that $T^{*} f_{0}=r(T) f_{0}$. First, it is classical that $r=r\left(T^{*}\right)=r(T)>0$. Next, we claim that

$$
\begin{equation*}
\tilde{r}_{K^{*}}\left(T^{*}\right)=r>0 \tag{B.14}
\end{equation*}
$$

Indeed, let $\tilde{x}$ be the eigenvector of $T$ as above, then $K$ and $\{-\tilde{x}\}$ are two disjoint convex subsets for which one is closed and one is compact. By the Hahn-Banach theorem [1, Theorem 1.7], the sets $K$ and $\{-\tilde{x}\}$ are strictly separated, i.e. there exists a $g \in K^{*}$ such that $\langle-\tilde{x}, g\rangle<0$. Furthermore, one has

$$
\left\langle\tilde{x},\left(T^{*}\right)^{n} g\right\rangle=\left\langle T^{n} \tilde{x}, g\right\rangle=r^{n}\langle\tilde{x}, g\rangle
$$

which implies $\tilde{r}_{K^{*}}\left(T^{*}\right) \geq r$. Since the reverse inequality $r=r\left(T^{*}\right) \geq \tilde{r}_{K}\left(T^{*}\right)$ follows by definition, we have proved (B.14).

Having proved (B.14), the existence of $f_{0} \in K^{*} \backslash\{0\}$ such that $T^{*} f_{0}=r(T) f_{0}$ follows from Corollary B.4.4.

Proof (of Theorem B.3.2) To show assertion 1, observe that the restriction of $T$ to $K$ is continuous, compact, positively homogeneous of degree one, and strongly monotone. By Corollary B.4.5, we have $\tilde{r}_{K}(T)>0$ and there exists an $\tilde{x} \in \operatorname{Int} K$ such that $T \tilde{x}=\tilde{r}_{K}(T) \tilde{x}$.

Next, observe that $r(T) \geq \tilde{r}_{K}(T)>0$, so that Lemma B.4.9 implies $\tilde{r}_{K}(T)=$ $r_{K}(T)=r(T)>0$. In particular,

$$
T \tilde{x}=r(T) \tilde{x} \quad \text { for some } \tilde{x} \in \operatorname{Int} K .
$$

By repeating the proof of Corollary B.4.5, we prove that if $x^{\prime}$ is an eigenvector corresponding to the eigenvalue $r(T)$, then $x^{\prime} \in \operatorname{span}\{\tilde{x}\}$. (Essentially, we show that $\tilde{x}-\tau x^{\prime} \in \partial K$ if and only if $x=\tau x^{\prime}$.) This proves assertion 1 .

Next, Corollary B.4.5 implies that $r(T)$ is the only eigenvalue that has a positive eigenvector. This proves assertion 3.

To show assertion 2, we first assume without loss of generality that $r(T)=1$. We need to show that there exists an $\epsilon>0$ such that $|\lambda|<1-\epsilon$ for any eigenvalue $\lambda \in \mathbb{C}$ that is distinct from 1.

It is enough to show that $|\lambda|<1$ for each eigenvalue $\lambda \in \mathbb{C}$ of $\tilde{T}$, where $\tilde{T}$ is the complexification of $T$. This is because $\tilde{T}$, being a compact linear operator, has finitely many eigenvalues in $\{z \in \mathbb{C}: 1 / 2<|z|<1\}$.

Suppose $\tilde{T} w=\lambda w$ for some $w \in \tilde{X} \backslash\{0\}$ and $\lambda \in \mathbb{C}$ such that $|\lambda|=1$. We will show that the only possibility is $\lambda=1$; i.e. we will rule out $\lambda=-1$ and $\lambda=\sigma+i \tau$ for some $\tau \neq 0$.

Suppose $\lambda=-1$. Observe that $T^{2}$ is compact, linear and $T^{2}(K \backslash\{0\}) \subset \operatorname{Int} K$, and that $T^{2} \tilde{x}=\tilde{x}$ for some $\tilde{x} \in \operatorname{Int} K$. By assertions 1 and 3, we deduce that $r\left(T^{2}\right)=1$ is a simple eigenvalue with eigenfunction $\tilde{x}$. However, $T^{2} w=T(-w)=w$, and we deduce from assertion 1 that $w \in \operatorname{span}\{\tilde{x}\}$, but then this is in contradiction with $T w=-w$. Hence, $\lambda \neq-1$.

Consider now the case $\lambda=\sigma+i \tau$ with $\tau \neq 0$ and $\sigma^{2}+\eta^{2}=1$. Then $w=u+i v$ and

$$
\begin{equation*}
T u=\sigma u-\tau v, \quad \text { and } \quad T v=\tau u+\sigma v . \tag{B.15}
\end{equation*}
$$

We observe that $u$ and $v$ must be linearly independent since $\tau \neq 0$. Let $X_{1}=$ span $\{u, v\}$. Then (B.15) implies that $T\left(X_{1}\right) \subset X_{1}$. We claim that $K_{1}:=K \cap X_{1}=\{0\}$.

Suppose to the contrary that $x_{0} \in X_{1}$ for some $x_{0} \in K \backslash\{0\}$. Then $x_{1}=T x_{0} \in$ $X_{1} \cap \operatorname{Int} K$. Hence, $X_{1} \cap \operatorname{Int} K$ is nonempty. This implies that $K_{1}$ is a solid cone in $X_{1}$. By assertion 1 applied to $T_{1}:=\left.T\right|_{X_{1}}$, we deduce that $T$ has an eigenvector in $K_{1} \backslash\{0\}$. By assertion 3, that eigenvector can only be $\tilde{x}$, i.e. $\tilde{x} \in X_{1}$. Hence, $\tilde{x}=\alpha u+\beta v$. By applying $T$ and using (B.15), we can show that $\alpha=\beta=0$, and hence $\tilde{x}=0$, this is a contradiction. Therefore, $K_{1}=\{0\}$.

From $\operatorname{span}\{u, v\} \cap K=\{0\}$ we deduce that the set

$$
\Sigma:=\left\{(\xi, \eta) \in \mathbb{R}^{2}: \tilde{x}+\xi u+\eta v \in K\right\}
$$

is bounded and closed. Roughly speaking, $T \tilde{x}=\tilde{x}, T$ is a rotation in $\Sigma$. Since $T$ is strongly monotone, it maps $\sum$ to its interior, which implies that $|\lambda|<1$.

Precisely, since $\tilde{x} \in \operatorname{Int} K$, the supremum $M:=\sup \left\{\xi^{2}+\eta^{2}:(\xi, \eta) \in \Sigma\right\}$ is positive, and is achieved at some $\left(\xi_{0}, \eta_{0}\right) \in \Sigma$. Let $z_{0}=\tilde{x}+\xi_{0} u+\eta_{0} v$. Then $z_{0} \in K \backslash\{0\}$ and $T z_{0} \in \operatorname{Int} K$. Therefore we can find $\alpha \in(0,1)$ such that $T z_{0} \geq \alpha \tilde{x}$, i.e.

$$
\begin{equation*}
(1-\alpha) \tilde{x}+\left(\xi_{1} u+\eta_{1} v\right) \geq 0 \tag{B.16}
\end{equation*}
$$

where

$$
\binom{\xi_{1}}{\eta_{1}}=\left(\begin{array}{cc}
\sigma & \tau \\
-\tau & \sigma
\end{array}\right)\binom{\xi_{0}}{\eta_{0}}=\binom{\sigma \xi_{0}+\tau \eta_{0}}{\sigma \eta_{0}-\tau \xi_{0}}
$$

Clearly

$$
\xi_{1}^{2}+\eta_{1}^{2}=\left(\sigma^{2}+\tau^{2}\right)\left(\xi_{0}^{2}+\eta_{0}^{2}\right)=M|\lambda|^{2}
$$

By (B.16), we find that $\left(\xi_{1}, \eta_{1}\right) /(1-\alpha) \in \Sigma$ and hence

$$
\xi_{1}^{2}+\eta_{1}^{2} \leq M(1-\alpha)^{2}
$$

that is,

$$
|\lambda|^{2} \leq(1-\alpha)^{2},
$$

and hence $|\lambda|<1$. We have now proved that if $\lambda$ is an eigenvalue of $T$ with modulus 1 , then necessarily $\lambda=1$. Since $T$ is compact, there are only finitely many eigenvalues with modulus greater than $1 / 2>0$. Hence, there exists an $\epsilon>0$ such that $|\lambda|<r(T)-\epsilon$ for any eigenvalue $\lambda \in \mathbb{C} \backslash\{r(T)\}$. The proof of assertion 2 is now complete.

## B. 5 Further Reading

In Lemma B.4.2, we followed the strategy of [13] to deduce the existence of a positive eigenfunction corresponding to $r_{K}(f)$ from Theorem B.4.1. The latter is a special case of [12, Theorem 2.1]. Lemma B.4.3 is due to Mallet-Paret and Nussbaum [9, Theorem 2.3]; see also [14, Theorem 4.3] for a generalization.

The original article by Krein and Rutman [8] contained theorems concerning eigenvalues of nonlinear, cone-preserving operators. The weak Krein-Rutman theorem for maps in this article (Corollary B.4.4) is a special case of the results in [9, 10], where it is generalized to noncompact maps. Also, in the case of compact maps, the completeness of $X$ or $K$ is not necessary [14, Theorem 7.8]. These generalizations can be useful for other biological situations where the solutions enjoy fewer regularity properties than reaction-diffusion models. For the main text of this monograph, the classical Krein-Rutman theorem for linear operators is sufficient. However, homogeneous maps appears naturally in biological applications in the context of sexually reproducing populations [5, 6, 7], or populations with internal nutrient storage [4, 11]. See also Problem B.5.7, which is motivated by sexually reproducing populations.

## Problems

B.5.1 Let $X$ be an ordered Banach space with the order $\leq_{K}$ induced by a cone $K \subset X$. Let $\left\{x_{n}\right\}$ and $\left\{y_{n}\right\}$ be sequences such that

$$
0 \leq_{K} x_{n} \leq_{K} y_{n} \quad \text { for all } n \in \mathbb{N} .
$$

Show that $x_{n} \rightarrow 0$ if $y_{n} \rightarrow 0$. [Hint: If $X=\mathbb{R}$ and $K=[0, \infty)$, then this is the usual squeeze theorem. Use the formal definition of a cone to prove the general case.]
B.5.2 Let $X$ be an ordered Banach space with the order $\leq_{K}$ induced by a cone $K \subset X$. Let $x_{n}$ be an increasing sequence, i.e. $x_{1} \leq_{K} x_{2} \leq_{K} x_{3} \leq_{K} \cdots$. Show that $\left\{x_{n}\right\}$ is convergent if and only if $\left\{x_{n}\right\}$ is precompact.

In Problems B.5.3 to B.5.6, we will generalize Theorem B.4.1, Lemma B.4.3, and Corollaries B.4.4 and B.4.5 to the following setting: Let $C \subset K$ be two cones in the Banach space $X$. Suppose $f: C \rightarrow C$ is compact, positively homogeneous of degree one, and is monotone with respect to the order induced by the cone $K$.
B.5.3 (Generalize Theorem B.4.1) Show that if there exists a $u \in C$ such that $\left\{\left\|f^{j}(u)\right\|\right\}_{j=1}^{\infty}$ is unbounded, then there exist $x \in C$ and $t \geq 1$ such that $\|x\|=1$ and $f(x)=t x$.
B.5.4 (Generalize Lemma B.4.3) Show that if $\tilde{r}_{C}(f)>0$, then $r_{C}(f)=\tilde{r}_{C}(f)$.
B.5.5 (Generalize Corollary B.4.4) Show that if $\tilde{r}_{C}(f)>0$, then there exists an $\tilde{x} \in C$ with $\|\tilde{x}\|=1$ such that $f(\tilde{x})=\tilde{r}_{C}(f) \tilde{x}$.
B.5.6 (Generalize Corollary B.4.5) Show that if $C$ and $K$ both have nonempty interior in $X$, and $f: C \rightarrow C$ is strongly monotone with respect to the order induced by the cone $K$, i.e.

$$
f(x) \ll_{K} f(\bar{x}) \quad \text { if } \quad x, \bar{x} \in C \text { and } x<_{K} \bar{x},
$$

then $\tilde{r}_{C}(f)>0$ and there exists an $\tilde{x} \in \operatorname{Int} K$ such that

$$
f(\tilde{x})=\tilde{r} \tilde{x} \quad \text { where } \quad \tilde{r}=\tilde{r}_{C}(f),
$$

and that whenever $f\left(x^{\prime}\right)=t^{\prime} x^{\prime}$ for some $t^{\prime}>0$ and $x^{\prime} \in C \backslash\{0\}$, it must hold that $x^{\prime} \in \operatorname{span}\{\tilde{x}\}$ and $t^{\prime}=\tilde{r}_{C}(f)$.
B.5.7 Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$. Consider the following system of parabolic equations:

$$
\begin{cases}\partial_{t} u=d_{1} \Delta U+a_{1} \frac{u v}{u+v}+b_{1} u+c_{1} v & \text { in } \Omega \times(0, \infty),  \tag{B.17}\\ \partial_{t} v=d_{2} \Delta v+a_{2} \frac{u v}{u+v}+c_{2} u+b_{2} v & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $d_{i}, a_{i}, b_{i}, c_{i} \in C^{\alpha, \alpha / 2}(\bar{\Omega} \times[0, \infty))$ are $T$-periodic in $T$. Moreover, $d_{i}, c_{i}>0$ and $a_{i} \geq 0$ in $\bar{\Omega} \times[0, \infty)$. Define

$$
X=C\left(\bar{\Omega} ; \mathbb{R}^{2}\right), \quad K=C\left(\bar{\Omega} ; \mathbb{R}_{+}^{2}\right)
$$

and consider the map $f: K \rightarrow K$ given by

$$
\left(u_{0}, u_{0}\right) \mapsto(u(\cdot, T), u(\cdot, T)) .
$$

Show that $f$ satisfies the hypotheses of Corollary B.4.5. Hence, the Bonsall cone spectral radius $\tilde{r}=\tilde{r}_{K}(f)$ is positive, and there exists $(\tilde{u}, \tilde{v}) \in \operatorname{Int} K$ such that $f(\tilde{u}, \tilde{v})=\tilde{r}(\tilde{u}, \tilde{v})$. In other words, let $\tilde{\lambda}=\frac{1}{T} \log \tilde{r}$, then

$$
\begin{cases}\partial_{t} u=d_{1} \Delta U+a_{1} \frac{u v}{u+v}+b_{1} u+c_{1} v+\tilde{\lambda} u & \text { in } \Omega \times(0, \infty), \\ \partial_{t} v=d_{2} \Delta v+a_{2} \frac{u v}{u+v}+c_{2} u+b_{2} v+\tilde{\lambda} v & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty)\end{cases}
$$

has a positive $T$-periodic solution.

## References

1. H. Brezis, Functional analysis, Sobolev spaces and partial differential equations, Universitext, Springer, New York, 2011.
2. J. Dugundin, An extension of Tietze's theorem, Pacific J. Math., 1 (1951), pp. 353-367.
3. J. Dugundji, Topology, Allyn and Bacon, Inc., Boston, Mass., 1966.
4. S.-B. Hsu, K.-Y. Lam, and F.-B. Wang, Single species growth consuming inorganic carbon with internal storage in a poorly mixed habitat, J. Math. Biol., 75 (2017), pp. 1775-1825.
5. W. Jin, H. L. Smith, and H. R. Thieme, Persistence and critical domain size for diffusing populations with two sexes and short reproductive season, J. Dynam. Differential Equations, 28 (2016), pp. 689-705.
6. W. Jin and H. Thieme, An extinction/persistence threshold for sexually reproducing populations: the cone spectral radius, Discrete Contin. Dyn. Syst. Ser. B, 21 (2016), pp. 447-470.
7. W. Jin and H. R. Thieme, Persistence and extinction of diffusing populations with two sexes and short reproductive season, Discrete Contin. Dyn. Syst. Ser. B, 19 (2014), pp. 3209-3218.
8. M. G. Krein and M. A. Rutman, Linear operators leaving invariant a cone in a Banach space, Amer. Math. Soc. Translation, 1950 (1950), p. 128.
9. J. Mallet-Paret and R. D. Nussbaum, Eigenvalues for a class of homogeneous cone maps arising from max-plus operators, Discrete Contin. Dyn. Syst., 8 (2002), pp. 519-562.
10. , Generalizing the Krein-Rutman theorem, measures of noncompactness and the fixed point index, J. Fixed Point Theory Appl., 7 (2010), pp. 103-143.
11. H. Nie, S.-B. Hsu, and F.-B. Wang, Steady-state solutions of a reaction-diffusion system arising from intraguild predation and internal storage, J. Differential Equations, 266 (2019), pp. 8459-8491.
12. R. D. Nussbaum, Eigenvectors of nonlinear positive operators and the linear Kreřn-Rutman theorem, in Fixed point theory (Sherbrooke, Que., 1980), vol. 886 of Lecture Notes in Math., Springer, Berlin-New York, 1981, pp. 309-330.
13. $\qquad$ The fixed point index and some applications, vol. 94 of Séminaire de Mathématiques Supérieures [Seminar on Higher Mathematics], Presses de l’Université de Montréal, Montreal, QC, 1985.
14. H. R. Thieme, Discrete-time population dynamics on the state space of measures, Math. Biosci. Eng., 17 (2020), pp. 1168-1217.

## Appendix C Subhomogeneous Dynamics

> Abstract We discuss a threshold type result concerning strictly subhomogeneous maps, and its continuous-time counterpart. These results are often applicable to models of a single species, or a group of cooperating species. Examples include the diffusive logistic equation discussed in Chapter 5, and the single phytoplankton model discussed in Chapter 8.

Let $X$ be an ordered Banach space with the order induced by a solid cone $K$. If $x, \bar{x} \in X$, then we write

$$
x \leq_{K} \bar{x} \quad\left(\text { resp. } \quad x<_{K} \bar{x}, \quad x \ll_{K} \bar{x}\right)
$$

provided that

$$
\bar{x}-x \in K \quad(\text { resp. } \quad \bar{x}-x \in K \backslash\{0\}, \quad \bar{x}-x \in \operatorname{Int} K) .
$$

## C. 1 Subhomogeneous Maps

In this section, we discuss a threshold type result concerning strictly subhomogeneous maps. As before, let $X$ be an ordered Banach space with order generated by a solid cone $K$. Next, let $C \subset K$ be a closed cone (possibly equal to $K$ ) and $S: C \rightarrow C$ be a continuous map. We first state our assumptions on the map $S$.
(S1) $S(0)=0$ and $S$ is strongly monotone with respect to $K$, i.e.

$$
S\left(x_{1}\right) \ll_{K} S\left(x_{2}\right) \quad \text { if } \quad x_{1}, x_{2} \in C, \text { and } x_{1}<_{K} x_{2} ;
$$

(S2) $\left\{S^{n}(x)\right\}_{n=1}^{\infty}$ is precompact for each $x \in K$;
(S3) $S$ is strictly subhomogeneous, i.e.

$$
\lambda S(x)<_{K} S(\lambda x) \quad \text { for all } x \in C \cap \operatorname{Int} K, 0<\lambda<1 ;
$$

(S4) There exists a compact map $f: C \rightarrow C$ such that

$$
\lim _{\lambda \rightarrow 0+} \frac{1}{\lambda} S(\lambda x)=f(x) \quad \text { pointwise for each } x \in C
$$

We may also replace (S4) by the following.
(S5) $S: C \rightarrow C$ is compact and is Fréchet differentiable at zero.
Remark C.1.1 (S5) implies (S4). Indeed, if $S$ is compact and differentiable at zero, it follows that $D S(0): X \rightarrow X$ is compact.

In the problems section, we give some examples of population models that satisfy (S1)-(S3) and one of (S4) and (S5).

Lemma C.1.2 Suppose $S: C \rightarrow C$ is a continuous mapping satisfying (S1)-(S4), and let $f: C \rightarrow C$ be given by (S4). Then

1. $f$ is positively homogeneous of degree one, i.e. $f(\lambda x)=\lambda f(x)$ for $x \in C, \lambda \geq 0$;
2. $f$ is monotone with respect to $K$;
3. $f(x)>_{K} S(x)$ for all $x \in C \backslash\{0\}$;
4. $f(x) \gg_{K} 0$ for all $x \in C \backslash\{0\}$;
5. $\tilde{r}_{C}(f)>0$, and there exists an $\tilde{x} \in C \cap \operatorname{Int} K$ such that $f(\tilde{x})=\tilde{r}_{C}(f) \tilde{x}$.

Here $\tilde{r}_{C}(f)$ is the Bonsall cone spectral radius given in (B.3).
Proof Assertion 1 follows directly from the definition of $f$ in (S4). For assertion 2, let $x_{1}<_{K} x_{2}$. It follows from the monotonicity of $S$ that

$$
f\left(x_{1}\right)=\lim _{\lambda \rightarrow 0} \frac{1}{\lambda} S\left(\lambda x_{1}\right) \leq_{K} \lim _{\lambda \rightarrow 0} \frac{1}{\lambda} S\left(\lambda x_{1}\right)=f\left(x_{2}\right) .
$$

Next, we observe that by (S3),

$$
f(x) \geq_{K} \frac{1}{\lambda} S(\lambda x)>_{K} S(x) \quad \text { for all } 0<\lambda<1
$$

In particular,

$$
\begin{equation*}
f(x)>_{K} S(x) \gg_{K} 0 \quad \text { for all } x \in C \backslash\{0\} . \tag{C.1}
\end{equation*}
$$

Hence, there exist $x_{1} \in C \backslash\{0\}$ and $c_{1}>0$ such that $f\left(x_{1}\right) \geq_{K} c_{1} x_{1}$. We claim that $\tilde{r}_{C}(f)>0$. Otherwise,

$$
\tilde{r}_{C}\left(f / c_{1}\right)=\frac{1}{c_{1}} \tilde{r}_{C}(f)=0
$$

and

$$
x_{1} \leq_{K}\left(f / c_{1}\right)^{n}\left(x_{1}\right) \rightarrow 0
$$

This implies $x_{1} \in C \cap(-K)$, which means $x_{1}=0$, which is a contradiction. Hence, $\tilde{r}_{C}(f)>0$. This proves assertions 3 and 4.

Finally, we apply Corollary B.4.4 (see Problem B.5.4) to obtain $\tilde{x} \in C \backslash\{0\}$ such that $f(\tilde{x})=\tilde{r}_{C}(f) \tilde{x}$. By (C.1), $\tilde{x} \gg_{K} 0$. This proves assertion 5.

Theorem C.1.3 Suppose $S: C \rightarrow C$ is a continuous mapping satisfying (S1)-(S4). Then the following dichotomy holds:

1. If $\tilde{r}_{C}(f) \leq 1$, then $S^{n}(x) \rightarrow 0$ for each $x \in C$.
2. If $\tilde{r}_{C}(f)>1$, then $S$ has a unique fixed point $x^{*} \in C \cap \operatorname{Int} K$, and $S^{n}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.

Here $\tilde{r}_{C}(f)>0$ is the Bonsall spectral radius of the function $f: C \rightarrow C$ given by (S4).

If we replace hypothesis (S4) by (S5), we obtain a result contained in [14, Chap. 2].
Corollary C.1.4 Suppose $S: C \rightarrow C$ is a continuous mapping satisfying (S1)-(S3) and (S5). Then the following dichotomy holds:

1. If $r(D S(0)) \leq 1$, then $S^{n}(x) \rightarrow 0$ for each $x \in C$.
2. If $r(D S(0))>1$, then $S$ has a unique fixed point $x^{*} \in C \cap \operatorname{Int} K$, and $S^{n}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.

Here $D S(0): X \rightarrow X$ is the Fréchet derivative of $S$ at zero, and $r(D S(0))$ is its spectral radius.

Before giving the proof of Theorem C.1.3, we give a corollary that is easier to use.
Corollary C.1.5 Suppose $S: C \rightarrow C$ is a continuous mapping satisfying (S1)-(S3). If, in addition, one of (S4), (S5) holds, then exactly one of the following alternatives hold:

1. $S$ has no fixed points in $C \cap \operatorname{Int} K$. In this case $S^{n}(x) \rightarrow 0$ for each $x \in C \backslash\{0\}$.
2. There exists an $x_{0} \in C \backslash\{0\}$ such that $S\left(x_{0}\right) \geq_{K} x_{0}$. In this case, $S$ has a unique fixed point $x^{*} \in C \cap \operatorname{Int} K$, and $S^{n}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.

Proof (of Corollary C.1.5) First, suppose $S$ has no fixed points in $C \cap \operatorname{Int} K$, then alternative 1 of Theorem C.1.3 must hold, i.e., $\tilde{r}_{C}(f) \leq 1$ and 0 attracts all solutions.

Next, suppose $S\left(x_{0}\right) \geq_{K} x_{0}$ for some $x_{0} \in C \backslash\{0\}$, then $S^{n}\left(x_{0}\right) \geq_{K} S^{1}\left(x_{0}\right) \gg_{K} 0$, so $S^{n}\left(x_{0}\right) \nrightarrow 0$. This implies alternative 2 of Theorem C.1.3 holds.

Now, we give the proof of Theorem C.1.3.
Proof (of Theorem C.1.3) Suppose $\tilde{r}_{C}(f) \leq 1$, then by items 1, 3 and 5 of Lemma C.1.2, there exists an $\tilde{x} \in C \cap \operatorname{Int} K$ such that

$$
\begin{equation*}
S(t \tilde{x})<_{K} f(t \tilde{x}) \leq_{K} t \tilde{x} \quad \text { for all } t>0 \tag{С.2}
\end{equation*}
$$

We claim that $S$ has no fixed points in $C \backslash\{0\}$. Suppose to the contrary that $S\left(x_{0}\right)=x_{0}$ for some $x_{0} \in C \backslash\{0\}$. Then (C.2) implies $x_{0} \notin \operatorname{span}\{\tilde{x}\}$. Since $\tilde{x} \in \operatorname{Int} K$ and $-x_{0} \notin K$, we may choose a minimal $t_{0}>0$ such that $t_{0} \tilde{x}-x_{0} \in \partial K \backslash\{0\}$, so that

$$
x_{0}=S\left(x_{0}\right) \ll_{K} S\left(t_{0} \tilde{x}\right)<t_{0} \tilde{x}
$$

This is a contradiction. Hence $S$ has no non-zero fixed points in $C$.

Next, observe from (C.2) that $S^{n}(t \tilde{x})$ is strictly decreasing in $n$. In the absence of nonzero fixed points, we must have $S^{n}(t \tilde{x}) \rightarrow 0$, for each $t>0$. Hence, given $x \in C$, choose $t$ such that $0 \leq_{K} x \leq_{K} t \tilde{x}$. By the monotonicity of $S$, we have $0 \leq_{K} S^{n}(x) \leq_{K} S^{n}(t \tilde{x})$. We can then let $n \rightarrow \infty$ to deduce that $S^{n}(x) \rightarrow 0$. This proves assertion 1 .

Suppose now that $\tilde{r}_{C}(f)>1$. By Lemma C.1.2, there exists an $\tilde{x} \in C \cap \operatorname{Int} K$ such that

$$
f(\tilde{x})=\tilde{r}_{C}(f) \tilde{x} \gg_{K} \tilde{x}
$$

By definition of $f$, there exists $0<\tilde{\lambda}<1$ such that

$$
\begin{equation*}
S(\tilde{\lambda} \tilde{x}) \geq_{K} \tilde{\lambda} \tilde{x} \tag{С.3}
\end{equation*}
$$

In particular, $S^{n}(\tilde{\lambda} \tilde{x})$ is increasing in $n$. By (S3), $S^{n}(\tilde{\lambda} \tilde{x}) \rightarrow x^{*}$ for some $x^{*} \in$ $C \cap \operatorname{Int} K$. By arguing as above, $x^{*}$ is the unique fixed point in $C \cap \operatorname{Int} K$.

Next, observe that (S3) implies that

$$
S\left(\lambda x^{*}\right)>_{K} \lambda x^{*} \quad \text { for } 0<\lambda<1, \quad S\left(\lambda x^{*}\right)<_{K} \lambda x^{*} \quad \text { for } \lambda>1 .
$$

In particular, $S^{n}\left(\lambda x^{*}\right)$ is increasing (resp. decreasing) in $n$ if $0<\lambda<1$ (resp. $\lambda>1$ ). Hence, by (S2) they must converge to a fixed point of $S$ as $n \rightarrow \infty$ (see Problem C.3.1). Since $x^{*}$ is the unique positive fixed point, we have

$$
S^{n}\left(\lambda x^{*}\right) \rightarrow x^{*} \quad \text { for any } \lambda>0 .
$$

Given $x \in C \cap \operatorname{Int} K$, we claim that $S^{n}(x) \rightarrow x^{*}$. Indeed, choose $\underline{c}<1<\bar{c}$ such that $\underline{c} x^{*} \leq_{K} x \leq_{K} \bar{c} x^{*}$, then $S^{n}\left(\underline{c} x^{*}\right) \leq_{K} S^{n}(x) \leq_{K} S^{n}\left(\bar{c} x^{*}\right)$ for all $n \geq 1$. Letting $n \rightarrow \infty$, we have $S^{n}(x) \rightarrow x^{*}$.

In general, given $x \in C \backslash\{0\}$, we have $S(x) \in C \cap \operatorname{Int} K$, so it again follows that $S^{n}(x) \rightarrow x^{*}$. This fixed point $x^{*}$ must then be unique in $C \backslash\{0\}$. This proves assertion 2.

## C. 2 Subhomogeneous Semiflows

We now formulate a continuous-time version of the results in the previous section. Let $C$ be a closed cone satisfying $C \subset K$, and let $\Phi:[0, \infty) \times C \rightarrow C$ be a continuous semiflow. We write $\Phi_{t}(x)=\Phi(t, x)$. The semiflow properties are (i) $\Phi_{0}(x)=x$ for all $x \in C$, and (ii) $\Phi_{t} \circ \Phi_{s}=\Phi_{t+s}$ for all $t, s \geq 0$.

In this section, we discuss a threshold type result concerning strictly subhomogeneous semiflows. As before, let $X$ be an ordered Banach space with order generated by a solid cone $K$. We first state the assumptions on the semiflow $\Phi_{t}: C \rightarrow C$.
(S1') For each $t>0, \Phi_{t}(0)=0$ and $\Phi_{t}$ is strongly monotone with respect to $K$, i.e.

$$
\Phi_{t}\left(x_{1}\right) \ll_{K} \Phi_{t}\left(x_{2}\right) \quad \text { if } \quad x_{1}, x_{2} \in C \text { and } x_{1}<_{K} x_{2} ;
$$

(S2') For each $x \in C,\left\{\Phi_{t}(x): t>0\right\}$ is precompact;
(S3') $\Phi_{t}$ is strictly subhomogeneous, i.e.

$$
\lambda \Phi_{t}(x)<_{K} \Phi_{t}(\lambda x) \quad \text { for all } x \in C \cap \operatorname{Int} K, 0<\lambda<1, t>0
$$

(S4') For each $t>0$, there exists a compact map $f_{t}: C \rightarrow C$ such that

$$
\lim _{\lambda \rightarrow 0+} \frac{1}{\lambda} \Phi_{t}(\lambda x)=f_{t}(x) \quad \text { for each } x \in C
$$

(S5') For each $t>0, \Phi_{t}: C \rightarrow C$ is compact and Fréchet differentiable at zero for each $t>0$.

Note that (S5') implies (S4').
Theorem C.2.1 Suppose $\Phi_{t}: C \rightarrow C$ is a continuous semiflow satisfying (S1')(S4'). Then the following dichotomy holds:

1. If $\tilde{r}_{C}\left(f_{1}\right) \leq 1$, then $\Phi_{t}(x) \rightarrow 0$ for each $x \in C$.
2. If $\tilde{r}_{C}\left(f_{1}\right)>1$, then $\Phi_{t}$ has a unique equilibrium $x^{*} \in C \cap \operatorname{Int} K$, and $\Phi_{t}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.
Here $\tilde{r}_{C}\left(f_{1}\right)>0$ is the Bonsall spectral radius of the function $f_{1}: C \rightarrow C$ given by (S4').

Corollary C.2.2 Suppose $\Phi_{t}: C \rightarrow C$ is a continuous semiflow satisfying (S1')(S3') and (S5'). Then the following dichotomy holds:

1. If $r\left(D \Phi_{1}(0)\right) \leq 1$, then $\Phi_{t}(x) \rightarrow 0$ for each $x \in C$;
2. If $r\left(D \Phi_{1}(0)\right)>1$, then $\Phi_{t}$ has a unique equilibrium $x^{*} \in C \cap \operatorname{Int} K$, and $\Phi_{t}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.
Here $D \Phi_{1}(0): X \rightarrow X$ is the Fréchet derivative of $\Phi_{1}$ at zero, and $r\left(D \Phi_{1}(0)\right)$ is its spectral radius.

Proof (of Theorem C.2.1) Let $S=\Phi_{1}$. If $\tilde{r}_{C}\left(f_{1}\right) \leq 1$, then it follows from Theorem C.1.3 that $S^{n}(x) \rightarrow 0$ for all $x$. By continuous dependence of parameter, we have $\Phi_{t}(x) \rightarrow 0$ for all $x$. In fact, we observe that $\tilde{r}_{C}\left(f_{2^{-m}}\right) \leq 1$ for some $m$ implies $\Phi_{t}(x) \rightarrow 0$ as $t \rightarrow \infty$.

If $\tilde{r}_{C}\left(f_{1}\right)>1$, then it follows that $\tilde{r}_{C}\left(f_{2^{-m}}\right)>1$ for all $m \geq 1$. By Theorem C.1.3, for each $m \geq 1$, the map $S_{m}=\Phi_{2-m}$ has a unique positive fixed point $x_{m}^{*} \in C \cap \operatorname{Int} K$. Since $S_{m+1} \circ S_{m+1}=S_{m}$, we deduce that $x^{*}=x_{m}^{*}$ is independent of $m$, i.e. it is an equilibrium of $\Phi_{t}$. Since

$$
\lim _{n \rightarrow \infty} \Phi_{n / 2^{m}}(x)=\lim _{n \rightarrow \infty}\left(S_{m}\right)^{n}(x)=x^{*} \quad \text { for each } x \in C \backslash\{0\}
$$

it is straightforward to see that $\Phi_{t}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.

Similarly, we have the following useful corollary.
Corollary C.2.3 Suppose $\Phi_{t}: C \rightarrow C$ is a continuous semiflow satisfying (S1')(S3'). If, in addition, either (S4') or (S5') holds, then exactly one of the following alternatives hold:

1. $\Phi_{t}$ has no equilibrium points in $C \cap \operatorname{Int} K$. In this case $\Phi_{t}(x) \rightarrow 0$ for each $x \in C \backslash\{0\}$.
2. There exists an $x_{0} \in C \backslash\{0\}$ such that $\Phi_{t}\left(x_{0}\right) \geq_{K} x_{0}$ for all $t>0$. In this case, $S$ has a unique equilibrium $x^{*} \in C \cap \operatorname{Int} K$, and $\Phi_{t}(x) \rightarrow x^{*}$ for each $x \in C \backslash\{0\}$.

## C. 3 Further Reading

Early results on concave maps can be traced to the work of Krasnoselskii [4, 5, 6]. See also Thieme [11]. Hirsch [1] and Smith [9] proved convergence for monotone and concave maps, which was subsequently extended to global convergence for subhomogeneous and strongly monotone maps by Takáč [10]. Further progress was obtained by Hirsch [2] and Zhao [13]. See also Jiang [3] and Wang [12]. We refer the interested readers to the monographs [14, Chap. 2] and [7] in which a more complete account of the discrete-time results is presented.

Corollary C.1.4 can be found in [13, Theorem 2.3], which is adequate for most applications. Theorem C.1.3 is a simple extension which can be applied to subhomogeneous maps $S$ for which the limit $f(x)=\lim _{\lambda \rightarrow 0} \frac{1}{\lambda} S(\lambda x)$ exists, but fails to be continuously differentiable at zero. See Problem C.3.3 for an example where Theorem C.1.3 is applied to a parabolic problem with T-periodic coefficients, for which the associated map $S$ is not differentiable at zero.

## Problems

C.3.1 Let $X$ be an ordered Banach space with the order $\leq_{K}$ induced by a cone $K \subset X$, and let $S: K \rightarrow K$ be a map. Suppose there is an $x_{0}$ such that $S\left(x_{0}\right) \geq_{K} x_{0}$ and that $\left\{S^{n}\left(x_{0}\right)\right\}_{n=1}^{\infty}$ is precompact, show that $S^{n}\left(x_{0}\right)$ converges to a fixed point of $S$ as $n \rightarrow \infty$.
C.3.2 Consider the logistic equation

$$
\begin{cases}\partial_{t} u=\Delta u+u g(x, t, u) & \text { in } \Omega \times(0, \infty),  \tag{С.4}\\ \mathbf{n} \cdot \nabla u=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\Omega$ is a bounded smooth domain, and $g \in C^{\infty}(\bar{\Omega} \times[0, \infty) \times[0, \infty))$ satisfies

$$
\left\{\begin{array}{l}
u \mapsto g(x, t, u) \text { is strictly decreasing, } \\
\text { there exists } M>0 \text { such that } g(x, t, s)<0 \text { for } s \geq M
\end{array}\right.
$$

Let $X=C(\bar{\Omega}), C=K=\left\{u_{0} \in X: u_{0} \geq 0\right\}$.
(a) If $g(x, t, s)$ is $T$-periodic in time, then the map $S: C \rightarrow C$ given by

$$
S\left(u_{0}\right)=u(\cdot, T)
$$

satisfies (S1)-(S3) and (S5).
(b) If $g(x, t, s)$ is independent of time, then the semiflow $\Phi_{t}: C \rightarrow C$ given by

$$
\Phi_{t}\left(u_{0}\right)=u(\cdot, t)
$$

satisfies (S1')-(S3') and (S5').
C.3.3 Let $\Omega$ be a bounded domain in $\mathbb{R}^{N}$ with smooth boundary $\partial \Omega$. Consider the following system of parabolic equations:

$$
\begin{cases}\partial_{t} U=d_{1} \Delta U+a_{1} \frac{U V}{U+V}+b_{1} U+c_{1} V-U^{2} & \text { in } \Omega \times(0, \infty),  \tag{C.5}\\ \partial_{t} V=d_{2} \Delta V+a_{2} \frac{U V}{U+V}+c_{2} U+b_{2} V-V^{2} & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla U=\mathbf{n} \cdot \nabla V=0 & \text { on } \partial \Omega \times(0, \infty), \\ U(x, 0)=U_{0}(x), \quad V(x, 0)=V_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $d_{i}, a_{i}, b_{i}, c_{i} \in C^{\alpha, \alpha / 2}(\bar{\Omega} \times[0, \infty))$ are $T$-periodic in $T$. Moreover, $d_{i}, c_{i}>0$ and $a_{i} \geq 0$ in $\bar{\Omega} \times[0, \infty)$. Define

$$
X=C\left(\bar{\Omega} ; \mathbb{R}^{2}\right), \quad C=K=C\left(\bar{\Omega} ; \mathbb{R}_{+}^{2}\right)
$$

and consider the map $S: C \rightarrow C$ given by

$$
\left(U_{0}, V_{0}\right) \mapsto(U(\cdot, T), V(\cdot, T)) .
$$

Verify the hypotheses (S1)-(S4).
[Hint: For (S2), use the fact that $S(M, M) \leq_{K}(M, M)$ for all $M \gg 1$. For (S4'), observe that $f(\cdot)=\lim _{\lambda \rightarrow 0+} \frac{1}{\lambda} S(\lambda \cdot)$ exists. In fact, $f: C \rightarrow C$ is given by

$$
f\left(u_{0}, v_{0}\right)=(u(\cdot, T), v(\cdot, T))
$$

where ( $u, v$ ) is the solution of (B.17) with initial data ( $u_{0}, v_{0}$ ). By Problem B.5.7, $f$ is compact and monotone with respect to $C$. Note that (S5) does not hold.]
C.3.4 The following model of a single phytoplankton population was proposed by Shigesada and Okubo (see Chapter 8 for the biological background) [8].

$$
\begin{cases}\partial_{t} u=\partial_{x x} u+g\left(\mathrm{e}^{-\int_{0}^{x} u(y, t) \mathrm{d} y}\right) u-d u & \text { for } x \in[0, L], t>0  \tag{C.6}\\ \partial_{x} u=0 & \text { for } x=0, L, t>0 \\ u(x, 0)=u_{0}(x), & \end{cases}
$$

where $L, d$ are positive constants and $g(s)=\frac{a s}{b+s}$ for some $a, b>0$. Define

$$
X=C([0, L] ; \mathbb{R}), \quad C=C\left([0, L] ; \mathbb{R}_{+}\right)
$$

and

$$
K=\left\{u_{0} \in C([0, L]): \int_{0}^{x} u_{0}(y) \mathrm{d} y \geq 0 \text { for all } x \in[0, L]\right\}
$$

It is proved in Chapter 8 (Propositions 8.1.1 and 8.2.2) that (C.6) generates a semiflow $\Phi_{t}: C \rightarrow C$, which is strongly monotone with respect to the order induced by the cone $K$. In this case, $C$ is a proper subset of $K$. Show that $\Phi_{t}$ satisfies (S1')-(S3') and (S5').

## References

1. M. W. Hirsch, The dynamical systems approach to differential equations, Bull. Amer. Math. Soc. (N.S.), 11 (1984), pp. 1-64.
2. ,-, Positive equilibria and convergence in subhomogeneous monotone dynamics, in Comparison methods and stability theory (Waterloo, ON, 1993), vol. 162 of Lecture Notes in Pure and Appl. Math., Dekker, New York, 1994, pp. 169-188.
3. J. F. Jinng, Sublinear discrete-time order-preserving dynamical systems, Math. Proc. Cambridge Philos. Soc., 119 (1996), pp. 561-574.
4. M. A. Krasnosel'skii, Positive solutions of operator equations, Noordhoff, Groningen, (1964).
5. , The operator of translation along the trajectories of differential equations, Translations of Mathematical Monographs, Vol. 19, American Mathematical Society, Providence, R.I., 1968. Translated from the Russian by Scripta Technica.
6. M. A. Krasnosel'skii and V. Y. Stetsenko, Toward a theory of equation with concave operations, Siberian Mathematical Journal, 10 (1969), pp. 405-410.
7. U. Krause, Positive dynamical systems in discrete time, vol. 62 of De Gruyter Studies in Mathematics, De Gruyter, Berlin, 2015. Theory, models, and applications.
8. N. Shigesada and A. Okubo, Analysis of the self-shading effect on algal vertical distribution in natural waters, J. Math. Biol., 12 (1981), pp. 311-326.
9. H. L. Smith, Cooperative systems of differential equations with concave nonlinearities, Nonlinear Anal., 10 (1986), pp. 1037-1052.
10. P. TAKÁČ, Asymptotic behavior of discrete-time semigroups of sublinear, strongly increasing mappings with applications to biology, Nonlinear Anal., 14 (1990), pp. 35-42.
11. H. R. Thieme, On a class of Hammerstein integral equations, Manuscripta Math., 29 (1979), pp. 49-84.
12. Y. Wang, Convergence to periodic solutions in periodic quasimonotone reaction-diffusion systems, J. Math. Anal. Appl., 268 (2002), pp. 25-40.
13. X.-Q. Zhao, Global attractivity and stability in some monotone discrete dynamical systems, Bull. Austral. Math. Soc., 53 (1996), pp. 305-324.
14. —, Dynamical systems in population biology, CMS Books in Mathematics/Ouvrages de Mathématiques de la SMC, Springer, Cham, second ed., 2017.

# Appendix D Existence of Connecting Orbits 


#### Abstract

We prove the Dancer-Hess lemma concerning the existence of a heteroclinic orbit between two ordered equilibria.


While monotone methods and comparison arguments have long been applied in the study of differential equations [8], their synthesis with dynamical systems originate from the works of Hirsch [3, 4, 5, 6] and Matano [9, 10, 11]. An important result was the Dancer-Hess lemma, which asserts the existence of a connecting orbit between two ordered equilibria. Used in conjunction with the comparison principle, the existence of a heteroclinic orbit implies that the long time dynamics are determined by the presence/absence of equilibria, to a certain extent.

Let $X$ be an ordered Banach space with the order induced by a positive cone $K$. If $x, \bar{x} \in X$, then we write

$$
x \leq_{K} \bar{x} \quad\left(\text { resp. } \quad x<_{K} \bar{x}, \quad x \ll_{K} \bar{x}\right)
$$

provided

$$
\bar{x}-x \in K \quad(\text { resp. } \quad \bar{x}-x \in K \backslash\{0\}, \quad \bar{x}-x \in \operatorname{Int} K) .
$$

## D. 1 Discrete-Time Monotone Dynamical Systems

Definition D.1.1 Let $C$ be a convex subset of $X$, and consider a map $S: C \rightarrow C$.

1. $S$ is said to be monotone if $x<_{K} \bar{x}$ implies $S(x) \leq_{K} S(\bar{x})$.
2. $S$ is said to be strictly monotone if $x<_{K} \bar{x}$ implies $S(x)<_{K} S(\bar{x})$.
3. $S$ is said to be strongly monotone if $x<_{K} \bar{x}$ implies $S(x) \ll_{K} S(\bar{x})$.

An element $x \in C$ is called a subequilibrium (resp. a strict subequilibrium) for the fixed point equation $S(u)=u$ provided $x \leq_{K} S(x)$ (resp. $x<_{K} S(x)$ ). An element $y \in C$ is called superequilibrium or strict superequilibrium if the above inequalities are reversed. Assume that $u_{1}, u_{2}$ are respectively subequilibrium and superequilibrium such that $u_{1}<u_{2}$, and that

$$
\tilde{I}:=\left[u_{1}, u_{2}\right]=\left\{x \in C: u_{1} \leq_{K} x \leq_{K} u_{2}\right\} .
$$

Then $S$ maps $\tilde{I}$ into itself.
Finally, we say that $S$ is order compact if the set $S\left(\left[x_{1}, x_{2}\right]\right)$ has compact closure in $X$ for every $x_{1}<_{K} x_{2}$.

Lemma D.1.2 Suppose $S: C \rightarrow C$ is order compact and strictly monotone. Assume that $u_{1}, u_{2} \in C$ are respectively strict subequilibrium and strict superequilibrium such that $u_{1}<u_{2}$. Define the sequences $\left\{x_{n}\right\}$ and $\left\{y_{n}\right\}$ by

$$
x_{n}=S^{n}\left(u_{1}\right) \quad \text { and } \quad y_{n}=S^{n}\left(u_{2}\right) \quad \text { for } n \in \mathbb{N} \text {. }
$$

Then $\left\{x_{n}\right\}$ is an increasing sequence converging to the minimal fixed point $\underline{E}$ in $\tilde{I}$, while $\left\{y_{n}\right\}$ is a decreasing sequence converging to the maximal fixed point $\overline{\bar{E}}$ in $\tilde{I}$. For each $n$, the elements $x_{n}$ and $y_{n}$ are respectively strict sub- and superequilibria.

Proof Clearly, $x_{n+1} \geq_{K} x_{n}$ for all $n \geq 0$. We prove the convergence of the sequence $\left\{x_{n}\right\}$. Suppose it is not convergent. By the compactness of the mapping $S$, we can find two convergent subsequences $n_{k}$ and $n_{k}^{\prime}$ such that $x_{n_{k}} \rightarrow x$ and $x_{n_{k}}^{\prime} \rightarrow x^{\prime}$ with $x \neq x^{\prime}$. Moreover, we can assume without loss of generality that

$$
n_{k} \leq n_{k}^{\prime} \leq n_{k+1} \quad \text { for all } k
$$

By the monotonicity of the whole sequence $\left\{x_{n}\right\}$, we have

$$
x_{n_{k}} \leq_{K} \quad x_{n_{k}^{\prime}} \leq_{K} \quad x_{n_{k+1}} \quad \text { for all } k
$$

Letting $k \rightarrow \infty$, we deduce that

$$
x \leq_{K} x^{\prime} \leq_{K} x, \quad \text { i.e. } \quad x-x^{\prime} \in K \cap(-K),
$$

where we used the closedness of $K$. Since $K \cap(-K)=\{0\}$, this implies $x=x^{\prime}$. This is a contradiction. Thus $\underline{E}=\lim _{n \rightarrow \infty} x_{n}$ is well-defined.

By letting $n \rightarrow \infty$ in $x_{n+1}=S\left(x_{n}\right)$, we deduce that $\underline{E}=S(\underline{E})$, i.e. $\underline{E}$ is a fixed point. Similarly, $\bar{E}=\lim _{n \rightarrow \infty} y_{n}$ is well-defined and is a fixed point.

To see that $\underline{E}$ (resp. $\bar{E}$ ) is the minimal (resp. maximal) fixed point in $\tilde{I}$, let $E^{*} \in \tilde{I}$ be an arbitrary fixed point, then $u_{1}<_{K} E^{*}<_{K} u_{2}$ as $u_{i}$ are not fixed points. By the order-preserving property of $S$, we have

$$
x_{n}=S^{n}\left(u_{1}\right) \leq_{K} E^{*} \leq_{K} S^{n}\left(u_{2}\right)=y_{n} .
$$

Letting $n \rightarrow \infty$, we have $\underline{E} \leq_{K} E^{*} \leq_{K} \bar{E}$. This completes the proof.
The next result, due to [7, Proposition 2.1], is a version of a result of Dancer and Hess [1, Proposition]; see also [2, Proposition 2.1].

Lemma D.1.3 (Existence of a connecting orbit) Let $u_{1}, u_{2} \in C$ be isolated fixed points of the strictly monotone continuous mapping $S: C \rightarrow C$, such that $u_{1}<_{K} u_{2}$. Define

$$
\tilde{I}:=\left[u_{1}, u_{2}\right]_{K}=\left\{x \in C: u_{1} \leq_{K} x \leq_{K} u_{2}\right\} .
$$

Suppose that $S(\tilde{I})$ has compact closure in $\tilde{I}$, and that there is a finite set of fixed points $\Theta \subset \tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$ (possibly empty) such that every $\theta \in \Theta$ satisfies
(i) $S^{n}(x) \nrightarrow \theta$ as $n \rightarrow \infty$ for each $x \in \tilde{I}$ such that $x<_{K} \theta$ or $x>_{K} \theta$;
(ii) $\theta$ is an isolated fixed point of $S$, and $i\left(S, B_{\delta}\left(E_{0}\right), \tilde{I}\right)=0$ for all small $\delta>0$. Here $i(\cdot, \cdot, \cdot)$ refers to the fixed point index defined in Appendix $A$.

Then at least one of the following holds:
(a) $S$ has at least one fixed point in $\tilde{I} \backslash\left(\left\{u_{1}, u_{2}\right\} \cup \Theta\right)$.
(b) There is an entire orbit $\left\{z_{n}\right\}_{n \in \mathbb{Z}}$ of $S$ joining $u_{1}$ to $u_{2}$ and satisfying

$$
u_{1}<_{K} z_{n}<_{K} z_{n+1}<_{K} u_{2} \quad \text { for } n \in \mathbb{Z}, \quad \lim _{n \rightarrow \infty} z_{n}=u_{2}, \quad \lim _{n \rightarrow-\infty} z_{n}=u_{1} .
$$

(c) There is an entire orbit $\left\{y_{n}\right\}_{n \in \mathbb{Z}}$ of $S$ joining $u_{2}$ to $u_{1}$ and satisfying

$$
u_{1}<_{K} y_{n+1}<_{K} y_{n}<_{K} u_{2} \quad \text { for } n \in \mathbb{Z}, \quad \lim _{n \rightarrow \infty} y_{n}=u_{1}, \quad \lim _{n \rightarrow-\infty} y_{n}=u_{2} .
$$

Remark D.1.4 If $S$ has no fixed points in $\tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$ (i.e. $\Theta$ is empty), the proposition is proved in [1, Proposition 1] (see also [2, Proposition 2.1]). The existence of a connecting orbit allowing for the presence of boundary equilibria $\theta$ was given in [7]. See [7, Proposition 2.1] and the paragraph that follows, where conditions (i) and (ii) are mentioned.

Remark D.1.5 In fact, Hsu et al. [7] showed that, in place of (i) and (ii), one may alternatively assume that $\theta$ is an extreme point of $\tilde{I}$ and is ejective. We say that $\theta$ is an extreme point of $\tilde{I}$ if $\theta=\frac{1}{2}(x+y)$, for some $x, y \in \tilde{I}$, implies $x=y=\theta$. We say that $\theta$ is ejective if there exists a neighborhood $U$ of $\theta$ in $C$ such that for each $x \in C \backslash\{\theta\}$, there is an integer $n=n(x)$ such that $S^{n}(x) \in X \backslash U$. While (i) and the first part of (ii) clearly hold for ejective points, the verification of the latter part of (ii) requires the application of more advanced theory in [12, 13]. We formulated the proposition in terms of (i) and (ii), which is frequently applicable (see Lemmas E.1.4 and E.1.5), as an alternative of using the more advanced theory.

Proof For simplicity, we assume $\Theta$ contains a single fixed point $\theta$. The general case follows by a similar argument.

Suppose that $S$ has no fixed point other than $u_{1}, u_{2}$ and those in $\Theta$, we will show that either (b) or (c) holds.

Define, for $\lambda \in[0,1]$ and $x \in I$, the mappings

$$
S_{\lambda}(x):=\lambda S(x)+(1-\lambda) u_{2}, \quad \tilde{S}_{\lambda}(x):=\lambda S(x)+(1-\lambda) u_{1} .
$$

Step 1. If $S_{\lambda}(w)=w$ for some $\lambda \in[0,1]$ and $w \in \tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$, then $w$ is a strict superequilibrium. Similarly, if $\tilde{S}_{\lambda}(v)=v$ for some $\lambda \in[0,1]$ and $v \in \tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$, then $v$ is a strict subequilibrium.

Indeed, note that $\lambda \neq 0$ as $w \neq u_{2}$, and that $\lambda \neq 1$ since $w$ is not a fixed point. So we can use $u_{2}>_{K} w$ to get

$$
w=S_{\lambda}(w)=\lambda S(w)+(1-\lambda) u_{2}>_{K} \lambda S(w)+(1-\lambda) w .
$$

This gives $w>_{K} S(w)$, i.e. $w$ is a strict superequilibrium. The proof of the second part of Step 1 is analogous and is omitted.

Next, define
$B_{\epsilon}(a):=\{x \in \tilde{I}:\|x-a\|<\epsilon\}$ and $\partial B_{\epsilon}(a):=\partial_{\tilde{I}}\left(B_{\epsilon}(a)\right)=\{x \in \tilde{I}:\|x-a\|=\epsilon\}$.

Step 2. For each $\epsilon>0$ sufficiently small, at least one of the following holds.
(i') There exist $\lambda \in[0,1]$ and $w \in \partial B_{\epsilon}\left(u_{2}\right)$ such that $S_{\lambda}(w)=w$.
(ii') There exist $\lambda \in[0,1]$ and $v \in \partial B_{\epsilon}\left(u_{1}\right)$ such that $\tilde{S}_{\lambda}(v)=v$.
Fix any $\epsilon$ small enough so that the closure of $B_{\epsilon}\left(u_{1}\right), B_{\epsilon}\left(u_{2}\right)$ and $B_{\epsilon}(\theta)$ are disjoint. Suppose to the contrary that

$$
\left\{\begin{array}{l}
S_{\lambda}(w) \neq w \quad \text { for all } \lambda \in[0,1], w \in \partial B_{\epsilon}\left(u_{2}\right) \\
\tilde{S}_{\lambda}(v) \neq v \quad \text { for all } \lambda \in[0,1], v \in \partial B_{\epsilon}\left(u_{1}\right)
\end{array}\right.
$$

The first statement implies that

$$
i\left(S, B_{\epsilon}\left(u_{2}\right), \tilde{I}\right)=i\left(S_{1}, B_{\epsilon}\left(u_{2}\right), \tilde{I}\right)=i\left(S_{0}, B_{\epsilon}\left(u_{2}\right), \tilde{I}\right)=1,
$$

where the first inequality is by definition of $S_{\lambda}$, the second equality is by homotopy invariance, and the last one is from the normalization property. Note that the fixed point index is well-defined since $\tilde{I}$ is convex and $S$ maps $\tilde{I}$ into itself. Similarly, we can show that $i\left(S, B_{\epsilon}\left(u_{1}\right), \tilde{I}\right)=1$.

Since $B_{\epsilon}\left(u_{j}\right)(j=1,2)$ and $B_{\epsilon}(\theta)$ are open subsets of $\tilde{I} \backslash U$ with disjoint closure, and

$$
S(x) \neq x \quad \text { for } \quad x \in \tilde{I} \backslash\left[B_{\epsilon}\left(u_{1}\right) \cup B_{\epsilon}\left(u_{2}\right) \cup B_{\epsilon}(\theta)\right],
$$

the additivity of the fixed point index implies

$$
1=i(S, \tilde{I}, \tilde{I})=i\left(S, B_{\epsilon}\left(u_{1}\right), \tilde{I}\right)+i\left(S, B_{\epsilon}\left(u_{2}\right), \tilde{I}\right)+i\left(S, B_{\epsilon}(\theta), \tilde{I}\right)=2,
$$

where $i\left(S, B_{\epsilon}(\theta), \tilde{I}\right)=0$ follows from the hypothesis (ii). This is a contradiction.
Step 3. Take a sequence $\epsilon_{n} \rightarrow 0$. Then at least one of the two statements of Step 2 holds for infinitely many $\epsilon_{n}$. We will pass to a subsequence and proceed assuming that statement (i') of Step 2 holds for all $\epsilon_{n} \rightarrow 0$, and derive alternative (c) of the
statement of the lemma. (If statement (ii') of Step 2 holds for infinitely many $\epsilon_{n}$, one can analogously derive alternative (b).)

In this case, there exist $\epsilon_{n} \rightarrow 0$ and a sequence of strict superequilibria $w_{n} \in$ $\partial B_{\epsilon_{n}}\left(u_{2}\right)$. Indeed, there exist a $\lambda_{\epsilon_{n}} \in[0,1]$ and $w_{n} \in \partial B_{\epsilon_{n}}\left(u_{2}\right)$ such that $S_{\lambda_{\epsilon_{n}}}\left(w_{n}\right)=$ $w_{n}$, and so $w_{n}$ is a strict superequilibrium.

Step 4. Let $\delta_{0}>0$ be such that $\bar{B}_{\delta_{0}}\left(u_{1}\right), \bar{B}_{\delta_{0}}\left(u_{2}\right)$, and $\bar{B}_{\delta_{0}}(\theta)$ are pairwise disjoint. By continuity of $S$, there exists $\delta_{1} \in\left(0, \delta_{0}\right)$ such that $\left\|S(x)-u_{2}\right\| \leq \delta_{0}$ if $\left\|x-u_{2}\right\|<\delta_{1}$. By the previous Step 3 there is a strict superequilibrium $w_{1}$ such that $\left\|w_{1}-u_{2}\right\|<\delta_{1}$. By Lemma D.1.2, $u_{2}>w_{1}>S\left(w_{1}\right)>S^{2}\left(w_{1}\right)>\cdots \rightarrow u_{1}$ in $\tilde{I}$, as the monotone semiorbit must converge to a fixed point and cannot converge to $\theta$ or $u_{2}$. Let $n(1) \in \mathbb{N}$ be chosen such that $\delta_{1} \leq\left\|S^{n(1)}\left(w_{1}\right)-u_{2}\right\| \leq \delta_{0}$, and note that $n(1) \geq 1$.

Next, there exists a $\delta_{2} \in\left(0, \delta_{1}\right)$ such that $\left\|S(z)-u_{2}\right\| \leq \delta_{1}$ if $\left\|z-u_{2}\right\|<\delta_{2}$. By Step 3 again, there is a strict superequilibrium $w_{2}$ such that $\left\|w_{2}-u_{2}\right\|<\delta_{2}$. Hence $u_{2}>w_{2}>S\left(w_{2}\right)>S^{2}\left(w_{2}\right)>\cdots \rightarrow u_{1}$ in $\tilde{I}$. We can choose again $n(2) \geq 2$ such that $\delta_{1} \leq\left\|S^{n(2)}\left(w_{2}\right)-u_{2}\right\| \leq \delta_{0}$.

Continuing in this fashion, we obtain a sequence of strict superequilibria $\left\{S^{n(k)}\left(w_{k}\right)\right\}_{k=1}^{\infty} \subset \bar{B}_{\delta_{0}}\left(u_{2}\right) \backslash B_{\delta_{1}}\left(u_{2}\right)$ such that $n(k) \geq k$.

Since $S$ is order compact, the set $S(\tilde{I})$ is relatively compact. Therefore, there exists a subsequence $\left\{S^{n\left(k^{\prime}\right)}\left(w_{k^{\prime}}\right)\right\}_{k^{\prime}}$ converging to some $y_{0} \in \tilde{I}$ such that $\delta_{1} \leq$ $\left\|y_{0}-u_{2}\right\| \leq \delta_{0}$. By passing to a further subsequence, we may assume as well that $\left\{S^{n\left(k^{\prime}\right)-1}\left(w_{k^{\prime}}\right)\right\}_{k^{\prime}}$ converges in $\tilde{I}$ to some limit which we denote by $y_{-1}$. Note that $S\left(y_{-1}\right)=y_{0}$, and $u_{1}<y_{0}<y_{-1}<u_{2}$ (since neither $y_{0}, y_{-1}$ can be equal to the fixed points $u_{1}, u_{2}$ ).

Recursively, we can obtain a sequence $\left\{y_{k}: k=0,-1,-2, \ldots\right\}$ of strict superequilibria such that $y_{k}>y_{k+1}$ and $S\left(y_{k}\right)=y_{k+1}$ for all $k<0$. By compactness, the sequence $y_{k}$ converges to some fixed point $y_{-\infty} \in \bar{B}_{\delta_{0}}\left(u_{2}\right)$ as $k \rightarrow-\infty$. Since $u_{2}$ is the only fixed point in $\bar{B}_{\delta_{0}}\left(u_{2}\right)$, we have $y_{k} \rightarrow u_{2}$ as $k \rightarrow-\infty$.

Finally, for $k \geq 1$, define $y_{k}=S^{k}\left(y_{0}\right)$, then we obtain an entire orbit $\left\{y_{k}\right\}_{k=-\infty}^{\infty}$ which is strictly decreasing. By Lemma D.1.2, $y_{k}$ converges to some fixed point as $k \rightarrow \infty$. Since $y_{k} \nrightarrow \theta$ by the hypothesis (iii), the only possibility is that $y_{k} \rightarrow u_{1}$ as $k \rightarrow \infty$.

Lemma D.1.6 (Order Interval Trichotomy) In addition to the hypotheses of Lemma D.1.3, assume that $C$ has nonempty interior in $X$ and $u_{1} \ll_{K} u_{2}$. If $u \in \tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$ and $S u=u$ implies $u_{1} \ll_{K} u \ll_{K} u_{2}$, then precisely one of the alternatives $(a)-(c)$ of Lemma D.1.3 holds.

Proof First, we show that (b) and (c) are incompatible. Assume to the contrary that both (b) and (c) hold. Then $y_{n}-z_{n} \rightarrow u_{2}-u_{1} \in \operatorname{Int} K$ as $n \rightarrow-\infty$, so that $z_{n_{0}} \ll_{K} y_{n_{0}}$ for some $n_{0}$. But then

$$
z_{n}=S^{n-n_{0}}\left(z_{n_{0}}\right)<_{K} S^{n-n_{0}}\left(y_{n_{0}}\right)=y_{n} \quad \text { for all } n \geq n_{0} .
$$

Letting $n \rightarrow \infty$, we deduce that $u_{2} \leq_{K} u_{1}$, which is a contradiction.

It remains to show that (a) and (b) are incompatible. Since (a) holds, the hypothesis implies the existence of a fixed point $u$ such that $u_{1} \ll{ }_{K} u \ll_{K} u_{2}$. Now, take $n_{1}$ such that $z_{n_{1}} \ll_{K} u$, then by applying $S^{n}$ on both sides, and letting $n \rightarrow \infty$, we deduce that $u_{2} \leq_{K} u$, which is a contradiction. The incompatibility of (a) and (c) is analogous and we omit the proof.

Lemma D.1.7 Let $P$ be a compact subset of $X$, then $P$ contains a maximal (minimal) element.

Proof By Zorn's lemma, it suffices to show that every totally ordered subset of $P$ has an upper bound in $P$.

Let $Q$ be a totally ordered subset of $P$. Then $Q$ is precompact, so for each $\epsilon>0$, there exists a finite subset $A_{\epsilon}$ of $Q$ such that $\bar{Q} \subset \cup_{p \in A_{\epsilon}} B_{\epsilon}(p)$. Let $p_{\epsilon}^{\prime}=\max A_{\epsilon}$, which exists since $A_{\epsilon}$ is finite and totally ordered.

Next, we use compactness of $P$ to choose a sequence $\epsilon=\epsilon_{n} \rightarrow 0$ such that $p_{\epsilon_{n}}^{\prime} \rightarrow p^{*}$ for some $p^{*} \in P$.

We claim that $p^{*}$ is an upper bound of $Q$. Indeed, for any $q \in Q$ and $n \in \mathbb{N}$, there exists $\hat{p}_{n} \in A_{\epsilon_{n}}$ such that

$$
\left\|q-\hat{p}_{n}\right\|<\epsilon_{n}, \quad \text { and } \quad \hat{p}_{n} \leq p_{\epsilon_{n}}^{\prime} .
$$

Letting $n \rightarrow \infty$, we have $q \leq p^{*}$.

## D. 2 Continuous-Time Monotone Dynamical Systems

We now formulate a continuous-time version of the results in the previous section. Assume that $\Phi:[0, \infty) \times C \rightarrow C$ is a continuous semiflow. We write $\Phi_{t}(x)=\Phi(t, x)$. The semiflow properties are (i) $\Phi_{0}(x)=x$ for all $x \in C$, and (ii) $\Phi_{t} \circ \Phi_{s}=\Phi_{t+s}$ for all $t, s \geq 0$.

Lemma D.2.1 (Existence of a connecting orbit) Suppose $\Phi_{t}: C \rightarrow C$ is order compact and strictly monotone for each $t>0$. Let $u_{1}<_{K} u_{2}$ be equilibrium points of the semiflow $\Phi$, and let $\tilde{I}:=\left[u_{1}, u_{2}\right]_{K}=\left\{x \in C: u_{1} \leq_{K} x \leq_{K} u_{2}\right\}$. Suppose further that there is a finite set of equilibria $\Theta \subset \tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$ (possibly empty) such that every $\theta \in \Theta$ satisfies
(i) $\Phi_{t}(x) \nrightarrow \theta$ as $t \rightarrow \infty$ for each $x \in \tilde{I}$ such that $x<_{K} \theta$ or $x>_{K} \theta$.
(ii) There is a $\delta>0$ such that for each $t \in(0, \delta], \Phi_{t}$ has no fixed points in $\bar{B}_{\delta}(\theta) \backslash\{\theta\}$ and $i\left(\Phi_{t}, B_{\delta}(\theta), \tilde{I}\right)=0$, where $B_{\delta}(\theta)=\{x \in \tilde{I}:\|x-\theta\|<\delta\}$.

Then at least one of the following holds:
(a) $\Phi$ has an equilibrium point in I distinct from $u_{1}, u_{2}$, and $\theta$.
(b) There is a strictly increasing entire orbit $\{\gamma(s)\}_{s \in \mathbb{R}}$ connecting $u_{1}$ to $u_{2}$, i.e. $\Phi_{t}(\gamma(s))=\gamma(t+s)$ for any $t \geq 0$ and $s \in \mathbb{R}$, and

$$
\gamma\left(t_{1}\right)<_{K} \gamma\left(t_{2}\right) \quad \text { for } t_{1}<t_{2}, \quad \text { and } \quad \gamma(-\infty)=u_{1}, \quad \gamma(\infty)=u_{2} .
$$

(c) There is a strictly decreasing entire orbit $\{\gamma(s)\}_{s \in \mathbb{R}}$ connecting $u_{2}$ to $u_{1}$, i.e. $\Phi_{t}(\gamma(s))=\gamma(t+s)$ for any $t \geq 0$ and $s \in \mathbb{R}$, and

$$
\gamma\left(t_{1}\right)>_{K} \gamma\left(t_{2}\right) \quad \text { for } t_{1}<t_{2}, \quad \text { and } \quad \gamma(-\infty)=u_{2}, \quad \gamma(\infty)=u_{1} .
$$

Remark D.2.2 Suppose $\Phi_{t}: C \rightarrow C$ is order compact and strictly monotone for each $t>0$. Let $u_{1}<_{K} u_{2}$ be equilibrium points of the semiflow $\Phi$, and let $\tilde{I}:=$ $\left[u_{1}, u_{2}\right]_{K}=\left\{x \in C: u_{1} \leq_{K} x \leq_{K} u_{2}\right\}$. If $\tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$ contains no equilibrium points of $\Phi$, then either (b) or (c) of Lemma D.2.1 holds.
Remark D.2.3 If $\theta$ is an extreme point of $\tilde{I}$ and $\theta$ is ejective, i.e. there exists an open neighborhood $U$ of $\theta$ in $\tilde{I}$ such that for each $x \in U$, there exists $t=t(x)$ such that $\Phi_{t}(x) \notin U$, then one can verify conditions (i) and (ii). See [7, Proof of Proposition 2.4] and [12, 13].

Proof For simplicity, we prove the case when $\Theta$ contains a single equilibrium $\theta$. The general case follows from the same argument.

For each $k \geq 1$ we consider the discrete dynamical system $\left\{\left(\Phi_{2^{-k}}\right)^{n}\right\}_{n \geq 1}=$ $\left\{\Phi_{n 2^{-k}}\right\}_{n \geq 1}$. Suppose $\tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$ contains no equilibrium points of $\Phi$. There are two cases:
(I) There is a sequence $k_{1}<k_{2}<\cdots \rightarrow \infty$ such that for $k=k_{i}$, the family of discrete dynamical systems $\left\{\left(\Phi_{2^{-k}}\right)^{n}\right\}_{n \geq 1}$ has no fixed points in $\tilde{I}$ other than $u_{1}, u_{2}, \theta$.
(II) For all large $k$, the family of discrete dynamical systems $\left\{\left(\Phi_{2^{-k}}\right)^{n}\right\}_{n \geq 1}$ has additional fixed points in $\tilde{I}$ other than $u_{1}, u_{2}, \theta$.

Proof of case (I). For each $j \geq 1$ (i.e. $k=k_{j}$ ), we may apply Lemma D.1.3 to obtain a discrete entire orbit $\left\{y_{m}^{(j)}\right\}_{m \in \mathbb{Z}}$ of the map $\Phi_{2^{-k} j}$ connecting $u_{1}$ and $u_{2}$. Note that $\Phi_{2^{-k}{ }_{j}}\left(y_{m}^{(j)}\right)=y_{m+1}^{(j)}$. By passing to a sequence in $j$, we may assume that $\left\{y_{m}^{(j)}\right\}_{m \in \mathbb{Z}}$ is either strictly decreasing for all $j$, or strictly increasing for all $j$. Suppose they are decreasing for all $j$, and connect $u_{2}$ to $u_{1}$ as $m$ varies from $-\infty$ to $\infty$. By performing a translation if necessary, we may also assume that

$$
\delta_{1} \leq\left\|y_{0}^{(j)}-u_{2}\right\| \leq \delta_{0} \quad \text { and } \quad \sup _{m \leq 0}\left\|y_{m}^{(j)}-u_{2}\right\| \leq \delta_{0}
$$

where $\delta_{1}<\delta_{0}$ are positive numbers chosen as in the proof of Lemma D.1.3, so that

$$
\left\{\begin{array}{l}
B_{\delta_{0}}\left(u_{2}\right) \text { is disjoint with the neighborhood } U \text { of } \theta, \\
u_{2} \text { is the only equilibrium point in } B_{\delta_{0}}\left(u_{2}\right), \\
\left\|\Phi_{t}(z)-u_{2}\right\| \leq \delta_{0} \text { for } 0 \leq t \leq 1 \text { and }\left\|z-u_{2}\right\| \leq \delta_{1} .
\end{array}\right.
$$

Denote, for each $j$,

$$
\gamma^{(j)}\left(\frac{m}{2^{k_{j}}}\right)=y_{m}^{(j)} \quad \text { for } m \in \mathbb{Z} .
$$

By compactness and the diagonal process, we may take $j \rightarrow \infty$ (via a subsequence), so that for each dyadic number $s$ (i.e. $s=n / 2^{k}$ for some $n \in \mathbb{Z}$ and $k \in \mathbb{N}$ ),

$$
\tilde{\gamma}(s)=\lim _{j \rightarrow \infty} \gamma^{(j)}(s)
$$

is well-defined such that

$$
\left\{\begin{array}{l}
\tilde{\gamma}(0) \in \tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}, \quad \text { and } \quad \tilde{\gamma}(t) \in \bar{B}_{\delta_{0}}\left(u_{2}\right) \quad \text { for } t \leq 0 \\
\Phi_{t}(\tilde{\gamma}(s))=\tilde{\gamma}(t+s) \quad \text { for any dyadic number } t, s \text { with } t \geq 0
\end{array}\right.
$$

Observe that $\tilde{\gamma}(s)$ is decreasing, since given any two dyadic numbers $t_{1}<t_{2}$, there exist $k, n_{1}, n_{2}$ such that $t_{i}=n_{i} / 2^{k}$ for $i=1,2$. Since the discrete orbits $\left\{y_{m}^{(j)}\right\}$ are decreasing, we deduce that

$$
\tilde{\gamma}\left(t_{1}\right)=\lim _{j \rightarrow \infty} \gamma^{(j)}\left(t_{1}\right) \geq_{K} \lim _{j \rightarrow \infty} \gamma^{(j)}\left(t_{2}\right)=\tilde{\gamma}\left(t_{2}\right)
$$

Next, we take $\gamma: \mathbb{R} \rightarrow \tilde{I}$ to be the unique continuous extension of $\tilde{\gamma}$ to all of $\mathbb{R}$. Since $\gamma(s)$ is also monotone decreasing, it must converge to some equilibrium points as $s \rightarrow \pm \infty$. Now, $\gamma(s) \in \bar{B}_{\delta_{0}}\left(u_{2}\right)$ for all $s \leq 0$, and $u_{2}$ is the only equilibrium in $\bar{B}_{\delta_{0}}\left(u_{2}\right)$, so $\gamma(-\infty)=u_{2}$. Since $\gamma(-\infty)=u_{2}>\gamma(0)$, we deduce that $\gamma$ is strictly decreasing, and $\gamma(\infty)=u_{1}$. Here we used the fact that there are no monotone trajectories converging to $\theta$. This completes the proof of case (I).
Proof of case (II). Suppose for all $k \gg 1, \Phi_{2^{-k}}$ has fixed points in $\tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$.
We claim that for each $\epsilon>0$, there exists a $k_{0} \geq 1$ such that for all $k \geq k_{0}$, the map $\Phi_{2^{-k}}$ does not have fixed points in $\tilde{I} \backslash\left(B_{\epsilon}\left(u_{1}\right) \cup B_{\epsilon}\left(u_{2}\right) \cup\{\theta\}\right)$. Suppose not, then there is a fixed $\epsilon>0$ and a sequence $k_{j} \rightarrow \infty$ and a sequence $\theta_{j} \in$ $\tilde{I} \backslash\left(B_{\epsilon}\left(u_{1}\right) \cup B_{\epsilon}\left(u_{2}\right) \cup\{\theta\}\right)$ such that

$$
\Phi_{2^{-k_{j}}}\left(\theta_{j}\right)=\theta_{j} \quad \text { and } \quad \lim _{j \rightarrow \infty} \theta_{j}=\tilde{\theta} \quad \text { for some } \quad \tilde{\theta} \in \tilde{I} \backslash\left\{u_{1}, u_{2}\right\}
$$

However, it is easy to see that $\Phi_{t}(\tilde{\theta})=\tilde{\theta}$ for any dyadic number $t>0$ and, by continuity, all real numbers $t>0$. Thus $\tilde{\theta}$ is an equilibrium point of $\Phi$ in $\tilde{I} \backslash\left\{u_{1}, u_{2}\right\}$, and it must hold that $\tilde{\theta}=\theta$. Hence, we have $\theta_{j} \rightarrow \theta$ as $j \rightarrow \infty$. But this is impossible in view of hypothesis (ii). This shows that for large $k$, there is no fixed point of $\Phi_{2^{-k}}$ in $\tilde{I} \backslash\left(B_{\epsilon}\left(u_{1}\right) \cup B_{\epsilon}\left(u_{2}\right) \cup\{\theta\}\right)$.

Let $\delta_{0}>\delta_{1}>0$ be as in the proof of case (i). Fix $\epsilon \in\left(0, \delta_{1}\right)$ and $k_{0}$ large enough so that for $k \geq k_{0}$, the discrete map $\Phi_{2^{-k}}$ has no fixed point in $\tilde{I} \backslash\left(B_{\epsilon}\left(u_{1}\right) \cup B_{\epsilon}\left(u_{2}\right) \cup\{\theta\}\right)$. By Zorn's lemma (see Lemma D.1.7), we can choose a minimal fixed point $u_{2}^{(k)}$ of $\Phi_{2^{-k}}$ in $B_{\epsilon}\left(u_{2}\right)$ and a maximal fixed point $u_{1}^{(k)}$ of $\Phi_{2^{-k}}$ in $B_{\epsilon}\left(u_{1}\right) \cap\left[u_{1}, u_{2}^{(k)}\right]_{K}$. Note that

$$
\left\{\begin{array}{l}
u_{1}^{(k)}<K u_{2}^{(k)}, \quad u_{i}^{(k)} \rightarrow u_{i} \quad \text { as } \quad k \rightarrow \infty \quad \text { for } i=1,2 \\
{\left[u_{1}^{(k)}, u_{2}^{(k)}\right]_{K} \backslash\left\{u_{1}^{(k)}, u_{2}^{(k)}, \theta\right\} \quad \text { contains no fixed points of } \Phi_{2^{-k}}}
\end{array}\right.
$$

Moreover, for each $k \geq k_{0}$, Lemma D.1.3 gives an entire orbit $\left\{y_{m}^{(k)}\right\}_{m \in \mathbb{Z}}$ connecting $u_{1}^{(k)}$ and $u_{2}^{(k)}$. Again, assume we are in the case that they are all decreasing. We
again perform a translation such that $y_{0}^{(k)} \in \bar{B}_{\delta_{0}}\left(u_{2}\right) \backslash B_{\delta_{1}}\left(u_{2}\right)$. Then we again use compactness and a diagonal process to obtain a decreasing orbit $\gamma: \mathbb{R} \rightarrow \tilde{I} \backslash U$ such that $\gamma(0) \in \tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$, and argue as before that it must be strictly decreasing, and satisfies $\gamma(-\infty)=u_{2}$ and $\gamma(\infty)=u_{1}$.

Lemma D.2.4 (Order Interval Trichotomy) In addition to the hypotheses of Lemma D.2.1, assume that $C$ has nonempty interior in $X$ and $u_{1} \ll_{K} u_{2}$. If $u \in \tilde{I} \backslash\left\{u_{1}, u_{2}, \theta\right\}$ and $S u=u$ implies $u_{1} \ll_{K} u \ll_{K} u_{2}$, then precisely one of the alternatives $(a)-(c)$ of Lemma D.2.1 holds.

Proof This is analogous to the proof of Lemma D.1.6 and is omitted.

## References

1. E. N. Dancer and P. Hess, Stability of fixed points for order-preserving discrete-time dynamical systems, J. Reine Angew. Math., 419 (1991), pp. 125-139.
2. P. Hess, Periodic-parabolic boundary value problems and positivity, vol. 247 of Pitman Research Notes in Mathematics Series, Longman Scientific \& Technical, Harlow; copublished in the United States with John Wiley \& Sons, Inc., New York, 1991.
3. M. W. Hirsch, Systems of differential equations which are competitive or cooperative. I. Limit sets, SIAM J. Math. Anal., 13 (1982), pp. 167-179.
4. Whe dynamical systems approach to differential equations, Bull. Amer. Math. Soc. (N.S.), 11 (1984), pp. 1-64.
5. , Stability and convergence in strongly monotone dynamical systems, J. Reine Angew. Math., 383 (1988), pp. 1-53.
6. ,-, Positive equilibria and convergence in subhomogeneous monotone dynamics, in Comparison methods and stability theory (Waterloo, ON, 1993), vol. 162 of Lecture Notes in Pure and Appl. Math., Dekker, New York, 1994, pp. 169-188.
7. S. B. Hsu, H. L. Smith, and P. Waltman, Competitive exclusion and coexistence for competitive systems on ordered Banach spaces, Trans. Amer. Math. Soc., 348 (1996), pp. 4083-4094.
8. E. Kamke, Zur Theorie der Systeme gewöhnlicher Differentialgleichungen. II, Acta Math., 58 (1932), pp. 57-85.
9. H. Matano, Asymptotic behavior and stability of solutions of semilinear diffusion equations, Publ. Res. Inst. Math. Sci., 15 (1979), pp. 401-454.
10. -, Existence of nontrivial unstable sets for equilibriums of strongly order-preserving systems, J. Fac. Sci. Univ. Tokyo Sect. IA Math., 30 (1984), pp. 645-673.
11. H. Matano, Strongly order-preserving local semidynamical systems-theory and applications, in Semigroups, theory and applications, Vol. I (Trieste, 1984), vol. 141 of Pitman Res. Notes Math. Ser., Longman Sci. Tech., Harlow, 1986, pp. 178-185.
12. R. D. Nussbaum, Periodic solutions of some nonlinear autonomous functional differential equations, Ann. Mat. Pura Appl. (4), 101 (1974), pp. 263-306.
13. —, The fixed point index and some applications, vol. 94 of Séminaire de Mathématiques Supérieures [Seminar on Higher Mathematics], Presses de l’Université de Montréal, Montreal, QC, 1985.

## Appendix E

## Abstract Competition Systems in Ordered Banach Spaces


#### Abstract

In this appendix, we present selected theorems concerning abstract competitive systems of two species. The proof will be self-contained, since the necessary tools have been developed in earlier appendices. We also prove an improved trichotomy result (Theorems E.1.15 and E.2.13) for competitive systems satisfying an additional hypothesis. This novel hypothesis is satisfied by a large class of competitive systems, including the diffusive Lotka-Volterra systems that are discussed in Chapter 7, as well as the two-species phytoplankton system in Chapter 8. We first develop the result for discrete-time competition systems in Section E.1. The continuous-time analogue is contained in Section E.2.

For $i=1,2$, let $X_{i}$ be a Banach space with positive cone $X_{i}^{+}$with nonempty interior Int $X_{i}^{+}$. The same symbol for the partial orders generated by the cones $X_{i}^{+}$ are used. If $x_{i}, \bar{x}_{i} \in X_{i}$, then we write


$$
x_{i} \leq \bar{x}_{i} \quad\left(\text { resp. } \quad x_{i}<\bar{x}_{i}, \quad x_{i} \ll \bar{x}_{i}\right)
$$

provided that

$$
\bar{x}_{i}-x_{i} \in X_{i}^{+} \quad\left(\text { resp. } \quad \bar{x}_{i}-x_{i} \in X_{i}^{+} \backslash\{0\}, \quad \bar{x}_{i}-x_{i} \in \operatorname{Int} X_{i}^{+}\right) .
$$

Let $X=X_{1} \times X_{2}, X^{+}=X_{1}^{+} \times X_{2}^{+}$. Then $X^{+}$is a cone in $X$ with nonempty interior
![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-295.jpg?height=48&width=1162&top_left_y=1581&top_left_x=182) in $X$ in the usual way. In particular, if $x=\left(x_{1}, x_{2}\right)$, and $\bar{x}=\left(\bar{x}_{1}, \bar{x}_{2}\right)$, then $x \leq \bar{x}$ if and only if $x_{i} \leq \bar{x}_{i}$ for $i=1,2$. For our purposes, the more important cone is $K=X_{1}^{+} \times\left(-X_{2}^{+}\right)$, with nonempty interior given by $\operatorname{Int} K=\operatorname{Int} X_{1}^{+} \times\left(-\operatorname{Int} X_{2}^{+}\right)$. It generates the partial order relations $s_{K},<_{K},<_{K}$. In this case,

$$
x \leq_{K} \bar{x} \quad \text { iff } \quad x_{1} \leq \bar{x}_{1} \quad \text { and } \quad \bar{x}_{2} \leq x_{2} .
$$

A similar statement holds with $<_{K}$ (resp. $\ll_{K}$ ) replacing $\leq_{K}$ and $<$ (resp. $\ll$ ) replacing $\leq$.

We consider dynamical systems with state space being a solid cone $C$ of $X^{+}$, where $C=C_{1} \times C_{2}$ and $C_{i} \subset X_{i}^{+}$are cones with non-empty interior $\operatorname{Int} C_{i}$, for $i=1,2$. If $x<_{K} y$, then $[x, y]_{K}=\left\{z \in C: x \leq_{K} z \leq_{K} y\right\}$.

This chapter is adapted from $[1,2,4]$, where the case $C_{i}=X_{i}^{+}$for $i=1,2$ was considered. In this section, we modify their arguments to the slightly more general situation for maps $S: C \rightarrow C$ which preserve the competitive order generated by the cone $K$. The situation when $C_{i}$ is a proper subset of $X_{i}^{+}$arises, for example, in the phytoplankton population model [3]. For the continuous-time situation, sharper results are contained in [11], where bi-stability is considered, and $X_{i}^{+}$can have empty interior; see also [7]. Under some additional assumptions, we will obtain an improvement on the trichotomy result; see Theorems E.1.15 and E.2.13. We first develop the result for discrete-time competition systems in Section E.1. The continuous-time analogue is treated in Section E.2.

## E. 1 Discrete-Time Competition Systems

Let $S: C \rightarrow C$ be a continuous map and denote by $S^{n}$ the $n$-fold composition of $S$. The following hypotheses on $S$ are meant to capture the essence of competition between two adequate competitors, i.e. ones which can persist in the absence of competition.
(H1) $S$ is order compact and strictly monotone with respect to $<_{K}$. That is,

$$
x<_{K} \bar{x} \quad \text { implies } \quad S(x)<_{K} S(\bar{x}) .
$$

(H2) For $i=1,2$, there exist maps $\eta: C \rightarrow X$ and $f_{i}: C_{i} \rightarrow C_{i}$ such that

$$
S\left(x_{1}, x_{2}\right)=\left(f_{1}\left(x_{1}\right), f_{2}\left(x_{2}\right)\right)+\eta\left(x_{1}, x_{2}\right)
$$

where $\|\eta(x)\| /\|x\| \rightarrow 0$ as $\|x\| \rightarrow 0$ and $f_{i}$ is compact, positively homogeneous of degree one, strongly monotone with respect to the order generated by $C_{i}$, and the Bonsall cone spectral radius ${ }^{1}$ satisfies $\tilde{r}_{C_{i}}\left(f_{i}\right)>1$.
(H3) $S\left(C_{1} \times\{0\}\right) \subset C_{1} \times\{0\}$. There exists an $\hat{x}_{1} \in \operatorname{Int} C_{1}$ such that $E_{1}=\left(\hat{x}_{1}, 0\right)$ is a fixed point of $S$, and $S^{n}\left(\left(x_{1}, 0\right)\right) \rightarrow\left(\hat{x}_{1}, 0\right)$ for every $x_{1} \in C_{1} \backslash\{0\}$. The symmetric conditions hold for $S$ on $\{0\} \times C_{2}$, where the fixed point is denoted by $E_{2}=\left(0, \hat{x}_{2}\right)$.
(H4) If $x, y \in C$ satisfy $x<_{K} y$ and at least one of $x, y$ belongs to $\operatorname{Int} C$, then $S(x) \ll{ }_{K} S(y)$. If $x=\left(x_{1}, x_{2}\right) \in C$ satisfies $x_{i} \neq 0$ for $i=1,2$, then $S(x) \in$ Int $C$.

We have introduced the boundary fixed points of $S$ :

$$
E_{0}=(0,0), \quad E_{1}=\left(\hat{x}_{1}, 0\right), \quad E_{2}=\left(0, \hat{x}_{2}\right) .
$$

[^12]We say that a fixed point $E_{*}$ is positive if it belongs to the interior of $C$. The ordered interval $I=\left[E_{2}, E_{1}\right]_{K}=\left[\left(0, \hat{x}_{2}\right),\left(\hat{x}_{1}, 0\right)\right]_{K}$ will play an important role.

Recall that $S$ is order compact if $S\left(\left[\left(0, x_{2}\right),\left(x_{1}, 0\right)\right]_{K}\right)$ has compact closure in $X$ for every $\left(x_{1}, x_{2}\right) \in C$. Biologically interpreted, $x=\left(x_{1}, x_{2}\right)$ and $\bar{x}=\left(\bar{x}_{1}, \bar{x}_{2}\right)$ represent two alternative states of the competition system, in which the state of the first population is given by the first components $x_{1}$ or $\bar{x}_{1}$, and the state of the second population is given by the second component. The relation $x \leq_{K} \bar{x}$ says that the second species has an advantage in the state $x$ relative to the state $\bar{x}$, since $\bar{x}_{2} \leq x_{2}$ and $x_{1} \leq \bar{x}_{1}$. The order preserving property (H1) says that this relative advantage is being propagated, or preserved, into the future by the dynamical system.

Remark E.1.1 (Condition (H2) concerning the instability of $E_{0}$.) Suppose $S$ is continuously differentiable in $I$, then (H3) implies that

$$
D S(0,0)\left[y_{1}, y_{2}\right]=\left(T_{1} y_{1}, T_{2} y_{2}\right)
$$

for some compact linear operator $T_{i}$ which is monotone with respect to $C_{i}$ (i.e. $T_{i}\left(C_{i}\right) \subset C_{i}$ ). In this case, the condition (H2) holds if and only if $T_{i}: C_{i} \rightarrow C_{i}$ is strongly monotone and $r\left(T_{i}\right)>1$ for $i=1,2$. See Lemma B.4.9.

Remark E.1.2 Suppose $S$ is continuously differentiable in $I$, and write $S\left(x_{1}, x_{2}\right)=$ $\left(S_{1}\left(x_{1}, x_{2}\right), S_{2}\left(x_{1}, x_{2}\right)\right)$. A sufficient condition for (H2)-(H3) is given by the following.

1. $S\left(C_{1} \times\{0\}\right) \subset C_{1} \times\{0\}$ and $S\left(\{0\} \times C_{2}\right) \subset\{0\} \times C_{2}$.
2. For $i=1,2, D_{i} S(0,0): X_{i} \rightarrow X_{i}$ is compact and strongly monotone with respect to the cone $C_{i}$, and $r\left(D_{i} S(0,0)\right)>1$.
3. $x_{1} \mapsto S_{1}\left(x_{1}, 0\right)$ is strictly monotone and strongly subhomogeneous, i.e.

$$
\left\{\begin{array}{l}
x_{1}, \bar{x}_{1} \in C_{1}, \text { and } x_{1}<\bar{x}_{1} \Rightarrow S_{1}\left(x_{1}, 0\right)<S_{1}\left(\bar{x}_{1}, 0\right) \\
\lambda S_{1}\left(x_{1}, 0\right) \ll S_{1}\left(\lambda x_{1}, 0\right) \quad \text { for } 0<\lambda<1, \text { and } x_{1} \in C_{1} \cap \operatorname{Int} X_{1}^{+},
\end{array}\right.
$$

And a similar condition holds for $x_{2} \mapsto S_{2}\left(0, x_{2}\right)$.
Indeed, conditions 1 and 2 imply (H2), as discussed in Remark E.1.1. Moreover, conditions 1, 2 and 3 together imply (H3), which follow from a result in subhomogeneous dynamical systems. See Theorem C.1.3.

Remark E.1.3 We observe that $E_{2} \ll_{K} \quad S^{2}(x) \ll_{K} \quad E_{1}$ for all $x=\left(x_{1}, x_{2}\right) \in$ $I \backslash\left\{E_{1}, E_{2}\right\}$ such that $x_{i} \neq 0$ for all $i=1,2$. Indeed, $S(x) \gg_{C} 0$ by the second part of (H4). Since $E_{2}<_{K} S(x)<_{K} E_{1}$, we have $E_{2} \ll_{K} S^{2}(x) \ll_{K} E_{1}$ by the first part of (H4).

Lemma E.1.4 Suppose (H3) holds, then $S^{n}(x) \nrightarrow E_{0}$ for each $x \in C$ such that $x<_{K} E_{0}$ or $x>_{K} E_{0}$.

Proof Suppose $x=\left(x_{1}, x_{2}\right) \in C$ is such that $x<_{K} E_{0}$ or $x>_{K} E_{0}$, then $x \neq E_{0}$ and either $x_{1}=0$ or $x_{2}=0$. In this case, (H3) implies that $S^{n}(x) \rightarrow E_{1}$ or $E_{2}$.

Lemma E.1.5 Suppose $(\mathrm{H} 2)$ holds, then there exists a $\delta>0$ such that $E_{0}=(0,0)$ is the unique fixed point of $S$ in $\bar{B}_{\delta}\left(E_{0}\right)=\{x \in I:\|x\| \leq \delta\}$, and $i\left(S, B_{\delta}\left(E_{0}\right), I\right)=0$.

Proof Fix $y=\left(y_{1}, y_{2}\right) \in I$ such that $y_{i} \neq 0$ for $i=1,2$, and define

$$
h(\tau, x)=\tau S(x)+(1-\tau) y \quad \text { for } \tau \in[0,1], x=\left(x_{1}, x_{2}\right) \in I
$$

It is enough to show that there exists a $\delta>0$ sufficiently small, such that $h(\tau, x) \neq x$ for every $\tau \in[0,1]$ and $0<\|x\| \leq \delta$. Indeed, if this is true, then $E_{0}$ is the unique fixed point in $\bar{B}_{\delta}\left(E_{0}\right)=\{x \in C:\|x\| \leq \delta\}$, and $y \notin \bar{B}_{\delta}\left(E_{0}\right)$. By homotopy invariance,

$$
i\left(S, B_{\delta}\left(E_{0}\right), I\right)=i\left(h(0, \cdot), B_{\delta}\left(E_{0}\right), I\right)=0
$$

Suppose to the contrary that there is no such $\delta$. Then to each $n \in \mathbb{N}$ we find $\tau_{n} \in[0,1]$ and $x_{n}=\left(x_{1, n}, x_{2, n}\right) \in C \backslash\left\{E_{0}\right\}$ with $\delta_{n}:=\left\|x_{n}\right\|>0$ and $\delta_{n} \rightarrow 0$, such that $x_{n}=h\left(\tau_{n}, x_{n}\right)$. Setting $\left(p_{n}, q_{n}\right)=\frac{1}{\delta_{n}}\left(x_{1, n}, x_{2, n}\right)$, we infer from (H2) that

$$
\left\{\begin{array}{l}
p_{n}-\tau_{n} f_{1}\left(p_{n}\right)=\frac{1-\tau_{n}}{\delta_{n}} y_{1}+o(1) \\
q_{n}-\tau_{n} f_{2}\left(q_{n}\right)=\frac{1-\tau_{n}}{\delta_{n}} y_{2}+o(1)
\end{array}\right.
$$

Using the boundedness and compactness of the maps $f_{i}$, and the fact that the left-hand side is bounded in norm, we conclude that $\tau_{n} \rightarrow 1$, and (passing to a subsequence if necessary)

$$
\left(p_{n}, q_{n}\right) \rightarrow\left(p_{\infty}, q_{\infty}\right) \quad \text { and } \quad \frac{1-\tau_{n}}{\delta_{n}} \rightarrow \alpha
$$

for some $\left\|\left(p_{\infty}, q_{\infty}\right)\right\|=1$ and some real number $\alpha \geq 0$. In particular,

$$
p_{\infty}-f_{1}\left(p_{\infty}\right)=\alpha y_{1} \quad \text { for some } p_{\infty} \in C_{1} \backslash\{0\} .
$$

Since $\tilde{r}_{C_{1}}\left(f_{1}\right)>1$, we invoke Lemma B.4.8 to deduce that $p_{\infty}=0$ and $\alpha=0$. In the same way, $\tilde{r}_{C_{2}}\left(f_{2}\right)>1$ implies that $q_{\infty}=0$. This is a contradiction since $\left\|\left(p_{\infty}, q_{\infty}\right)\right\|=1$.

Remark E.1.6 The condition (H2) can be replaced by the weaker assumption that $E_{0}$ is an extreme and ejective point with respect to $I$. In this case the conclusions of every result in this chapter continue to hold. See Remark D.1.5.

Theorem E.1.7 Let $(\mathrm{H} 1)-(\mathrm{H} 4)$ hold and let $I=\left[E_{2}, E_{1}\right]_{K}$. Then the omega limit set $\omega(x) \subset I$ for every $x \in C$. Suppose, in addition, that $S$ has no fixed points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$, then for each $x \in C \backslash\left\{E_{0}\right\}$,

$$
S^{n}(x) \rightarrow E_{1} \quad \text { or } \quad S^{n}(x) \rightarrow E_{2} \quad \text { as } n \rightarrow \infty .
$$

Moreover, exactly one of the following holds:

1. $S^{n}(x) \rightarrow E_{1}$ as $n \rightarrow \infty$ for every $x=\left(x_{1}, x_{2}\right) \in I$ with $x_{i} \neq 0, i=1,2$.
2. $S^{n}(x) \rightarrow E_{2}$ as $n \rightarrow \infty$ for every $x=\left(x_{1}, x_{2}\right) \in I$ with $x_{i} \neq 0, i=1,2$.

Proof First, we show that $\omega(x) \subset I$ for every $x \in C$. Since $S(I) \subset I$, it suffices to consider $x=\left(x_{1}, x_{2}\right) \notin I$. If one of the components of $x$ is trivial, then (H3) implies $S^{n}(x) \rightarrow E_{1}$ or $E_{2}$. It remains to consider $x=\left(x_{1}, x_{2}\right)$ such that $x_{i} \neq 0$ for $i=1,2$. Then $\left(0, x_{2}\right) \leq_{K}\left(x_{1}, x_{2}\right) \leq_{K}\left(x_{1}, 0\right)$ and hence

$$
\begin{equation*}
S^{n}\left(0, x_{2}\right) \leq_{K} S^{n}\left(x_{1}, x_{2}\right) \leq_{K} S^{n}\left(x_{1}, 0\right) \quad \text { for all } n \geq 0 \tag{E.1}
\end{equation*}
$$

Let $y \in \omega(x)$, i.e. there exists a subsequence $\left\{n_{j}\right\}$ such that $S^{n_{j}}(x) \rightarrow y$. Then we observe from (H3) and (E.1) that $E_{2} \leq_{K} y \leq_{K} E_{1}$, which means $y \in I$. This proves that $\omega(x) \subset I$ for every $x \in C$.

Henceforth, we assume $S$ has no fixed points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$. By Lemmas E.1.4 and E.1.5, we can now apply Lemma D.1.3, which implies that at least one of (b) or (c) in the statement of Lemma D.1.3 holds.

Step 1. We claim that (b) and (c) in the statement of Lemma D.1.3 (with $u_{1}=E_{2}$ and $u_{2}=E_{1}$ ) cannot simultaneously hold.

For in such a case two connecting orbits $\left\{y_{n}\right\}$ and $\left\{z_{n}\right\}$ exist such that

$$
y_{n}-z_{n} \rightarrow E_{1}-E_{2} \quad \text { as } n \rightarrow-\infty, \quad y_{n}-z_{n} \rightarrow E_{2}-E_{1} \quad \text { as } n \rightarrow+\infty .
$$

Since $E_{1}-E_{2} \in \operatorname{Int} K$, there exists an $n_{0}$ such that $y_{n_{0}}-z_{n_{0}} \in \operatorname{Int} K$. As $S$ is strictly monotone, we get

$$
z_{n}=S^{n-n_{0}}\left(z_{n_{0}}\right)<_{K} S^{n-n_{0}}\left(y_{n_{0}}\right)=y_{n} \quad \text { for all } n \geq n_{0}
$$

Letting $n \rightarrow \infty$, we deduce that $E_{1} \leq_{K} E_{2}$. This is a contradiction.
Step 2. Suppose that assertion (b) (resp. (c)) in Lemma D.1.3 holds, then

$$
S^{n}(x) \rightarrow E_{1} \quad\left(\text { resp. } \quad S^{n}(x) \rightarrow E_{2}\right)
$$

for all $x=\left(x_{1}, x_{2}\right) \in I, x_{i} \neq 0$ for $i=1,2$.
Indeed, suppose (b) holds, then there exists an entire orbit $\left\{z_{n}\right\}_{n \in \mathbb{Z}}$ such that $z_{n} \rightarrow E_{2}$ as $n \rightarrow-\infty$ and $z_{n} \rightarrow E_{1}$ as $n \rightarrow \infty$. Fix an $x=\left(x_{1}, x_{2}\right) \in I \backslash\left\{E_{1}, E_{2}\right\}$ such that $x_{i} \neq 0$ for $i=1,2$. By the compactness of the trajectory, it suffices to show that $\omega(x) \subset\left\{E_{1}\right\}$. By Remark E.1.3, we have $E_{2} \ll_{K} S^{2}(x) \ll_{K} E_{1}$. It is therefore possible to choose $n_{0}$ such that

$$
\begin{equation*}
z_{n_{0}} \leq_{K} S^{2}(x) \leq_{K} E_{1} \tag{E.2}
\end{equation*}
$$

For $n \geq n_{0}$, applying $S^{n-2}$ to (E.2), we have $z_{n_{0}+n-2} \leq_{K} S^{n}(x) \leq_{K} E_{1}$. Since $z_{n+n_{0}-2} \rightarrow E_{1}$ as $n \rightarrow \infty$, we have $\omega(x) \subset\left\{E_{1}\right\}$, i.e. $S^{n}(x) \rightarrow E_{1}$ as desired. The case when assertion (c) in Lemma D.1.3 holds is analogous.
Step 3. It remains to show that if $x \in C \backslash I$, then either $S^{n}(x) \rightarrow E_{1}$ or $S^{n}(x) \rightarrow E_{2}$.
We fix an $x=\left(x_{1}, x_{2}\right) \in C \backslash I$. If $x_{1}=0$ (resp. $x_{2}=0$ ), then (H3) says that $S^{n}(x) \rightarrow E_{2}$ (resp. $S^{n}(x) \rightarrow E_{1}$ ) and we are done. Hence we assume $x_{i} \neq 0$ for $i=1,2$, and divide into two cases:
(i) $S^{n_{0}}(x) \in I$ for some $n_{0}$.
(ii) $S^{n}(x) \notin I$ for all $n$.

In the case (i), $E_{2}<_{K} S^{n_{0}}(x)<_{K} E_{1}$ since $S^{n}(x) \subset \operatorname{Int} C$ for all $n$ by (H4). By (H4) again, $E_{2} \ll_{K} S^{n_{0}+1}(x) \ll_{K} E_{1}$, and we can repeat Step 2 to show that $S^{n}(x) \rightarrow E_{2}$ in case (b) of Lemma D.1.3 holds, or $S^{n}(x) \rightarrow E_{1}$ in case (c) of Lemma D.1.3 holds.

In case (ii), we first observe that $E_{0} \notin \omega(x)$. Indeed, for $\delta$ small enough, we have $B_{\delta}\left(E_{0}\right) \subset I$ (this follows from the fact that $\hat{x}_{i} \in \operatorname{Int} C_{i}$ for $i=1,2$ ). Hence in case (ii), we have $S^{n}(x) \notin B_{\delta}\left(E_{0}\right)$ for all $n \geq 0$.

We claim that

$$
\begin{equation*}
\omega(x) \subset\left[\left(C_{1} \times\{0\}\right) \cup\left(\{0\} \times C_{2}\right)\right] \backslash B_{\delta}\left(E_{0}\right) . \tag{E.3}
\end{equation*}
$$

To prove (E.3), suppose to the contrary that there exists $z=\left(z_{1}, z_{2}\right) \in \omega(x)$ such that $z_{i} \neq 0$ for $i=1,2$. By Remark E.1.3, we have $E_{2} \ll_{K} S^{2}(z) \ll_{K} E_{1}$. Since $\omega(x)$ is forward invariant ${ }^{2}, S^{2}(z) \in \omega(x)$, so we can find $n_{0} \in \mathbb{N}$ such that $E_{2} \ll_{K}$ $S^{n_{0}}(x) \ll_{K} E_{1}$. But this does not happen in case (ii). We have proved (E.3).

Since $\omega(x)$ is connected, we have

$$
\omega(x) \in\left(C_{1} \times\{0\}\right) \backslash B_{\delta}\left(E_{0}\right) \quad \text { or } \quad \omega(x) \in\left(\{0\} \times C_{2}\right) \backslash B_{\delta}\left(E_{0}\right) .
$$

By hypothesis (H3), there exists an $i \in\{1,2\}$ such that

$$
\omega(x) \subset \cup_{n \geq 1} S^{-n}\left(B_{\epsilon}\left(E_{i}\right)\right) \quad \text { for each } \epsilon>0
$$

Since $\omega(x)$ is invariant (i.e. $S(\omega(x))=\omega(x)$ ), we have $\omega(x) \subset B_{\epsilon}\left(E_{i}\right)$ for each $\epsilon>0$, i.e. $\omega(x)=\left\{E_{i}\right\}$ for $i=1$ or $i=2$, i.e. $S^{n}(x) \rightarrow E_{1}$ or $E_{2}$ as $n \rightarrow \infty$. This completes the proof.

Corollary E.1.8 Let (H1)-(H4) hold. Then $S$ has a positive fixed point if one of the following holds.

- Both $E_{1}$ and $E_{2}$ are locally asymptotically stable relative to I.
- Both $E_{1}$ and $E_{2}$ are unstable relative to $I$.
- There is a point $x \in X$ such that $\omega(x) \cap \operatorname{Int} C$ is nonempty.

Proof If $S$ has no positive fixed points, then by Theorem E.1.7, there is a connecting orbit connecting $E_{1}$ and $E_{2}$ and that $\omega(x) \subset\left\{E_{1}, E_{2}\right\}$ for any $x \in C \backslash\{0\}$. This is incompatible with any of the three conditions in the statement of the corollary.

In general, the nonexistence of a positive fixed point does not imply that one of $E_{1}, E_{2}$ attracts all trajectories; see Problem 7.5.1. To prove that $E_{1}$ (resp. $E_{2}$ ) attracts all trajectories, one needs to impose further conditions to guarantee that the boundary fixed point is repelling, i.e. any trajectory in $\operatorname{Int} C$ does not converge to $E_{2}$ (resp. $E_{1}$ ). Suppose $S$ is continuously differentiable in a neighborhood of $E_{1}$ and $E_{2}$, we write

[^13]$$
S\left(x_{1}, x_{2}\right)=\left(S_{1}\left(x_{1}, x_{2}\right), S_{2}\left(x_{1}, x_{2}\right)\right) \in X_{1} \times X_{2}
$$

One way is to impose linear instability in one of the boundary equilibria; see [2].
Proposition E.1.9 Let (H1)-(H4) hold, and assume that $S$ has no fixed points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$. Suppose one of the following conditions hold:

1. There exist $\delta>0, u_{1} \in C_{1} \backslash\{0\}$ such that

$$
\begin{equation*}
S_{1}\left(t u_{1}, x_{2}\right) \geq t u_{1} \quad \text { for all } 0 \leq t \leq 1 \text { and }\left(0, x_{2}\right) \in B_{\delta}\left(E_{2}\right) . \tag{E.4}
\end{equation*}
$$

2. $S: C \rightarrow C$ is continuously differentiable in a neighborhood of $E_{2}$, such that $D_{1} S_{1}\left(E_{2}\right): X_{1} \rightarrow X_{1}$ is compact and strongly positive w.r.t. $C_{1}$ and that $r\left(D_{1} S_{1}\left(E_{2}\right)\right)>1$.

Then $S^{n}(x) \rightarrow E_{1}$ for all $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$.
Proof Step 1. First, we deduce that condition 2 implies condition 1. By (H3), we deduce that $D_{2} S_{1}\left(0, x_{2}\right)=0$ for all $x_{2} \in C_{2}$. Since $D_{1} S_{1}$ is strongly monotone with respect to $C_{1}$ (i.e. $D_{1} S_{1}\left(E_{2}\right)\left(C_{1} \backslash\{0\}\right) \subset \operatorname{Int} C_{1}$ ) and $r\left(D_{1} S_{1}\left(E_{2}\right)\right)>1$, the KreinRutman Theorem asserts that there exists a $u_{1} \in \operatorname{Int} C_{1}$ such that $D_{1} S_{1}\left(E_{2}\right)\left[u_{1}\right]=$ $r\left(D_{1} S_{1}\left(E_{2}\right)\right) u_{1} \gg u_{1}$. By continuity, we can find a $\delta>0$ such that

$$
D_{1} S_{1}\left(x_{1}, x_{2}\right)\left[u_{1}\right] \geq u_{1} \quad \text { for }\left(x_{1}, x_{2}\right) \in B_{2 \delta}\left(E_{2}\right) .
$$

Next, we normalize $u_{1}$ so that $\left(t u_{1}, x_{2}\right) \in B_{2 \delta}\left(E_{2}\right)$ for all $t \in[0,1]$ and $\left(0, x_{2}\right) \in$ $B_{\delta}\left(E_{2}\right)$. Then, using the fact that $S_{1}\left(0, x_{2}\right) \equiv 0$, (E.4) can be verified as follows:

$$
S_{1}\left(t u_{1}, x_{2}\right)=\int_{0}^{1} D_{1} S_{1}\left(\tau t u_{1}, x_{2}\right)\left[t u_{1}\right] \mathrm{d} \tau \geq t u_{1}
$$

Hence condition 1 holds in both cases.
Step 2. In view of Theorem E.1.7, it suffices to show that $S^{n}\left(x_{1}, x_{2}\right) \nrightarrow E_{2}$ if $x_{i} \neq 0$ for $i=1,2$. Suppose to the contrary that $S^{n}\left(x_{1}, x_{2}\right) \rightarrow E_{2}$. Without loss of generality, we may assume that $x \in \operatorname{Int} C$ and $\left\|S^{n}\left(0, x_{2}\right)-E_{2}\right\|<\delta$ for all $n \geq 0$. Let $u_{1} \in C_{1} \backslash\{0\}$ be given by condition 1 , and choose $0<t \leq 1$ such that $t u_{1} \leq x_{1}$. By repeated applications of (E.4), we have

$$
S_{1}^{n}\left(x_{1}, x_{2}\right) \geq S_{1}^{n}\left(t u_{1}, x_{2}\right) \geq t u_{1} \quad \text { for all } n \geq 0
$$

Since $S_{1}^{n}\left(x_{1}, x_{2}\right) \rightarrow 0$, we may let $n \rightarrow \infty$ to deduce that $0 \geq t u_{1}$ for some $t>0$, i.e. $-u_{1} \in X_{1}^{+}$. This is in contradiction with $u_{1} \in C_{1} \backslash\{0\} \subset X_{1}^{+} \backslash\{0\}$.

When the two species are mutually invasible, i.e. $E_{1}$ and $E_{2}$ are both unstable, then Theorem E.1.7 yields the existence of at least one positive fixed point.

Corollary E.1.10 Let (H1)-(H4) hold. Suppose both $E_{1}$ and $E_{2}$ are linearly unstable (i.e. at least one of the two conditions of Proposition E.1.9 holds for $E_{2}$, and a symmetric statement holds for $E_{1}$ ), then there exists at least one positive fixed point $E_{*}$.

Proof By Proposition E.1.9, for each $i=1,2$ and $x=\left(x_{1}, x_{2}\right) \in C$ with $x_{i} \neq 0$, we have $S^{n}(x) \nrightarrow E_{i}$. It follows from Theorem E.1.7 that $S$ has at least one fixed point in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$.

Next, we seek to further relax the linear instability criterion. The following conditions hold, for example, for two-species Lotka-Volterra systems, as well as certain phytoplankton models.
(H5) $S$ is continuously differentiable in a neighborhood of $E_{1}$ and $E_{2}$, such that

- The map $D S\left(E_{2}\right): X \rightarrow X$ is compact and satisfies $r\left(D_{2} S_{2}\left(E_{2}\right)\right)<1$. If $r\left(D S\left(E_{2}\right)\right) \geq 1$, then

$$
D S\left(E_{2}\right)[v] \geq_{K} v \quad \text { for some } v=\left(v_{1}, v_{2}\right) \in \operatorname{Int} C_{1} \times\left(-\operatorname{Int} X_{2}^{+}\right)
$$

- The map $D S\left(E_{1}\right): X \rightarrow X$ is compact and satisfies $r\left(D_{1} S_{1}\left(E_{1}\right)\right)<1$. If $r\left(D S\left(E_{1}\right)\right) \geq 1$, then

$$
D S\left(E_{1}\right)[v] \geq_{K} v \quad \text { for some } v=\left(v_{1}, v_{2}\right) \in \operatorname{Int} X_{1}^{+} \times\left(-\operatorname{Int} C_{2}\right) .
$$

We give a sufficient condition for the first part of (H5) concerning $E_{2}$. A symmetric result holds for the second part of (H5) concerning $E_{1}$.

Lemma E.1.11 Suppose $S$ is continuously differentiable in a neighborhood of $E_{2}$, $D S\left(E_{2}\right): X \rightarrow X$ is compact, and the following conditions hold.

1. $D_{2} S_{2}\left(E_{2}\right): X_{2} \rightarrow X_{2}$ is strongly monotone w.r.t. $X_{2}^{+}$, and $r\left(D_{2} S_{2}\left(E_{2}\right)\right)<1$.
2. $D_{1} S_{1}\left(E_{2}\right): X_{1} \rightarrow X_{1}$ is strongly monotone w.r.t. $C_{1}$.
3. $D_{1} S_{2}\left(E_{2}\right)\left(v_{1}^{\prime}\right) \neq 0$ for all $v_{1}^{\prime} \in \operatorname{Int} C_{1}$.

Then the first part of (H5) concerning DS(E2) holds.
Remark E.1.12 The condition $r\left(D_{2} S_{2}\left(E_{2}\right)\right)<1$ means that the fixed point $E_{2}$ is linearly stable when $S$ is restricted to $\{0\} \times C_{2}$. The condition 3 is crucial, if one compares with the counterexample; see Problem 7.5.1.

Proof (of Lemma E.1.11) First, observe that

$$
\begin{equation*}
D S\left(E_{2}\right)\left[v_{1}, v_{2}\right]=\left(D_{1} S_{1}\left(E_{2}\right)\left[v_{1}\right], D_{1} S_{2}\left(E_{2}\right)\left[v_{1}\right]+D_{2} S_{2}\left(E_{2}\right)\left[v_{2}\right]\right) \tag{E.5}
\end{equation*}
$$

since $D_{2} S_{1}\left(E_{2}\right) \equiv 0$ due to $S\left(\{0\} \times C_{2}\right) \subset\{0\} \times C_{2}$.
Step 1. We claim that $D S\left(E_{2}\right): X \rightarrow X$ is monotone in $C_{1} \times\left(-X_{2}^{+}\right)$.
Indeed, it is clear that $D S\left(E_{2}\right)$ inherits the monotonicity with respect to $K=$ $X_{1}^{+} \times\left(-X_{2}^{+}\right)$from $S$. To improve it to $C_{1} \times\left(-X_{2}^{+}\right)$, let $v=\left(v_{1}, v_{2}\right) \in C_{1} \times\left(-X_{2}^{+}\right)$, and observe that

$$
\begin{aligned}
D S\left(E_{2}\right)[v] & =\lim _{\lambda \rightarrow 0} \frac{1}{\lambda}\left(S\left(E_{2}+\lambda v\right)-S\left(E_{2}\right)\right) \\
& =\lim _{\lambda \rightarrow 0} \frac{1}{\lambda}\left(S_{1}\left(E_{2}+\lambda v\right), S_{2}\left(E_{2}+\lambda v\right)-\hat{x}_{2}\right) \in C_{1} \times\left(-X_{2}^{+}\right)
\end{aligned}
$$

Step 2. Suppose $r:=r\left(D S\left(E_{2}\right)\right) \geq 1$, then there exists a nonzero vector $v=$ $\left(v_{1}, v_{2}\right) \in \operatorname{Int} C_{1} \times\left(-\operatorname{Int} X_{2}^{+}\right)$such that $D S\left(E_{2}\right)[v]=r v$.

It follows from the Krein-Rutman Theorem that there exists such a nonzero $v=\left(v_{1}, v_{2}\right) \in C_{1} \times\left(-X_{2}^{+}\right)$. We claim that $v_{1} \neq 0$. Suppose not, then $v_{2} \neq 0$ and we deduce from (E.5) that

$$
D_{2} S_{2}\left(E_{2}\right)\left[v_{2}\right]=r v_{2} .
$$

But this is impossible since $r\left(D_{2} S_{2}\left(E_{2}\right)\right)<1 \leq r$. Thus $v_{1} \in C_{1} \backslash\{0\}$ and is an eigenvector of $D_{1} S_{1}\left(E_{2}\right)$. Since $D_{1} S_{1}\left(E_{2}\right)$ is strongly monotone in $C_{1}$, we deduce that $v_{1} \in \operatorname{Int} C_{1}$.

It remains to prove that $v_{2} \in\left(-\operatorname{Int} X_{2}^{+}\right)$. Indeed, from (E.5) we deduce that $v_{2} \in-X_{2}^{+}$satisfies

$$
r v_{2}-D_{2} S_{2}\left(E_{2}\right) v_{2}=h
$$

where $h=D_{1} S_{2}\left(E_{2}\right)\left[v_{1}\right] \neq 0$ since $v_{1} \in \operatorname{Int} C_{1}$. Moreover, by Step 1, $D S\left(E_{2}\right)$ is monotone with respect to $C_{1} \times\left(-X_{2}^{+}\right)$, so $h \in\left(-X_{2}^{+}\right) \backslash\{0\}$. In particular $v_{2} \in\left(-X_{2}^{+}\right) \backslash$ $\{0\}$. It follows from the strong monotonicity of $D_{2} S_{2}\left(E_{2}\right)$ that $v_{2} \in\left(-\operatorname{Int} X_{2}^{+}\right)$.

We can now prove a sufficient condition for $E_{2}$ (resp. $E_{1}$ ) to be repelling.
Remark E.1.13 We give two examples that satisfy (H1)-(H5). Let $f_{i}: \bar{\Omega} \times \mathbb{R}_{+} \times \mathbb{R}_{+} \times$ $\mathbb{R}_{+} \rightarrow \mathbb{R}$ be given such that
(F) $f_{i}$ is smooth, $T$-periodic in $t$. Moreover, $f_{i}$ strictly decreasing in $u$ and in $v$.

The first example is a Lotka-Volterra type competition system.

$$
\begin{cases}\partial_{t} u-\mu_{1} \Delta u=f_{1}(x, t, u, v) u & \text { in } \Omega \times(0, \infty),  \tag{E.6}\\ \partial_{t} v-\mu_{2} \Delta v=f_{2}(x, t, u, v) v & \text { in } \Omega \times(0, \infty), \\ \mathbf{n} \cdot \nabla u=\mathbf{n} \cdot \nabla v=0 & \text { on } \partial \Omega \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in } \Omega,\end{cases}
$$

where $\Omega$ is a bounded smooth domain in $\mathbb{R}^{N}$ with outer unit normal vector $\mathbf{n}$ on $\partial \Omega, \Delta$ is the Laplacian operator, and $\nabla$ is the gradient operator. Let $X=C\left(\bar{\Omega} ; \mathbb{R}^{2}\right)$, $X_{i}^{+}=C_{i}=C\left(\bar{\Omega} ; \mathbb{R}_{+}\right)$for $i=1,2$, and $K=X_{1}^{+} \times\left(-X_{2}^{+}\right)$. If $\mu_{i}$ and $f_{i}$ satisfy (F) and additionally

$$
\mu_{i}>0, \quad f_{1}(x, t, 0,0)>0>\partial_{v} f_{1}(x, t, u, 0), \quad f_{2}(x, t, 0,0)>0>\partial_{u} f_{2}(x, t, u, 0)
$$

for all $x \in \bar{\Omega}, t, u, v \geq 0$, then the mapping $S\left(u_{0}, v_{0}\right)=(u(\cdot, T), v(\cdot, T))$ satisfies (H1)-(H5). See Lemma 7.1.3 for the proof of the autonomous case.

The second example arises in a nonlocal model where two phytoplankton species compete for light in a water column. Let $X=C\left([0, L] ; \mathbb{R}^{2}\right)$,

$$
C_{i}=C\left([0, L] ; \mathbb{R}_{+}\right) \quad X_{i}^{+}=\left\{u_{0} \in C([0, L]): \int_{0}^{x} u_{0}(y) \mathrm{d} y \geq 0 \text { for } 0 \leq x \leq L\right\}
$$

for $i=1,2$, and $K=X_{1}^{+} \times\left(-X_{2}^{+}\right)$.

$$
\begin{cases}\partial_{t} u-\mu_{1} u_{x x}+\alpha_{1} u_{x}=f_{1}\left(x, t, \int_{0}^{x} u(y, t) \mathrm{d} y, \int_{0}^{x} v(y, t) \mathrm{d} y\right) u & \text { in }[0, L] \times(0, \infty),  \tag{E.7}\\ \partial_{t} v-\mu_{2} v_{x x}+\alpha_{2} v_{x}=f_{2}\left(x, t, \int_{0}^{x} u(y, t) \mathrm{d} y, \int_{0}^{x} v(y, t) \mathrm{d} y\right) v & \text { in }[0, L] \times(0, \infty), \\ \mu_{1} \partial_{x} u-\alpha_{1} u=\mu_{2} \partial_{x} v-\alpha_{2} v=0 & \text { on }\{0, L\} \times(0, \infty), \\ u(x, 0)=u_{0}(x), \quad v(x, 0)=v_{0}(x) & \text { in }[0, L],\end{cases}
$$

where $\mu_{i}>0$ and $\alpha_{i}$ are real constants. Assume $f_{i}$ satisfies (F),

$$
\partial_{x} f_{i} \leq 0, \quad \partial_{u} f_{i}<0, \quad \partial_{v} f_{i}<0
$$

and that $f(x, t, u, v)<0$ for $\min \{u, v\}$ sufficiently large. Then the mapping $S\left(u_{0}, v_{0}\right)=(u(\cdot, T), v(\cdot, T))$ satisfies (H1)-(H5); see [6].

## Lemma E.1.14 Let (H1)-(H5) hold. Assume that

1. $E_{2}$ is an isolated fixed point.
2. There exists a fixed point $E^{*}$ such that $E_{2} \ll_{K} E^{*} \leq_{K} E_{1}$ and

$$
S^{n}(x) \rightarrow E^{*} \quad \text { for any } x=\left(x_{1}, x_{2}\right) \in\left[E_{2}, E^{*}\right] \text { such that } x_{1} \neq 0 .
$$

Then $S^{n}\left(x_{1}, x_{2}\right) \nrightarrow E_{2}$ whenever $x_{i} \neq 0$ for $i=1,2$.
Proof Step 1. There exist $m \in \mathbb{N}, 0<\lambda_{1}<1$ and $\delta_{1}>0$ such that

$$
\begin{equation*}
\left\|S^{m}\left(0, x_{2}\right)-E_{2}\right\| \leq\left(\lambda_{1}\right)^{m}\left\|\left(0, x_{2}\right)-E_{2}\right\| \quad \text { for }\left(0, x_{2}\right) \in B_{\delta_{1}}\left(E_{2}\right) . \tag{E.8}
\end{equation*}
$$

Indeed, since $r\left(D_{2} S_{2}\left(E_{2}\right)\right)<1$, we can choose $m$ and $0<\lambda_{1}<1$ such that

$$
\left\|\left(D_{2} S_{2}\left(E_{2}\right)\right)^{m}\right\|^{1 / m}<\lambda_{1} .
$$

Recalling that $E_{2}=\left(0, \hat{x}_{2}\right)$, we have

$$
S^{m}\left(0, x_{2}\right)-E_{2}=\left(0,\left(D_{2} S_{2}\left(E_{2}\right)\right)^{m}\left[x_{2}-\hat{x}_{2}\right]+o\left(\left\|x_{2}-\hat{x}_{2}\right\|\right)\right)
$$

where we used $D\left(S^{m}\right)\left(E_{2}\right)=\left(D S\left(E_{2}\right)\right)^{m}$. Hence,

$$
\left\|S^{m}\left(0, x_{2}\right)-E_{2}\right\| \leq\left(\lambda_{1}\right)^{m}\left\|\left(0, x_{2}\right)-E_{2}\right\| .
$$

This proves that (E.8) holds.

Step 2. We claim that $r\left(D S\left(E_{2}\right)\right) \geq 1$. If $r\left(D S\left(E_{2}\right)\right)<1$, then $E_{2}$ is locally asymptotically stable. This is impossible since $E^{*}$ attracts points $\left(x_{1}, x_{2}\right) \in\left[E_{2}, E^{*}\right]$ with $x_{1} \neq 0$.

Step 3. There exist real numbers $\lambda_{2} \in\left(\lambda_{1}, 1\right), \delta \in\left(0, \delta_{1}\right]$, and a vector $v=\left(v_{1}, v_{2}\right) \in$ Int $C_{1} \times\left(-\operatorname{Int} X_{2}^{+}\right)$such that

$$
\begin{equation*}
S\left(t v_{1}, t v_{2}+x_{2}\right) \geq_{K} \lambda_{2} t\left(v_{1}, v_{2}\right)+S\left(0, x_{2}\right) \quad \text { if } 0<t \leq 1, \quad \text { and } \quad\left(0, x_{2}\right) \in B_{\delta}\left(E_{2}\right) . \tag{E.9}
\end{equation*}
$$

Indeed, let $v$ be given by (H5). Fixing an arbitrary $\lambda_{2} \in\left(\lambda_{1}, 1\right)$, we have $D S\left(E_{2}\right)[v] \gg_{K} \lambda_{2} v$. By continuity, there exists a $\delta \in\left(0, \delta_{1}\right]$ such that $D S(x)[v] \geq_{K}$ $\lambda_{2} v$ for $x \in B_{2 \delta}\left(E_{2}\right)$. By scaling $v$, we may assume that $\left(t v_{1}, \pm t v_{2}+x_{2}\right) \in B_{2 \delta}\left(E_{2}\right)$ for all $t \in[0,1]$ and $\left(0, x_{2}\right) \in B_{\delta}\left(E_{2}\right)$. Therefore,

$$
S\left(t v_{1}, t v_{2}+x_{2}\right)-S\left(0, x_{2}\right)=\int_{0}^{1} D S\left(\tau t v_{1}, \tau t v_{2}+x_{2}\right)[t v] \mathrm{d} \tau \geq_{K} \lambda_{2} t v
$$

This proves (E.9).
Step 4. We claim that $S^{n}\left(x_{1}, x_{2}\right) \nrightarrow E_{2}$ whenever $x_{i} \neq 0$ for $i=1,2$.
Assume to the contrary that $S^{n}\left(x_{1}, x_{2}\right) \rightarrow E_{2}$. We may again reduce to the case that $\left(x_{1}, x_{2}\right) \in \operatorname{Int} C$, and $\left\|S^{n}\left(x_{1}, x_{2}\right)-E_{2}\right\|<\delta$ for all $n \geq 0$. By the fact that $E_{2} \ll_{K} E^{*}$, we may further assume that $S^{n}\left(x_{1}, x_{2}\right) \leq_{K} E^{*}$ for all $n$.

By Step 1, and scaling $v=\left(v_{1}, v_{2}\right)$ if necessary, we may assume in addition that $S^{n}\left(0, x_{2}-t v_{2}\right) \in B_{\delta}\left(E_{2}\right)$ for all $n \geq 0$ and $0 \leq t \leq 1$.

Fix $0<t \leq 1$ such that $x_{1} \geq t v_{1}$. By Step 3, we have

$$
S(x) \geq_{K} S\left(t v_{1}, x_{2}\right) \geq_{K} \lambda_{2} t v+S\left(0, x_{2}-t v_{2}\right)
$$

Repeating the process, we deduce that, for each $n$,

$$
\begin{aligned}
S^{n}(x) & \geq_{K}\left(\lambda_{2}\right)^{n} t v+S^{n}\left(0, x_{2}-t v_{2}\right) \\
& =\left(\lambda_{2}\right)^{n} t\left[v+\frac{1}{\left(\lambda_{2}\right)^{n} t}\left(S^{n}\left(0, x_{2}-t v_{2}\right)-E_{2}\right)\right]+E_{2} \\
& =\left(\lambda_{2}\right)^{n} t\left[v+w_{n}\right]+E_{2}
\end{aligned}
$$

By taking $n=k m$, where $m$ is given by Step 1, we have $\left\|w_{n}\right\| \leq C\left(\lambda_{1} / \lambda_{2}\right)^{n}$ if $n=k m$ for some integer $k$. Since $v \in \operatorname{Int} K$, we may send $n=k m \rightarrow \infty$, to deduce that $S^{k m}(x) \gg_{K} E_{2}$ for all sufficiently large $k$. Hence, $E_{2} \ll_{K} S^{n}(x) \leq_{K} E^{*}$ for some $n$. But that would imply that $S^{n}(x) \rightarrow E^{*}$ as $n \rightarrow \infty$. This is a contradiction.

We can now prove a stronger version of the trichotomy result in Theorem E.1.7.

Theorem E.1.15 Let $(\mathrm{H} 1)-(\mathrm{H} 5)$ hold and let $I=\left[E_{2}, E_{1}\right]_{K}$. Then the omega limit set $\omega(x) \subset I$ for every $x \in C$, and the following trichotomy holds:

1. $S$ has at least one fixed point in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$.
2. $S^{n}(x) \rightarrow E_{1}$ for all $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$.
3. $S^{n}(x) \rightarrow E_{2}$ for all $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$.

Proof Suppose $S$ has no fixed points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$. It follows from Theorem E.1.7 that

$$
\begin{equation*}
S^{n}(x) \rightarrow E_{1} \text { or } E_{2} \quad \text { if } x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0, i=1,2 . \tag{E.10}
\end{equation*}
$$

Moreover, one of $E_{1}, E_{2}$ attracts all positive orbits in $I$. Suppose for definiteness that $E_{1}$ is the stable fixed point relative to $I$. It then follows from Lemma E.1.14 (taking $\left.E^{*}=E_{1}\right)$ that $S^{n}(x) \nrightarrow E_{2}$ for any $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$. It then follows from (E.10) that $S^{n}(x) \rightarrow E_{1}$ for any $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$.

If the first alternative of Theorem E.1.15 holds, we can impose a further condition to derive a global attractivity result.

Theorem E.1.16 Let (H1)-(H5) hold, and assume that $S$ has at least one positive fixed point. Assume further that every positive fixed point is locally asymptotically stable, then there is a unique positive fixed point $E^{*}$ such that $S^{n}(x) \rightarrow E^{*}$ for every $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0$ for $i=1,2$.

Proof Let $E^{*}=\left(u^{*}, v^{*}\right)$ be a positive fixed point of $S$. Observe by (H3) that $E_{2} \ll_{K}$ $E^{*} \ll_{K} E_{1}$. Next, let $E^{\prime}$ be a maximal equilibrium in $\left[E_{2}, E^{*}\right] \backslash\left\{E^{*}\right\}$. Such a choice is possible thanks to Lemma D.1.7 and the fact that $E^{*}$ is isolated, so that the set of equilibria in $\left[E_{2}, E^{*}\right] \backslash\left\{E^{*}\right\}$ is compact. Then $E^{\prime}<_{K} E^{*}$ and $\left[E^{\prime}, E^{*}\right] \backslash\left\{E^{\prime}, E^{*}\right\}$ contains no equilibrium. It follows from the local asymptotic stability of $E^{*}$, and Lemma D.1.3, that there is a strict increasing sequence $\left\{x_{n}\right\}_{n=-\infty}^{\infty} \subset \operatorname{Int}\left[E^{\prime}, E^{*}\right]$ such that $S\left(x_{n}\right)=x_{n+1}$ for all $n, \lim _{n \rightarrow-\infty} x_{n}=E^{\prime}$ and $\lim _{n \rightarrow \infty} x_{n}=E^{*}$. In particular, $E^{\prime}$ is a fixed point in $\left[E_{2}, E^{*}\right]$ which is not locally asymptotically stable. Since every positive fixed point is locally asymptotically stable, it follows that $E^{\prime}=E_{2}$. This proves the existence of a connecting orbit $\left\{x_{n}\right\}_{n \in \mathbb{Z}}$ connecting $E_{2}$ to $E^{*}$. Similarly, there exists a second connecting orbit connecting $E_{1}$ to $E^{*}$. By comparison, it follows that

$$
S\left(x_{1}, x_{2}\right) \rightarrow E^{*} \quad \text { for all }\left(x_{1}, x_{2}\right) \in I, x_{i} \neq 0, i=1,2 .
$$

In particular, both $E_{1}$ and $E_{2}$ are not linearly stable, i.e. $r\left(D S\left(E_{i}\right)\right) \geq 1$ for $i=1,2$.
Next, we apply Lemma E.1.14 to conclude that $E_{2}$ (and similarly $E_{1}$ ) is repelling.
Finally, given $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1$, 2. Theorem E.1.7 implies that the omega limit set of $x$ belongs to $I=\left[E_{2}, E_{1}\right]$. Since $S^{n}(x) \nrightarrow E_{i}$ for $i=1,2$, it follows (as in Step 3 in the proof of Theorem E.1.7) that the omega limit set contains a point $x^{\prime}=\left(x_{1}^{\prime}, x_{2}^{\prime}\right) \in I$ such that $x_{i}^{\prime} \neq 0$ for both $i=1$, 2 . Then $E_{2} \ll_{K} S^{2}\left(x^{\prime}\right) \ll_{K} E_{1}$, and thus $E_{2} \ll_{K} S^{n}(x) \ll_{K} E_{1}$ for some $n \gg 1$. By comparing with the connecting orbits connecting $E_{i} \rightarrow E^{*}$, it follows that $S^{n}(x) \rightarrow E^{*}$.

Theorem E.1.17 (Hess and Lazer's compression result) Let (H1)-(H4) hold. Suppose $S: C \rightarrow C$ is continuously differentiable in a neighborhood of $E_{1}$ and $E_{2}$, and the following conditions hold:

- $D_{2} S_{2}\left(E_{1}\right): X_{1} \rightarrow X_{1}$ is compact and strongly positive w.r.t. $C_{2}$ and we have $r\left(D_{2} S_{2}\left(E_{1}\right)\right)>1$.
- $D_{1} S_{1}\left(E_{2}\right): X_{2} \rightarrow X_{2}$ is compact and strongly positive w.r.t. $C_{1}$ and we have $r\left(D_{1} S_{1}\left(E_{2}\right)\right)>1$.

Then there exist fixed points $E_{*}, E^{*}$, such that $E_{2} \ll_{K} E_{*} \leq_{K} E^{*} \ll_{K} E_{1}$ and

1. $S^{n}(x) \rightarrow E_{*}$ for $x=\left(x_{1}, x_{2}\right) \in\left[E_{2}, E_{*}\right], x_{1} \neq 0$.
2. $S^{n}(x) \rightarrow E^{*}$ for $x=\left(x_{1}, x_{2}\right) \in\left[E^{*}, E_{1}\right], x_{2} \neq 0$.
3. For any $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$, the omega limit set $\omega(x)$ satisfies

$$
\omega(x) \subset\left[E_{*}, E^{*}\right] .
$$

If, in addition, $E_{*}=E^{*}$, then $S^{n}(x) \rightarrow E^{*}$ for all $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$.
See Figure E. 1 for an illustration.

![](https://cdn.mathpix.com/cropped/2025_08_14_1e3a56149b9d0af909afg-307.jpg?height=491&width=577&top_left_y=998&top_left_x=478)
Fig. E.1: A diagram illustrating the compression result (Theorem E.2.15).

Proof We leave this as an exercise.
Corollary E.1.18 Assume, in addition to the assumptions of Theorem E.1.17, that every positive fixed point is locally asymptotically stable, then there is a unique positive fixed point $E^{*}$ such that $S^{n}(x) \rightarrow E^{*}$ for every $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0$ for $i=1,2$.

Proof We leave this as an exercise.

## E. 2 Continuous-Time Competition Systems

We now formulate a continuous-time version of the results in the previous section. Assume that $\Phi:[0, \infty) \times C \rightarrow C$ is a continuous semiflow. We write $\Phi_{t}(x)=\Phi(t, x)$. The semiflow properties are (i) $\Phi_{0}(x)=x$ for all $x \in C$, and (ii) $\Phi_{t} \circ \Phi_{s}=\Phi_{t+s}$ for all $t, s \geq 0$. The analogous hypotheses to (H1)-(H4) above are given below
(H1') $\Phi_{t}$ is order compact for each $t>0$ and strictly monotone with respect to $<_{K}$. That is, $x<_{K} \bar{x}$ implies $\Phi_{t}(x)<_{K} \Phi_{t}(\bar{x})$.
(H2') For each $t>0$, there exist maps $\eta: C \rightarrow X$ and $f_{i}: C_{i} \rightarrow C_{i}(i=1,2)$ such that

$$
\Phi_{t}\left(x_{1}, x_{2}\right)=\left(f_{1}\left(x_{1}\right), f_{2}\left(x_{2}\right)\right)+\eta\left(x_{1}, x_{2}\right)
$$

where $\|\eta(x)\| /\|x\| \rightarrow 0$ as $\|x\| \rightarrow 0$ and $f_{i}$ is compact, positively homogeneous of degree one, strongly monotone with respect to the order generated by $C_{i}$, and $\tilde{r}_{C_{i}}\left(f_{i}\right)>1$.
(H3') $\Phi_{t}\left(C_{1} \times\{0\}\right) \subset C_{1} \times\{0\}$ for $t \geq 0$. There exists an $\hat{x}_{1} \in \operatorname{Int} C_{1}$ such that $E_{1}=\left(\hat{x}_{1}, 0\right)$ is an equilibrium of $\Phi_{t}$, and $\Phi_{t}\left(x_{1}, 0\right) \rightarrow\left(\hat{x}_{1}, 0\right)$ as $t \rightarrow \infty$ for every $x_{1} \in C_{1} \backslash\{0\}$. The symmetric conditions hold for $\Phi_{t}$ on $\{0\} \times C_{2}$, where the equilibrium is denoted by $E_{2}=\left(0, \hat{x}_{2}\right)$.
(H4') If $x, y \in C$ satisfy $x<_{K} y$ and at least one of $x, y$ belongs to $\operatorname{Int} C$, then $\Phi_{t}(x) \ll_{K} \Phi_{t}(y)$ for $t>0$. If $x=\left(x_{1}, x_{2}\right) \in C$ satisfies $x_{i} \neq 0$ for $i=1,2$, then $\Phi_{t}(x) \gg_{C} 0$ for $t>0$.
Here $\tilde{r}_{C_{1}}\left(f_{i}\right)$ is the Bonsall cone spectral radius; see Definition B.2.5.
Remark E.2.1 (A sufficient condition for (H2')) Suppose $\Phi_{t}$ is continuously differentiable in $I$, then (H3') implies that

$$
D \Phi_{t}(0,0)\left[y_{1}, y_{2}\right]=\left(T_{1} y_{1}, T_{2} y_{2}\right)
$$

for some compact linear operator $T_{i}$ which is monotone with respect to $C_{i}$ (i.e. $T_{i}\left(C_{i}\right) \subset C_{i}$ ). In this case, the requirement of (H2') is that $T_{i}$ is strongly monotone and that there is an $\bar{x}_{i} \in C_{i}$ such that $T_{i}\left(\bar{x}_{i}\right) \gg_{C_{i}} \bar{x}_{i}$. Indeed, this implies that $\tilde{r}_{C_{i}}\left(T_{i}\right)=r\left(T_{i}\right)>1$, where $r\left(T_{i}\right)$ is the usual spectral radius for linear operators, and the equality follows from Lemma B.4.9.

We have introduced the boundary equilibrium points of $\Phi_{t}$ :

$$
E_{0}=(0,0), \quad E_{1}=\left(\hat{x}_{1}, 0\right), \quad E_{2}=\left(0, \hat{x}_{2}\right) .
$$

We say that an equilibrium point $E_{*}$ is positive if it belongs to the interior of $C$. The ordered interval $I=\left[E_{2}, E_{1}\right]_{K}=\left[\left(0, \hat{x}_{2}\right),\left(\hat{x}_{1}, 0\right)\right]_{K}$ will play an important role.

Lemma E.2.2 Suppose (H3') holds. Then for each $x \in C$ such that $x<_{K} E_{0}$ or $x>_{K} E_{0}, \Phi_{t}(x) \rightarrow E_{1}$ or $\Phi_{t}(x) \rightarrow E_{2}$ as $t \rightarrow \infty$

Proof Suppose $x=\left(x_{1}, x_{2}\right) \in C$ is such that $x<_{K} E_{0}$ or $x>_{K} E_{0}$, then $x \neq E_{0}$ and either $x_{1}=0$ or $x_{2}=0$. In this case, (H3') implies that $\Phi_{t}(x) \rightarrow E_{1}$ or $E_{2}$.

Lemma E.2.3 Suppose (H2') holds. Let $t>0$ be given and let $S=\Phi_{t}$. Then there exists a $\delta>0$ such that $E_{0}=(0,0)$ is the unique fixed point of $S$ in $\bar{B}_{\delta}\left(E_{0}\right)=\{x \in$ $I:\|x\| \leq \delta\}$, and $i\left(S, B_{\delta}\left(E_{0}\right), I\right)=0$.

Proof See the proof of Lemma E.1.5.
Remark E.2.4 (H2') can be replaced the weaker assumption that $E_{0}$ is an extreme point with respect to $I$ and is an ejective point with respect to the semiflow $\Phi_{t}$. See Remark D.1.5.

Theorem E.2.5 Let (H1')-(H4') hold. Then the omega limit set $\omega(x)$ of every orbit is contained in $I=\left[E_{2}, E_{1}\right]_{K}$. Suppose, in addition, that $S$ has no equilibrium points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$, then for each $x \in C \backslash\left\{E_{0}\right\}$,

$$
\Phi_{t}(x) \rightarrow E_{1} \quad \text { or } \quad \Phi_{t}(x) \rightarrow E_{2} \quad \text { as } t \rightarrow \infty .
$$

Moreover, exactly one of the following holds:

1. $\Phi_{t}(x) \rightarrow E_{1}$ as $t \rightarrow \infty$ for every $x=\left(x_{1}, x_{2}\right) \in I$ with $x_{i} \neq 0, i=1,2$.
2. $\Phi_{t}(x) \rightarrow E_{2}$ as $t \rightarrow \infty$ for every $x=\left(x_{1}, x_{2}\right) \in I$ with $x_{i} \neq 0, i=1,2$.

Proof First, we show that $\omega(x) \subset I$ for every $x \in C$. If one of the components of $x$ is trivial, then (H3') says that $\Phi_{t}(x) \rightarrow E_{i}$ for some $i=0,1,2$, and we are done. It remains to consider $x=\left(x_{1}, x_{2}\right)$ such that $x_{i} \neq 0$ for $i=1,2$. Then $\left(0, x_{2}\right) \leq_{K}\left(x_{1}, x_{2}\right) \leq_{K}\left(x_{1}, 0\right)$ and hence

$$
\Phi_{t}\left(0, x_{2}\right) \leq_{K} \Phi_{t}\left(x_{1}, x_{2}\right) \leq_{K} \Phi_{t}\left(x_{1}, 0\right) \quad \text { for } t \geq 0
$$

Letting $t \rightarrow \infty$ we deduce that $\omega(x) \subset I$.
Henceforth, we assume $\Phi_{t}$ has no equilibrium points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$.
By Lemmas E.2.2 and E.2.3, we have verified (i)-(ii) in Lemma D.2.1. Since $\Phi$ has no other fixed points in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$, either alternative (b) or (c) of Lemma D.2.1 holds, i.e., there exists at least one monotone orbit $\gamma: \mathbb{R} \rightarrow I$ connecting $E_{1}$ and $E_{2}$. By Step 1 in the proof of Theorem E.1.7, either there exists a strictly increasing orbit connecting $E_{2}$ to $E_{1}$, or a strictly decreasing orbit connecting $E_{1}$ to $E_{2}$, but not both. We can now argue as in Steps 2 and 3 in the proof of Theorem E.1.7 to conclude.

Corollary E.2.6 Let (H1')-(H4') hold. Then $\Phi$ has a positive equilibrium point if one of the following holds.

- (bistability) Both $E_{1}$ and $E_{2}$ are locally asymptotically stable relative to $I$.
- (mutual invasibility) Both $E_{1}$ and $E_{2}$ are unstable relative to $I$.
- (persistence) There is a point $x \in X$ such that $\omega(x) \cap \operatorname{Int} C$ is nonempty.

Proof If $\Phi$ has no positive equilibrium points, then by Theorem E.2.5, there is a connecting orbit $\gamma(t)$ connecting $E_{1}$ and $E_{2}$ and for each $x \in C \backslash\{0\}, \Phi_{t} \rightarrow E_{1}$ or $E_{2}$. This is incompatible with any of the three conditions in the statement of the corollary.

Next, we formulate a sufficient condition to ensure no internal trajectories converge to $E_{2}$ (resp. $E_{1}$ ). For this purpose, we write

$$
\Phi_{t}\left(x_{1}, x_{2}\right)=\left(\Phi_{t}^{(1)}\left(x_{1}, x_{2}\right), \Phi_{t}^{(2)}\left(x_{1}, x_{2}\right)\right)
$$

where $\Phi_{t}^{(i)}:\left(C_{1} \times C_{2}\right) \rightarrow C_{i}$ is continuous and order compact.
In general, the nonexistence of positive equilibria does not imply that one of $E_{1}, E_{2}$ attracts all trajectories; see Problem 7.5.1. To prove that $E_{1}$ (resp. $E_{2}$ ) attracts all trajectories, one needs to impose further conditions to guarantee that any trajectory in Int $C$ does not converge to $E_{2}$ (resp. $E_{1}$ ). For this purpose, we introduce the following assumption. We suppose $\Phi_{t}$ is continuously differentiable in a neighborhood of $E_{1}$ and $E_{2}$, and write

$$
\Phi_{t}\left(x_{1}, x_{2}\right)=\left(\Phi_{t}^{(1)}\left(x_{1}, x_{2}\right), \Phi_{t}^{(2)}\left(x_{1}, x_{2}\right)\right) \in X_{1} \times X_{2} .
$$

One way is to impose linear instability in one of the boundary equilibria. This was originally proved in [2].
Proposition E.2.7 Let (H1')-(H4') hold, and assume that $\Phi_{t}$ has no equilibria in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$. Suppose one of the following conditions hold:

1. There exist $\tau, \delta>0, u_{1} \in C_{1} \backslash\{0\}$ such that

$$
\begin{equation*}
\Phi_{\tau}\left(s u_{1}, x_{2}\right) \geq s u_{1} \quad \text { for all } 0 \leq s \leq 1 \text { and }\left(0, x_{2}\right) \in B_{\delta}\left(E_{2}\right) . \tag{E.11}
\end{equation*}
$$

2. For some $\tau>0, \Phi_{\tau}: C \rightarrow C$ is continuously differentiable in a neighborhood of $E_{2}$, such that $D_{1} \Phi_{\tau}^{(1)}\left(E_{2}\right): X_{2} \rightarrow X_{2}$ is compact and strongly positive w.r.t. $C_{1}$ and $r\left(D_{1} \Phi_{\tau}^{(1)}\left(E_{2}\right)\right)>1$.
Then $\Phi_{t}(x) \rightarrow E_{1}$ as $t \rightarrow \infty$ for all $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$.
Proof By Theorem E.2.5, it suffices to ensure that $\Phi_{t}(x) \nrightarrow E_{2}$ for each $\left(x_{1}, x_{2}\right) \in C$, $x_{i} \neq 0$. Suppose to the contrary that $\Phi_{t}(x) \rightarrow E_{2}$ for some $x$, then we can repeat the proof of Proposition E.1.9 to derive a contradiction.

When the two species are mutually invasible, i.e. $E_{1}$ and $E_{2}$ are both unstable, then Theorem E.2.5 yields the existence of at least one positive fixed point.
Corollary E.2.8 Let (H1')-(H4') hold. Suppose both $E_{1}$ and $E_{2}$ are linearly unstable (i.e. at least one of the two conditions of Proposition E.2.7 holds for $E_{2}$, and a symmetric statement holds for $E_{1}$ ), then the semiflow has at least one positive equilibrium $E_{*}$.

Proof By Proposition E.2.7, for each $i=1,2$ and $\left(x_{1}, x_{2}\right) \in C$ with $x_{i} \neq 0$, we have $\Phi_{t}\left(x_{1}, x_{2}\right) \nrightarrow E_{i}$. It follows from Theorem E.2.5 that $\Phi_{t}$ has at least one equilibrium in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$.

Next, we seek to further relax the linear instability criterion. The following conditions holds, for example, for two-species Lotka-Volterra systems with diffusion (see Chapter 7), as well as certain phytoplankton models (see Chapter 8).
(H5') For each $t>0, \Phi_{t}$ is continuously differentiable, and the following hold.

- The map $D \Phi_{t}\left(E_{2}\right): X \rightarrow X$ is compact and $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)<1$ for all $t>0$. If $r\left(D \Phi_{\tau}\left(E_{2}\right)\right) \geq 1$ for some $\tau$, then we have

$$
D \Phi_{\tau}\left(E_{2}\right)[v] \geq_{K} v \quad \text { for some } v=\left(v_{1}, v_{2}\right) \in \operatorname{Int} C_{1} \times\left(-\operatorname{Int} X_{2}^{+}\right)
$$

- The map $D \Phi_{t}\left(E_{1}\right): X \rightarrow X$ is compact and $r\left(D_{1} \Phi_{t}^{(1)}\left(E_{1}\right)\right)<1$ for all $t>0$. If $r\left(D \Phi_{\tau}\left(E_{1}\right)\right) \geq 1$ for some $\tau$, then we have

$$
D \Phi_{\tau}\left(E_{1}\right)[v] \geq_{K} v \quad \text { for some } v=\left(v_{1}, v_{2}\right) \in \operatorname{Int} X_{1}^{+} \times\left(-\operatorname{Int} C_{2}\right) .
$$

Remark E.2.9 In Chapter 7, we verify that the semiflow $\Phi_{t}$ generated by the twospecies diffusive Lotka-Volterra competition system satisfies (H1')-(H5'). As a consequence, for each fixed $T>0$, the mapping $S=\Phi_{T}$ verifies (H1)-(H5).

We give a sufficient condition for the first part of (H5') concerning $E_{2}$. A symmetric condition holds for the latter part of (H5') concerning $E_{1}$.

Lemma E.2.10 Suppose that $\Phi_{t}$ is continuously differentiable in a neighborhood of $E_{2}$, and $D \Phi_{t}\left(E_{2}\right)$ is compact for all $t>0$. In addition, suppose the following conditions hold for all $t>0$.

1. $D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)$ is strongly monotone w.r.t. $X_{2}^{+}$, and $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)<1$;
2. $D_{1} \Phi_{t}^{(1)}\left(E_{2}\right)$ is strongly monotone w.r.t. $C_{1}$;
3. $D_{1} \Phi_{t}^{(2)}\left(E_{2}\right)\left(v_{1}^{\prime}\right) \neq 0$ for all $v_{1}^{\prime} \in C_{1} \backslash\{0\}$.

Then (H5') holds.
Remark E.2.11 The condition $r\left(D_{2} \Phi_{t}^{(2)}\left(E_{2}\right)\right)<1$ means that the equilibrium $E_{2}$ is linearly stable when the semiflow is restricted to $\{0\} \times C_{2}$. The condition 3 is crucial, if one compares with the counterexample; see Problem 7.5.1.

Proof (of Lemma E.2.10) This is analogous to Lemma E.1.11.
We can now prove a sufficient condition for $E_{2}$ (resp. $E_{1}$ ) to be repelling.

## Lemma E.2.12 Let (H1')-(H5') hold. Assume that

(i) $E_{2}$ is an isolated equilibrium.
(ii) There exists an equilibrium $E^{*}=\left(x_{1}^{*}, x_{2}^{*}\right) \gg_{K} E_{2}$ such that

$$
\Phi_{t}(x) \rightarrow E^{*} \quad \text { for any } x=\left(x_{1}, x_{2}\right) \in\left[E_{2}, E^{*}\right] \text { such that } x_{1} \neq 0 .
$$

Then $\Phi_{t}\left(x_{1}, x_{2}\right) \nrightarrow E_{2}$ whenever $x_{i} \neq 0$ for $i=1,2$.
Proof By the assumptions, $E_{2}$ is not locally asymptotically stable, so that for all $t>0, r\left(D \Phi_{t}\left(E_{2}\right)\right) \geq 1$.

Suppose to the contrary that $\Phi_{t}(x) \rightarrow E_{2}$ for some $x=\left(x_{1}, x_{2}\right), x_{i} \neq 0$, then $S^{n}(x) \rightarrow E_{2}$, where $S=\Phi_{\tau}$ for some $\tau>0$. One can then repeat the proof of Lemma E.1.14 to obtain a contradiction.

We can now prove a stronger version of the trichotomy result in Theorem E.2.5.
Theorem E.2.13 Let (H1')-(H5') hold and let $I=\left[E_{2}, E_{1}\right]_{K}$. Then the omega limit set $\omega(x) \subset I$ for every $x \in C$, and the following trichotomy holds:

1. $\Phi_{t}$ has at least one equilibrium in $\operatorname{Int} I$;
2. $\Phi_{t}(x) \rightarrow E_{1}$ for all $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$;
3. $\Phi_{t}(x) \rightarrow E_{2}$ for all $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$.

Proof Suppose $\Phi_{t}$ has no equilibrium in $\operatorname{Int} I$, then it follows from (H3') that it has no equilibrium in $I \backslash\left\{E_{0}, E_{1}, E_{2}\right\}$. By Theorem E.2.5,

$$
\begin{equation*}
\Phi_{t}(x) \rightarrow E_{1} \text { or } E_{2}, \quad \text { if } x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0, i=1,2 . \tag{E.12}
\end{equation*}
$$

Moreover, one of $E_{1}, E_{2}$ attracts all positive orbits in $I$. Suppose for definiteness that $E_{1}$ is the stable equilibrium relative to $I$. It then follows from Lemma E.2.12 (taking $\left.E^{*}=E_{1}\right)$ that $\Phi_{t}(x) \nrightarrow E_{2}$ for any $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$. It then follows from (E.12) that $\Phi_{t}(x) \rightarrow E_{1}$ for any $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0, i=1,2$.

If the first alternative of Theorem E.1.15 holds, we can impose a further condition to derive a global attractivity result.

Theorem E.2.14 Let (H1')-(H5') hold, and assume that $S$ has at least one positive fixed point. Assume further that every positive fixed point is locally asymptotically stable, then there is a unique positive equilibrium $E_{*}$ such that $\Phi_{t}(x) \rightarrow E_{*}$ for every $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0$ for $i=1,2$.

Proof This is analogous to Theorem E.1.16. We omit the details.
Theorem E.2.15 (Hess and Lazer's compression result, continuous version) Let (H1')-(H4') hold. Suppose $\Phi_{t}: C \rightarrow C$ is continuously differentiable in a neighborhood of $E_{1}$ and $E_{2}$, and the following conditions hold:

- For some $\tau>0, D_{2} \Phi_{\tau}^{(2)}\left(E_{1}\right): X_{1} \rightarrow X_{1}$ is compact and strongly positive w.r.t. $C_{2}$ and that $r\left(D_{2} \Phi_{\tau}^{(2)}\left(E_{1}\right)\right)>1$.
- For some $\tau>0, D_{1} \Phi_{\tau}^{(1)}\left(E_{2}\right): X_{2} \rightarrow X_{2}$ is compact and strongly positive w.r.t. $C_{1}$ and that $r\left(D_{1} \Phi_{\tau}^{(1)}\left(E_{2}\right)\right)>1$.

Then there exist fixed points $E_{*}, E^{*}$, such that $E_{2} \ll_{K} E_{*} \leq_{K} E^{*} \ll_{K} E_{1}$ and

1. $\Phi_{t}(x) \rightarrow E_{*}$ for $x=\left(x_{1}, x_{2}\right) \in\left[E_{2}, E_{*}\right], x_{1} \neq 0$.
2. $\Phi_{t}(x) \rightarrow E^{*}$ for $x=\left(x_{1}, x_{2}\right) \in\left[E^{*}, E_{1}\right], x_{2} \neq 0$.
3. For any $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$, the omega limit set $\omega(x)$ satisfies

$$
\omega(x) \subset\left[E_{*}, E^{*}\right]
$$

If, in addition, $E_{*}=E^{*}$, then $\Phi_{t}(x) \rightarrow E^{*}$ for all $x=\left(x_{1}, x_{2}\right) \in C, x_{i} \neq 0$.
See Figure E. 1 for an illustration.

Proof We leave this as an exercise.
Corollary E.2.16 Assume, in addition to the assumptions of Theorem E.2.15, that every positive equilibrium is locally asymptotically stable, then there is a unique positive equilibrium $E^{*}$ such that $\Phi_{t}(x) \rightarrow E^{*}$ as $t \rightarrow \infty$ for every $x=\left(x_{1}, x_{2}\right) \in C$ such that $x_{i} \neq 0$ for $i=1,2$.

Proof We leave this as an exercise.

## E. 3 Further Reading

The abstract treatment of competitive system was initiated by Hess and Lazer [2], who first observed that the dynamics of two-species competition systems have common features regardless of the fine details of the model, or its dimension. Hsu, Waltman and Ellermeyer [5] considered continuous time competitive systems using monotone dynamical systems theory, which was later extended in [4]. Further progress, particularly on the bistable dynamics and saddle point behaviors, was obtained in [7, 9, 11]. Building on the framework of [4], we show that diffusive Lotka-Volterra systems satisfy an additional hypothesis and deduce an improved trichotomy result for long-time dynamics (Theorem 7.1.6). This improves an earlier result in [8]. See [10] for a recent review article.

## Problems

E.3.1 Prove Theorem E.1.17 or Theorem E.2.15.
E.3.2 Prove Corollary E.1.18 or Corollary E.2.16.

## References

1. P. Hess, Periodic-parabolic boundary value problems and positivity, vol. 247 of Pitman Research Notes in Mathematics Series, Longman Scientific \& Technical, Harlow; copublished in the United States with John Wiley \& Sons, Inc., New York, 1991.
2. P. Hess and A. C. Lazer, On an abstract competition model and applications, Nonlinear Anal., 16 (1991), pp. 917-940.
3. S.-B. Hsu, K.-Y. Lam, and F.-B. Wang, Single species growth consuming inorganic carbon with internal storage in a poorly mixed habitat, J. Math. Biol., 75 (2017), pp. 1775-1825.
4. S. B. Hsu, H. L. Smith, and P. Waltman, Competitive exclusion and coexistence for competitive systems on ordered Banach spaces, Trans. Amer. Math. Soc., 348 (1996), pp. 4083-4094.
5. S.-B. Hsu, P. Waltman, and S. F. Ellermeyer, A remark on the global asymptotic stability of a dynamical system modeling two species competition, Hiroshima Math. J., 24 (1994), pp. 435-445.
6. D. Jiang, K.-Y. Lam, Y. Lou, and Z.-C. Wang, Monotonicity and global dynamics of a nonlocal two-species phytoplankton model, SIAM J. Appl. Math., 79 (2019), pp. 716-742.
7. J. Jiang, X. Liang, and X.-Q. Zhao, Saddle-point behavior for monotone semiflows and reaction-diffusion models, J. Differential Equations, 203 (2004), pp. 313-330.
8. K.-Y. Lam and D. Munther, A remark on the global dynamics of competitive systems on ordered Banach spaces, Proc. Amer. Math. Soc., 144 (2016), pp. 1153-1159.
9. X. Liang and J. Jiang, On the finite-dimensional dynamical systems with limited competition, Trans. Amer. Math. Soc., 354 (2002), pp. 3535-3554.
10. H. L. Smith, Monotone dynamical systems: reflections on new advances \& applications, Discrete Contin. Dyn. Syst., 37 (2017), pp. 485-504.
11. H. L. Smith and H. R. Thieme, Stable coexistence and bi-stability for competitive systems on ordered Banach spaces, J. Differential Equations, 176 (2001), pp. 195-222.

## Index

adaptive dynamics, 209
adjoint bundle, 81
Arzelà-Ascoli Theorem, 239
bistability, 305
Bonsall cone spectral radius, 257
boundary point lemma, 7
chain recurrent, 201
chain transitive, 201
comparison principle, 9
compression result, 303, 308
concentration phenomena, 98
cone, 13, 255
cone, solid, 13, 255
cone, total, 13, 255
connecting orbit, 283
conormal boundary condition, 80
conormal boundary operator, 80
continuously stable strategy, 217
cooperative systems, 59
critical diffusion rate, 103
critical domain size, 105, 126
cumulative distribution function, 180
dimorphism, 218
drift paradox, 107
Duhamel's principle, 16
eigenfunction, 15, 34
entire solution, 148
equilibrium, 97
eutrophic ecosystems, 177
evolutionary branching point, 219
evolutionary stable strategy, 216
exponential separation, 82
Fisher-KPP equation, 115
fixed point index, 252
forward invariant, 296
Fredholm alternative, 22
frequency, 45
Gateaux derivative, 46
Gelfand's formula, 257
generalized relative entropy, 85
globally asymptotically stable, 98
growth lemma, 8
Hahn-Banach theorem, 266
Hamilton-Jacobi equation, 133, 240
Harnack principle, 12
Harnack's inequality, 11
homeomorphism, 107
homogeneous, 257
homotopy invariance, 252
ideal free distribution, 54
invariant, 296
invasibility, 158
Krein-Rutman theorem for maps, 263

Krein-Rutman theorem, strong, 14, 258
Krein-Rutman theorem, weak, 14, 258

Lambert-Beer law, 178
LaSalle's invariance principle, 148
Leray-Schauder degree, 251
local asymptotic stability, 99
logistic equation, 100
Lotka-Volterra model, 140
Lyapunov function, 148, 151, 245
maximum principle, local, 13
maximum principle, strong, 8
maximum principle, weak, 6, 116
monotone iteration, 11
mutual invasibility, 305
mutual invasibility plot, 218
neighborhood invader strategy, 217
Neumann boundary condition, 4
nondimensionalization, 108
nonlocally pulled fronts, 130
oblique boundary condition, 3
oligotrophic ecosystems, 177
order compact, 282, 292
order interval, 97
order interval trichotomy, 285
ordered Banach space, 256
outward unit normal vector, 3
pairwise invasibility plot, 210
paradox of the plankton, 203
partial ordering, 14
Perron-Frobenius Theorem, 65
perturbed test function, 240
photoinhibition, 202
phytoplankton, 177
Poincaré's inequality, 56, 104
positive equilibrium, 97
precompact, 261
principal eigenvalue, 33
principal eigenvalue, elliptic, 15
principal eigenvalue, periodic-parabolic, 33
principal Floquet bundle, 76
principal Floquet bundle, normalized, 78
projection, 88
reduction principle, 28
regularity theory, overview, 27
repelling, 296
resolvent set, 257, 259
retract, 252
Robin boundary condition, 71
selection-mutation models, 229
semi-classical limit, 28
semicontinuous functions, 24
semiflow, 276
semigroup operator, 16
semigroup theory, 27
semilinear equation, 9
shifting environment, 116, 125
singular strategy, 214
spectral gap, 27
spectral radius, 257
spectrum, 257
spreading speed, 116
stability, linear, 99
subequilibrium, 10
subhomogeneous maps, 273
super- and subsolution, classical, 4
super- and subsolution, generalized, 4
super- and subsolution, viscosity, 5
super- and subsolution, weak, 5
superequilibrium, 10
total biomass, 105
transition layer, 98
traveling wave solutions, 119
trichotomy, 301, 308
uniform ellipticity condition, 4
viscosity solution, 5, 240
WKB-ansatz, 24
Zorn's lemma, 286


[^0]:    ${ }^{1}$ Q. X. Ye, Z. Y. Li, Y. P. Wu and M. X. Wang, Introduction to reaction-diffusion equations, Foundations of Modern Mathematics Series, Science Press, Beijing, 2011.
    ${ }^{2}$ R. S. Cantrell and C. Cosner, Spatial ecology via reaction-diffusion equations, Wiley Series in Mathematical and Computational Biology, John Wiley \& Sons, Ltd., Chichester, 2003.
    ${ }^{3}$ B. Perthame, Parabolic equations in biology, Lecture Notes on Mathematical Modelling in the Life Sciences. Springer, Cham, 2015.
    ${ }^{4}$ X.-Q. Zhao, Dynamical systems in population biology, CMS Books in Mathematics/Ouvrages de Mathématiques de la SMC, Springer, Cham, second ed., 2017.
    ${ }^{5}$ H. L. Smith and H. R. Thieme, Dynamical systems and population persistence, vol. 118 of Graduate Studies in Mathematics, American Mathematical Society, Providence, RI, 2011.

[^1]:    ${ }^{1}$ By the Alexandrov-Bakelman-Pucci maximum principle [16, Theorem 9.1], one can repeat the proof of [16, Lemma 3.4] or [30, Lemma 1.24] to compare the supersolution $w$ (in the strong sense) with the barrier function.

[^2]:    ${ }^{2}$ A function $w: \bar{\Omega} \rightarrow[-\infty, \infty]$ is said to be lower (resp. upper) semicontinuous at the point $x_{0}$ if

    $$
    \liminf _{x \rightarrow x_{0}} \geq f\left(x_{0}\right) \quad\left(\text { resp. } \quad \limsup _{x \rightarrow x_{0}} \leq f\left(x_{0}\right)\right)
    $$

    It is lower (resp. upper) semicontinuous in a set $A \subset \bar{\Omega}$ if it is lower (resp. upper) semicontinuous at every point of $A$.

[^3]:    ${ }^{1}$ The smooth dependence on parameters relies on the decomposition $L^{2}(\Omega)=X^{1}(t) \oplus X^{2}(t)$ given in (4.24). This decomposition, and also the smooth dependence on parameters, is available even for non-divergence form operators (see [2] for details). Here we prove the simpler case of divergence form operators, for which the complementary bundle $X^{2}(t)$ admits a simple characterization based on the unique positive solution of the adjoint problem. For the divergence form problem with Dirichlet boundary conditions, the decomposition was treated in [5]. Here we provide a complete proof for the conormal boundary condition.

[^4]:    ${ }^{1}$ See Definition 1.1.1.

[^5]:    ${ }^{1}$ For the definition of order compactness, see Definition D.1.1.
    ${ }^{2}$ For the definition of the Bonsall cone spectral radius, see Definition B.2.5. If $X=C(\bar{\Omega})$, $C_{i}=C\left(\bar{\Omega} ; \mathbb{R}_{+}\right)$and $f$ is linear, then the Bonsall cone spectral radius coincides with the spectral radius. See Lemma B.4.9.

[^6]:    ${ }^{3}$ We say that $(\hat{u}, \hat{v})$ is an entire solution if $(\hat{u}, \hat{v}) \in C^{2,1}(\bar{\Omega} \times(-\infty,+\infty))$ is a classical solution of the competition system.

[^7]:    ${ }^{1}$ Thanks to Theorem 8.3.5, one can alternatively check that $E_{1}$ is linearly stable and the nonexistence of positive equilibrium. This is a special feature of diffusive Lotka-Volterra-like systems, which satisfy the additional condition (H5'). For general competitively systems satisfying only (H1')(H4'), it is necessary to show the linear instability of a semitrivial equilibrium, together with nonexistence of positive equilibria; see Proposition E.2.7 and also [13, 16, 30].

[^8]:    ${ }^{2}$ Let $\Phi_{t}: X \rightarrow X$ be a semiflow in a Banach space $X$. A subset $\omega$ of $X$ is said to be internally chain transitive with respect to the semiflow $\Phi_{t}$ if, for any two points $u_{0}, v_{0} \in \omega$, and any positive numbers $\delta>0, T>0$, there is a finite sequence

    $$
    C_{\delta, T}=\left\{u^{(1)}=u_{0}, u^{(2)}, \ldots, u^{(m)}=v_{0} ; t_{1}, \ldots, t_{m-1}\right\}
    $$

    such that $u^{(j)} \in \omega$ and $t_{j} \geq T$, and that $\left\|\Phi_{t_{j}}\left(u^{(j)}\right)-u^{(j+1)}\right\|<\delta$ for all $1 \leq j \leq m-1$. The sequence $C_{\delta, T}$ is called a ( $\delta, T$ )-chain connecting $u_{0}$ and $v_{0}$. In particular every point $u_{0}$ within an internally chain transitive set is chain recurrent, i.e. for any $\delta, T>0$, there is a $(\delta, T)$-chain connecting $u_{0}$ to itself.

[^9]:    ${ }^{1}$ Note that (10.17) does not admit a comparison principle. Nevertheless, it can be proved that there exists at least one positive equilibrium if the trivial solution is unstable; see [22] for details. In particular, there is at least one positive equilibrium if $\int_{D} m(x) \mathrm{d} x>0$.

[^10]:    ${ }^{1}$ If $T$ is compact, then the supremum can be replaced by a maximum.

[^11]:    ${ }^{2}$ We say that a subset $S$ of a Banach space is precompact if the closure of $S$ is compact.

[^12]:    ${ }^{1} \tilde{r}_{C_{i}}\left(f_{i}\right)$ is the Bonsall cone spectral radius of $f_{i}$ with respect to $C_{i}$; see Definition B.2.5.

[^13]:    ${ }^{2} S\left(z^{\prime}\right) \in \omega(x)$ if $z^{\prime} \in \omega(x)$.

