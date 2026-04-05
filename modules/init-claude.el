;;; init-claude.el --- Claude Code IDE integration -*- lexical-binding: t -*-
;;; Commentary: Claude Code CLI integration via claude-code-ide.el
;;; Code:

;; Terminal backend - eat is lighter weight than vterm
(use-package eat
  :ensure t)

(use-package claude-code-ide
  :vc (:url "https://github.com/manzaltu/claude-code-ide.el" :branch "main")
  :commands (claude-code-ide claude-code-ide-resume claude-code-ide-continue)
  :custom
  (claude-code-ide-terminal-backend 'eat))

(provide 'init-claude)
;;; init-claude.el ends here
