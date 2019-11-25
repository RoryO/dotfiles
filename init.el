;;; Init --- Startup
;;; Commentary:
;;; Yields to configuration.org
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(setq gc-cons-threshold 64000000)
(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))
(set-language-environment "UTF-8")
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
    ("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(global-company-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (enh-ruby-mode yasnippet yaml-mode writegood-mode web-mode tide spaceline robe rg rainbow-delimiters monokai-theme magit company-lsp lsp-ui lsp-mode inf-ruby helm-projectile helm-company helm hcl-mode flycheck evil-surround evil-matchit evil-collection evil company-quickhelp company all-the-icons-dired all-the-icons use-package)))
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
