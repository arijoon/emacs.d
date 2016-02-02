;; Webmode local init file

;;; Code:
(require-package 'web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.??html?\\'" . web-mode))

;; Fix indentation:
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; Set autocomplete mode for sources
(setq web-mode-ac-sources-alist
      '(("css" . (ac-source-css-property))
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

;; Web-mode settings
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-block-face t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)

;; Define emmet
(require-package 'emmet-mode)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook '( lambda ()
                              (local-set-key
                               (kbd "C-c m") 'emmet-expand-line)))
(provide 'init-webmode)
