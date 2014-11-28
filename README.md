# LaTeX templates

This repository stores all LaTeX templates I personally use in producing
typewritten documents for courses, research, and miscellaneous work.

## Examples
Here is an example of my lecture notes.

![](img/notes.png)

I use the `listings` package to produce my verbatim environment. Here is an example of what my settings compile to:

![](img/listings.png)

## Directory

### Lecture Notes
* `lecture.cls`: The document class declaring packages, formatting, and macros.
* `X_lecture_X.tex`: A template for individual documents used in writing notes per lecture.
* `X_lecture.tex`: A template for the master document used in compiling the collection of lecture notes.

### Problem Sets
* `pset.cls`: The document class declaring packages, formatting, and macros.
* `X_psX.tex`: A template for documents which lay out answers to a list of exercises.

### Research Papers
* `preamble-research-paper.tex`: (deprecated) The preamble declaring packages, formatting, and macros. To eliminate redundancy, it uses `preamble-lecture.tex` as a dependency in order to recycle code.
* `research_paper.tex`: A research paper style which takes most formatting guidelines from arXiv.
