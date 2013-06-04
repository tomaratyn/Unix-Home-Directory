(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/color-themes/emacs-color-theme-solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-themes/emacs-color-theme-solarized")

; (add-to-list 'exec-path "/usr/local/texlive/2010/bin/x86_64-darwin")
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2010/bin/x86_64-darwin"))

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Add in your own as you wish:
(defvar my-packages '(starter-kit color-theme markdown-mode)
  "A list of packages to ensure are installed at launch.")

(require 'idle-highlight-mode)

(set-default-font "-apple-Monaco-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
(load-theme 'solarized-light t)

(global-linum-mode 1)

(add-hook 'html-mode-hook
          (lambda()
            (auto-fill-mode 0)
            (setq sgml-basic-offset 4)))


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


(require 'auto-complete-config)
(ac-config-default)

(setq python-indent 4)
(setq js-indent-level 2)
(setq html-indent-level 2)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#fcf4dc")
 '(background-mode light)
 '(cursor-color "#52676f")
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" default)))
 '(foreground-color "#52676f"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
