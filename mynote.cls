\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynote}[2024/01/01 v1.0 Custom class based on amsart]

% Pass all options to amsart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

% Load the base class
\LoadClass{amsart}

% Basic packages
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{geometry}
\RequirePackage{tikz}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}

% Page setup
\geometry{margin=1in}

% Theorem environments
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{problem}[theorem]{Problem}
\newtheorem{remark}[theorem]{Remark}

% Solution environment
\newenvironment{solution}
{\begin{proof}[Solution]}
{\end{proof}}


% TikZ basic settings
\tikzset{every picture/.style={scale=1}}




