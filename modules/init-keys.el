;;; init-keys.el --- Setting some keys -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c C-d") 'duplicate-line)
(global-set-key (kbd "C-c C-f") 'count-lines-region)
(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "<f12>") 'helm-projectile-ag)
(global-set-key (kbd "<f11>") 'helm-projectile-find-file)
(global-set-key (kbd "<f10>") 'helm-ag-project-root)
(global-set-key (kbd "<f9>") 'ivy-switch-buffer)
(global-set-key (kbd "<f1>") 'magit-status)

(provide 'init-keys)
;;; init-keys.el ends here
