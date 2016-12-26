DEPS = src/reveal.header src/reveal.trailer

all: intro aplic

intro: Introducción.html
aplic: Aplicación.html
snap: snap.html
st: snaptest.html
demo: demo.html
test: test.html
test2: test2.html
colab: Colaborando.html

%.html: src/%.slides $(DEPS) 
	util/macro $< > $*.html
	util/asides.pl $< > $*.md
	pandoc $*.md -o $*.pdf
#	pandoc $*-ok.md -o $*.pdf

