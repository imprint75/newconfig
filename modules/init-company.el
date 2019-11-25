;;; init-company.el --- Completion with company and dumb-jump -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package
  dumb-jump
  :ensure t)

(use-package
  company
  :ensure t
  :init
  (global-company-mode)
  (company-statistics-mode)
  :bind
  (:map company-active-map
	([tab] . company-complete-common-or-cycle)
	([?\t] . company-complete-common-or-cycle))
  :config
  (setq
   company-dabbrev-downcase      0
   company-idle-delay            .075
   company-minimum-prefix-length 1
   company-tooltip-limit         20))

(provide 'init-company)
;;; init-company.el ends here
