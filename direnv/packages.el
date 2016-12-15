(setq direnv-packages
      '(
        projectile-direnv
        ))

(defun direnv/post-init-projectile-direnv ()
  (add-hook 'projectile-mode-hook 'projectile-direnv-export-variables)
  (add-hook 'compilation-filter-hook 'xterm-color-filter))
