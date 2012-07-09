(add-to-list 'load-path (substitute-in-file-name "$CONF_DIR/emacs/modes"))

(require 'clojure-mode)
(require 'go-mode)
(setq auto-mode-alist
      (cons '("\\.cl$" . lisp-mode) auto-mode-alist))
(add-hook 'lisp-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'lisp-mode-hook
          '(lambda ()
             (set (make-local-variable lisp-indent-function)
                  'common-lisp-indent-function)))
(require 'markdown-mode)
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))
(require 'ruby-mode)
(setq auto-mode-alist
      (cons '("\\.rb" . ruby-mode) auto-mode-alist))
(require 'scss-mode)
(setq css-indent-offset 2)

(setq js-indent-level 2)

;; cpp private/public should be indented
(c-set-offset 'access-label -1)

(require 'paredit)
(add-hook 'clojure-mode-hook
	  (lambda () (paredit-mode +1)))

(add-hook 'java-mode-hook
	  (lambda ()
	    "Treat Java 1.5 @-style annotations as comments."
	    (setq c-comment-start-regexp "(@|/(/|[*][*]?))")
	    (modify-syntax-entry ?@ "< b" java-mode-syntax-table)))

;; I think I always like subword-mode
(mapcar (lambda (mode) (add-hook mode (lambda () (subword-mode t))))
	(list 'c-mode-hook
	      'c++-mode-hook
	      'js-mode-hook
	      'python-mode-hook
	      'ruby-mode-hook))

(provide 'emacs-modes)
