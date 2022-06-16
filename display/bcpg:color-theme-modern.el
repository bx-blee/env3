;;; bcpg:color-theme-modern.el --- Blee Component Pkg Grouping (color-theme-modern)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "color-theme-modern"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :color-theme-modern
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

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "color-theme-modern"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:color-theme-modern:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:color-theme-modern:usgEnabled? t "color-theme-modern package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :advice () :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "color-theme-modern"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:color-theme-modern|fullUpdate>>  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:color-theme-modern|fullUpdate ()
 "color-theme-modern package adoption config template."
 (b:log|entry (b:func$entry))  (when bcpg:color-theme-modern:usgEnabled?
    (bcpg:color-theme-modern:install|update)
    (bcpg:color-theme-modern:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :advice ("pureOnly") :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "color-theme-modern"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:color-theme-modern:install|update>> ~advice=(pureOnly)~ [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(advice-add 'bcpg:color-theme-modern:install|update :around #'b:advice:common|pureOnly)
(defun bcpg:color-theme-modern:install|update ()
 "color-theme-modern Component Package Adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:
;;;#+BEGINNOT :  b:elisp:pkg/install :outLevel 2 :pkgAdoptionType "bcpa" :pkgName "color-theme-modern" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~color-theme-modern~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'color-theme-modern)
;;;#+END:
   )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "color-theme-modern"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:color-theme-modern:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:color-theme-modern:config|main ()
 "color-theme-modern package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:

 (add-to-list 'custom-theme-load-path "/bisos/blee/env3/themes")
 ;;(load-file "/bisos/blee/env3/themes/blee-dark-1-theme.el")
 
 (load-theme 'aalto-dark t t)
 (load-theme 'calm-forest t t)
 (load-theme 'blee-dark-1 t t)
 (load-theme 'julie t t) 
 ;(enable-theme 'aalto-dark)
 ;(enable-theme 'calm-forest)
 (enable-theme 'blee-dark-1)
 ;;(enable-theme 'julie)  
 )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:color-theme-modern)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END: