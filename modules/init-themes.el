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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Path in header
(defun with-face (str &rest face-plist)
  (propertize str 'face face-plist))

(defun sl/make-header ()
  ""
  (let* ((sl/full-header (abbreviate-file-name buffer-file-name))
	 (sl/header (file-name-directory sl/full-header))
	 (sl/drop-str "[...]"))
    (if (> (length sl/full-header)
	   (window-body-width))
	(if (> (length sl/header)
	       (window-body-width))
	    (progn
	      (concat (with-face sl/drop-str
				 :background "blue"
				 :weight 'bold
				 )
		      (with-face (substring sl/header
					    (+ (- (length sl/header)
						  (window-body-width))
					       (length sl/drop-str))
					    (length sl/header))
				 ;; :background "red"
				 :weight 'bold
				 )))
	  (concat (with-face sl/header
			     ;; :background "red"
			     :foreground "#8fb28f"
			     :weight 'bold
			     )))
      (concat (with-face sl/header
			 ;; :background "green"
			 ;; :foreground "black"
			 :weight 'bold
			 :foreground "#8fb28f"
			 )
	      (with-face (file-name-nondirectory buffer-file-name)
			 :weight 'bold
			 ;; :background "red"
			 )))))
(defun sl/display-header ()
  (setq header-line-format
	'("" ;; invocation-name
	  (:eval (if (buffer-file-name)
		     (sl/make-header)
		   "%b")))))

(add-hook 'buffer-list-update-hook
	  'sl/display-header)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Path in header

(column-number-mode 1)
(show-paren-mode 1)
(tool-bar-mode -1)
(electric-pair-mode 1)
(global-display-line-numbers-mode 1)

(provide 'init-themes)
;;; init-themes.el ends here
