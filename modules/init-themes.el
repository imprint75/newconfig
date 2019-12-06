;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)

(use-package
  color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (load-theme 'sanityinc-tomorrow-night t))

(use-package
  rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  :ensure t)

(use-package
  beacon
  :ensure t
  :init
  (add-hook 'after-init-hook 'beacon-mode))

(column-number-mode 1)
(show-paren-mode 1)
(tool-bar-mode -1)
(electric-pair-mode 1)
(global-linum-mode 1)

(provide 'init-themes)
;;; init-themes.el ends here
