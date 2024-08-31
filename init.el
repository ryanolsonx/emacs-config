;; Disabled modes
(tool-bar-mode -1)
(scroll-bar-mode -1)
(auto-save-mode -1)
(blink-cursor-mode -1)
(setq gc-cons-threshold 100000000)

;; Enabled modes
(global-auto-revert-mode t)
(delete-selection-mode t)
(column-number-mode t)
(savehist-mode t)

;; Settings
(set-face-attribute 'default nil :height 160)

(setq-default inhibit-startup-screen t
	      ring-bell-function 'ignore
	      indent-tabs-mode nil
              tab-width 4
	      js-indent-level 2
	      css-indent-level 2
              ruby-indent-level 2
              make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; Keybindings
(global-set-key (kbd "C-0") (lambda () (interactive) (delete-window)))
(global-set-key (kbd "C-1") (lambda () (interactive) (delete-other-windows)))
(global-set-key (kbd "C-2") (lambda () (interactive) (split-window-vertically) (other-window 1)))
(global-set-key (kbd "C-3") (lambda () (interactive) (split-window-horizontally) (other-window 1)))
(global-set-key (kbd "C-o") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "C-,") 'beginning-of-buffer)
(global-set-key (kbd "C-.") 'end-of-buffer)

(put 'upcase-region 'disabled nil)

(add-hook 'ruby-mode-hook (lambda ()
                            (show-paren-mode -1)))

(load-file "~/.config/emacs/yaml-mode.el")
