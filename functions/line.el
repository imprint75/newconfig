;;; line.el --- Custom funnctions for working with lines -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (newline)
  (yank))

(provide 'line)
;;; line.el ends here
