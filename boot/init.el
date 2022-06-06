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
