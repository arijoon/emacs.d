;; Evil config file

(require-package 'evil)
(require-package 'neotree)
(require-package 'evil-leader)
(require-package 'evil-nerd-commenter)

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode t)
;;
;; Vim [ESC] close buffers
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; Vim <up> and <down> move lines
(define-key evil-normal-state-map (kbd "<up>") "ddkP")
(define-key evil-normal-state-map (kbd "<down>") "ddp")

;; Window movements
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "<left>") (kbd "C-c C-<left>"))
(define-key evil-normal-state-map (kbd "<right>") (kbd "C-c C-<right>"))

;; Nerdcommenter
(global-set-key (kbd "C-c /") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
;; Vim key bindings for evil commenter
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "." 'auto-complete
  "\\" 'evilnc-comment-operator ; if you prefer backslash key
)


;; Neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(add-hook 'neotree-mode-hook
	  (lambda ()
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

;; Text editor customizations
(require-package 'nlinum)
(global-nlinum-mode t)

;; Add git customization for evil-magit
(require-package 'evil-magit)
(require 'evil-magit)


(provide 'init-evil)
;;; init-evil.el ends here
