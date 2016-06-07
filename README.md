# Swagger to Org

[![MELPA](http://melpa.org/packages/swagger-to-org.svg)](http://melpa.org/#/swagger-to-org)

This is a package that allows you to take parse a swagger.json file,
and produce an org-mode buffer/file out of it's contents.

This is useful, as it will allow easy exporting to static document
formats when given the swagger.json file as input, by way of the
various org-mode exports available in ox-mode.

## Installation
To install, clone the repository via:

```
cd ~/.emacs.d
git clone https://github.com/ahungry/swagger-to-org.git
```

Then, make sure to add the following to your ~/.emacs:

### Using require

```lisp
(add-to-list 'load-path "~/.emacs.d/swagger-to-org/")
(require 'swagger-to-org)
```

### Using swagger-to-org.el

After requiring it, you can generate your org-mode buffer by using:

```lisp
M-x swagger-to-org-from-file-name
```

and entering the file path to your local swagger.json file.

## TODO

- Additional swagger.json field parsing beyond the routes (and methods)
and definition objects.

- Creation of scripts to run swagger.json to pdf/html/latex/org
  formats via the CLI for automatic processing of file.

## License
GPLv3
