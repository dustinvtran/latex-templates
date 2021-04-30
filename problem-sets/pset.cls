% This is a modified version of the Harvard ML template by Ryan Adams.

\NeedsTeXFormat{LaTeX2e}[1995/01/01]
\ProvidesClass{pset}
[2013/08/31 v0.01 Harvard ML Assignment Class]

%##############################################################################
% Base class
%##############################################################################

\LoadClass[11pt]{article}

% "(no)submit" argument specifies whether to include credits in header.
\newif\ifpset@submit
\DeclareOption{submit}{\pset@submittrue}
\DeclareOption{nosubmit}{\pset@submitfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{submit}
\ProcessOptions\relax

%##############################################################################
% Packages
%##############################################################################

\RequirePackage{palatino}
\RequirePackage{mathpazo}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
%\RequirePackage{fancyhdr}
\RequirePackage{fullpage}
\RequirePackage{graphicx}
\RequirePackage{mdframed}
\RequirePackage{natbib}

%##############################################################################
% Page Headings
%##############################################################################

%\pagestyle{fancy}
%\fancyhead[L]{\rule[-1.25ex]{0em}{0ex}Tran}
%\fancyhead[C]{\pset@assignment}
%\fancyhead[R]{\thepage}
%\fancyfoot[L]{}
%\fancyfoot[C]{}
%\fancyfoot[R]{}

%##############################################################################
% Header
%##############################################################################

\def\titlebar{\hrule height2pt\vskip .25in\vskip-\parskip}

\newcommand{\headerblock}{%
  \noindent\begin{minipage}{0.33\textwidth}
  \begin{flushleft}
  \ifpset@submit
    \mbox{\pset@course}\\
    \mbox{\pset@instructor}
    \fi
  \end{flushleft}
  \end{minipage}
  \noindent\begin{minipage}{0.33\textwidth}
  \begin{center}
    \mbox{\Large\pset@assignment}\protect\\
    Due: \pset@duedate
  \end{center}
  \end{minipage}
  \noindent\begin{minipage}{0.33\textwidth}
  \begin{flushright}
  \ifpset@submit
    \mbox{\pset@name}\\
    \mbox{\pset@email}
    \fi
  \end{flushright}
  \end{minipage}
  \vspace{0.1cm}
  \titlebar
}

\AtBeginDocument{\headerblock}

\def\pset@name{}
\def\pset@email{}
\def\pset@course{}
\def\pset@instructor{}
\def\pset@assignment{}
\def\pset@duedate{}

% Commands to automatically input info.
\newcommand{\name}[1]{\def\pset@name{#1}}
\newcommand{\email}[1]{\def\pset@email{#1}}
\newcommand{\course}[1]{\def\pset@course{#1}}
\newcommand{\instructor}[1]{\def\pset@instructor{#1}}
\newcommand{\assignment}[1]{\def\pset@assignment{#1}}
\newcommand{\duedate}[1]{\def\pset@duedate{#1}}

%##############################################################################
% Environments
%##############################################################################

\newtheoremstyle{box}
                {3pt}% Space above
                {3pt}% Space below
                {}% Body font
                {}% Indent amount
                {\bfseries}% Theorem head font
                {\\*[3pt]}% Punctuation after theorem head
                {.5em}% Space after theorem head
                {}% Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{box}
\newmdtheoremenv[skipabove=\topsep,skipbelow=\topsep]{problem}{Problem}

%##############################################################################
% Misc
% TODO: Organize
%##############################################################################
\RequirePackage{amsfonts,amssymb,amsthm}
\RequirePackage{cancel}
\RequirePackage{centernot}
\RequirePackage{color}
\RequirePackage{enumerate}
\RequirePackage{graphicx}
%\RequirePackage{hyperref}
%\hypersetup{colorlinks=true,urlcolor=blue}
\RequirePackage{listings}
\RequirePackage{mathrsfs}
\RequirePackage{tikz}
%\RequirePackage{tikz-cd}
\usetikzlibrary{patterns,shapes,snakes}
%\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
%\RequirePackage{fontspec, xunicode}
%\setmonofont{Consolas}

% Emulate markdown's light grey background for monospace.
\usepackage{soul}
\definecolor{Light}{gray}{.96}
\sethlcolor{Light}
\let\OldTexttt\texttt
\renewcommand{\texttt}[1]{\OldTexttt{\hl{#1}}}% will affect all \texttt

% Use knitr's colorscheme.
\definecolor{fgcolor}{rgb}{0.345, 0.345, 0.345}
\definecolor{hlnum}{rgb}{0.686,0.059,0.569}
\definecolor{hlstr}{rgb}{0.192,0.494,0.8}
\definecolor{hlcom}{rgb}{0.678,0.584,0.686}
\definecolor{hlopt}{rgb}{0,0,0}
\definecolor{hlstd}{rgb}{0.345,0.345,0.345}
\definecolor{hlkwa}{rgb}{0.161,0.373,0.58}
\definecolor{hlkwb}{rgb}{0.69,0.353,0.396}
\definecolor{hlkwc}{rgb}{0.333,0.667,0.333}
\definecolor{hlkwd}{rgb}{0.737,0.353,0.396}
\definecolor{shadecolor}{rgb}{0.969, 0.969, 0.969}

\lstset{
  backgroundcolor=\color{shadecolor},
  basicstyle=\color{hlstd}\ttfamily\footnotesize,
  breakatwhitespace=false,
  %breaklines=true,
  captionpos=b,
  commentstyle=\color{hlcom},
  deletekeywords={...},
  escapeinside={\%*}{*)},
  extendedchars=true,
  frame=lines,
  keepspaces=true,
  keywordstyle=\color{hlkwb},
  morekeywords={*,...},
  numbers=left,
  numbersep=5pt,
  numberstyle=\tiny\color{hlstd},
  rulecolor=\color{hlstd},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  stepnumber=1,
  stringstyle=\color{hlstr},
  tabsize=2,
  title=\lstname
}

%##############################################################################
% Operator Macros
%##############################################################################

\newcommand\given[1][]{\:#1\vert\:}
\newcommand{\eminus}{\text{\sc{e}-}}
\newcommand{\e}{\text{\sc{e}}}

%##############################################################################
% Environments
%##############################################################################

\newtheorem{theorem}{Theorem}[]
\newtheorem{definition}[theorem]{Definition}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{property}[theorem]{Property}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{example}[theorem]{Example}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{exercise}[theorem]{Exercise}
