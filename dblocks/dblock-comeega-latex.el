;;; dblock-comeega-latex-pres.el --- DBlocks for Elisp File-Elements  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Dblocks for common elisp comeega files --- dblockDefun and workbech.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :copyLeft "libreHalaal"
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
** This File: /bisos/git/auth/bxRepos/blee/env3/dblocks/dblock-comeega-latex.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
A library of dblock for b:elisp:file/xxx comeega-file-elements.
** Relevant Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO  workbench is incomplete and minimal.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "LaTeX Input" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _dblock Frame Head Functions - Begin_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/input" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/input>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/input :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/input (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<inputFile (or (plist-get <params :input-file) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "INPUT"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (if (file-exists-p <inputFile)
                 (insert (s-lex-format
                          "${$frontStr}   ~Input File~  /${<inputFile}"))
               (insert (s-lex-format
                        "${$frontStr} _MISSING_ ~Input File~  ${<inputFile}")))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if (file-exists-p <inputFile)
               (insert (s-lex-format
                        "\n\\input{${<inputFile}}"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/include" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/include>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/include :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/include (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<includeFile (or (plist-get <params :includeFile) ""))
          (<notClearDoublePage (or (plist-get <params :notClearDoublePage) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "INCLUDE"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (if (file-exists-p <includeFile)
                 (insert (s-lex-format
                          "${$frontStr}   ~Include File~  /${<includeFile}"))
               (insert (s-lex-format
                        "${$frontStr} _MISSING_ ~Include File~  ${<includeFile}")))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if (file-exists-p <includeFile)
           (progn
             (when (not <notClearDoublePage)
               (insert (s-lex-format
                      "\n\\cleardoublepage")))
             (insert (s-lex-format "
\\begingroup
\\let\\clearpage\\relax
\\include{${<includeFile}}
\\endgroup"
              )))
         (progn
           (insert (s-lex-format
                        "\n%%%% Missing ${<includeFile}"))))

           )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/includeOnly" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/includeOnly>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/includeOnly :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/includeOnly (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Used only in main tex. Relies on includeOnlyList which
works with LCNT-INFO/Builds/includeOnly/includeOnlyList.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          ($includeOnlyList)
          )
     (bxPanel:params$effective)

     ;; (setq $includeOnlyList '("./common/aboutThisDoc"))
     ;; (setq $includeOnlyList '())
     (setq $includeOnlyList (b:lcnt:info:includeOnly/listGet))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "IncOnly"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (if $includeOnlyList
                 (insert (s-lex-format
                          "${$frontStr} _IncludeOnly=${$includeOnlyList}_ ~Setting whenIncludeOnly and Limited Processing~"))
               (insert (s-lex-format
                        "${$frontStr} _NO IncludeOnly_ ~Setting whenNotIncludeOnly and Processing Everything~")))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if $includeOnlyList
           (progn
             (insert (s-lex-format
                      "\n\\includeonly{\n    "))
             (loop-for-each $each $includeOnlyList
               (insert (s-lex-format
                      "${$each}, ")))
             (insert (s-lex-format
                      "\n}
\\includecomment{whenIncludeOnly}
\\excludecomment{whenNotIncludeOnly}")))
         (progn
           (insert (s-lex-format
                    "\n
\\excludecomment{whenIncludeOnly}
\\includecomment{whenNotIncludeOnly}")))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-comeega-latex)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
