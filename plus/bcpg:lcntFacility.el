;;; bcpg:orgPlus.el --- Blee Component Pkg Grouping (lcntFacility)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "lcntFacility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :lcntFacility
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

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "lcntFacility"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:lcntFacility:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:lcntFacility:usgEnabled? t "lcntFacility package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "lcntFacility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:lcntFacility|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:lcntFacility|fullUpdate ()
 "lcntFacility package adoption control."
 (b:log|entry (b:func$entry))
  (when bcpg:lcntFacility:usgEnabled?
    (bcpg:lcntFacility:install|update)
    (bcpg:lcntFacility:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "lcntFacility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:lcntFacility:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:lcntFacility:install|update ()
 "lcntFacility package adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:
   ;;; Installation Material Comes Here

;;;#+BEGINNOT:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "subed" :pkgDesc "pkgDesc"
(orgCmntBegin "
  =component= ~subed~ *pkgDesc*
" orgCmntEnd)
 (package-install 'subed)
;;;#+END:



 (require 'subed)


 )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "lcntFacility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:lcntFacility:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:lcntFacility:config|main ()
 "lcntFacility package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:
 ;; Configuration Material Comes Here

 ;; Disable automatic movement of point by default
 (add-hook 'subed-mode-hook 'subed-disable-sync-point-to-player)
 ;; Remember cursor position between sessions
 (add-hook 'subed-mode-hook 'save-place-local-mode)
 ;; Break lines automatically while typing
 (add-hook 'subed-mode-hook 'turn-on-auto-fill)
 ;; Break lines at 40 characters
 (add-hook 'subed-mode-hook (lambda () (setq-local fill-column 40)))
 )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:lcntFacility)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
