;;; bnpa:mtdt-mailing.el --- Blee Native Pkg Adoption (mtdt-mailing)  -*- lexical-binding: t; -*-

;;; Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption
;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bnpa" :pkgName "comeega"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bnpa Adoption of :comeega
Machine Generated By org-dblock-write:b:elisp:pkg/summaryText
Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  [[elisp:(org-cycle)][|/Controls/| ]] :: [[elisp:(org-show-subtree)][|=]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Commentary, Model and Terminology:
* Relevant Panels:
** [[file:/bisos/panels/blee-core/emacs/bidi/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(require 'blee-libs)
(require 'straight)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "b:npa" :pkgName "mtdt-mailing"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<b:npa:mtdt-mailing:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar b:npa:mtdt-mailing:usgEnabled? t "mtdt-mailing package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "b:npa" :pkgName "mtdt-mailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:npa:mtdt-mailing|fullUpdate>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:npa:mtdt-mailing|fullUpdate ()
   " #+begin_org
** DocStr: *mtdt-mailing* package adoption full update template.
#+end_org "
 (b:log|entry (b:func$entry)) (when b:npa:mtdt-mailing:usgEnabled?
    (b:npa:mtdt-mailing:install|update)
    (b:npa:mtdt-mailing:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "b:npa" :pkgName "mtdt-mailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:npa:mtdt-mailing:install|update>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:npa:mtdt-mailing:install|update ()
   " #+begin_org
** DocStr: {$<pkgName} Native package adoption install or update template.
#+end_org "
 (b:log|entry (b:func$entry))
 (if b:g:dev:mode?
      (b:pkg:straight|profiledInstall
       b:pkgsProfile:native
       '(mtdt-mailing :local-repo "/bisos/git/bxRepos/blee/mtdt-mailing"))
    (b:pkg:straight|profiledInstall
       b:pkgsProfile:native
     '(mtdt-mailing :type git :host github :repo "bx-blee/mtdt-mailing"))))
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "b:npa" :pkgName "mtdt-mailing"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:npa:mtdt-mailing:config|main>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:npa:mtdt-mailing:config|main ()
   " #+begin_org
** DocStr: *mtdt-mailing* package adoption config template.
#+end_org "
 (b:log|entry (b:func$entry))
;;;#+END:
 (require 'chatgpt)
 (require 'mtdt-mailing-menu)
  )

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bnpa:mtdt-mailing)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
