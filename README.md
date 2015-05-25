# Sibilant-starter
A simple boilerplate for doing TDD with LISP on Node.js, using the following libraries:

* Sibilant
* TAP
* nodemon (for watch functionality)

## Compiling to JavaScript
Compile LISP source to JavaScript with:
```bash
    make build
```

## Testing
Run tests with:
```bash
    make test
```
This will also build the .js file, if the .lisp file has changed.

If you want to rerun the tests automatically every time that the source file changes, simply use:
```bash
    make watch
```


