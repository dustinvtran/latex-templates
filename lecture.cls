% This is a modified version of the template taken from MIT's 6.895 in 2003,
% which is itself taken from the famous CLR textbook.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture}
[2013/08/31 v0.01 Harvard ML Assignment Class]

%##############################################################################
% Base class
%##############################################################################

\LoadClass{book}

%##############################################################################
% Packages
%##############################################################################

\RequirePackage{latexsym}
\RequirePackage{bbm}
\RequirePackage[small,bf]{caption2}
\RequirePackage{graphics}
\RequirePackage{amsmath, amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{pdfpages}
%\RequirePackage{hyperref}

%##############################################################################
% Paper Margins
%##############################################################################

\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\textwidth}{6.5in}
\setlength{\topmargin}{0in}
\setlength{\textheight}{8.5in}

%##############################################################################
% Header
%##############################################################################

% Commands for lecture handouts
\newcommand{\handout}[5]{
   \newpage
   \renewcommand{\thepage}{#1-\arabic{page}}
   \newcommand{\lecturenum}{#1}
   \addcontentsline{toc}{chapter}{Lecture #1 -- #2}
   \setcounter{chapter}{\lecturenum}
   \setcounter{section}{0}
   \begin{center}
   \framebox{
     \vbox{
       \hbox to 5.78in { {\bf \lecture@course} \hfill #5 }
       \vspace{4mm}
       \hbox to 5.78in { {\Large \hfill #2  \hfill} }
       \vspace{2mm}
       \hbox to 5.78in { {\it #3 \hfill #4} }
     }
   }
   \end{center}
   \vspace*{4mm}
}

\newcommand{\lecturetitle}[3]{\handout{#1}{#2}{Lecturer: \instructor}{Date: #3}{Lecture #1}}
\newcommand{\guestlecturetitle}[4]{\handout{#1}{#2}{Lecturer: #4}{Date: #3}{Lecture #1}}

% Commands for section handouts
\newcommand{\handoutsection}[5]{
   \newpage
   \renewcommand{\thepage}{S#1-\arabic{page}}
   \newcommand{\sectionlecturenum}{#1}
   \addcontentsline{toc}{chapter}{Section #1 -- #2}
   \setcounter{chapter}{\sectionlecturenum}
   \setcounter{section}{0}
   \let\oldthesection\thesection
   \renewcommand*{\thesection}{S\oldthesection}
   \begin{center}
   \framebox{
     \vbox{
       \hbox to 5.78in { {\bf \lecture@course} \hfill #5 }
       \vspace{4mm}
       \hbox to 5.78in { {\Large \hfill #2  \hfill} }
       \vspace{2mm}
       \hbox to 5.78in { {\it #3 \hfill #4} }
     }
   }
   \end{center}
   \vspace*{4mm}
}
\newcommand{\sectionlecturetitle}[3]{\handoutsection{#1}{#2}{Lecturer: \lecture@assistant}{Date: #3}{Section #1}}

\def\lecture@name{}
\def\lecture@course{}
\def\lecture@instructor{}
\def\lecture@assistant{}

% Commands to automatically input info.
\newcommand{\name}[1]{\def\lecture@name{#1}}
\newcommand{\course}[1]{\def\lecture@course{#1}}
\newcommand{\instructor}[1]{\def\lecture@instructor{#1}}
\newcommand{\assistant}[1]{\def\lecture@assistant{#1}}

\title{\lecture@course}
\author{
  Instructor: Professor \lecture@instructor\\[3ex]
  \lecture@name
}

%##############################################################################
% Environments
%##############################################################################

\newtheorem{theorem}{Theorem}[chapter]
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

\newenvironment{lecture}[3]{\lecturetitle{#1}{#2}{#3}}{}
\newenvironment{guestlecture}[4]{\guestlecturetitle{#1}{#2}{#3}{#4}}{}
\newenvironment{sectionlecture}[3]{\sectionlecturetitle{#1}{#2}{#3}}{}

% misc
\RequirePackage{amsfonts,amssymb}              % Standard math packages
\RequirePackage{cancel}                        % Cancel things obliquely
\RequirePackage{centernot}                     % Not-divides symbol
\RequirePackage{color}                         % Colors
\RequirePackage{enumerate}                     % enumerate arguments
\RequirePackage{graphicx}                      % Import graphics
%\RequirePackage{hyperref}                      % Linkable items
%\hypersetup{colorlinks=true,urlcolor=blue}
\RequirePackage{listings}                      % Custom verbatim environment
\RequirePackage{mathrsfs}                      % \mathscr font
\RequirePackage{tikz}                          % Create graphics
%\RequirePackage{tikz-cd}                      % Commutative diagrams
\usetikzlibrary{patterns,shapes,snakes}
%\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor} %More colors!
%\RequirePackage{fontspec, xunicode}
%\setmonofont{Consolas}

% Emulate markdown's light grey background for monospace.
\RequirePackage{soul}
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

% "Given that" operator, with optional resizing argument
\makeatletter
\def\given{\@ifnextchar[{\@with}{\@without}}
\def\@with[#1]{\:#1\vert\:}
\def\@without{\:\vert\:}
\makeatother
