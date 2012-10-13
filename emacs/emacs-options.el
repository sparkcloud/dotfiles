;; grr to tilde files
(setq backup-directory-alist (list (cons "." "~/.emacs.d/saves")))
;; grr to pound files
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/saves/" t)))
;; fuck you, vc-git
(setq vc-handled-backends ())
;; just say fuck no to tabs
(setq-default indent-tabs-mode nil)
;; no menu bar please
(menu-bar-mode -1)

(add-to-list 'load-path 
	     (substitute-in-file-name
	      "$CONF_DIR/emacs/modes/color-theme-6.6.0"))
(add-to-list 'load-path
	     (substitute-in-file-name
	      "$CONF_DIR/solarized/emacs-color-theme-solarized"))
(require 'color-theme-solarized)
;; TODO: need to set terminal colors?
;; (color-theme-solarized-dark)

;; OSX copying, go!
(require 'pbcopy)
(turn-on-pbcopy)

(require 'unbound)

(provide 'emacs-options)
