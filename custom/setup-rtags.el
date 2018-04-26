(require 'rtags)
(require 'company-rtags)
(require 'helm-rtags)
;(require 'flycheck)
;(require 'flycheck-rtags)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)
(setq rtags-use-helm t)

;(add-hook 'c++-mode-hook 'flycheck-mode)
;(add-hook 'c-mode-hook 'flycheck-mode)
;(defun my-flycheck-rtags-setup ()
;  (flycheck-select-checker 'rtags)
  ;(setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  ;(setq-local flycheck-check-syntax-automatically nil)
;)
;(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)

(provide 'setup-rtags)
