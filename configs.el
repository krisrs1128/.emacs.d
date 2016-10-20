(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Prendemos el autocomplete.
(auto-complete-mode t)
(global-auto-complete-mode t)
(electric-pair-mode 1)
(require 'iso-transl)

(setq inhibit-startup-message t)
(global-linum-mode 1)
(set-default 'truncate-lines t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'column-marker)
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-2 80)))
(add-hook 'R-mode-hook (lambda () (interactive) (column-marker-2 80)))
(add-hook 'sql-mode-hook (lambda () (interactive) (column-marker-2 80)))
(add-hook 'js-mode-hook (lambda () (interactive) (column-marker-2 80)))
(add-hook 'markdown-mode-hook (lambda () (interactive) (column-marker-2 80)))

(require 'bash-completion)
(bash-completion-setup)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t) (add-to-list 'auto-mode-alist'("\.text\'" . markdown-mode)) (add-to-list 'auto-mode-alist'("\.markdown\'" . markdown-mode)) (add-to-list 'auto-mode-alist'("\.md\'" . markdown-mode))
(require 'poly-R) (require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

(setq inferior-julia-program-name "/usr/local/bin/julia")

(setq js-indent-level 2)

(global-flycheck-mode)
(autoload 'pylint "pylint")
(add-hook 'python-mode-hook 'pylint-add-menu-items)
(add-hook 'python-mode-hook 'pylint-add-key-bindings)

(exec-path-from-shell-initialize)

'(comment-auto-fill-only-comments t)
'(flycheck-checkers
  (quote
   (ada-gnat asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd emacs-lisp emacs-lisp-checkdoc erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy jade javascript-jshint javascript-jscs javascript-standard json-jsonlint json-python-json less lua-luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint markdown-mdl rst-sphinx rst ruby-rubocop ruby-rubylint ruby ruby-jruby rust-cargo rust sass scala scala-scalastyle scss-lint scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
'(flycheck-javascript-jshint-executable "/usr/local/bin/jshint")


(add-hook 'ess-mode-hook
	  (lambda()
	    (ess-set-style 'RStudio)))
(setq ess-smart-S-assign-key ";")
(ess-toggle-S-assign nil)
(ess-toggle-S-assign nil)
(ess-toggle-underscore nil) ; leave underscore key alone!

(auto-insert-mode)
(setq auto-insert-directory "~/.emacs.d/templates/")
(setq auto-insert-query nil)
(define-auto-insert "\.py" "template.py")
(define-auto-insert "\.R" "template.R")
