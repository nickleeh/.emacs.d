;;;; Keybindings ;;;;
(global-set-key [?\S- ] 'set-mark-command)	 ; Shift-Space to set mark
;; (windmove-default-keybindings)			 ; Active the builtin switch window key: Shift-ArrowKeys.

;; Ace-window key bindings:
(load "~/.emacs.d/config/ace-window-cfg.el")

;; Toggle windows split between vertical <-> horizontal:
(global-set-key (kbd "C-x t") 'toggle-window-split)

;; Bind C-x f2 to rename buffer:
(global-set-key [?\C-x f2] 'rename-buffer)

(global-set-key (kbd "<f5>") 'eval-buffer)


;; ;;;; Multiple-cursors

;; ;; Start out with:
;; (require 'multiple-cursors)

;; ;; When you have an active region that spans multiple lines, the following will add a cursor to each line:

;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; ;; When you want to add multiple cursors not based on continuous lines, but based on keywords in the buffer, use:

;; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
;; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)






;;;; Set the menu/apps key to do emacs's M-x, if on Windows
(cond
 ((string-equal system-type "windows-nt")
  (global-set-key (kbd "<apps>") 'execute-extended-command))
 ((string-equal system-type "darwin") ; Mac
  t )
 ((string-equal system-type "gnu/linux")
  t ))


;; Dot-mode:
;; If you only want dot-mode to activate when you press "C-.", add the
;; the following to your .emacs:
;;
   ;; (autoload 'dot-mode "dot-mode" nil t) ; vi `.' command emulation
   ;; (global-set-key [(control ?.)] (lambda () (interactive) (dot-mode 1)
   ;;                                    (message "Dot mode activated.")))
;;
;; If you want dot-mode all the time (like me), add the following to
;; your .emacs:
;;
    (require 'dot-mode)
    (add-hook 'find-file-hooks 'dot-mode-on)

   ;; (autoload 'dot-mode "dot-mode" nil t) ; vi `.' command emulation
   (global-set-key [(control ?.)] (lambda () (interactive) (dot-mode 1)
                                      (message "Dot mode activated.")))

;;;; keybindings end ;;;;
;; ======================
