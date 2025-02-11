PYTHON=python2.7

# targets that aren't filenames
.PHONY: all clean deploy

all: _includes/pubs.html _site/index.html

BUILDARGS :=
_site/index.html:
	jekyll build --config _config.yml $(BUILDARGS)

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	git submodule init; git submodule update
	mkdir -p _includes
	$(PYTHON) bibble/bibble.py $+ > $@

_site/index.html: $(wildcard *.html) _includes/pubs.html _config.yml \
	_layouts/default.html

clean:
	$(RM) -r _site _includes/pubs.html

# CSEHOST := bicycle.cs.washington.edu
# RSYNCARGS := --compress --recursive --checksum --itemize-changes \
# 	--delete -e ssh --perms --chmod=ug+rw
#
# rsync:
# 	rsync $(RSYNCARGS) _site/ $(CSEHOST):/cse/www2/colig/new
#
# deploy: clean all rsync
