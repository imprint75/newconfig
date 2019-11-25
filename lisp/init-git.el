;;; init-git.el --- Git SCM support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code: Magit

(use-package
  magit
  :ensure t
  :pin melpa-stable
  :config
  (setq-default magit-diff-refine-hunk t)
  (global-set-key (kbd "C-c m s") 'magit-status)
  (global-set-key (kbd "C-c m p") 'magit-push)
  (global-set-key (kbd "C-c m l") 'magit-pull)
  (global-set-key (kbd "C-c m g") 'magit-log))

(provide 'init-git)
;;; init-git.el ends here
