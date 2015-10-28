(provide 'packages)

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

(use-package nyan-mode
	     :ensure t
	     :init
	     (nyan-mode))

(use-package evil
  :ensure t
  :config
  (evil-mode))

(use-package cider
  :ensure t)

(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-auto-mode nil)
(setq nrepl-log-messages nil)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-prompt-function 'cider-repl-prompt-lastname) ; that might be a problem
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-display-in-current-window t)
(setq cider-repl-result-prefix ";;=> ")
(setq cider-test-show-report-on-success t)


(use-package projectile
  :ensure t)

(use-package seti-theme
  :ensure t)

