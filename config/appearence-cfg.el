;;;; window settings ;;;;

(menu-bar-mode -1)			; turn on/off menu bar
(tool-bar-mode -1)			; turn on/off toolbar
(toggle-scroll-bar nil)			; turn on/off scroll bars
(setq inhibit-startup-screen t)		; make Emacs switch to a *scratch* buffer right away.
(setq display-time-format "%p%l:%M")	; time format like PM 10:34
(display-time)				; display time in the status bar

;; use solarized theme:
;; (load-theme 'solarized-light t)

;; Window position and size at start up:
(setq default-frame-alist
      '((top . 0) (left . 200)
	(width . 80) (height . 38) 
	;; 	(width . 80) (height . 30)
	;; (font . "DejaVu Sans Mono Book")
	;; (font . "Liberation Mono-12")
	;;	(font . "Source Code Pro-12")))
	;; 	(font . "Menlo-12")))
	;;	(font . "Droid Sans Mono Slashed-11")))
	(font . "Fira Code-12")))
;; (font . "Monaco-11")))		


;; ;; Maxmized at start up: (Don't delete)
;; (custom-set-variables
;;  '(initial-frame-alist (quote ((fullscreen . fullboth)))))

;; (add-to-list 'default-frame-alist '(fullscreen . maximized))

;; (add-to-list 'default-frame-alist '(fullscreen . fullboth)) 

;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))


;; (add-hook 'window-setup-hook 'toggle-frame-maximized t)
;; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)


;; Highlight the cursor line
(global-hl-line-mode 1)

;; set selection color
;; (set-face-attribute 'region nil :background "dark orange")

;; Font
;; (setq default-frame-alist '((font . "Source Code Pro-12"))) ; set default font for emacs --daemon / emacsclient
;; (setq default-frame-alist '((font . "Liberation Mono-12"))) ; set default font for emacs --daemon / emacsclient


;; Toggle  windows between vertical <-> horizontal split view:
;; http://emacs.stackexchange.com/questions/318/switch-window-split-orientation-fastest-way
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))


;;;; Appearence config end ;;;;
