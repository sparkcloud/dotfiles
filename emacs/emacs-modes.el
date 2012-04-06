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
(require 'markdown-mode)
(setq auto-mode-alist
      (cons '("\\.md" . markdown-mode) auto-mode-alist))
(require 'ruby-mode)
(setq auto-mode-alist
      (cons '("\\.rb" . ruby-mode) auto-mode-alist))
(require 'scss-mode)
(setq css-indent-offset 2)

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
