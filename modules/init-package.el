;;; init-package.el --- Setup use-pagage -*- lexical-binding: t -*-
;;; Commentary: Package install, use-package
;;; Code:

(setq package-list
      '(use-package))

;; attempt to improve
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
 
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(use-package
 exec-path-from-shell
 :ensure t
 :config
 (when (memq window-system '(mac ns x))
   (exec-path-from-shell-initialize)))

(use-package
 use-package-ensure-system-package
 :ensure t)

(use-package
 auto-package-update
 :ensure t
 :config
 (setq auto-package-update-delete-old-versions t)
 (setq auto-package-update-hide-results t)
 (auto-package-update-maybe))

;;; Global config stuff
(use-package
  paredit
  :init
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
  :ensure t)

(use-package
  paredit-everywhere
  :ensure t)

(use-package
  flycheck
  :ensure t)

(provide 'init-package)
;;; init-package.el ends here
