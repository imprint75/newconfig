;;; init-general.el --- Completion with general and dumb-jump -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(set-frame-font "Menlo 14")
(setq tab-always-indent 'complete)
(setq debug-on-error t)
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))
(add-to-list 'completion-styles 'initials t)
(fset 'yes-or-no-p 'y-or-n-p)

;; revisit. from purcell
(add-hook 'after-init-hook 'recentf-mode)
(setq-default
 recentf-max-saved-items 1000
 recentf-exclude '("/tmp/" "/ssh:"))

;; don't store auto-saves in projects
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.emacs-saves"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups

(setq auto-save-file-name-transforms
      `((".*" "~/.emacs-saves" t)))

(provide 'init-general)
;;; init-general.el ends here
