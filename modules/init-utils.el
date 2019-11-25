;;; init-utils.el --- Etc editiing utils -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package
  browse-kill-ring
  :ensure t
  :config
  (setq browse-kill-ring-separator "\f")
  (global-set-key (kbd "M-Y") 'browse-kill-ring)
  (define-key browse-kill-ring-mode-map (kbd "C-g") 'browse-kill-ring-quit)
  (define-key browse-kill-ring-mode-map (kbd "M-n") 'browse-kill-ring-forward)
  (define-key browse-kill-ring-mode-map (kbd "M-p") 'browse-kill-ring-previous))

(provide 'init-utils)
;;; init-utils.el ends here
