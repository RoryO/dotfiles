(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package evil :ensure t :config (evil-mode 1))
(use-package solarized-theme :ensure t :config (load-theme 'solarized-dark t))
(use-package magit :ensure t)
(use-package web-mode :ensure t)
(use-package flycheck :ensure t :config (global-flycheck-mode))
(use-package relative-line-numbers :ensure t :config (global-relative-line-numbers-mode))
(use-package robe :ensure t :config (add-hook 'enh-ruby-mode-hook 'robe-mode))
(use-package enh-ruby-mode :ensure t :config
    (add-to-list 'auto-mode-alist
		 '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (robe enh-ruby-mode relative-line-numbers flycheck web-mode solarized-theme ##)))
 '(ring-bell-function (quote ignore))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (eq system-type 'darwin)
  (set-face-attribute 'default nil :family "Inconsolata")
  (set-face-attribute 'default nil :height 240)
)
