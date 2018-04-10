(require 'irony)
(require 'company-irony)
(require 'company-irony-c-headers)
(require 'flycheck-irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'setup-irony)
