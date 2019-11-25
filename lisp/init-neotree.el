;;; init-neotree.el --- Neotree setup -*- lexical-binding: t -*-
;;; package --- init-neotree
;;; Commentary:

(use-package
 neotree
 :ensure t
 :config
 (setq-default neo-show-hidden-files t)
 (setq
  neo-window-fixed-size nil
  neo-window-width 30)
 :bind
 ("C-n" . neotree-toggle))

(with-eval-after-load 'neotree
  (define-key neotree-mode-map (kbd "C-n") nil))

(provide 'init-neotree)
;;; init-neotree ends here
