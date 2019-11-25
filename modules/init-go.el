;;; init-go.el --- Go mode setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package
 go-mode
 :ensure t)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(use-package
 company-go
 :ensure t)

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(provide 'init-go)
;;; init-go.el ends here
