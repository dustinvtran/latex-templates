% This is a modified version of the Harvard ML template by Ryan Adams.

\NeedsTeXFormat{LaTeX2e}[1995/01/01]
\ProvidesClass{pset}
[2013/08/31 v0.01 Harvard ML Assignment Class]

% "(no)submit" argument specifies whether to include credits in header.
\newif\ifpset@submit
\DeclareOption{submit}{%
  \pset@submittrue%
}
\DeclareOption{nosubmit}{%
  \pset@submitfalse%
}

%##############################################################################
% Base class
%##############################################################################

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{submit}
\ProcessOptions\relax

\LoadClass[10pt,letterpaper]{article}

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
% Theorem Styles
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

\input{"/Users/dvt/Dropbox/dvt/work/other/latex-templates/preamble-lecture.tex"}
