;;; init-go.el --- Go mode setup -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Tips on getting pylsp working

;; Install pip
;; curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
;; python3 get-pip.py
;; /Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip

;; Install pylsp
;; pip3 install 'python-lsp-server[all]'
;; pip3 install python-lsp-server
;; pylsp --help 

;; Add to Path
;; echo "export PATH=\"`python3 -m site --user-base`/bin:\$PATH\"" >> ~/.bashrc
;; source ~/.bashrc

(use-package jedi
  :ensure t)

(use-package company-jedi
  :ensure t
  :init (add-to-list 'company-backends ' company-jedi))

(use-package python
  :hook ((python-mode . jedi:setup)))

;; Python mode
(defun my-merge-imenu ()
  (interactive)
  (let ((mode-imenu (imenu-default-create-index-function))
        (custom-imenu (imenu--generic-function imenu-generic-expression)))
    (append mode-imenu custom-imenu)))

(defun my-python-hooks()
    ;; (interactive)
    ;; (setq tab-width     4
          ;; python-indent 4
          ;; python-shell-interpreter "ipython"
          ;; python-shell-interpreter-args "-i")
    ;; (if (string-match-p "rita" (or (buffer-file-name) ""))
        ;; (setq indent-tabs-mode t)
      ;; (setq indent-tabs-mode nil)
    ;; )
    ;; (add-to-list
        ;; 'imenu-generic-expression
        ;; '("Sections" "^#### \\[ \\(.*\\) \\]$" 1))
    ;; (setq imenu-create-index-function 'my-merge-imenu)
    ;; pythom mode keybindings
    (define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
    ;; (define-key python-mode-map (kbd "M-,") 'jedi:goto-definition-pop-marker)
    ;; (define-key python-mode-map (kbd "M-/") 'jedi:show-doc)
    ;; (define-key python-mode-map (kbd "M-?") 'helm-jedi-related-names)
    ;; end python mode keybindings

    ;; (eval-after-load "company"
        ;; '(progn
            ;; (unless (member 'company-jedi (car company-backends))
                ;; (setq comp-back (car company-backends))
                ;; (push 'company-jedi comp-back)
                ;; (setq company-backends (list comp-back)))
            ;; )))
    )

(add-hook 'python-mode-hook 'my-python-hooks)

(provide 'init-python)
;;; init-python.el ends here
