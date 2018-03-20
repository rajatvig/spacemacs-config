(setq bazel-packages
  '(
     bazel-mode
     ))

(defun bazel/init-bazel-mode ()
  (add-to-list 'auto-mode-alist '("WORKSPACE$" . bazel-mode))
  (add-to-list 'auto-mode-alist '("BUILD$" . bazel-mode))
)
