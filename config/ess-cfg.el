;;;; ESS config ;;;;
;; =================
;; From Dirk Eddelbuettel
;; http://stackoverflow.com/questions/7502540/make-emacs-ess-follow-r-style-guide
;;; ESS
;; (add-hook 'ess-mode-hook
;; 	  (lambda ()
;; 	    (ess-set-style 'C++ 'quiet)
;; 	    ;; Because
;; 	    ;;                                 DEF GNU BSD K&R  C++
;; 	    ;; ess-indent-level                  2   2   8   5  4
;; 	    ;; ess-continued-statement-offset    2   2   8   5  4
;; 	    ;; ess-brace-offset                  0   0  -8  -5 -4
;; 	    ;; ess-arg-function-offset           2   4   0   0  0
;; 	    ;; ess-expression-offset             4   2   8   5  4
;; 	    ;; ess-else-offset                   0   0   0   0  0
;; 	    ;; ess-close-brace-offset            0   0   0   0  0
;; 	    (add-hook 'local-write-file-hooks
;; 		      (lambda ()
;; 			(ess-nuke-trailing-whitespace)))))
;; ;; (setq ess-nuke-trailing-whitespace-p 'ask)
;; ;; or even
;; (setq ess-nuke-trailing-whitespace-p t)
;; ;;; Perl
;; (add-hook 'perl-mode-hook
;; 	  (lambda () (setq perl-indent-level 4)))


;;;; Map C-= to the assignment operator, and leaves _ alone:
(add-hook 'ess-mode-hook 
	  (lambda ()
	    (setq ess-S-assign-key (kbd "C-="))
	    (ess-toggle-S-assign-key t)		; enable above key definition
	    (ess-toggle-underscore nil)
	    (ess-toggle-underscore nil)))	; leave my underscore key alone!

(add-hook 'inferior-ess-mode-hook 
	  (lambda ()
	    (ess-toggle-underscore nil)
	    (setq ess-S-assign-key (kbd "C-="))
	    (ess-toggle-S-assign-key t)		; enable above key definition
	    (ess-toggle-underscore nil)
	    (ess-toggle-underscore nil)))	; leave my underscore key alone!

;; (eval-after-load "ess-mode"
;;   ;; (add-hook 'ess-mode
;;   ;; (add-hook 'ess-mode-hook
;;   ;; 	  (lambda ()
;;   '(progn
;;      (setq ess-S-assign-key (kbd "C-="))
;;      (ess-toggle-S-assign-key t)	; enable above key definition
;;      (ess-toggle-underscore nil)))	; leave my underscore key alone!

;;;; ESS config end ;;;;
;; =====================
