;; My utils file

;;; Code:

;; Line insertion
(defun my/insert-line-before (times)
  "Insert a newline(s) above the line containing
    the cursor"
  (interactive "p")
  (save-excursion
    (move-beginning-of-line 1)
    (newline times)))

(global-set-key (kbd "C-c o") 'my/insert-line-before)
(global-set-key (kbd "C-$") 'move-end-of-line)
(provide 'init-my-utils)
