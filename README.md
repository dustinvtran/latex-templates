# LaTeX

When writing a new document, I begin from one of these templates. I
have found these fundamental to my workflow.

## Setup

Your preferences may vary.

Use [`latexmk`](https://www.ctan.org/pkg/latexmk/?lang=en). It's
powerful. My day-to-day use is: 1. write text in Vim; 2. run `latexmk -C`
and `latexmk -pdf main` in the terminal; 3. ??? profit.

In terms of packages:

+ I use MacTeX.
+ I use additional LaTeX packages listed
  [here](https://github.com/dustinvtran/dotfiles/tree/laptop-mac/Library/texmf/tex/latex).
+ I use mtpro2 as a default font. It is proprietary and requires
  manual installation.

## Templates

### Curriculum Vitae
+ `cv.tex`: The general structure I use for my CV.

### Lecture Notes
+ `lecture.cls`: The document class declaring packages, formatting, and macros.
+ `main.tex`: A template for the master document used in compiling the
  collection of lecture notes.
+ `main_X.tex`: A template for individual lectures. `X` is `01`, `02`,
  ..., `99` corresponding to the lecture number.

### Papers
+ `preamble/`: The preamble.
+ `bib.bib`: The bibliography.
+ `main.tex`: A general-purpose template, e.g., for personal notes and
  unstylized conference or journal papers.

### Problem Sets
+ `pset.cls`: The document class declaring packages, formatting, and macros.
+ `main_X.tex`: A template for documents which lay out answers to a
  list of exercises. `X` is `01`, `02`, ..., `99` corresponding to the
  problem set number.

## Examples
Here is an example of my lecture notes.

![](notes.png)

I use the `listings` package to produce my verbatim environment. Here is an
example of what my settings compile to:

![](listings.png)
