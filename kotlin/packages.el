(setq kotlin-packages
  '(
     kotlin-mode
     flycheck
     flycheck-kotlin
     ))

(defun kotlin/init-kotlin-mode ()
  (add-to-list 'auto-mode-alist '("\\.kt$" . kotlin-mode))
)

(defun kotlin/post-init-flycheck ()
  (add-hook 'kotlin-mode-hook 'flycheck-mode))
