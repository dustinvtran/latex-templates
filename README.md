# LaTeX templates

This repository stores all LaTeX templates I personally use in producing
typewritten documents for courses, research, and miscellaneous work. We outline
each use case below:

### Lecture Notes
* `preamble-lecture.tex`: The preamble declaring packages, formatting, and macros.
* `X-lecture-X.tex`: The individual files used in writing notes for each lecture.
* `X-lecture.tex`: The master document used in compiling the collection of lecture notes.

### Problem Sets
* `preamble-problem-set.tex`: The preamble declaring packages, formatting, and macros. To eliminate redundancy, it uses `preamble-lecture.tex` as a dependency in order to recycle code.
* `X-psX.tex`: A document style used best for laying out answers to a list of exercises.

### Research Papers
* `preamble-research-paper.tex`: The preamble declaring packages, formatting, and macros. To eliminate redundancy, it uses `preamble-lecture.tex` as a dependency in order to recycle code.
* `research-paper.tex`: A research paper style which takes most formatting guidelines from arXiv.

## Examples
I use the `listings` package to produce my verbatim environment. Here is an example of what my settings compile to:

![](https://pbs.twimg.com/media/BzYyXZZCcAAvb4R.png)
