;;; init-projectile.el --- Use Projectile for navigation within projects -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-completion-system 'ivy)
  ;; (setq projectile-require-project-root nil)
  (projectile-mode +1))

(use-package
  helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(provide 'init-projectile)
;;; init-projectile.el ends here
