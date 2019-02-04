# targets that aren't filenames
.PHONY: all clean deploy build serve

all: build

BIBBLE = bibble

_includes/pubs.html: bib/pubs.bib bib/publications.tmpl
	mkdir -p _includes
	$(BIBBLE) $+ > $@


# build: _includes/pubs.html
build:
	jekyll build
	cp -rf public/* _site/

# you can configure these at the shell, e.g.:
# SERVE_PORT=5001 make serve
SERVE_HOST ?= 127.0.0.1
SERVE_PORT ?= 5000

# We aren't using bibble so remove it's support
# serve: _includes/pubs.html
serve:
	jekyll serve --port $(SERVE_PORT) --host $(SERVE_HOST)

clean:
	$(RM) -r _site
# $(RM) -r _site _includes/pubs.html

DEPLOY_HOST ?= acunetix@imagine.uniandes.edu.co
DEPLOY_PATH ?= /var/www/html/
RSYNC := rsync -uvh --compress --recursive --checksum --itemize-changes --delete -e "ssh "

deploy: clean build
	$(RSYNC) _site/ $(DEPLOY_HOST):$(DEPLOY_PATH)
