(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status)))

(set-cursor-color "#abcd74")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#2d2925" :foreground "#c5b19b" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Menlo"))))
 '(font-lock-builtin-face ((t (:foreground "#e7c173"))))
 '(font-lock-comment-face ((t (:foreground "#abcd74"))))
 '(font-lock-constant-face ((t (:foreground "#e7c173"))))
 '(font-lock-doc-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-function-name-face ((t nil)))
 '(font-lock-keyword-face ((t (:foreground "#fadfc2"))))
 '(font-lock-string-face ((t (:foreground "#df8d68"))))
 '(font-lock-type-face ((t (:foreground "#e7c173"))))
 '(font-lock-variable-name-face ((t nil)))
 '(org-block ((t (:extend t)))))

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit)))
