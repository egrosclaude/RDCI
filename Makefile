DEPS = src/reveal.header src/reveal.trailer

all: intro aplic

intro: Introducción.html
aplic: Aplicación.html

%.html: src/%.slides $(DEPS) 
	util/macro $< > $*.html
	util/asides.pl $< > $*.md
	pandoc $*.md -o $*.pdf
#	pandoc $*-ok.md -o $*.pdf

