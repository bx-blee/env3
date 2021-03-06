;;; bcpg:visibility.el --- Blee Component Pkg Grouping (visibility)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "visibility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :visibility
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

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "visibility"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:visibility:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:visibility:usgEnabled? t "visibility package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "visibility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:visibility|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:visibility|fullUpdate ()
 "visibility package adoption control."
 (b:log|entry (b:func$entry))
  (when bcpg:visibility:usgEnabled?
    (bcpg:visibility:install|update)
    (bcpg:visibility:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "visibility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:visibility:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:visibility:install|update ()
 "visibility package adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:
   ;;; Installation Material Comes Here
;;;#+BEGINNOT:  b:elisp:pkg/install :outLevel 2 :pkgsType "internal" :pkgName "whitespace" :pkgDesc "pkgDesc"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~pkgName~ *pkgDesc* [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (require 'whitespace)
;;;#+END:
   )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "visibility"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:visibility:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:visibility:config|main ()
 "visibility package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:
 ;; Configuration Material Comes Here

 (setq display-fill-column-indicator-character ?\N{U+2506})
  ;;;(customize-face 'fill-column-indicator)
  ;; or put something like this in your theme
  ;;; '(fill-column-indicator ((t (:foreground "#4e4e4e"))))

 (set-fill-column 115)

  ;; (setq whitespace-line-column 80) ;; limit line length
  ;; (setq whitespace-style '(face lines-tail))

  ;; (add-hook 'prog-mode-hook 'whitespace-mode)
  ;; (global-whitespace-mode +1)

  )


;; (blee:fill-column-indicator/enable)
(defun blee:fill-column-indicator/enable ()
  "Enable displaying of fill column indicator."
  (interactive)
  (setq display-fill-column-indicator t)
  (setq display-fill-column-indicator-character ?\N{U+2506})
  )

;; (blee:fill-column-indicator/disable)
(defun blee:fill-column-indicator/disable ()
  "Toggle displaying of fill column indicator."
  (interactive)
  (setq display-fill-column-indicator nil)
  )

(defun blee:fill-column-indicator/toggle ()
  "Toggle displaying of fill column indicator."
  (interactive)
  (if display-fill-column-indicator
      (blee:fill-column-indicator/disable)
    (blee:fill-column-indicator/enable)
    )
  )



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:visibility)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
