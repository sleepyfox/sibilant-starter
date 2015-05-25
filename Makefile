COMPILE = ./node_modules/.bin/sibilant
TEST = ./node_modules/.bin/tap

.PHONY: clean test watch build

clean:
	rm *.js

build: test-stuff.js

test-stuff.js: test-stuff.lisp
	$(COMPILE) test-stuff.lisp -o .

test: test-stuff.js
	$(TEST) -R spec test-stuff.js

watch: 
	nodemon --exec "make test" *.lisp