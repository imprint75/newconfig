;;; init-yasnippet.el --- Code snippets -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package
  yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package
  yasnippet-snippets
  :ensure t
  :after (yasnippet))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
