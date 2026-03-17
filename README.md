# 2025-summer

Personal notes and research materials for mathematical studies.

## File Structure

```
2025-summer/
├── .obsidian/          # Obsidian vault configuration
├── .trash/             # Deleted notes (Obsidian trash)
├── figures/            # Images and figures used in notes
├── includes/           # Shared LaTeX includes
│
├── Subject Directories
│   ├── Ai4Math/              # AI for Mathematics
│   ├── Algebra-Geometry/      # Algebraic Geometry
│   │   ├── Grassmannian-and-Schubert-variety.md
│   │   ├── Kahler-Manifold.md
│   │   └── sheaf-and-scheme.md
│   ├── algebraic-number-theory/  # Algebraic Number Theory
│   ├── Algebra-Topology/     # Algebraic Topology
│   │   ├── MIT-2016-fall.md
│   │   ├── cohomology-with-pde.md
│   │   └── simplex.md
│   ├── computational-math/    # Computational Mathematics
│   ├── general-relativity/   # General Relativity
│   ├── information-geometry/ # Information Geometry
│   ├── Lie-algebra/          # Lie Algebra
│   │   ├── Lie-group-and-Lie-algebra.md
│   │   ├── conjecture-1.md
│   │   └── conjecture-2.md
│   ├── machine-learning/     # Machine Learning
│   ├── pde/                  # Partial Differential Equations
│   ├── Riemannian-geometry/  # Riemannian Geometry
│   │   ├── differential-manifold.md
│   │   ├── differential-geometry.md
│   │   ├── de-rham-cohomology.md
│   │   └── gauss-bonnet.md
│   ├── Stochastic-analysis/ # Stochastic Analysis
│   └── toric-variety/       # Toric Variety
│
├── westlake-university/      # Course materials from Westlake University
│   ├── homework/             # Homework assignments
│   ├── information-geometry-1.md
│   ├── information-geometry-2.md
│   ├── modular-form.md
│   ├── pde.md
│   └── statistic-physics.md
│
├── Root-level Notes
│   ├── Welcome.md
│   ├── memory.md
│   ├── book-for-PhD.md
│   ├── 2004_Ni_Survey.md
│   ├── summarize-Ni-1.md
│   ├── summarize-R-D-Equation.md
│   ├── summary-Ni.md
│   └── 7-courses-Lacon/notes.md
│
├── Chinese Notes
│   ├── 缓考安排.md
│   ├── 健身指南.md
│   ├── 摘抄.md
│   └── 做一些让自己开心的事情.md
│
└── Configuration
    ├── mynote.cls           # Custom LaTeX class
    └── .gitignore
```

## Topics Covered

- **Algebraic Geometry**: Grassmannian varieties, Schubert varieties, Kähler manifolds, sheaf theory, schemes
- **Differential Geometry**: Riemannian geometry, differential manifolds, de Rham cohomology, Gauss-Bonnet theorem
- **Lie Theory**: Lie groups, Lie algebras
- **Topology**: Algebraic topology, simplicial methods
- **PDE**: Elliptic partial differential equations
- **Stochastic Analysis**: Itô stochastic calculus
- **Information Geometry**: Riemannian geometry of probability distributions
- **Mathematical Physics**: General relativity, statistical physics
- **Applied Mathematics**: Machine learning, computational mathematics

## Notes

- Notes are written in Markdown with LaTeX support via Obsidian
- PDF exports are generated using `latexmk` or similar tools
- Figures are stored in `figures/` directory
- Build artifacts (`.aux`, `.log`, `.pdf`, `.toc`) are gitignored
