emacs ?= emacs
BEMACS = $(emacs) -batch -l test/elpa.el

compile:
	$(BEMACS) --eval "(byte-compile-file \"open-conf.el\")"

clean:
	rm -f *.elc

.PHONY: all compile clean
