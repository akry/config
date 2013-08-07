(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
	'(progn
		(color-theme-initialize)
		(color-theme-dark-laptop)))
(require 'etags)
(global-set-key "\C-cj" 'find-tag)
(global-set-key "\C-cb" 'pop-tag-mark)
(global-set-key "\C-cn" '(lambda () (interactive) (find-tag last-tag 1)))