;;; bcpg:sr-speedbar.el --- Blee Component Pkg Grouping (sr-speedbar)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "sr-speedbar"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :sr-speedbar
Machine Generated By org-dblock-write:b:elisp:pkg/summaryText
Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Summary:
" orgCmntEnd)

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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "sr-speedbar"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:sr-speedbar:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:sr-speedbar:usgEnabled? t "sr-speedbar package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "sr-speedbar"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bcpg:sr-speedbar|fullUpdate>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bcpg:sr-speedbar|fullUpdate ()
   " #+begin_org
** DocStr: *sr-speedbar* package adoption full update template.
#+end_org "
 (b:log|entry (b:func$entry)) (when bcpg:sr-speedbar:usgEnabled?
    (bcpg:sr-speedbar:install|update)
    (bcpg:sr-speedbar:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "sr-speedbar"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:sr-speedbar:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:sr-speedbar:install|update ()
 "sr-speedbar package adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:

;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "sr-speedbar" :pkgDesc "pkgDesc"
(orgCmntBegin "
  =component= ~sr-speedbar~ *pkgDesc*
" orgCmntEnd)
 (b:pkg:straight|install 'sr-speedbar)
;;;#+END:

;;;#+BEGINNOT:  b:elisp:pkg/install :outLevel 2 :pkgsType "native" :pkgName "sr-speedbar" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~sr-speedbar~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (if b:g:dev:mode?
      (b:pkg:straight|profiledInstall
       b:pkgsProfile:native
       '(sr-speedbar :local-repo "/bisos/git/bxRepos/blee/repub_sr-speedbar"))
    (b:pkg:straight|profiledInstall
       b:pkgsProfile:native
     '(sr-speedbar :type git :host github :repo "bx-blee/repub_sr-speedbar")))
;;;#+END:

   )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "sr-speedbar"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:sr-speedbar:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:sr-speedbar:config|main ()
 "sr-speedbar package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:

 (require 'sr-speedbar)
  )



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:sr-speedbar)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
