(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)


(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)
(require 'setup-company)
(require 'setup-projectile)
(require 'setup-neotree)
(require 'setup-helm)
(require 'setup-c)
(require 'setup-project-dirs)
(require 'setup-irony)

;(global-set-key (kbd "C-x b") 'buffer-menu)


;; function-args
;; (require 'function-args)
;; (fa-config-default)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-clang-arguments (quote ("-std=c++11")))
 '(custom-enabled-themes (quote (atom-dark)))
 '(custom-safe-themes
   (quote
    ("e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" default)))
 '(ede-project-directories
   (quote
    ("/home/saprykin/trunk/internal/c++/src/internal/ID/WGS_NEW")
    ("/home/saprykin/trunk/internal/c++/src/internal/ID/ipg")
    ("/home/saprykin/devel/id/id-blob-storage")))
 '(package-selected-packages
   (quote
    (flycheck-irony company-irony irony-eldoc company-irony-c-headers company-quickhelp atom-dark-theme dired-imenu company-c-headers company-shell zygospore yasnippet ws-butler volatile-highlights use-package undo-tree dtrt-indent counsel-projectile company clean-aindent-mode anzu))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
