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
          (<includedAs (or (plist-get <params :includedAs) "INCLUDED"))
          (<notClearDoublePage (or (plist-get <params :notClearDoublePage) nil))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
           (let* (
                  ($frontStr (b:dblock:comeega|frontElement <includedAs))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (if (file-exists-p <includeFile)
                 (insert (s-lex-format
                          "${$frontStr}   ~Include File~  file:${<includeFile}"))
               (insert (s-lex-format
                        "${$frontStr} _MISSING_ ~Include File~  file:${<includeFile}")))
             (insert (s-lex-format " ${$eolStr}\n"))))

     (defun outCommentPostContent ()
       (if (file-exists-p <includeFile)
           (progn
             (when (not <notClearDoublePage)
               (insert (s-lex-format "
\\begin{whenNotIncludeOnly}
  \\cleardoublepage%
\\end{whenNotIncludeOnly}")))
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



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/includeOnly" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/includeOnly>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/lcntProc" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/lcntProc>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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

             (insert (s-lex-format "* CloseOf       LcntProc ${$eolStr}\n"))))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/contentsList" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/contentsList>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
             (insert (s-lex-format
   "${$frontStr} ##### CONTENTS-LIST [[elisp:(reftex-toc)][(RefTOC)]] For ${$thisFile} #### ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/docStatus" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/docStatus>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
             (insert (s-lex-format
   "${$frontStr} *Document Status, TODOs and Notes* ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ())

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/endOfFile" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/endOfFile>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
       (let* (($cmntStr (b:major-mode:comment|lineStr)))
         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} +CATEGORY: lcnt.latex.inputed"))
         (insert (s-lex-format "\n${$cmntStr} +STARTUP: content"))
         (insert "\n")
         (insert (s-lex-format "\n${$cmntStr} local variables:"))
         (insert (s-lex-format "\n${$cmntStr} major-mode: latex-mode"))
         (insert (s-lex-format "\n${$cmntStr} fill-column: 65"))
         (insert (s-lex-format "\n${$cmntStr} TeX-master: ${$texMaster:str}"))
         (insert (s-lex-format "\n${$cmntStr} eval: (setq b:lcnt:tex:masters:~ '${$lcntTexMasters:str})"))
         (insert (s-lex-format "\n${$cmntStr} eval: (setq b:lcnt:tex:includePath:~ ${$lcntTexIncludePath:str})"))
         (insert (s-lex-format "\n${$cmntStr} end:"))))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/appendicesBegin" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/appendicesBegin>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
                  ($frontStr (b:dblock:comeega|frontElement "~Appndce{~  "))
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/appendicesEnd>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
                  ($frontStr (b:dblock:comeega|frontElement "~Appndcs}~  "))
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/documentBegin" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/documentBegin>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/documentEnd>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/beginMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/beginMarker>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
                  ($frontStr (b:dblock:comeega|frontElement "_Preamble{_"))
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:preamble/endMarker" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:preamble/endMarker>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/frontmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/frontmatter>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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





;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/mainmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/mainmatter>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
                      "${$frontStr} ~mainmatter~ Parts/Chapters/Appendices -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n\n\\mainmatter%\n"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex/backmatter" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex/backmatter>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:front/tocsInsert" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:front/tocsInsert>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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

       (insert "\n\\begin{whenNotIncludeOnly}")

     (cond
      ((and <toc <shortToc)
       (insert "
  \\shorttoc{Short Contents}{0}  % Parts and chapters

  \\renewcommand*\\contentsname{Detailed Contents}

  \\tableofcontents"))

      ( <shortToc
        (insert "\n \\shorttoc{Short Contents}{0}  % Parts and chapters"))

      ( <toc
        (insert "\n \\tableofcontents"))
      )

    (when <tables
      (insert "\n  \\listoftables"))

    (when <figures
      (insert "\n  \\listoffigures"))

    (insert "\n\\end{whenNotIncludeOnly}")

    (insert "\n
\\begin{whenIncludeOnly}
  \\dominitoc%
  \\faketableofcontents%
  \\mtcaddchapter%
\\end{whenIncludeOnly}")

    ;;(insert "\n\n\\pagenumbering{arabic}\n")
    )

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printNotes" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printNotes>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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

     (defun outCommentPostContent ()
       (insert "\n
\\begin{whenNotIncludeOnly}
  \\addcontentsline{toc}{chapter}{Notes}
  \\printendnotes
\\end{whenNotIncludeOnly}"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printGlossaries" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printGlossaries>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
                  ($frontStr (b:dblock:comeega|frontElement "Glssaris"))
                  ($eolStr (b:dblock:comeega|eolControls))
                  )
             (insert (s-lex-format
                      "${$frontStr} ~printglossaries~ With listgroup Style -- ${<comment} ${$eolStr}\n"))
             ))

     (defun outCommentPostContent ()
       (insert "\n
\\begin{whenNotIncludeOnly}
  \\glossarystyle{listgroup}
  \\printglossaries%
\\end{whenNotIncludeOnly}"))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:latex:back/printIndex" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:latex:back/printIndex>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
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
