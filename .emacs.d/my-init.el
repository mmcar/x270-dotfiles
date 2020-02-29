(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-content)
  (package-install 'use-package))

(use-package which-key
  :ensure t
  :config (which-key-mode
	   (setq which-key-idle-delay .1)))

(use-package vterm-toggle
     :requires (vterm))
  (use-package vterm
    :bind ("C-`" . vterm-toggle-cd)
    :custom (vterm-shell "/usr/bin/fish")
            (vterm-kill-buffer-on-exit t)
	    (vterm-toggle-reset-window-configuration-after-exit t)
	    (vterm-toggle-use-dedicated-buffer t))

(setq vterm-toggle-fullscreen-p nil)
(add-to-list 'display-buffer-alist
             '((lambda(bufname _) (with-current-buffer bufname (equal major-mode 'vterm-mode)))
                (display-buffer-reuse-window display-buffer-at-bottom)
                ;;(display-buffer-reuse-window display-buffer-in-direction)
                ;;display-buffer-qin-direction/direction/dedicated is added in emacs27
                ;;(direction . bottom)
                ;;(dedicated . t) ;dedicated is supported in emacs27
                (reusable-frames . visible)
                (window-height . 0.3)))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-set-key (kbd "M-o") 'other-window)
(global-display-line-numbers-mode 1)
(auto-save-visited-mode t)
(setq org-src-window-setup 'current-window)

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
