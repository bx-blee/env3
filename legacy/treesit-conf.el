;;;; treesit-conf.el --- A place holder staring point. It is not being used.  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/blee/env3/legacy/treesit-conf.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:conf:set|treesit-language-source-alist" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:conf:set|treesit-language-source-alist>>  --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:conf:set|treesit-language-source-alist (
;;;#+END:
                                                 )
   " #+begin_org
** DocStr: set treesit-language-source-alist based on https://github.com/tree-sitter
#+end_org "
   (setq treesit-language-source-alist
         '(
           (bash "https://github.com/tree-sitter/tree-sitter-bash")
           (cmake "https://github.com/uyha/tree-sitter-cmake")
           (c "https://github.com/tree-sitter/tree-sitter-c")
           (css "https://github.com/tree-sitter/tree-sitter-css")
           (elisp "https://github.com/Wilfred/tree-sitter-elisp")
           (go "https://github.com/tree-sitter/tree-sitter-go")
           (html "https://github.com/tree-sitter/tree-sitter-html")
           (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
           (json "https://github.com/tree-sitter/tree-sitter-json")
           (make "https://github.com/alemuller/tree-sitter-make")
           (markdown "https://github.com/ikatyang/tree-sitter-markdown")
           (python "https://github.com/tree-sitter/tree-sitter-python")
           (toml "https://github.com/tree-sitter/tree-sitter-toml")
           (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
           (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
           (yaml "https://github.com/ikatyang/tree-sitter-yaml")
           )))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:conf:set|treesit-language-source-alist)
#+END_SRC

#+RESULTS:
| bash       | https://github.com/tree-sitter/tree-sitter-bash       |        |                |
| cmake      | https://github.com/uyha/tree-sitter-cmake             |        |                |
| c          | https://github.com/tree-sitter/tree-sitter-c          |        |                |
| css        | https://github.com/tree-sitter/tree-sitter-css        |        |                |
| elisp      | https://github.com/Wilfred/tree-sitter-elisp          |        |                |
| go         | https://github.com/tree-sitter/tree-sitter-go         |        |                |
| html       | https://github.com/tree-sitter/tree-sitter-html       |        |                |
| javascript | https://github.com/tree-sitter/tree-sitter-javascript | master | src            |
| json       | https://github.com/tree-sitter/tree-sitter-json       |        |                |
| make       | https://github.com/alemuller/tree-sitter-make         |        |                |
| markdown   | https://github.com/ikatyang/tree-sitter-markdown      |        |                |
| python     | https://github.com/tree-sitter/tree-sitter-python     |        |                |
| toml       | https://github.com/tree-sitter/tree-sitter-toml       |        |                |
| tsx        | https://github.com/tree-sitter/tree-sitter-typescript | master | tsx/src        |
| typescript | https://github.com/tree-sitter/tree-sitter-typescript | master | typescript/src |
| yaml       | https://github.com/ikatyang/tree-sitter-yaml          |        |                |

" orgCmntEnd)

;; (call-interactively  'treesit-install-language-grammar)

;; (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))

;; (treesit-language-available-p 'python)

;; (setq major-mode-remap-alist
;;  '((yaml-mode . yaml-ts-mode)
;;    (bash-mode . bash-ts-mode)
;;    (js2-mode . js-ts-mode)
;;    (typescript-mode . typescript-ts-mode)
;;    (json-mode . json-ts-mode)
;;    (css-mode . css-ts-mode)
;;    (python-mode . python-ts-mode)))

;; https://www.reddit.com/r/emacs/comments/10iuim1/getting_emacs_29_to_automatically_use_treesitter/

;; (add-to-list 'python-mode-hook ...)         ; Wherever I configured this
;; (setq python-ts-mode-hook python-mode-hook) ; Copy config from python-mode
;; (add-to-list 'python-ts-mode-hook ...)      ; tree-sitter specific hooks
;;
;;https://github.com/doomemacs/doomemacs/issues/7601


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'treesit-conf)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
