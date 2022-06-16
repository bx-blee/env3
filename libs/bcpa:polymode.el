;;; bcpa:polymode.el --- Blee Component Pkg Adoption (polymode)  -*- lexical-binding: t; -*-

;;; Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption
;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpa" :pkgName "polymode"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpa Adoption of :polymode
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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "b:cpa" :pkgName "polymode"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<b:cpa:polymode:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar b:cpa:polymode:usgEnabled? t "polymode package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "b:cpa" :pkgName "polymode"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:cpa:polymode|fullUpdate>>  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:cpa:polymode|fullUpdate ()
   " #+begin_org
** DocStr: *polymode* package adoption full update template.
#+end_org "
 (b:log|entry (b:func$entry))
 (when b:cpa:polymode:usgEnabled?
    (b:cpa:polymode:install|update)
    (b:cpa:polymode:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :advice () :pkgAdoptionType "b:cpa" :pkgName "polymode"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:cpa:polymode:install|update>>  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:cpa:polymode:install|update ()
   " #+begin_org
** DocStr: *polymode* Component Package Adoption install or update template.
#+end_org "
 (b:log|entry (b:func$entry))
 (b:pkg:straight|install 'polymode))
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "b:cpa" :pkgName "polymode"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:cpa:polymode:config|main>>  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:cpa:polymode:config|main ()
   " #+begin_org
** DocStr: *polymode* package adoption config template.
#+end_org "
 (b:log|entry (b:func$entry))
;;;#+END:
  )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpa:polymode)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
