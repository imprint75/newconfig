;;; init-git.el --- Git SCM support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code: Magit

(use-package magit-popup
  :ensure t ; make sure it is installed
  :demand t ; make sure it is loaded
  )

(use-package
  magit
  :ensure t
  ;; :pin melpa-stable
  :config
  (setq-default magit-diff-refine-hunk t)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (add-hook 'git-commit-mode-hook (lambda () (company-mode -1))))

(provide 'init-git)
;;; init-git.el ends here
