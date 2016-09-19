;; Archivo que jalará todo lo demás.
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/configs.el")
(load "~/.emacs.d/aliases.el")
(load "~/.emacs.d/themes.el")
(load "~/.emacs.d/postgres.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comment-auto-fill-only-comments t)
 '(sql-postgres-login-params
   (quote
    ((user :default "")
     (password :default "")
     (server :default "localhost")
     (database :default "")
     (port :default 8427)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-font-face ((t (:height 50 :family "DejaVu Sans Mono")))))
