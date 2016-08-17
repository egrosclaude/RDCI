DEPS = src/reveal.header src/reveal.trailer

all: intro

intro: Introducción.html

%.html: src/%.slides $(DEPS) 
	util/macro $< > $*.html
	util/asides.pl $< > $*.md
	pandoc $*.md -o $*.pdf
#	pandoc $*-ok.md -o $*.pdf

