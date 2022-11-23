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

(add-to-list 'exec-path "/Users/sean.smith2/Library/Python/3.9/bin")

;; set path to pylsp
(setq lsp-pyls-server-command "/Users/sean.smith2/Library/Python/3.9/bin/pylsp")

;; pip install pyright
;; pyright --help  

;; trying pyright
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

(provide 'init-python)
;;; init-python.el ends here
