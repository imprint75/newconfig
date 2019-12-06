;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Expand everything under modules and functions directories
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "functions" user-emacs-directory))

(require 'init-package)
(require 'line) ;; functions for working with lines
(require 'init-helm)
(require 'init-company)
(require 'init-git)
(require 'init-go)
(require 'init-neotree)
(require 'init-projectile)
(require 'init-themes) ;;; General theme setup
(require 'init-utils)
(require 'init-yasnippet)

;;; Global config stuff
(use-package
  paredit
  :init
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
  :ensure t)

(use-package
  paredit-everywhere
  :ensure t)

(setq tab-always-indent 'complete)
(setq debug-on-error t)
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))
(add-to-list 'completion-styles 'initials t)
(fset 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "C-c C-d") 'duplicate-line)

;; revisit. from purcell
(add-hook 'after-init-hook 'recentf-mode)
(setq-default
 recentf-max-saved-items 1000
 recentf-exclude '("/tmp/" "/ssh:"))

;; don't store customizations in init
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

