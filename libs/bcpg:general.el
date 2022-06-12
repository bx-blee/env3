;;; bcpg:general.el --- Blee Component Pkg Grouping (general)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "general"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :general
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


(require 'blee-libs)
(require 'straight)
;;(require 'blee-lib-general)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "general"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:general:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:general:usgEnabled? t "general package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "general"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:general|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "general"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:general:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:general:install|update ()
 "general package adoption install/update template."
 (interactive)
 (b:log|entry (b:func$entry))
 (if b:g:dev:mode?
      (straight-use-package
       '(general :local-repo "/bisos/git/bxRepos/blee/general"))
    (straight-use-package
     '(general :type git :host github :repo "bx-blee/general"))))
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "general"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:general:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:general:config|main ()
 "general package adoption config template."
 (interactive)
 (b:log|entry (b:func$entry))

;;;#+END:
  )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:general)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END: