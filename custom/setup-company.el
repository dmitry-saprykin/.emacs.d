(require 'company)
(require 'company-c-headers)

(global-company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay nil
      company-minimum-prefix-length 2
      company-show-numbers t
      company-tooltip-limit 20
      company-dabbrev-downcase nil
      )

(setq company-backends (delete 'company-semantic company-backends))
(add-to-list 'company-backends 'company-c-headers)

(define-key c-mode-map  (kbd "C-SPC") 'company-complete)
(define-key c++-mode-map (kbd "C-SPC") 'company-complete)

(add-to-list 'company-c-headers-path-system "/opt/ncbi/gcc/4.9.3/include/c++/4.9.3/")
(custom-set-variables '(company-clang-arguments '("-std=c++11")))

(put 'company-clang-arguments 'safe-local-variable (lambda (val) #'stringp))

(provide 'setup-company)
