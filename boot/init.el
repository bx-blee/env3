;;; init.el --- Loaded from chemacs pure-blee  -*- lexical-binding: t; -*-


(message (format "Loaded: %s -- in emacs-%s" load-file-name emacs-version))

(lambda () "
* ~early-init.el~ Loaded from chemacs pure-blee
* See Bleow link as this module's documentation:
* [[/bisos/git/auth/bxRepos/blee-binders/blee-core/blee-boot/_nodeBase_/fullUsagePanel-en.org::pure-blee-init.el]]
")


(setq debug-on-error t)

(setq package-enable-at-startup nil)  ;;; Repeated. First done in early-init.el.

(defvar b:bootstrap:file-name
  "/bisos/blee/env3/boot/boot-blee.el"
  "Initial Blee Load File")

(defvar b:doom:enabled?
  nil
  "Based on this init.el file, we are not using doom.")

(defvar b:straight:baseDir
  (format "/bisos/blee/emacsVers/%s/blee3" emacs-version)
  "Where straight creates repos and builds elc-s.")

;;; bootstrap straight
(load (expand-file-name "straight-setup.el" (file-name-directory load-file-name)) nil 'nomessage)

(if b:bootstrap:file-name
    (load  b:bootstrap:file-name)
  )

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/org/captures.org" "~/org/events/main.org" "~/org/events/family.org"))
 '(safe-local-variable-values
   '((bx:iimp:iimName . "hereHere")
     (folded-file)
     (major-mode . emacs-lisp-mode)
     (eval bx:load-file:ifOneExists "./panelActions.el")
     (eval blee:fill-column-indicator/enable)
     (eval set-fill-column 115)
     (eval img-link-overlays)
     (eval setq-local ~blee:dblockController "interactive")
     (eval setq-local ~blee:dblockEnabler nil)
     (eval setq-local ~blee:panelUpdater nil)
     (eval setq-local ~primaryMajorMode 'org-mode)
     (eval setq-local ~selectedSubject "noSubject"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfw:face-annotation ((t :foreground "green" :inherit cfw:face-day-title)))
 '(cfw:face-day-title ((t :background "brown")))
 '(cfw:face-default-content ((t :foreground "yellow")))
 '(cfw:face-default-day ((t :weight bold :inherit cfw:face-day-title)))
 '(cfw:face-disable ((t :foreground "DarkGray" :inherit cfw:face-day-title)))
 '(cfw:face-grid ((t :foreground "DarkGrey")))
 '(cfw:face-header ((t (:foreground "#d0bf8f" :weight bold))))
 '(cfw:face-holiday ((t :background "black" :foreground "red" :weight bold)))
 '(cfw:face-periods ((t :foreground "cyan")))
 '(cfw:face-saturday ((t :foreground "yellow" :background "black" :weight bold)))
 '(cfw:face-select ((t :background "red")))
 '(cfw:face-sunday ((t :foreground "orange" :background "black" :weight bold)))
 '(cfw:face-title ((t (:foreground "#f0dfaf" :weight bold :height 2.0 :inherit variable-pitch))))
 '(cfw:face-today ((t :background: "grey10" :weight bold)))
 '(cfw:face-today-title ((t :background "blue" :weight bold)))
 '(cfw:face-toolbar ((t :foreground "blue" :background "magenta")))
 '(cfw:face-toolbar-button-off ((t :foreground "Gray50" :weight bold)))
 '(cfw:face-toolbar-button-on ((t :foreground "white" :weight bold))))
