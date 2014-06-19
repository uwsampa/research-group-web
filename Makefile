PYTHON=python2.7

# targets that aren't filenames
.PHONY: all clean deploy

all: _includes/pubs.html _site/index.html

BUILDARGS :=
_site/index.html _site/wacas14/index.html:
	jekyll build $(BUILDARGS)

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html

clean:
	$(RM) -r _site _includes/pubs.html

HOST := yourwebpage.com
PATHSVR := www/
deploy: clean all
	rsync --compress --recursive --checksum --itemize-changes --delete -e ssh _site/ $(HOST):$(PATHSVR)
