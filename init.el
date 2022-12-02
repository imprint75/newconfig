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
(require 'init-lsp)
(require 'init-neotree)
(require 'init-projectile)
(require 'init-themes) ;;; theme setup
(require 'init-utils)
(require 'init-yasnippet)
;;; individual LSP language setup  
(require 'init-go)
(require 'init-python)
(require 'init-typescript)
;;; some general stuff
(require 'init-general)
(require 'init-keys)
;; don't store customizations in init
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
