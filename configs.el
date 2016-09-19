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

(require 'bash-completion)
(bash-completion-setup)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(setq ess-smart-S-assign-key ";")
(ess-toggle-S-assign nil)
(ess-toggle-S-assign nil)
(ess-toggle-underscore nil) ; leave underscore key alone!
(add-hook 'ess-mode-hook
	  (lambda()
	    (ess-set-style 'RStudio)))

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t) (add-to-list 'auto-mode-alist'("\.text\'" . markdown-mode)) (add-to-list 'auto-mode-alist'("\.markdown\'" . markdown-mode)) (add-to-list 'auto-mode-alist'("\.md\'" . markdown-mode))
(require 'poly-R) (require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

(setq inferior-julia-program-name "/usr/local/bin/julia")

(setq js-indent-level 2)

(global-flycheck-mode)
(autoload 'pylint "pylint")
(add-hook 'python-mode-hook 'pylint-add-menu-items)
(add-hook 'python-mode-hook 'pylint-add-key-bindings)
