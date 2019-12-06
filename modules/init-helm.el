;;; init-helm.el --- Helm setup -*- lexical-binding: t -*-
;;; package --- Summary
;;; Commentary: Helm, ag, ivy, swiper

(use-package
 ag
 :ensure-system-package ag
 :ensure t)

(use-package
  helm
  :ensure t
  :config
  (setq
   helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
   helm-buffers-fuzzy-matching           t
   helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
   helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
   helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
   helm-ff-file-name-history-use-recentf t
   helm-ag-use-agignore                  t)
  (global-set-key (kbd "M-x") 'helm-M-x))

(use-package
 helm-ag
 :ensure t
 :after (helm ag))

(use-package
 ivy
 :ensure t
 :config
 (setq-default
  ivy-use-virtual-buffers t
  ivy-virtual-abbreviate 'fullpath
  ivy-count-format ""
  projectile-completion-system 'ivy
  ivy-magic-tilde nil
  ivy-dynamic-exhibit-delay-ms 150
  ivy-initial-inputs-alist
  '((Man-completion-table . "^")
    (woman . "^")))
 (ivy-mode 1))

(use-package
  swiper
  :ensure t
  :config
  (global-set-key (kbd "C-s") 'swiper))

(use-package
  ranger
  :ensure t
  :config
  (global-set-key (kbd "C-c r") 'ranger)
  (ranger-override-dired-mode t))

(use-package
  highlight
  :ensure t
  :ensure-system-package highlight)

(provide 'init-helm)
;;; init-helm ends here
