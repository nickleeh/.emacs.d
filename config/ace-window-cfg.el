;;;;  ace-window key settings ;;;; 

(global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; aw-keys - the sequence of leading characters for each window:

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

;; aw-keys are 0-9 by default, which is reasonable, but in the setup above, the keys are on the home row.

;; aw-scope

;; The default one is global, which means that ace-window will work across frames. If you set this to frame, ace-window will offer you the windows only on current frame.

;; aw-background

;; By default, ace-window temporarily sets a gray background and removes color from available windows in order to make the window-switching characters more visible. This is the behavior inherited from ace-jump-mode.

;; This behavior might not be necessary, as you already know the locations where to look, i.e. the top-left corners of each window. So you can turn off the gray background with:

(setq aw-background "gray") ; changed to true.o

;; aw-dispatch-always

;; When non-nil, ace-window will issue a read-char even for one window. This will make ace-window act differently from other-window for one or two windows. This is useful to change the action midway and execute other action other than the jump default. By default is set to nil

;; aw-dispatch-alist

;; This is the list of actions that you can trigger from ace-window other than the jump default. By default is:

(defvar aw-dispatch-alist
'((?x aw-delete-window " Ace - Delete Window")
    (?m aw-swap-window " Ace - Swap Window")
    (?n aw-flip-window)
    (?v aw-split-window-vert " Ace - Split Vert Window")
    (?b aw-split-window-horz " Ace - Split Horz Window")
    (?i delete-other-windows " Ace - Maximize Window")
    (?o delete-other-windows))
"List of actions for `aw-dispatch-default'.")

;; If the pair key-action is followed by a string, then ace-window will be invoked again to be able to select on which window you want to select the action. Otherwise the current window is selected.


;; Customize ace-window leading char
;; http://oremacs.com/2015/02/27/ace-window-leading-char/
(custom-set-faces
 '(aw-leading-char-face
   ((t (:inherit ace-jump-face-foreground :height 2.0)))))


;;;; ace-window config end ;;;;
;; ============================
