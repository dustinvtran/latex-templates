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

## Curriculum Vitae
<img src="img/cv.png" height="400">

## Papers
<img src="img/papers.png" height="500">

## Lectures
<img src="img/lectures.png" height="500">

## Problem Sets
<img src="img/problem-sets.png" width="600">

## Other Examples

I use the `minted` package for code snippets.

<img src="img/code.png" height="400">

I'm a big fan of a custom `\draftdisclaimer` command when distributing
paper drafts to colleagues. See `papers/preamble/preamble.tex` for its
code.

<img src="img/draft-disclaimer.png" height="400">

I made a
[rant on Twitter in May 2021](https://twitter.com/dustinvtran/status/1398129705660805121).
Other nits and style tips are noted there.
