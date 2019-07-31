% Intro Options
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-class}[2019/08/01 CV class]
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[onecolumn]{article}

\usepackage{tgadventor}
\renewcommand*\familydefault{\sfdefault}
\usepackage[T1]{fontenc}

% Package Imports
\usepackage{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{amsmath}
\usepackage{titlesec}

\usepackage{geometry}
\geometry{
    % a4paper,
    left=8mm,
    right=8mm,
    top=8mm,
    bottom=8mm,
 }

% Color definitions
\definecolor{candidate_name_col}{HTML}{005BB0}
\definecolor{work_col}{HTML}{AF5500}
\definecolor{university_col}{HTML}{AF5500}
\definecolor{section_col}{HTML}{005BB0}
\definecolor{bullet_col}{HTML}{AF5500}
\definecolor{subsec_col}{HTML}{AF5500}
\definecolor{big_sep_col}{HTML}{AF5500}
\definecolor{small_sep_col}{HTML}{AF5500}

% Titles Overrides
\titleformat{\section}{\flushleft\large\bfseries\color{section_col}}{}{-0em}{}

\newcommand{\ssubsec}[1]{
    \textcolor{subsec_col}{\textbf{#1}}
}

\newcommand{\experience}[4]{
\noindent{#1} {\textcolor{work_col}{#2:}}\hfill\textbf{#3}
 
\noindent\hspace{60pt}
\begin{minipage}{0.82\textwidth\vspace{2pt}}
    #4
\end{minipage}
}

\newcommand{\education}[3]{
\noindent{#1}\hfill{\textcolor{university_col}{#2}}
 
\noindent\hspace{5pt}
\begin{minipage}{0.96\textwidth\vspace{2pt}}
    #3
\end{minipage}
}

\newcommand{\bigSeparator}[1]{
    \noindent
    \makebox[\linewidth]
    {\textcolor{big_sep_col}{\rule{\paperwidth}{#1}}}
}

\newcommand{\smallSeparator}[1]{
    \noindent\textcolor{small_sep_col}{\rule{\textwidth}{#1}}
}