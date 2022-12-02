;;; text.el --- Custom funnctions for working with text -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun count-lines-region (start end)
  "Print number of lines and characters in the region."
  (interactive "r")
  (subst-char-in-string )
  (message "Region has %d lines, %d characters"
	   (count-lines start end) (- end start)))

(provide 'text)
;;; text.el ends here
