;;; central.el --- Central Control For Blee Behaviour  -*- lexical-binding: t; -*-


(lambda () "
* Central Location For Control Of Blee Behaviour.
** This is loaded during the boot process before libraries and main. Pre COMEEGA.
** Used by developers. main branch should have (setq b:g:dev:mode? nil)
* See Bleow link as this module's documentation:
* [[/bisos/git/auth/bxRepos/blee-binders/blee-core/blee-boot/_nodeBase_/fullUsagePanel-en.org::boot-blee]]
")


(defvar b:g:dev:mode? nil
  "Can be overwritten later in the process. e.g., in contorls/central.el")

(defun b:g|setup ()
  "Setup Blee general parameters."
  (setq b:g:dev:mode? t)
  )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'central)
;;;#+END:
