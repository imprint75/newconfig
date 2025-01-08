;;; init-python.el --- Python mode setup -*- lexical-binding: t -*-
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

;; Install NodeJS and NPM
;; https://nodejs.org/en/download/
;; these are reqs

;; Add to Path
;; echo "export PATH=\"`python3 -m site --user-base`/bin:\$PATH\"" >> ~/.bashrc
;; source ~/.bashrc

;; macos example for my location
;; (add-to-list 'exec-path "/Users/seans/Library/Python/3.9/bin")

;; set path to pylsp
;; macos example for my location
;; macos example for my location
;; (setq lsp-pyls-server-command "/Users/seans/Library/Python/3.9/bin/pylsp")

;; pip install pyright
;; pyright --help  

;; trying pyright
(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright") ;; or basedpyright
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred

(provide 'init-python)
;;; init-python.el ends here
