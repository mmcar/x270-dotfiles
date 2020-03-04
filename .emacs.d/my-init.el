(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
	("melpa-stb" . "https://stable.melpa.org/packages/")))

(package-initialize)

(unless (require 'use-package nil t)
  (if (not (yes-or-no-p (concat "Refresh packages, install use-package and"
                                " other packages used by init file? ")))
      (error "you need to install use-package first")
    (package-refresh-contents)
    (package-install 'use-package)
    (require 'use-package)
    (setq use-package-always-ensure t)))

(use-package which-key
  :ensure t
  :config (which-key-mode
	   (setq which-key-idle-delay .1)))

(use-package vterm
  :custom
  (vterm-shell "/usr/bin/fish")
  (vterm-kill-buffer-on-exit t))

;; depends upon projectile and vterm
(use-package multi-libvterm
  :load-path "multi-libvterm/"
  :bind ("C-`" . multi-libvterm-dedicated-toggle))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-set-key (kbd "M-o") 'other-window)
(global-display-line-numbers-mode 1)
(auto-save-visited-mode t)
(setq org-src-window-setup 'current-window)
(setq sml/no-confirm-load-theme t)
(org-bullets-mode)

(defun matt-reload ()
  (interactive)
  (load-file user-init-file))

(defun learning ()
  (interactive)
  (find-file "~/.config/helpnotes/emacs.org")
  (split-window-right)
  (find-file "~/masteringemacs.pdf"))

(custom-set-faces
 '(default ((t (:family "DejaVuSansMono Nerd Font"
			:foundry "PfEd"
			:slant normal
			:weight normal
			:height 151
			:width normal)))))
