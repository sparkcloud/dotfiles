(global-set-key (kbd "C-l") 'goto-line)

(defun backward-kill-line (arg)
  "Kill chars backward until encountering the end of a line."
  (interactive "p")
  (kill-line 0))
(global-set-key "\C-u" 'backward-kill-line)

(defun print-buffer-path ()
  (interactive)
  (princ (concat "buffer path: " buffer-file-name)))
(global-set-key "\C-f" 'print-buffer-path)

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)

(defun kill-and-join-forward (&optional arg)
  (interactive "P")
  (if (and (eolp) (not (bolp)))
      (progn (forward-char 1)
	     (just-one-space 0)
	     (backward-char 1)
	     (kill-line arg))
    (kill-line arg)))
(global-set-key "\C-k" 'kill-and-join-forward)

(global-set-key (kbd "C-c C-r") 'replace-regexp)
(global-set-key (kbd "C-c M-r") 'query-replace-regexp)

(defun list-buffers-and-switch (arg)
  (interactive "p")
  (list-buffers)
  (other-window 1))
(global-set-key (kbd "C-x C-b") 'list-buffers-and-switch)

(global-set-key (kbd "C-x w") 'delete-window)

(provide 'emacs-binds)
