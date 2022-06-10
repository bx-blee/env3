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
 '(safe-local-variable-values
   '((eval bx:load-file:ifOneExists "./panelActions.el")
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
 )
