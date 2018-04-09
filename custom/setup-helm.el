(use-package helm
  :init
  (progn
    (use-package helm-projectile
      :init
      (define-key projectile-mode-map [remap projectile-switch-project] #'helm-projectile-switch-project) 
    )
  )
)

(provide 'setup-helm)
