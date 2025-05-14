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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "LaTeX Master File Elements" :extraInfo "b:lcnt:matex:felem:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _LaTeX Master File Elements_: |]]  b:lcnt:matex:felem:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:matex:felem/lcntInfoMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:matex:felem/lcntInfoMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:matex:felem/lcntInfoMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:matex:felem/lcntInfoMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)
     (bx:lcnt:info:base-read)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "LcntInfo"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  ($texMastersStr (s-join " " b:lcnt:tex:masters:~))
                  )
             (setq $frontStr (b:dblock:comeega|frontElement "LcntInfo _{_"))
             (insert (s-lex-format "${$frontStr} Basic Params Of LCNT-INFO\n"))

             (insert (format "*     LcntNu+ShortTitle     :: /%s-%s/  *%s*\n"
                             (get 'bx:lcnt:info:base  'type)
                             (get 'bx:lcnt:info:base  'lcntNu)
                             (get 'bx:lcnt:info:base  'shortTitle)))
             (insert (format "*     URL                   :: %s\n"
                             (get 'bx:lcnt:info:base  'url)))
             (insert (format "*     MasterFiles           :: "))

             (mapcar '(lambda (arg)
                     (progn
                       (insert
                        (format "\
[[elisp:(find-file \"%s.ttytex\")][Visit ./%s.ttytex]] || "
                                arg arg))))
               (split-string (get 'bx:lcnt:info:base  'docSrcList))
               )
             (insert (format "\n"))

             (setq $frontStr (b:dblock:comeega|frontElement "LcntInfo _}_"))
             (insert (s-lex-format "${$frontStr} ${$eolStr}\n"))))


     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:matex:felem/lcntProcMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:matex:felem/lcntProc>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:matex:felem/lcntProc :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:matex:felem/lcntProcMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (bufferFileName (file-name-nondirectory buffer-file-name))
          )
     (bxPanel:params$effective)
     (bx:lcnt:info:base-read)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "LcntProc"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  ($texMastersStr (s-join " " b:lcnt:tex:masters:~))
                  )

             (setq $frontStr (b:dblock:comeega|frontElement "LcntProc _{_"))
             (insert (s-lex-format
                        "${$frontStr} Process this ${bufferFileName} as a master\n"))

             (insert (format
"*      IIM Parameters       ::  [[elisp:(bx:iimBash:resultsShow:cmndLineElems)][Show Cmnd Line Elems]]\
 || [[elisp:(setq bx:iimBash:iimParamsArgs \"-p extent=build+view\")][-p extent=build+view]]\
 || [[elisp:(setq bx:iimBash:iimParamsArgs \"-p extent=build\")][-p extent=build]]\
 || [[elisp:(setq bx:iimBash:iimParamsArgs \"-p extent=view\")][-p extent=view]]\
\n*      Related              ::  [[elisp:(find-file \"./Panel.org\")][Visit ./Panel.org]] | [[elisp:(find-file \"./mailing/content.mail\")][Visit ./mailing/content.mail]]| [[elisp:(find-file \"./mailing/Panel.org\")][Visit ./mailing/Panel.org]]\
\n*      Build+Release        ::  [[elisp:(bx:iimBash:cmndLineExec :wrapper \"\" :name \"lcntProc.sh\" :iif \"buildResultsRelease\" :iifArgs \"\")][lcntProc.sh -i buildResultsRelease]]\
 || [[elisp:(lsip-local-run-command-here \"lcntProc.sh -i fullClean\")][lcntProc.sh -i fullClean]]\
 || [[elisp:(cvs-update \".\" t)][Version Control]]\
\n*      Build & Preview      ::  [[elisp:(bx:iimBash:cmndLineExec :wrapper \"\" :name \"lcntProc.sh\" :iif \"buildPdfPreview\" :iifArgs \"%s\")][lcntProc.sh -i buildPdfPreview %s]]\
 || [[elisp:(bx:iimBash:cmndLineExec :wrapper \"\" :name \"lcntProc.sh\" :iif \"buildHtmlPreview\" :iifArgs \"%s\")][lcntProc.sh -i buildHtmlPreview %s]]
"
                    bufferFileName bufferFileName bufferFileName bufferFileName
                    ))
             (setq $frontStr (b:dblock:comeega|frontElement "LcntProc _}_"))
             (insert (s-lex-format "${$frontStr} ${$eolStr}\n"))))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:matex:felem/endOfFileMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:matex:felem/endOfFile>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:matex:felem/endOfFile :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:matex:felem/endOfFileMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "~EndOfFile~ "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  )
             (insert (s-lex-format
   "${$frontStr} *emacs and org variables and control parameters* ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (let* (($cmntStr (b:major-mode:comment|lineStr)))
         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} +CATEGORY: lcnt.latex.master"))
         (insert (s-lex-format "\n${$cmntStr} +STARTUP: content"))
         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} local variables:"))
         (insert (s-lex-format "\n${$cmntStr} major-mode: latex-mode"))
         (insert (s-lex-format "\n${$cmntStr} fill-column: 65"))
         (insert (s-lex-format "\n${$cmntStr} end:"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "LaTeX Inputed File Elements" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _LaTeX Inputed File Elements_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/lcntProc" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/lcntProc>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/lcntProc :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/lcntProc (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "LcntProc"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  ($texMastersStr (s-join " " b:lcnt:tex:masters:~))
                  )
             (setq $frontStr (b:dblock:comeega|frontElement "LcntProc _{_"))
             (insert (s-lex-format
                        "${$frontStr} Process this lcnt.tex file through its masters\n"))

             (loop-for-each $eachMaster b:lcnt:tex:masters:~
               (insert (s-lex-format
                      "*     Build+Preview::  \
[[elisp:(lsip-local-run-command-here \"lcntProc.cs --texIncludePath=${b:lcnt:tex:includePath:~} --includeOnly=${$thisFile} -i includeOnlyCurBuild  ${$eachMaster}\")]\
[lcntProc.sh with: ${b:lcnt:tex:includePath:~} ${$thisFile} ${$eachMaster}]]\n"))
               (insert (s-lex-format
                      "*     Master File:: [[file:${$eachMaster}]]\n"))
               )

             (insert (s-lex-format
                      "*     Build+Preview::  \
[[elisp:(lsip-local-run-command-here \"lcntProc.cs --texIncludePath=${b:lcnt:tex:includePath:~} --includeOnly=${$thisFile} -i includeOnlyCurBuild  ${$texMastersStr}\")]\
[lcntProc.sh with: ${b:lcnt:tex:includePath:~} ${$thisFile} ${$texMastersStr}]]\n"))

             (setq $frontStr (b:dblock:comeega|frontElement "LcntProc _}_"))
             (insert (s-lex-format "${$frontStr} ${$eolStr}\n"))))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/endOfFile" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/endOfFile>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/endOfFile :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/endOfFile (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<texMaster (or (plist-get <params :texMaster) "articleEnFa.ttytex"))
          (<lcntTexMasters (or (plist-get <params :lcntTexMasters) '("../usEditionEnFa/articleEnFa.ttytex" "../intEditionEnFa/articleEnFa.ttytex")))
          (<lcntTexIncludePath (or (plist-get <params :lcntTexIncludePath) "./common"))
          ($lcntTexMasters:str (s-trim (pp-to-string <lcntTexMasters)))
          ($lcntTexIncludePath:str (pp-to-string <lcntTexIncludePath))
          ($texMaster:str (pp-to-string <texMaster))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "~EndOfFile~ "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  )
             (insert (s-lex-format
   "${$frontStr} *emacs and org variables and control parameters* ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (let* (
              ($cmntStr (b:major-mode:comment|lineStr))
              ($texMaster:str (expand-file-name (-first-item <lcntTexMasters)))
              )

         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} +CATEGORY: lcnt.latex.inputed"))
         (insert (s-lex-format "\n${$cmntStr} +STARTUP: content"))
         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} local variables:"))
         (insert (s-lex-format "\n${$cmntStr} major-mode: latex-mode"))
         (insert (s-lex-format "\n${$cmntStr} fill-column: 65"))
         (insert (s-lex-format "\n${$cmntStr} TeX-master: \"${$texMaster:str}\""))
         (insert (s-lex-format "\n${$cmntStr} eval: (setq b:lcnt:tex:masters:~ '${$lcntTexMasters:str})"))
         (insert (s-lex-format "\n${$cmntStr} eval: (setq b:lcnt:tex:includePath:~ ${$lcntTexIncludePath:str})"))
         (insert (s-lex-format "\n${$cmntStr} end:"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "LaTeX Common File Elements" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _LaTeX Common File Elements_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:felem/docOverview" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:felem/docOverview>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:felem/docOverview :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:felem/docOverview (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Overview"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  )
             (insert (s-lex-format
   "${$frontStr} Overview:  [[elisp:(reftex-toc)][(RefTOC)]] Document Status, TODOs and Notes For ${$thisFile} -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/contentsList" :advice ("bx:dblock:control|wrapper") :comment "/OBSOLETED/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/contentsList>> ~advice=(bx:dblock:control|wrapper)~ -- /OBSOLETED/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/contentsList :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/contentsList (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Contents"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  )
             (insert (s-lex-format "OBSOLETED -- Use b:lcnt:latex:felem/docOverview instead\n"))
             ;; (insert (s-lex-format
   ;; "${$frontStr} ##### CONTENTS-LIST [[elisp:(reftex-toc)][(RefTOC)]] For ${$thisFile} #### ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/docStatus" :advice ("bx:dblock:control|wrapper") :comment "/OBSOLETED/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/docStatus>> ~advice=(bx:dblock:control|wrapper)~ -- /OBSOLETED/  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/docStatus :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/docStatus (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Status"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($thisFile (f-filename (buffer-file-name)))
                  )
             (insert (s-lex-format "OBSOLETED -- Use b:lcnt:latex:felem/docOverview instead\n"))
             ;; (insert (s-lex-format
;;   "${$frontStr} *Document Status, TODOs and Notes* ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "LaTeX Inputs (input and include)" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _LaTeX Inputs (input and include)_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/input" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/input>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
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
          (<inputFile (or (plist-get <params :inputFile) ""))
          (<inputedAs (or (plist-get <params :inputedAs) "INPUTED"))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
       (let* (
              ($frontStr (b:dblock:comeega|frontElement "INPUTED"))
              ($eolStr (b:dblock:comeega|eolControls))
              )
         (if (file-exists-p <inputFile)
             (insert (s-lex-format
                      "${$frontStr}   ~Input File~  file:${<inputFile}"))
           (insert (s-lex-format
                    "${$frontStr} _MISSING_ ~Input File~  file:${<inputFile}")))
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/include>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
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
          (<includedAs (or (plist-get <params :includedAs) "INCLUDED"))
          (<notClearDoublePage (or (plist-get <params :notClearDoublePage) nil))
          (<whenCond (or (plist-get <params :whenCond) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement <includedAs))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($whenCondMsg "")
                  )
             (unless (s-blank? <whenCond)
               (setq $whenCondMsg (s-lex-format "whenCond=${<whenCond}")))
             (if (file-exists-p <includeFile)
                 (insert (s-lex-format
                          "${$frontStr} ${$whenCondMsg} ~Include File~  file:${<includeFile}"))
               (insert (s-lex-format
                        "${$frontStr} ${$whenCondMsg} _MISSING_ ~Include File~  file:${<includeFile}")))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if (file-exists-p <includeFile)
           (progn
             (when (not <notClearDoublePage)
               (insert (s-lex-format "
\\begin{whenNotIncludeOnly}
  \\cleardoublepage%
\\end{whenNotIncludeOnly}")))
             (unless (s-blank? <whenCond)
               (insert (s-lex-format "
\\begin{${<whenCond}}"
                                     )))
             (insert (s-lex-format "
\\begingroup
\\let\\clearpage\\relax
\\include{${<includeFile}}
\\endgroup"
              ))
             (unless (s-blank? <whenCond)
               (insert (s-lex-format "
\\end{${<whenCond}}"
                                     )))
             )
         (progn
           (insert (s-lex-format
                        "\n%%%% Missing ${<includeFile}"))))

           )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/mentionLcnt" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/mentionLcnt>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/mentionLcnt :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/mentionLcnt (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]  Produces a full description citation of lcnt-nu. Typical usage
%%%#+BEGIN: b:lcnt:latex/mentionLcnt :lcntNu \"plpc-120033\" :cite? t

%%%#+END:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<lcntNu (or (plist-get <params :lcntNu) ""))
          (<cite? (or (plist-get <params :cite?) nil))
          ($lcntBase)
          )
     (bxPanel:params$effective)

     (setq $lcntBase
          (shell-command-to-string
           (s-lex-format
            "echo -n $( lcnLcntSelect.sh  ${<lcntNu} 2> /dev/null | head -1 )")))

     (when (s-blank? $lcntBase)
       (insert (s-lex-format "%% Problem: $lcntBase is blank")))

     (insert (s-lex-format "%% DEBUG: ${$lcntBase}"))

     (bx:lcnt:info:base-read-dir $lcntBase)

     (let (
          (lcnt-shortTitle (get 'bx:lcnt:info:base 'shortTitle))
          (lcnt-mainTitle (get 'bx:lcnt:info:base 'mainTitle))
          (lcnt-subTitle (get 'bx:lcnt:info:base 'subTitle))
          (lcnt-subSubTitle (get 'bx:lcnt:info:base 'subSubTitle))
          (lcnt-lcntNu (get 'bx:lcnt:info:base 'lcntNu))
          (lcnt-version (get 'bx:lcnt:info:base 'version))
          (lcnt-url (get 'bx:lcnt:info:base 'url))
          )

      (defun helpLine () "default controls" )
      (defun outCommentPreContent ())
      (defun bodyContentPlus ())
      (defun bodyContent ())

      (defun outCommentPostContent ()
       (insert (s-lex-format "
\\begin{whenOrg}
***** DBLOCK --- mention-lcnt ${<lcntNu}
\\end{whenOrg}

\\begin{quote}
  \\textbf{${lcnt-mainTitle}}\\newline"))

       (when (not (string-equal (format "%s" lcnt-subTitle) ""))
         (insert (s-lex-format "
  \\textbf{${lcnt-subTitle}}\\newline")))


       (when (not (string-equal (format "%s" lcnt-subSubTitle) ""))
         (insert (s-lex-format "
  \\textbf{${lcnt-subSubTitle}}\\newline")))

       (insert (s-lex-format "
  \\href{${lcnt-url}}{${lcnt-url}}\n"))

       (when <cite?
         (insert (s-lex-format "  ---~\\cite{${<lcntNu}}\\newline\n")))

       (insert "\\end{quote}"))



     (progn  ;; Actual Invocations
       (outCommentPreContent)
       ;;(bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       ))))




;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX Document Class" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX Document Class_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:matex/documentClass" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:matex/documentClass>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:matex/documentClass :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:matex/documentClass (<params)
;;;#+END:
   " #+begin_org
   ** [[elisp:(org-cycle)][| DocStr |]] Comes at very top. Specifies class/lcnt-class, sides, texClass, langs.

Each of these become buffer local variables that can be used by other dblocks in same buffer.
inserts:
documentclass[$effectiveTexOptions]{$effectiveTexClass}
usepackage{comment}
excludecomment{whenOrg}
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<bxClass (or (plist-get <params :bxClass) ""))
          (<bxLangs (or (plist-get <params :bxLangs) ""))
          (<texClass (or (plist-get <params :texClass) nil))
          (<sides (or (plist-get <params :sides) "two"))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<paperSize (or (plist-get <params :paperSize) nil))
          (<spineWidth (or (plist-get <params :spineWidth) nil))
          (<printAgent (or (plist-get <params :printAgent) nil))
          ($curBuild:paperSize nil)
          ($curBuild:markLength "")
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
       (let* (
              ($frontStr (b:dblock:comeega|frontElement "_DocClass_ "))
              ($eolStr (b:dblock:comeega|eolControls))
              )
         (insert (s-lex-format
                  "${$frontStr} ~bxClass=${<bxClass}~ -- ${<comment} ${$eolStr}\n"))
         ))

     (defun outCommentPostContent ()
       "Everything Really Happens In Here"

       (setq-local ~lcnt:texClass <texClass)
       (setq-local ~lcnt:class <bxClass)

        (cond
        ((s-equals? <bxClass "memo")
         (insert (s-lex-format "\\documentclass{article}")))

        ((s-equals? <bxClass "book")
         (insert (s-lex-format "\\documentclass[twoside]{book}"))
         (insert "\n")
         (insert (s-lex-format "\\emergencystretch 3em"))
         )

        ((or (s-equals? <bxClass "art")
             (s-equals? <bxClass "art+pres"))
         (insert (s-lex-format "\\documentclass{article}")))

        ((or (s-equals? <bxClass "pres")
             (s-equals? <bxClass "pres+art"))
         ;; ENGLISH
         (when (or (equal <bxLangs "en") (equal <bxLangs "en+fa"))
           (insert "\\documentclass[ignorenonframetext]{beamer}"))
         ;; FARSI
         (when (equal bx:langs "fa+en")
           (insert "\\documentclass[ignorenonframetext]{bidibeamer}")))

        ((s-equals? <bxClass "bookcover")
         (when (and (not <paperSize) (not <spineWidth))
           (when (not <curBuild)
             (insert "\n%%% ERROR:: Either paperSize or curBuild should be specified.")))

         (when <curBuild
           (when (bx:lcnt:curBuild:base-read)
             (setq $curBuild:paperSize  (get 'bx:lcnt:curBuild:base 'paperSize))
             ;; NOTYET, verify that $curBuild:paperSize is valid
             (setq <paperSize $curBuild:paperSize)
             (unless <spineWidth
               (setq <spineWidth (get 'bx:lcnt:curBuild:base 'spineWidth)))
             (unless <spineWidth
               (insert (s-lex-format "\n%%% ERROR:: curBuild spineWidth=${<spineWidth} not is not valid.")))
             (unless <printAgent
               (setq <printAgent (get 'bx:lcnt:curBuild:base 'printAgent)))
             (unless <printAgent
               (insert (s-lex-format "\n%%% ERROR:: curBuild printAgent=${<printAgent} not is not valid.")))
             ))

         ;; <printAgent should be available now.
         (when (or
                (s-equals? <printAgent "odp")
                (s-equals? <printAgent "kdp")
                (s-equals? <printAgent "ingmar")
                )
           (setq $curBuild:markLength "marklength=0mm,bleedwidth=0.125in,"))

         (unless <paperSize
           (insert (s-lex-format "\n%%% ERROR:: curBuild paperSize=${<paperSize} not is not valid.")))

         ;; <paperSize should be available now.
         (cond
          ((s-equals? <paperSize "a4")
           (insert (s-lex-format "\
\\documentclass[markcolor=black,${$curBuild:markLength}dvipsnames,spinewidth=${<spineWidth},coverwidth=210mm,coverheight=297mm]{bookcover}   % ${<paperSize} Paper")))

          ((s-equals? <paperSize "8.5x11")
            (insert (s-lex-format "\
\\documentclass[markcolor=black,${$curBuild:markLength}dvipsnames,spinewidth=${<spineWidth},coverwidth=8.5in,coverheight=11in]{bookcover}   % ${<paperSize} Paper")))

          ((s-equals? <paperSize "6x9")
            (insert (s-lex-format "\
\\documentclass[markcolor=black,${$curBuild:markLength}dvipsnames,spinewidth=${<spineWidth},coverwidth=6in,coverheight=9in]{bookcover}   % ${<paperSize} Paper")))

          ((s-equals? <paperSize "17.5x23.5")
            (insert (s-lex-format "\
\\documentclass[markcolor=black,${$curBuild:markLength}dvipsnames,spinewidth=${<spineWidth},coverwidth=175mm,coverheight=235mm]{bookcover}   % ${<paperSize} Paper")))

          (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown paperSize=${<paperSize}")))))

        (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown bxClass=${<bxClass}"))))

        (insert "
\\usepackage{comment}
\\excludecomment{whenOrg}\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (outCommentPostContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX Segments (Begin/End)" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX Segments (Begin/End)_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/pdfMetaData" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/pdfMetaData>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/pdfMetaData :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/pdfMetaData (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "_pdfMetaData_ "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~PDF Meta Data --- NOTYET, incomplete~ -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\AfterPreamble{\\hypersetup{
  pdfauthor={Mohsen Banan},
  pdftitle={Nature of Polyexistentials},
  pdfsubject={Intellectual Property},
  pdfkeywords={IP},
  pdfproducer={lcnt},
  pdfcreator={lcntpdf}
}}")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/documentBegin" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/documentBegin>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/documentBegin :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/documentBegin (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "_DocBegin_ "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~Begin Document~ -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\begin{document}\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/documentEnd" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/documentEnd>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/documentEnd :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/documentEnd (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "_DocEnd_   "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~End Document~ -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\end{document}\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/appendicesBegin" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/appendicesBegin>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/appendicesBegin :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/appendicesBegin (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<whenIncludeOnly (or (plist-get <params :whenIncludeOnly) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "~Appndce{~  " :orgDepth <outLevel))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} *Appendices-Begin* -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (when <whenIncludeOnly
         (insert "\n\\begin{whenIncludeOnly}"))
       (unless <whenIncludeOnly
         (insert "\n\\begin{whenNotIncludeOnly}"))
       (insert "\n\\begin{appendices}")
       (when <whenIncludeOnly
         (insert "\n\\end{whenIncludeOnly}"))
       (unless <whenIncludeOnly
         (insert "\n\\end{whenNotIncludeOnly}"))
       )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/appendicesEnd" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/appendicesEnd>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/appendicesEnd :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/appendicesEnd (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<whenIncludeOnly (or (plist-get <params :whenIncludeOnly) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "~Appndcs}~  " :orgDepth <outLevel))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} *Appendices-End* -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (when <whenIncludeOnly
         (insert "\n\\begin{whenIncludeOnly}"))
       (unless <whenIncludeOnly
         (insert "\n\\begin{whenNotIncludeOnly}"))
       (insert "\n\\end{appendices}")
       (when <whenIncludeOnly
         (insert "\n\\end{whenIncludeOnly}"))
       (unless <whenIncludeOnly
         (insert "\n\\end{whenNotIncludeOnly}"))
       )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX Preamble" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX Preamble_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/beginMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/beginMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/beginMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/beginMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "_Preamble{_" :orgDepth <outLevel))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~Begin Preamble Marker~ usepackage and pkgConfigs Before beginDocument -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/includeOnly" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/includeOnly>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/includeOnly :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/includeOnly (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "IncOnly" :orgDepth <outLevel))
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenTypesPlus" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenTypesPlus>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenTypesPlus :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenTypesPlus (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Used only in main tex.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<docWhenType (or (plist-get <params :docWhenType) "isComplete"))
          )
     (bxPanel:params$effective)
     (bx:lcnt:info:base-read)


     ;; (setq $includeOnlyList '("./common/aboutThisDoc"))
     ;; (setq $includeOnlyList '())
     (setq $includeOnlyList (b:lcnt:info:includeOnly/listGet))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenCond"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  ($docDirection (get 'bx:lcnt:info:base 'docDirection))
                  ($docStage (get 'bx:lcnt:info:base 'docStage))
                  )
             (insert (s-lex-format
                      "${$frontStr} docWhenType=${<docWhenType}"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (let* (
              ($docDirection (get 'bx:lcnt:info:base 'docDirection))
              ($docStage (get 'bx:lcnt:info:base 'docStage))
              )

         (message (s-lex-format "docDir and Stage ${$docDirection} ${$docStage}"))

         (when
          (string-equal <docWhenType "isComplete")
           (insert (s-lex-format
                  "\n
\\includecomment{whenIsBook}         % With Chapters
\\excludecomment{whenIsArticle}      % Without Chapters

\\includecomment{whenFormatIsArticle}         % Replacement for beamer mode article
\\excludecomment{whenFormatIsPresentation}    % Replacement for beamer mode presentation

\\includecomment{whenDocIsComplete}
\\excludecomment{whenMailing}
\\excludecomment{whenDocIsPartial}

\\excludecomment{whenFuture}
\\excludecomment{whenNext}

\\excludecomment{ignore}")))

         (when
          (string-equal $docDirection "ltr")
           (insert (s-lex-format "\n
\\includecomment{whenDocDirectionLtr}
\\excludecomment{whenDocDirectionRtl}")))

         (when
          (string-equal $docDirection "rtl")
           (insert (s-lex-format "\n
\\includecomment{whenDocDirectionRtl}
\\excludecomment{whenDocDirectionLtr}")))

         (when
          (string-equal $docStage "production")
           (insert (s-lex-format "\n
\\includecomment{whenProduction}         % No Debuging
\\excludecomment{whenDevelopment}        % For Debuging")))

         (when
          (string-equal $docStage "development")
           (insert (s-lex-format "\n
\\excludecomment{whenProduction}         % No Debuging
\\includecomment{whenDevelopment}        % For Debuging")))

         ))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenGeometry" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenGeometry>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenGeometry :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenGeometry (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<paperSize (or (plist-get <params :paperSize) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <paperSize (get 'bx:lcnt:curBuild:base 'paperSize)))

       (unless <paperSize
          (insert (s-lex-format "\n%%% ERROR:: curBuild paperSize=${<paperSize} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenGmtry"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} whenPaperGeometry ~paperSize=${<paperSize}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when <paperSize
         (cond
           ((s-equals? <paperSize "a4")
            (insert (s-lex-format "
\\includecomment{whenPaperA4}
\\includecomment{whenPaperLarge}
\\excludecomment{whenPaperSmall}
\\excludecomment{whenPaperLetter}
\\excludecomment{whenPaper6x9}
\\excludecomment{whenPaperVirtual}
\\excludecomment{whenPaper17x23}")))
           ((s-equals? <paperSize "8.5x11")
            (insert (s-lex-format "
\\includecomment{whenPaperLetter}
\\includecomment{whenPaperLarge}
\\excludecomment{whenPaperSmall}
\\excludecomment{whenPaperA4}
\\excludecomment{whenPaper6x9}
\\excludecomment{whenPaperVirtual}
\\excludecomment{whenPaper17x23}")))
           ((s-equals? <paperSize "6x9")
            (insert (s-lex-format "
\\includecomment{whenPaper6x9}
\\includecomment{whenPaperSmall}
\\excludecomment{whenPaperLarge}
\\excludecomment{whenPaperA4}
\\excludecomment{whenPaperLetter}
\\excludecomment{whenPaperVirtual}
\\excludecomment{whenPaper17x23}")))
           ((s-equals? <paperSize "17.5x23.5")
            (insert (s-lex-format "
\\includecomment{whenPaper17x23}
\\includecomment{whenPaperSmall}
\\excludecomment{whenPaperLarge}
\\excludecomment{whenPaperA4}
\\excludecomment{whenPaperLetter}
\\excludecomment{whenPaperVirtual}
\\excludecomment{whenPaper6x9}")))
           ((or (s-equals? <paperSize "virtual") (s-equals? <paperSize "html"))
            (insert (s-lex-format "
\\includecomment{whenPaperVirtual}
\\excludecomment{whenPaper17x23}
\\excludecomment{whenPaperSmall}
\\excludecomment{whenPaperLarge}
\\excludecomment{whenPaperA4}
\\excludecomment{whenPaperLetter}
\\excludecomment{whenPaper6x9}")))
           (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown paperSize=${<paperSize}"))))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenBuildDocClass" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenBuildDocClass>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenBuildDocClass :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenBuildDocClass (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<buildDocClass (or (plist-get <params :buildDocClass) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <buildDocClass (get 'bx:lcnt:curBuild:base 'buildDocClass)))

       (unless <buildDocClass
          (insert (s-lex-format "\n%%% ERROR:: curBuild buildDocClass=${<buildDocClass} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenDocCls"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} whenBuildDocCls ~buildDocClass=${<buildDocClass}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when <buildDocClass
         (cond
           ((s-equals? <buildDocClass "book")
            (insert (s-lex-format "
\\includecomment{whenDocClsBook}
\\excludecomment{whenDocClsArticle}")))
           ((s-equals? <buildDocClass "article")
            (insert (s-lex-format "
\\includecomment{whenDocClsArticle}
\\excludecomment{whenDocClsBook}")))
           (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown buildDocClass=${<buildDocClass}"))))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/buildEnvs" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/buildEnvs>> ~(bx:dblock:control|wrapper)~ --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/buildEnvs :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/buildEnvs (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Inserts build.tex of curBuild (if any) inside of dblock.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenBldEnv"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} From ./LCNT-Info/Builds/buildEnvs.tex~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (let* (
              ($lcntInfoBuildEnvsFile (concat default-directory "LCNT-INFO/Builds/buildEnvs.tex"))
              )
         (when (f-exists? $lcntInfoBuildEnvsFile)
           (insert "\n")
           (insert-file-contents $lcntInfoBuildEnvsFile))
         (unless (f-exists? $lcntInfoBuildEnvsFile)
           (insert (s-lex-format "\n%%% Missing ${$lcntInfoBuildEnvsFile}")))
         ))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenCurBuild" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenCurBuild>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenCurBuild :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenCurBuild (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Inserts build.tex of curBuild (if any) inside of dblock.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<when (or (plist-get <params :when) nil))
          ($curBuild:buildTex nil)
          ($curBuild:buildName nil)
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq $curBuild:buildTex  (get 'bx:lcnt:curBuild:base 'build.tex))
         (setq $curBuild:buildName  (get 'bx:lcnt:curBuild:base 'buildName))
         ))


     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenCurBld"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} From build.tex - whencurBuild ~curBuild=${$curBuild:buildName}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when (equal <when "main")
         (when $curBuild:buildTex
           (insert "\n")
           (insert-file-contents $curBuild:buildTex))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenPrintColor" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenPrintColor>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenPrintColor :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenPrintColor (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<printColor (or (plist-get <params :printColor) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <printColor (get 'bx:lcnt:curBuild:base 'printColor)))

       (unless <printColor
          (insert (s-lex-format "\n%%% ERROR:: curBuild printColor=${<printColor} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenPrClr"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} whenPrintColor ~printColor=${<printColor}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when <printColor
         (cond
           ((s-equals? <printColor "bw")
            (insert (s-lex-format "
\\includecomment{whenPrintColorBw}
\\excludecomment{whenPrintColorColor}")))
           ((s-equals? <printColor "color")
            (insert (s-lex-format "
\\includecomment{whenPrintColorColor}
\\excludecomment{whenPrintColorBw}")))
           (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown printColor=${<printColor}"))))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenCover" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenCover>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenCover :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenCover (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<cover (or (plist-get <params :cover) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <cover (get 'bx:lcnt:curBuild:base 'cover)))

       (unless <cover
          (insert (s-lex-format "\n%%% ERROR:: curBuild cover=${<cover} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenCover"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} whenCover ~cover=${<cover}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when <cover
         (cond
           ((s-equals? <cover "soft")
            (insert (s-lex-format "
\\includecomment{whenCoverSoft}
\\excludecomment{whenCoverHard}
\\excludecomment{whenCoverEmbedded}
\\excludecomment{whenCoverNone}")))
           ((s-equals? <cover "hard")
            (insert (s-lex-format "
\\includecomment{whenCoverHard}
\\excludecomment{whenCoverSoft}
\\excludecomment{whenCoverEmbedded}
\\excludecomment{whenCoverNone}")))
           ((s-equals? <cover "embedded")
            (insert (s-lex-format "
\\includecomment{whenCoverEmbedded}
\\excludecomment{whenCoverHard}
\\excludecomment{whenCoverSoft}
\\excludecomment{whenCoverNone}")))
           ((s-equals? <cover "none")
            (insert (s-lex-format "
\\includecomment{whenCoverNone}
\\excludecomment{whenCoverHard}
\\excludecomment{whenCoverSoft}
\\excludecomment{whenCoverEmbedded}")))
           (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown cover=${<cover}"))))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/whenMedium" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/whenMedium>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/whenMedium :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/whenMedium (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<medium (or (plist-get <params :medium) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <medium (get 'bx:lcnt:curBuild:base 'medium)))

       (unless <medium
          (insert (s-lex-format "\n%%% ERROR:: curBuild medium=${<medium} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "whenMedium"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} whenMedium ~medium=${<medium}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (when <medium
         (cond
           ((s-equals? <medium "paper")
            (insert (s-lex-format "
\\includecomment{whenMediumPaper}
\\excludecomment{whenMediumHtml}
\\excludecomment{whenMediumEpub}
\\excludecomment{whenMediumFile}")))
           ((s-equals? <medium "html")
            (insert (s-lex-format "
\\includecomment{whenMediumHtml}
\\excludecomment{whenMediumPaper}
\\excludecomment{whenMediumEpub}
\\excludecomment{whenMediumFile}")))
           ((s-equals? <medium "epub")
            (insert (s-lex-format "
\\includecomment{whenMediumEpub}
\\excludecomment{whenMediumPaper}
\\excludecomment{whenMediumHtml}
\\excludecomment{whenMediumFile}")))
           ((s-equals? <medium "file")
            (insert (s-lex-format "
\\includecomment{whenMediumFile}
\\excludecomment{whenMediumPaper}
\\excludecomment{whenMediumHtml}
\\excludecomment{whenMediumEpub}")))
           (t
            (insert (s-lex-format "\n%%% ERROR:: Unknown medium=${<medium}"))))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/buildSpineWidth" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/buildSpineWidth>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/buildSpineWidth :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/buildSpineWidth (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<spineWidth (or (plist-get <params :spineWidth) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <spineWidth (get 'bx:lcnt:curBuild:base 'spineWidth)))

       (unless <spineWidth
          (insert (s-lex-format "\n%%% ERROR:: curBuild spineWidth=${<spineWidth} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "spineWidth"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr}  ~spineWidth=${<spineWidth}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if <spineWidth
           (insert (s-lex-format "\n\\def\\spineWidth{${<spineWidth}}"))
         (insert (s-lex-format "\n%%% ERROR:: Unknown spineWidth=${<spineWidth}"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/buildIsbn13Nu" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/buildIsbn13Nu>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/buildIsbn13Nu :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/buildIsbn13Nu (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<isbn13Nu (or (plist-get <params :isbn13Nu) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <isbn13Nu (get 'bx:lcnt:curBuild:base 'isbn13Nu)))

       (unless <isbn13Nu
          (insert (s-lex-format "\n%%% ERROR:: curBuild isbn13Nu=${<isbn13Nu} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "isbn13Nu"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr}  ~isbn13Nu=${<isbn13Nu}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if <isbn13Nu
           (insert (s-lex-format "\n\\def\\isbnNu{${<isbn13Nu}}"))
         (insert (s-lex-format "\n%%% ERROR:: Unknown isbn13Nu=${<isbn13Nu}"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN: b:elisp:defs/defun :defName "buildTagMediumGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<buildTagMediumGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun buildTagMediumGet (
;;;#+END:
                             <medium
                             )
   " #+begin_org
** DocStr: Based on =<medium= return tag to be sued in lcntNuBuildTag
#+end_org "
   (let* ((retVal ""))
     (cond
      ((s-equals? <medium "paper")
       (setq retVal "p"))
      ((s-equals? <medium "epub")
       (setq retVal "e"))
      ((s-equals? <medium "html")
       (setq retVal "h"))
      ((s-equals? <paperSize "file")
       (setq retVal "f"))
      (t
       (setq retVal "")))
     retVal))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(buildTagMediumGet (symbol-name 'paper))
#+END_SRC

#+RESULTS:
: 1

" orgCmntEnd)


;;;#+BEGIN: b:elisp:defs/defun :defName "buildTagPaperSizeGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<buildTagPaperSizeGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun buildTagPaperSizeGet (
;;;#+END:
                             <paperSize
                             )
   " #+begin_org
** DocStr: Based on =<paperSize= return tag to be sued in lcntNuBuildTag
#+end_org "
   (let* ((retVal ""))
     (cond
      ((s-equals? <paperSize "6x9")
       (setq retVal "1"))
      ((s-equals? <paperSize "17.5x23.5")
       (setq retVal "2"))
      ((s-equals? <paperSize "8.5x11")
       (setq retVal "3"))
      ((s-equals? <paperSize "a4")
       (setq retVal "4"))
      ((s-equals? <paperSize "html")
       (setq retVal "0"))
      (t
       (setq retVal "")))
     retVal))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(buildTagPaperSizeGet (symbol-name '6x9))
#+END_SRC

#+RESULTS:
: 1

" orgCmntEnd)

;;;#+BEGIN: b:elisp:defs/defun :defName "buildTagColorGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<buildTagColorGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun buildTagColorGet (
;;;#+END:
                             <color
                             )
   " #+begin_org
** DocStr: Based on =<paperSize= return tag to be sued in lcntNuBuildTag
#+end_org "
   (let* ((retVal ""))
     (cond
      ((s-equals? <color "bw")
       (setq retVal "b"))
      ((s-equals? <color "color")
       (setq retVal "c"))
      (t
       (setq retVal "")))
     retVal))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(buildTagColorGet (symbol-name 'b&w))
#+END_SRC

#+RESULTS:
: 1

" orgCmntEnd)

;;;#+BEGIN: b:elisp:defs/defun :defName "buildTagCoverGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<buildTagCoverGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun buildTagCoverGet (
;;;#+END:
                         <cover
                         )
   " #+begin_org
** DocStr: Based on =<paperSize= return tag to be sued in lcntNuBuildTag
#+end_org "
   (let* ((retVal ""))
     (cond
      ((s-equals? <cover "soft")
       (setq retVal "s"))
      ((s-equals? <cover "hard")
       (setq retVal "h"))
      ((s-equals? <cover "embedded")
       (setq retVal "e"))
      ((s-equals? <cover "none")
       (setq retVal "n"))
      (t
       (setq retVal "")))
     retVal))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(buildTagCoverGet (symbol-name 'soft))
#+END_SRC

#+RESULTS:
: 1

" orgCmntEnd)

;;;#+BEGIN: b:elisp:defs/defun :defName "buildTagPrintAgentGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<buildTagPrintAgentGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun buildTagPrintAgentGet (
;;;#+END:
                              <printAgent
                              )
   " #+begin_org
** DocStr: Based on =<printAgent= return tag to be used in lcntNuBuildTag
#+end_org "
   (let* ((retVal ""))
     (cond
      ((s-equals? <printAgent "odp")
       (setq retVal "o"))
      ((s-equals? <printAgent "kdp")
       (setq retVal "k"))
      ((s-equals? <printAgent "ingram")
       (setq retVal "i"))
      ((s-equals? <printAgent "local")
       (setq retVal "l"))
      ((s-equals? <printAgent "public")
       (setq retVal "p"))
      (t
       (setq retVal "")))
     retVal))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(buildTagPrintAgentGet (symbol-name 'local))
#+END_SRC

#+RESULTS:
: 1

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/buildTag" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/buildTag>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/buildTag :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/buildTag (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<lcntNuBuildTag (or (plist-get <params :lcntNuBuildTag) nil))
          ($mediumTag "")
          ($paperSizeTag "")
          ($colorTag "")
          ($coverTag "")
          ($printAgentTag "")
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq $mediumTag (buildTagMediumGet (get 'bx:lcnt:curBuild:base 'medium)))
         (setq $paperSizeTag (buildTagPaperSizeGet (get 'bx:lcnt:curBuild:base 'paperSize)))
         (setq $colorTag (buildTagColorGet (get 'bx:lcnt:curBuild:base 'printColor)))
         (setq $coverTag (buildTagCoverGet (get 'bx:lcnt:curBuild:base 'cover)))
         (setq $printAgentTag (buildTagPrintAgentGet (get 'bx:lcnt:curBuild:base 'printAgent)))
               ))


     (unless <lcntNuBuildTag
       (setq <lcntNuBuildTag (s-lex-format "${$mediumTag}${$paperSizeTag}${$colorTag}${$coverTag}${$printAgentTag}")))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "buildTag"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )

             (when (s-blank? $mediumTag) (insert (s-lex-format "\n%%% ERROR:: Missing medium")))
             (when (s-blank? $paperSizeTag) (insert (s-lex-format "\n%%% ERROR:: Missing paperSize")))
             (when (s-blank? $colorTag) (insert (s-lex-format "\n%%% ERROR:: Missing printColor")))
             (when (s-blank? $coverTag) (insert (s-lex-format "\n%%% ERROR:: Missing cover")))
             (when (s-blank? $printAgentTag) (insert (s-lex-format "\n%%% ERROR:: Missing printAgent")))

             (insert (s-lex-format
                      "${$frontStr}  ~lcntNuBuildTag=${<lcntNuBuildTag}~"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if <lcntNuBuildTag
           (insert (s-lex-format "\n\\newcommand{\\lcntNuBuildTag}{${<lcntNuBuildTag}}"))
         (insert (s-lex-format "\n%%% ERROR:: Unknown cntNuBuildTag=${<lcntNuBuildTag}"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgEan13isbn" :advice ("bx:dblock:control|wrapper") :comment "Inserts ISBN"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgEan13isbn>> ~advice=(bx:dblock:control|wrapper)~ -- Inserts ISBN  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgEan13isbn :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgEan13isbn (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Can be used both in article and
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) nil))
          (<isbn13Nu (or (plist-get <params :isbn13Nu) nil))
          )
     (bxPanel:params$effective)

     (when <curBuild
       (when (bx:lcnt:curBuild:base-read)
         (setq <isbn13Nu (get 'bx:lcnt:curBuild:base 'isbn13Nu)))

       (unless <isbn13Nu
          (insert (s-lex-format "\n%%% ERROR:: curBuild isbn13Nu=${<isbn13Nu} not is not valid."))))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "pkgEan13isbn"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr}  usepackage(ean13isbn) ~isbn13Nu=${<isbn13Nu}~ -- ${<comment}"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if <isbn13Nu
           (insert (s-lex-format "\n\\usepackage[ISBN=${<isbn13Nu}]{ean13isbn}"))
         (progn
           (insert (s-lex-format "\n\\usepackage[ISBN=978-3-16-148410-0]{ean13isbn}"))
           (insert (s-lex-format "\n%%% ERROR:: Unknown isbn13Nu=${<isbn13Nu} -- Example Being Used")))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/customWhenCondsMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/customWhenCondsMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/customWhenCondsMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/customWhenCondsMarker (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "whenCond"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~Marker~  Custom whenConds ${<comment}"))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/endMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/endMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/endMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/endMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "_Preamble}_"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~End Preamble Marker~ usepackage and pkgConfigs Before beginDocument -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgAppendix" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgAppendix>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgAppendix :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgAppendix (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "pkgAppndx"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(appendix) -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "\n\\usepackage[toc,page]{appendix}")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgIndex" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgIndex>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgIndex :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgIndex (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "pkgIndex"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(imakeidx)+makeindex -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage{imakeidx}
\\makeindex")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgGlossaries" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgGlossaries>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgGlossaries :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgGlossaries (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "pkgGlssris"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(glossaries)+glossaries -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage[toc]{glossaries}    % Should come after hyperref
\\makeglossaries")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/chineseFonts" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/chineseFonts>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/chineseFonts :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/chineseFonts (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Used only in main tex.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "chineseFnt"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(xeCJK)+chineseFonts -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage{xeCJK}
\\setCJKmainfont{AR PL UMing CN}")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/blankPage" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/blankPage>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/blankPage :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/blankPage (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Used only in main tex.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "blankPage"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(afterpage)+blankPage -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage{afterpage}

\\newcommand\\blankpage{%
    \\null
    \\thispagestyle{empty}%
    \\addtocounter{page}{-1}%
    \\newpage}\
")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/devTools" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/devTools>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/devTools :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/devTools (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Used only in main tex.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "devTools"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(showframe)+devTools -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
% \\usepackage{showframe}\
")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgBystarBidi" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgBystarBidi>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgBystarBidi :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgBystarBidi (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "pkgBxBidi"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} Bystar Bidi Pkgs With HeVeA Support -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\newenvironment{bidiSepBeforeHevea}{}{}
\\usepackage{bidi}
\\newenvironment{bidiSepAfterHevea}{}{}

\\usepackage{bystarpersian}   % Defines: \\newfontfamily{\\persian}, \\newcommand{\\farsi}, \\newenvironment{faPar},{fa}
%%% \\usepackage{bystararticle}   % Defines: Assumes beamer \\excludecomment{presentationMode} \\newcommand{\\pnote}
")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgTOCs" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgTOCs>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgTOCs :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgTOCs (<params)
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
                  ($frontStr (b:dblock:comeega|frontElement "pkgTOCs"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(shorttoc,minitoc)+chaptermark -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage{shorttoc}

\\begin{whenIncludeOnly}
  \\usepackage{minitoc}
\\end{whenIncludeOnly}")))


     (defun outCommentPostContent%% ()
       (insert (s-lex-format "
\\usepackage{shorttoc}
%%% Following chaptermark renew is needed for Preface chapter toc
\\renewcommand{\\chaptermark}[1]{%
  \\ifnum\\value{chapter}>0
    \\markboth{Chapter \\thechapter{}: #1}{}%
  \\else
    \\markboth{#1}{}%
  \\fi}

\\begin{whenIncludeOnly}
  \\usepackage{minitoc}
\\end{whenIncludeOnly}")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgNotes" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgNotes>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgNotes :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgNotes (<params)
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
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "pkgNotes"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(enotez)+footnote,endnote -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
%BEGIN LATEX
\\usepackage{enotez}
\\DeclareInstance{enotez-list}{section}{paragraph}{heading=\\bigskip,notes-sep=0pt}
\\setenotez{list-style=section,split=section,backref=true}
\\let\\footnote=\\endnote%
%END LATEX")))

     (defun outCommentPostContent%% ()
       (insert (s-lex-format "
%BEGIN LATEX
\\usepackage{enotez}
\\DeclareInstance{enotez-list}{section}{paragraph}{heading=\\section{#1}}
\\setenotez{list-style=section,split=section}
\\let\\footnote=\\endnote%
%END LATEX")))


     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/pkgTikZ" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/pkgTikZ>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:preamble/pkgTikZ :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:preamble/pkgTikZ (<params)
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
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "pkgTikZ"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} usepackage(tikz,ifpdf)+shapes,calc -- ${<comment} ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (insert (s-lex-format "
\\usepackage{ifpdf}
\\usepackage{tikz}
%\\usepackage[active,tightpage]{preview}
\\usetikzlibrary{shapes,calc}
\\ifpdf
  %
\\else
  % Implement Outline text using pstricks if regular LaTeX->dvi->ps->pdf route
  \\usepackage{pst-all}
\\fi")))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:bib/packagesControls" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:bib/packagesControls>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:bib/packagesControls :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:bib/packagesControls (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<curBuild (or (plist-get <params :curBuild) ""))
          (<bibProvider (or (plist-get <params :bibProvider) ""))
          (<bibStyle (or (plist-get <params :bibStyle) "plain"))
          ;;;
          ($atLeastOnceWhen nil)
          )
     (bxPanel:params$effective)

     (when (s-blank? <bibProvider)
       ;; Check for boundp and assign default
       (setq <bibProvider ~lcnt:bibProvider))
     (unless (s-blank? <bibProvider)
       (setq-local ~lcnt:bibProvider <bibProvider))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "pkgBib"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} bibPackage=${<bibProvider} and Controls -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (cond
        ((s-equals? <bibProvider "biblatex")
         (when (s-equals? <bibStyle "plain")
           (setq <bibStyle "numeric"))
         (insert (s-lex-format "
\\usepackage[backend=biber,style=${<bibStyle}]{biblatex}")))
        ((s-equals? <bibProvider "bibtex")
         (insert (s-lex-format "
\\bibliographystyle{${<bibStyle}}")))
        (t
         (insert (s-lex-format "
%%%%% Problem -- Unknwon bibProvider=${<bibProvider}"))))
         (insert (s-lex-format "\n
%HEVEA\\bibliographystyle{plain}")))


     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:bib/addResourcesMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:bib/addResourcesMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:bib/addResourcesMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:bib/addResourcesMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<examples (or (plist-get <params :examples) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "addBibFile"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~Marker~ Add Resources examples=${<examples} -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (when <examples
         (insert (s-lex-format "
\\addbibresource{/lcnt/BIB/plpcUrl.bib}
\\addbibresource{/lcnt/BIB/rfcs.bib}
\\addbibresource{/lcnt/BIB/bxsup.bib}"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX FrontMatter" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX FrontMatter_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/frontmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/frontmatter>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/frontmatter :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/frontmatter (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "/FrontMatr/ "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~frontmatter~ TitlePage/AccessInfo/TOCs/Preface/etc -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\frontmatter%\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:front/tocsInsert" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:front/tocsInsert>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:front/tocsInsert :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:front/tocsInsert (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<pageBreak (or (plist-get <params :pageBreak) nil))
          (<shortToc (or (plist-get <params :shortToc) nil))
          (<toc (or (plist-get <params :toc) nil))
          (<tables (or (plist-get <params :tables) nil))
          (<figures (or (plist-get <params :figures) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "/TOCsInsert/"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "\
${$frontStr} Table Of Contents:: pageBreak=${<pageBreak} shortToc=${<shortToc} toc=${<toc} tables=${<tables} figures=${<figures} -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (when <pageBreak
         (insert "\n\n\\clearpage"))

       (insert "\n\n\\begin{whenNotIncludeOnly}")

     (cond
      ((and <toc <shortToc)
       (insert "

\\begin{whenPaper6x9}
\\begin{whenUsEdition}
\\begin{adjustwidth}{-0.1in}{-0.1in}   % Used to be 0.25
\\end{whenUsEdition}
\\begin{whenIntEdition}
\\begin{adjustwidth}{-0.005in}{-0.005in}   % Used to be 0.25
\\end{whenIntEdition}
\\end{whenPaper6x9}

\\begin{latexonly}
  \\shorttoc{Short Contents}{0}  % Parts and chapters
\\end{latexonly}

  \\renewcommand*\\contentsname{Detailed Contents}

  \\tableofcontents"))

      ( <shortToc
        (insert "\n \\shorttoc{Short Contents}{0}  % Parts and chapters"))

      ( <toc
        (insert "\n \\tableofcontents"))
      )

    (when <figures
      (insert "\n  \\listoffigures"))

    (when <tables
      (insert "\n  \\listoftables"))

    (insert "

\\begin{whenPaper6x9}
\\end{adjustwidth}
\\end{whenPaper6x9}

\\end{whenNotIncludeOnly}")

    (insert (s-lex-format "\n
\\begin{whenIncludeOnly}
  \\dominitoc%
  \\faketableofcontents%
  \\mtcaddchapter%
\\end{whenIncludeOnly}
"))

    ;;(insert "\n\n\\pagenumbering{arabic}\n")
    )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX MainMatter" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX MainMatter_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/mainmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/mainmatter>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/mainmatter :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/mainmatter (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "/MainMatter/"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ${$frontStr} ~mainmatter~ Parts/Chapters/Appendices -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\mainmatter%\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "MaTeX MainMatter -- Figures" :extraInfo "b:lcnt:latex:fig/artpres"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *MaTeX MainMatter -- Figures:* |]]  b:lcnt:latex:fig/artpres  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:fig/artpres" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:fig/artpres>> ~(bx:dblock:control|wrapper)~ --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:fig/artpres :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:fig/artpres (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Modernized version of org-dblock-write:bx:dblock:lcnt:body:fig-artpres
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<figFile (or (plist-get <params :figFile) ""))
          (<sec (or (plist-get <params :sec) "")) ;; Can be used to determine outlevel
          ($figTitle (shell-command-to-string
                     (format "echo -n $( cat %s )"
                             (concat (file-name-sans-extension <figFile) ".title"))))
          ($figCaption (shell-command-to-string
                     (format "echo -n $( cat %s )"
                             (concat (file-name-sans-extension <figFile) ".caption"))))
          ($figFileSansExt (file-name-sans-extension <figFile))
          ($figFileBaseName (fig-base-name <figFile))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "/-Figure-/  "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr}   ~Figure::~ ${$figFileBaseName} ~title::~ ${$figTitle} -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()

      (when (equal <sec "none")
        (message (format "Skipped: section{%s}\n" $figTitle)))


      (when (equal <sec "sec")
        (insert (format "\\section{%s}\n\n" figTitle)))


      (when (equal <sec "subsec")
        (insert (format "\\subsection{%s}\n\n" figTitle)))

      (when (equal <sec "subsubsec")
        (insert (format "\\subsubsection{%s}\n\n" figTitle)))

      (insert "

\\begin{latexonly}
\\begin{whenFormatIsPresentation}\n")

      (b:ins$fmt$ "\\begin{frame}[plain]{${$figTitle}}\n")

      (insert "\\begin{figure}
\\begin{center}
")

      (b:ins$fmt$ "\\includegraphics[width=108mm,height=76mm,keepaspectratio]{${$figFileSansExt}}\n")

      (insert "\\end{center}
\\end{figure}
")

      (insert "\\end{frame}
\\end{whenFormatIsPresentation}\n")

      (insert "
\\begin{whenFormatIsArticle}\n")

      (insert "\\begin{figure}
\\begin{center}
")

      (b:ins$fmt$ "\\includegraphics[width=\\textwidth]{${$figFileSansExt}}\n")

    ;;; BUG: insert-file-contents did not work

      (b:ins$fmt$ "\\caption{${$figTitle}}\n")

      (b:ins$fmt$ "\\label{fig:${$figFileBaseName}}\n")

      (insert "\\end{center}
\\end{figure}
\\end{whenFormatIsArticle}
\\end{latexonly}

\\begin{htmlonly}
\\begin{center}
%BEGIN IMAGE
\\begin{center}
")

      (b:ins$fmt$ "\\includegraphics[width=\\textwidth]{${$figFileSansExt}}\n")

      (insert "\\end{center}
%END IMAGE
%HEVEA\\imageflush
\\end{center}

\\begin{figure}
")
      (b:ins$fmt$ "\\caption{${$figTitle}}\n")

      (b:ins$fmt$ "\\label{fig:${$figFileBaseName}}\n")

      (insert "\\end{figure}
\\end{htmlonly}
")
      )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "MaTeX BackMatter" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _MaTeX BackMatter_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/backmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/backmatter>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex/backmatter :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex/backmatter (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "/BackMatter/"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~backmatter~ Index/Glossary/Biblio -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\backmatter%\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printNotes" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printNotes>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:back/printNotes :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:back/printNotes (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Notes   "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~printendnotes~ With Format Specified In Preamble -- ${<comment} ${$eolStr}\n"))
             ))

     ;; %\\addcontentsline{toc}{chapter}{Notes}
     (defun outCommentPostContent ()
       (insert "\n
\\begin{whenNotIncludeOnly}

\\begingroup
\\markboth{Notes}{Notes}

\\addcontentsline{toc}{chapter}{Notes}
\\chapter*{Notes}

We have not identified sources when the facts involved are not in
dispute and when the relevant information can easily be found.

\\begin{whenPaper6x9}
    \\begin{adjustwidth}{+0.15in}{+0.05in}
\\end{whenPaper6x9}

\\printendnotes

\\begin{whenPaper6x9}
    \\end{adjustwidth}
\\end{whenPaper6x9}

\\endgroup

\\end{whenNotIncludeOnly}"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printGlossaries" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printGlossaries>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:back/printGlossaries :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:back/printGlossaries (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Glossaris"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~printglossaries~ With listgroup Style -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n
\\begin{whenNotIncludeOnly}
  %%% \\glossarystyle{listgroup}   Before Debian 12
  \\setglossarystyle{listgroup}       %% After Debian 12
  \\printglossaries%
\\end{whenNotIncludeOnly}"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printIndex" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printIndex>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:back/printIndex :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:back/printIndex (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Index   "))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~printindex~ And Add To TOC -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n
\\begin{whenNotIncludeOnly}
  \\addcontentsline{toc}{chapter}{Index}
  \\printindex
\\end{whenNotIncludeOnly}"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:bib/printBibsMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:bib/printBibsMarker>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:latex:bib/printBibsMarker :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:latex:bib/printBibsMarker (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Run lcntProc with info obtained in this file.
Expects certain file-local variables to have been set
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<comment (or (plist-get <params :comment) ""))
          (<examples (or (plist-get <params :examples) nil))
          (<bibProvider (or (plist-get <params :bibProvider) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement "Bib"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~Marker~ Print Bibs examples=${<examples} -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (when <examples
         (insert (s-lex-format "\n
\\begin{whenNotIncludeOnly}"))
         (when (s-equals? ~lcnt:texClass "article")
           (insert (s-lex-format "
  \\phantomsection
  \\addcontentsline{toc}{section}{Bibliography}")))

         (when (s-equals?  ~lcnt:texClass "book")
           (insert (s-lex-format "
  \\phantomsection
  \\addcontentsline{toc}{chapter}{Bibliography}")))

         (cond
          ((s-equals? <bibProvider "biblatex")
           (insert (s-lex-format "
  \\printbibliography[notkeyword={online},notkeyword={paper}]
  \\printbibliography[keyword={online},title={Online Readings}]
  \\printbibliography[keyword={paper},title={Paper Readings}]")))

          ((s-equals? <bibProvider "bibtex")
           (insert (s-lex-format "
  \\bibliography{/lcnt/BIB/plpcUrl,/lcnt/BIB/rfcs,/lcnt/BIB/bxsup}")))
          (t
           (insert (s-lex-format "
%%%%% Problem -- Unknwon bibProvider=${<bibProvider}"))))

         (insert (s-lex-format "
\\end{whenNotIncludeOnly}\n"))
         ))

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
