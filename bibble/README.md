bibble
======

A real quick experiment to make a better BibTeX-to-HTML (or BibTeX-to-whatever)
converter using [Pybtex][] and [Jinja2][].

Give `bibble.py` the name of a BibTeX file and a template. A sample template is
included.

    $ python bibble.py citations.bib simple.html > citations.html

[Pybtex]: http://pybtex.sourceforge.net/
[Jinja2]: http://jinja.pocoo.org/
