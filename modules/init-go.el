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
	    (set (make-local-variable 'company-backends) '(company-go))
            (setq tab-width 4)
            (setq indent-tabs-mode 1)
	    (company-mode)))

(with-eval-after-load 'go-mode
  (define-key go-mode-map (kbd "C-c C-d") nil))

(provide 'init-go)
;;; init-go.el ends here
