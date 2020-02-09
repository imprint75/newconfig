;;; init-go.el --- Go mode setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq exec-path (append '("/Users/seansmith/go/bin") exec-path))
(setenv "PATH" (concat "/Users/seansmith/go/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/bin/go:" (getenv "PATH")))
(setenv "GOPATH" "/Users/seansmith/go")

(use-package
 go-mode
 :ensure t
 :config
 (setq tab-width 4)
 (setq indent-tabs-mode 1)
 (setq go-packages-function 'go-packages-go-list))

(use-package
  company-go
  :ensure t)

(use-package
  go-projectile
  :ensure t)

; Use goimports instead of go-fmt for formatting with intelligent package addition/removal
(setq gofmt-command "goimports")
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (local-set-key (kbd "M-.") 'godef-jump)
                          (go-eldoc-setup)
                          ; call Gofmt before saving
                          (add-hook 'before-save-hook 'gofmt-before-save)))

(with-eval-after-load 'go-mode
  (define-key go-mode-map (kbd "C-c C-d") nil))

(provide 'init-go)
;;; init-go.el ends here
