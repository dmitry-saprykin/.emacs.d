(require 'package)
(setq package-enable-at-startup nil   ;Info node `(emacs) Package Installation'
    ;; prefer melpa-stable, then the default source gnu, then others
    package-archive-priorities '(("gnu"          . 10)
                                 ("melpa-stable" . 5))
    package-pinned-packages '((use-package . "melpa")))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; NOTE: this call is probably the more expensive function call of the init file
;; but this is also the building block for the rest of the configuration
(package-initialize)

;; Configure and bootstrap `use-package'
(unless (package-installed-p 'use-package)
    (package-refresh-contents)
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

;Slow and unstable
;(require 'setup-irony)

;(global-set-key (kbd "C-x b") 'buffer-menu)

(setq custom-file (expand-file-name "custom.set.variables.el" user-emacs-directory))
(when (file-exists-p custom-file)
    (load custom-file))

(setq
    backup-by-copying t      ; don't clobber symlinks
    backup-directory-alist
        `(("." . ,(expand-file-name "backups" user-emacs-directory)))    ; don't litter my fs tree
    delete-old-versions -1
    ;kept-new-versions 5
    ;kept-old-versions 2
    version-control t
    vc-make-backup-files t
    auto-save-file-name-transforms 
        `((".*" ,(expand-file-name "auto-save-list" user-emacs-directory) t))
    )       ; use versioned backups
