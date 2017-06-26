;;; Init --- Startup
;;; Commentary:
;;; Yields to configuration.org
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file (expand-file-name "./configuration.org" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(global-company-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (markdown-mode evil-matchit linum-relative ag projectile-rails slim-mode company-mode magit evil use-package column-marker yaml-mode auto-complete hemisu-theme helm projectile robe enh-ruby-mode relative-line-numbers flycheck web-mode solarized-theme ##)))
 '(projectile-mode t nil (projectile))
 '(ring-bell-function (quote ignore))
 '(semantic-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init ends here
