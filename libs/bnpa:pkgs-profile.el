;;; bnpa:pkgs-profile.el --- Blee Native Pkg Adoption (pkgs-profile)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bnpa" :pkgName "pkgs-profile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bnpa Adoption of :pkgs-profile
Machine Generated By org-dblock-write:b:elisp:pkg/summaryText [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  ~ORG-TOP-CONTROLS-COME-HERE~
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Commentary, Model and Terminology:
* Relevant Panels:
** [[file:/bisos/panels/blee-core/mail/model/_nodeBase_/fullUsagePanel-en.org]]
** [[file:/bisos/panels/blee-core/mail/Gnus/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'straight)
(require 'blee-libs)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bnpa" :pkgName "pkgs-profile"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bnpa:pkgs-profile:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bnpa:pkgs-profile:usgEnabled? t "pkgs-profile package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "noLibs" :pkgAdoptionType "bnpa" :pkgName "pkgs-profile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bnpa:pkgs-profile|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bnpa:pkgs-profile|fullUpdate ()
 "pkgs-profile package adoption control."
 (interactive)  (when bnpa:pkgs-profile:usgEnabled?
    (bnpa:pkgs-profile:install|update)
    (bnpa:pkgs-profile:config|main)
    )
  )
;;;#+END:

;;;#+BEGINNOT: b:elisp:pkg:install/update :outLevel 1 :pkgAdoptionType "bnpa" :pkgName "pkgs-profile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bnpa:pkgs-profile:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bnpa:pkgs-profile:install|update ()
 "pkgs-profile package adoption install/update template."
  (if b:g:dev:mode?
     (progn
       (message "straight-use-package development-mode /bisos/git/bxRepos/blee/pkgs-profile")
       (straight-use-package
        '(pkgs-profile :local-repo "/bisos/git/bxRepos/blee/pkgs-profile"))
      )
   (progn
     (message "straight-use-package authorship-mode github bx-blee/pkgs-profile")
     (straight-use-package
      '(pkgs-profile :type git :host github :repo "bx-blee/pkgs-profile"))))
 )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "noLibs" :pkgAdoptionType "bnpa" :pkgName "pkgs-profile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bnpa:pkgs-profile:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bnpa:pkgs-profile:config|main ()
 "pkgs-profile package adoption config template."
 (interactive)

;;;#+END:
  )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bnpa:pkgs-profile)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
