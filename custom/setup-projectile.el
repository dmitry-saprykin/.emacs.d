
;; Package: projectile                                                                             
(use-package projectile                                                                             
   :init                                                                                             
   (projectile-global-mode)                                                                          
   (setq projectile-enable-caching t)
   (setq projectile-switch-project-action (lambda () (dired (projectile-project-root)))) 
)


(provide 'setup-projectile)
