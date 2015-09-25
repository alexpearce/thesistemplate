Thesis template
===============

Or: yet another LaTeX thesis template.

This is what I'm using as the basis of my PhD thesis (don't ask how it's 
going).
I don't expect to be reusing the template very often, but will use some of the 
tricks again and, who knows, it might be useful for you!

This template should contain most of the things that you need to get started:

* A close-to-default theme that's a good starting point to build from;
* A document structure, comprised of, in order:
  * Title page;
  * Abstract;
  * Additional section for preface-like stuff (dedications, acknowledgements, 
    executive summaries, and the like);
  * A table of contents;
  * A couple of proper sections of mostly “lorem ipsum”;
  * Appendices;
  * Acronym definitions; and
  * References built from a BibTeX file.
* A [Makefile](Makefile) that uses the wonderful 
  [`latexrun`](https://github.com/aclements/latexrun) script;
* A writing checker, 
  [`checkwriting`](https://github.com/devd/Academic-Writing-Check) which can be 
run with `make check` to find weasel words, duplicates, and other common 
blunders in your writing; and
* A directory structure, for organising the big mess that's coming.

Getting started
---------------

Using the template isn't too hard, just clone this repository to your computer 
and build the PDF file:

```shell
$ git clone git@github.com:alexpearce/thesistemplate.git Thesis
$ cd Thesis
$ make
```

The build script, [`latexrun`](https://github.com/aclements/latexrun), requires 
Python 3, whereas the default on most computers is Python 2. To install Python 
3 on OS X when you already have [Homebrew](http://brew.sh) installed (which you 
should, it's great!), just do

```shell
$ brew install python3
```

When you're ready to get started, you'll probably want to go through the files 
in the [`chapters/` folder](chapters) to remove the template text.

Writing
-------

The template includes several packages designed to make writing your thesis 
easier, and to make the final product prettier with minimal effort.
To try and summarise what's included:

* [`booktabs`](https://www.ctan.org/pkg/booktabs) for pretty tables ([use 
  vertical rules sparingly]());
* [`siunitx`](https://www.ctan.org/pkg/siunitx) for easy units;
* [`acronym`](https://www.ctan.org/pkg/acronyum) for consisting acronyms (you 
  don't need to remember if you've already defined that acronym); and
* [`cleveref`](https://www.ctan.org/pkg/cleveref) so you stop writing `in 
  Section~\ref{sec:foo}` and just do `in \cref{sec:foo}`.

There are a few sentences at the beginning of the two included sections, which 
are otherwise just [dummy text](https://www.ctan.org/pkg/lipsum), to show you 
how you use some of the neat things these packages can do.

Every once in a while you might want to run the writing checker:

```shell
$ make check
```

This runs [`checkwriting`](https://github.com/devd/Academic-Writing-Check), 
which can be helpful in finding common mistakes in the text.
It can be a little overzealous, though, so take its advice with a little 
scepticism.

Contributing
------------

If you think there's something missing from this template or if something isn't 
clear, [open an issue](https://github.com/alexpearce/thesistemplate/issues/new) 
and we'll get it fixed.
