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
    (company-lsp lsp-ui lsp-mode spaceline neotree all-the-icons-dired all-the-icons tide hcl-mode rainbow-delimiters org-plus-contrib monokai-theme company-quickhelp irony company-irony irony-mode helm-company evil-collection writegood-mode nlinum-relative editorconfig rinari rspec-mode evil-surround evil-org company chruby evil-matchit markdown-mode ag projectile-rails slim-mode company-mode magit evil use-package column-marker yaml-mode auto-complete hemisu-theme helm projectile robe enh-ruby-mode relative-line-numbers flycheck web-mode solarized-theme ##)))
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
