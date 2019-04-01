COMPILE = ./node_modules/.bin/sibilant
TEST = ./node_modules/.bin/tape
WATCH = ./node_modules/.bin/watch

.PHONY: clean test watch build

clean:
	rm *.js

build: test-stuff.js

test-stuff.js: test-stuff.lisp
	$(COMPILE) $< >$@

test: test-stuff.js
	$(TEST) $<
