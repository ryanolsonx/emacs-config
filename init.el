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

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-tokyo-night 'no-confirm))

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
 '(custom-safe-themes
   '("4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d" "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2" "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4" "10e5d4cc0f67ed5cafac0f4252093d2119ee8b8cb449e7053273453c1a1eb7cc" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "9d5124bef86c2348d7d4774ca384ae7b6027ff7f6eb3c401378e298ce605f83a" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" default))
 '(package-selected-packages '(doom-themes magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
