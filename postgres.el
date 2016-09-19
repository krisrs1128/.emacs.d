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
     (server :default "")
     (database :default "")
     (port :default )))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setenv "DYLD_LIBRARY_PATH" "/usr/local/Cellar/postgresql/9.5.3/lib/")
(setq sql-postgres-program "/usr/local/bin/psql")
