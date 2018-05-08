
(dolist (map (list ggtags-mode-map ))
  (define-key map (kbd "M-.") 'rtags-find-symbol-at-point)
  (define-key map (kbd "M-r") 'rtags-find-references-at-point)
  (define-key map (kbd "M-f") 'rtags-find-symbol)
  (define-key map (kbd "M-v") 'rtags-find-virtuals-at-point)
  (define-key map (kbd "M-<left>") 'rtags-location-stack-back)
  (define-key map (kbd "M-<right>") 'rtags-location-stask-forward)
  (define-key map (kbd "M-i") 'rtags-get-include-file-for-symbol)
)
                                                                                                    
                                                                                                    
(provide 'setup-navigation) 
