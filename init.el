(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t)

(defun my-c-mode-common-hook ()
 ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
 (c-set-offset 'substatement-open 0)
 ;; other customizations can go here

 (setq c++-tab-always-indent t)
 (setq c-basic-offset 4)                  ;; Default is 2
 (setq c-indent-level 4)                  ;; Default is 2

 (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
 (setq tab-width 4)
 (setq indent-tabs-mode t)  ; use spaces only if nil
 )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(global-display-line-numbers-mode)

;; color-theme
(require 'modus-themes)
(load-theme 'modus-vivendi-tinted :no-confirm)

;; smartparens
(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
(add-hook 'c-mode-common-hook #'smartparens-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a75aff58f0d5bbf230e5d1a02169ac2fbf45c930f816f3a21563304d5140d245" "2e7dc2838b7941ab9cabaa3b6793286e5134f583c04bde2fba2f4e20f2617cf7" default))
 '(indent-tabs-mode t)
 '(package-selected-packages
   '(modus-themes yasnippet-snippets company flycheck yasnippet smartparens dash)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; flycheck
(global-flycheck-mode +1)

;; company
(add-hook 'after-init-hook 'global-company-mode)
