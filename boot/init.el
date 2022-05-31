;;; init.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(setq debug-on-error t)

(setq package-enable-at-startup nil)

;;; (b:bootstrap:file-name|obtain)
(defun b:bootstrap:file-name|obtain ()
  "Returns path to bootstrap file."
    (let (
	  ($bleeBootstrapFile "/bisos/blee/env3/boot/boot-blee.el")
	  )
      (cond
       ((file-exists-p $bleeBootstrapFile)
	$bleeBootstrapFile
	)
       (t
	(message (format "Missing Blee bootstrap file :: %s" $bleeBootstrapFile)
	nil
	)
       ))))

(defvar b:bootstrap:file-name (b:bootstrap:file-name|obtain)  "Initial Blee Load File")

(defvar b:straight:baseDir
  (format "/bisos/blee/emacsVers/%s/blee3" emacs-version)
  "Where straight creates repos and builds elc-s.")

(add-to-list 'load-path (file-name-directory load-file-name))

(load (expand-file-name "straight-setup.el" (file-name-directory load-file-name)) nil 'nomessage)

(setq b:doom:enabled nil)

(if b:bootstrap:file-name
    (load  b:bootstrap:file-name)
  )

;;;
;;; END OF init.el
