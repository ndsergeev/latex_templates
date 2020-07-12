% Intro Options
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-class}[2019/08/01 CV class]
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{tgadventor}
\renewcommand*\familydefault{\sfdefault}
\usepackage[T1]{fontenc}

% Package Imports
\usepackage{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{amsmath}
\usepackage{titlesec}
\usepackage{geometry}
\usepackage{multicol}
\usepackage[en-IE]{datetime2}
\DTMlangsetup[en-IE]{showdayofmonth=false}

\setlength{\columnsep}{1cm}
\oddsidemargin=-1in
\topmargin=-1in
\headheight=0pt
\headsep=0pt
\parindent=0pt
\geometry{a4paper, margin=.5in}

\hyphenpenalty=9999
\tolerance=500


% Brown     af5500
% Yellow    fcd032
% Blue      57b8ff
% Pink      ff6663
% Dark      421527

% Color definitions
\definecolor{background}{HTML}{fcf3ee}
\definecolor{candidate_name_col}{HTML}{26547c}
\definecolor{work_col}{HTML}{AF5500}
\definecolor{university_col}{HTML}{292f36}
\definecolor{section_col}{HTML}{eb5160}
\definecolor{bullet_col}{HTML}{421527}
\definecolor{subsec_col}{HTML}{ff6b6b}
\definecolor{big_sep_col}{HTML}{421527}
\definecolor{small_sep_col}{HTML}{421527}
\definecolor{links_col}{HTML}{54428e}

\pagecolor{background}

% Titles Overrides
\titleformat{\section}{\flushleft\large\bfseries\color{section_col}}{}{-0em}{}

\newcommand{\ssubsec}[1]{
    \textcolor{subsec_col}{\textbf{#1}}
}

\newcommand{\experience}[4]{
\noindent{#1} {\hspace{0.5pt}\textcolor{work_col}{#2}}\hfill\textcolor{candidate_name_col}{\textbf{#3}}
 
\noindent\hspace{64pt}
\begin{minipage}{0.8\textwidth\vspace{0pt}}
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

\newcommand{\scholarship}[3]{
    \noindent{#1} {\textcolor{university_col}{#2}\hfill}
 
\noindent\hspace{5pt}
    \begin{minipage}{0.98\textwidth\vspace{2pt}}
        {#3}
    \end{minipage}
}

\newcommand{\bigSeparator}[1]{
    \noindent
    \makebox[\linewidth]
    {\textcolor{big_sep_col}{\rule{\paperwidth}{#1}}}
}

\newcommand{\smallSeparator}[1]{
    \vspace{-1mm}
    \noindent\textcolor{small_sep_col}{\rule{\textwidth}{#1}}
    \vspace{-8mm}
}

\newcommand{\colorhref}[2]{
    \!\href{#1}{\textcolor{links_col}{#2}}\!\!
}

\newcommand{\forceindent}{\leavevmode{\parindent=2em\indent}}