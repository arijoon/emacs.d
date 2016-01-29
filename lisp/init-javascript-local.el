;; Initialise local javascript

;;; Code:
;; js3-mode

(defun js3-mode-setup ()
  (add-hook 'js3-mode-hook
            (lambda ()
              (setq js3-auto-indent-p t
                    js3-curly-indent-offset 0
                    js3-enter-indents-newline t
                    js3-expr-indent-offset 2
                    js3-indent-on-enter-key t
                    js3-lazy-commas t
                    js3-lazy-dots t
                    js3-lazy-operators t
                    js3-paren-indent-offset 2
                    js3-square-indent-offset 2)
              (linum-mode 1)))
  (add-to-list 'ac-modes 'js3-mode)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode)))
(require-package 'js3-mode)
(js3-mode-setup)

;; Add tern
(defun tern-setup ()
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  (add-hook 'js3-mode-hook (lambda () (tern-mode t)))
  (setq tern-command (cons (executable-find "tern") '()))
  (eval-after-load 'tern
    '(progn
       (require 'tern-auto-complete)
       (tern-ac-setup)
       (define-key evil-insert-state-map (kbd "C-TAB") 'tern-ac-complete))))

(require-package 'tern)
(require-package 'tern-auto-complete)
(tern-setup)

(provide 'init-javascript-local)
