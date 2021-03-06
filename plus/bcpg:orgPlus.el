;;; bcpg:orgPlus.el --- Blee Component Pkg Grouping (orgPlus)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "orgPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :orgPlus
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

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "orgPlus"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:orgPlus:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:orgPlus:usgEnabled? t "orgPlus package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "orgPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:orgPlus|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:orgPlus|fullUpdate ()
 "orgPlus package adoption control."
 (b:log|entry (b:func$entry))
  (when bcpg:orgPlus:usgEnabled?
    (bcpg:orgPlus:install|update)
    (bcpg:orgPlus:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "orgPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:orgPlus:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:orgPlus:install|update ()
 "orgPlus package adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:
   ;;; Installation Material Comes Here
;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "org-bullets" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~org-bullets~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'org-bullets)
;;;#+END:

;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "org-recoll" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~org-recoll~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'org-recoll)
;;;#+END:

;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "org-ref" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~org-ref~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'org-ref)
;;;#+END:


;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "toc-org" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~toc-org~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'toc-org)
;;;#+END:


;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "org-cliplink" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~org-cliplink~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'org-cliplink)
;;;#+END:

;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "org-roam-bibtex" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~org-roam-bibtex~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'org-roam-bibtex)
;;;#+END:


 (require 'org)
 (require 'org-img-link)

 )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "orgPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:orgPlus:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:orgPlus:config|main ()
 "orgPlus package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:
 ;; Configuration Material Comes Here
 (xtn:org:link:img-link/activate)
 )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:orgPlus)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
