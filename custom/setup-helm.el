(use-package helm
  :init
  (progn
    (require 'helm-config)
    ;(require 'helm-grep)
    ;; To fix error at compile:                                                                     
    ;; Error (bytecomp): Forgot to expand macro with-helm-buffer in                                 
    ;; (with-helm-buffer helm-echo-input-in-header-line)                                            
    (if (version< "26.0.50" emacs-version)
       (eval-when-compile (require 'helm-lib)))
    ;(defun helm-hide-minibuffer-maybe ()
    ;   (when (with-helm-buffer helm-echo-input-in-header-line)
    ;     (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
    ;       (overlay-put ov 'window (selected-window))                    
    ;       (overlay-put ov 'face (let ((bg-color (face-background 'default nil)))
    ;                               `(:background ,bg-color :foreground ,bg-color)))
    ;       (setq-local cursor-type nil))))

    ;(add-hook 'helm-minibuffer-set-up-hook 'helm-hide-minibuffer-maybe)                             
    ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.                          
    ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we                           
    ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
    ;(global-set-key (kbd "C-c h") 'helm-command-prefix)
    ;(global-unset-key (kbd "C-x c"))
   
    (setq helm-google-suggest-use-curl-p t
          helm-split-window-in-side-p t ;; open helm buffer inside current window, not occupy whole other window
          helm-echo-input-in-header-line t
          helm-autoresize-max-height 0
          helm-autoresize-min-height 20
    )

    (use-package helm-projectile
      :init
      (define-key projectile-mode-map [remap projectile-switch-project] #'helm-projectile-switch-project)
    )

;    (helm-mode 1)                                                                                                        
;    (use-package helm-projectile                                                                    
;      :init                                                                                         
;      (helm-projectile-on)                                                                          
;      (setq projectile-completion-system 'helm)                                                     
;      (setq projectile-indexing-method 'alien))     
  )
)


(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(helm-autoresize-mode 1)

(provide 'setup-helm)
