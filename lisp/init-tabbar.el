;;; package ---  tabbar
;;; Commentary:
;; Arman Yaraee
;; Tabbar config
;;; Code:

(require-package 'tabbar)

;; Tabbar button group function
(defun my-tabbar-buffer-groups ()
  "Return the name of the tab groups the current buffer belongs to.
There are multiple groups: Emacs, and the rest"
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))

(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
(require 'tabbar)
(tabbar-mode)

(provide 'init-tabbar)
;;; init-tabbar.el ends here
