;;; -*- Mode: Emacs-Lisp; -*-

(lambda () "
* Short Description: Global Activity: lsp -- GIT mode
*      ======[[elisp:(org-cycle)][Fold]]======  Revision, Origin And  Libre-Halaal CopyLeft -- Part Of ByStar -- Best Used With Blee 
####+BEGIN: bx:dblock:bash:top-of-file :vc "cvs" partof: "bystar" :copyleft "halaal+brief"
typeset RcsId="$Id: setup-global-lsp.el,v 1.6 2018-06-08 23:49:29 lsipusr Exp $"
# *CopyLeft*
# Copyright (c) 2011 Neda Communications, Inc. -- http://www.neda.com
# See PLPC-120001 for restrictions.
# This is a Halaal Poly-Existential intended to remain perpetually Halaal.
####+END:
")

(lambda () "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
")


(lambda () "
####+BEGIN: bx:dblock:global:file-insert-cond :cond "./blee.el" :file "/libre/ByStar/InitialTemplates/software/plusOrg/dblock/inserts/topControls.org"
*      ================
*  /Controls/:  [[elisp:(org-cycle)][Fold]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[elisp:(bx:org:run-me)][RunMe]] | [[elisp:(delete-other-windows)][(1)]]  | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] 
** /Version Control/:  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]] 

####+END:
")

(lambda () "
*      ================
*      ################ CONTENTS-LIST ################
*      ======[[elisp:(org-cycle)][Fold]]====== *[Current-Info]* Status/Maintenance -- General TODO List
*      ======[[elisp:(org-cycle)][Fold]]====== *[Related/Xrefs:]*  <<Xref-Here->>  -- External Documents 
**      ====[[elisp:(org-cycle)][Fold]]==== [[file:/libre/ByStar/InitialTemplates/activeDocs/bxServices/versionControl/git/fullUsagePanel-en.org::Xref-VersionControlGit][VC Panel Roadmap Documentation]]
**      ====[[elisp:(org-cycle)][Fold]]==== http://www.emacswiki.org/emacs/Lsp
")


(lambda () "

*      ======[[elisp:(org-cycle)][Fold]]====== *[Description:]*
")


(lambda () "
*      ======[[elisp:(org-cycle)][Fold]]====== Loading Announcement 
")


(lambda () "
*      ======[[elisp:(org-cycle)][Fold]]====== Requires 
")

(lambda () "
*      ======[[elisp:(org-cycle)][Fold]]====== bx:setup:lsp:defaults-set -- Define
")

(setq bap:lsp:usage:enabled-p t)

(defun bap:lsp:full/update ()
  ""
  (interactive)
  (blee:ann|this-func (compile-time-function-name))
  (when bap:lsp:usage:enabled-p
    (bap:lsp:install/update)
    (bap:lsp:config/main)
    )
  )


(defun bap:lsp:install/update ()
  ""
  (interactive)
  (blee:ann|this-func (compile-time-function-name))
  
  (message "blee:ann -- TMP -- bap:lsp:install/update")
  ;; (b:pkg:straight|install 'lsp)

  )


(defun bap:lsp:config/main ()
  ""
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  )

(defun turn-on-lsp%% ()
  (interactive)
  (add-to-list 'global-mode-string '("" mode-line-lsp " "))
)

(defun turn-off-lsp%% ()
  (interactive)
  (setq global-mode-string (delete '("" mode-line-lsp " ") global-mode-string))
  (force-mode-line-update)
)



;;;
;;; Global Menu/biso
;;;

;; (blee:blee:menu)
;; (bap:lsp:global:menu)
(defun bap:lsp:global:menu ()
  (easy-menu-define 
    bap-lsp-menu
    nil 
    "Lsp Menu"
    '("Lsp Menu"
      "---"
      ["Enable Lsp Mode" (lsp-mode 1) t]
      ["Disable Lsp Mode" (lsp-mode -1) t]
      "---"
      ["Enable Lsp Log Mode" (lsp-log-mode 1) t]
      ["Disable Lsp Log Mode" (lsp-log-mode -1) t]
      ["Lsp Log Erase Buffer" (lsp-log-erase-buffer) t]
      ))
  )


(lambda () "
*      ======[[elisp:(org-cycle)][Fold]]====== Provide
")

(provide 'bap-lsp)

(lambda () "
*      ======[[elisp:(org-cycle)][Fold]]====== /[dblock] -- End-Of-File Controls/
#+STARTUP: showall
")

;;; local variables:
;;; no-byte-compile: t
;;; end:

