;;; dblock-comeega-python.el --- DBlocks for Python File-Elements  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Dblocks for common python comeega files --- workbech, particulars-csInfo, framework/main.
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
** This File: NOTYET
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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Dblock Processors" :extraInfo "org-dblock-write:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Dblock Processors_: |]]  org-dblock-write:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defalias 'org-dblock-write:b:python:file/workbench 'org-dblock-write:b:py3:file/workbench)

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:file/workbench" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:file/workbench>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:file/workbench :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:file/workbench (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert "* [[elisp:(org-cycle)][| Workbench |]] ::\
 [[elisp:(python-check (format \"/bisos/venv/py3/bisos3/bin/python -m pyclbr %s\" (bx:buf-fname))))][pyclbr]] ||\
 [[elisp:(python-check (format \"/bisos/venv/py3/bisos3/bin/python -m pydoc ./%s\" (bx:buf-fname))))][pydoc]] ||\
 [[elisp:(python-check (format \"/bisos/pipx/bin/pyflakes %s\" (bx:buf-fname)))][pyflakes]] |\
 [[elisp:(python-check (format \"/bisos/pipx/bin/pychecker %s\" (bx:buf-fname))))][pychecker (executes)]] |\
 [[elisp:(python-check (format \"/bisos/pipx/bin/pycodestyle %s\" (bx:buf-fname))))][pycodestyle]] |\
 [[elisp:(python-check (format \"/bisos/pipx/bin/flake8 %s\" (bx:buf-fname))))][flake8]] |\
 [[elisp:(python-check (format \"/bisos/pipx/bin/pylint %s\" (bx:buf-fname))))][pylint]] \
 [[elisp:(org-cycle)][| ]]"
              ))

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


(defalias 'org-dblock-write:b:python:file/particulars-csInfo 'org-dblock-write:b:py3:file/particulars-csInfo)

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:file/particulars-csInfo" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:file/particulars-csInfo>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:file/particulars-csInfo :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:file/particulars-csInfo (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<status (or (plist-get <params :status) "beta"))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert
         (s-lex-format "* *[[elisp:(org-cycle)][| Particulars-csInfo |]]*")))

    (defun outCommentPostContent ()
      (let (($moduleName (file-name-sans-extension (bx:buf-fname)))
            ($version (format-time-string "%Y%m%d%M%S"))
            )
        (insert
         (s-lex-format "
import typing
csInfo: typing.Dict[str, typing.Any] = { 'moduleName': ['${$moduleName}'], }
csInfo['version'] = '${$version}'
csInfo['status']  = '${<status}'
csInfo['panel'] = '${$moduleName}-Panel.org'
csInfo['groupingType'] = 'IcmGroupingType-pkged'
csInfo['cmndParts'] = 'IcmCmndParts[common] IcmCmndParts[param]'"
                       ))))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:framework/main" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:framework/main>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:framework/main :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:framework/main (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<csInfo (or (plist-get <params :csInfo) "csInfo"))
         (<noCmndEntry (or (plist-get <params :noCmndEntry) "examples"))
         (<extraParamsHook (or (plist-get <params :extraParamsHook) "g_paramsExtraSpecify"))
         (<importedCmndsModules (or (plist-get <params :importedCmndsModules)  "g_importedCmndsModules"))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format "${$frontStr} =g_csMain= (${<csInfo}, _${<noCmndEntry}_, ${<extraParamsHook}, ${<importedCmndsModules})"))))

    (defun outCommentPostContent ()
        (insert
         (s-lex-format "

if __name__ == '__main__':
    cs.main.g_csMain(
        csInfo=${<csInfo},
        noCmndEntry=${<noCmndEntry},  # specify a Cmnd name
        extraParamsHook=${<extraParamsHook},
        importedCmndsModules=${<importedCmndsModules},
    )
"
                       )))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:framework/endOfFile" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:framework/endOfFile>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:framework/endOfFile :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:framework/endOfFile (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<basedOn (or (plist-get <params :basedOn) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format "* [[elisp:(org-cycle)][| *End-Of-Editable-Text* |]] :: emacs and org variables and control parameters"))))

    (defun outCommentPostContent ()
        (insert
         (s-lex-format "\n\n#+STARTUP: showall\n\n"))
        (insert "### local variables:\n")
        (insert "### no-byte-compile: t\n")
        (insert "### end:")
        )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:framework/csuListProc" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:framework/csuListProc>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:framework/csuListProc :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:framework/csuListProc (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<pyImports (or (plist-get <params :pyImports) nil))
         (<csuImports (or (plist-get <params :csuImports) nil))
         (<csuParams (or (plist-get <params :csuParams) nil))
         ($csuListLength)
         )
    (bxPanel:params$effective)

    (progn ;; This results in sets b:py:cs:csuList
      (blee:ppmm:mode-push major-mode)
      (bap:org/switch-to-org-mode)
      (blee:org:code-block/above-run)
      (blee:ppmm:mode-pop))

    (setq $csuListLength (length b:py:cs:csuList))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format
          "${$frontStr} =Process CSU List= with /${$csuListLength}/ in csuList pyImports=${<pyImports} csuImports=${<csuImports} csuParams=${<csuParams}"))))

    (defun outCommentPostContent ()
      (defun pyImportsProcEach (<each)
        (let* (
               ($csuAsStrList (s-split "\\." <each))
               ($last (first (last $csuAsStrList)))
               ($butlast (butlast $csuAsStrList))
               ($joinedButlast (s-join "." $butlast))
               )
          (insert (s-lex-format "from ${$joinedButlast} import ${$last}\n"))))

      (when <pyImports
        (insert "\n\n")
        (loop-for-each $each b:py:cs:csuList
          (pyImportsProcEach $each))
        (insert "\n"))

      (when <csuImports
        (insert "\ncsuList = [")
        (loop-for-each $each b:py:cs:csuList
          (insert (s-lex-format " \'${$each}\',")))
        (insert " ]\n")
        (insert (s-lex-format "
g_importedCmndsModules = cs.csuList_importedModules(csuList)
"
                              )))

      (when <csuParams
        (insert (s-lex-format "
def g_extraParams():
    csParams = cs.param.CmndParamDict()
    cs.csuList_commonParamsSpecify(csuList, csParams)
    cs.argsparseBasedOnCsParams(csParams)
"
                              ))))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:orgItem/basic" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:orgItem/basic>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:orgItem/basic :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:orgItem/basic (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<type (or (plist-get <params :type) ""))
         (<title (or (plist-get <params :title) ""))
         (<comment (or (plist-get <params :comment) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement (s-lex-format "${<type}")))
             ($backStr (b:dblock:comeega|eolControls))
             )
        (if <comment
            (insert (s-lex-format "${$frontStr} ${<title} ${<comment} ${$backStr}"))
          (insert (s-lex-format "${$frontStr} ${<title} ${$backStr}"))
          )))

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:orgItem/section" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:orgItem/section>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:orgItem/section :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:orgItem/section (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<type (or (plist-get <params :type) "/Section/   "))
         (<title (or (plist-get <params :title) ""))
         (<comment (or (plist-get <params :comment) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement (s-lex-format "${<type}")))
             ($backStr (b:dblock:comeega|eolControls))
             )
        (if <comment
            (insert (s-lex-format "${$frontStr} *${<title}* ${<comment} ${$backStr}"))
          (insert (s-lex-format "${$frontStr} *${<title}* ${$backStr}"))
          )))

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))




;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:main/exposedSymbols" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:main/exposedSymbols>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:main/exposedSymbols :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:main/exposedSymbols (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<classes (or (plist-get <params :classes) '()))
         ($classesLength)
         )
    (bxPanel:params$effective)


    (setq $classesLength (length <classes))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format
          "${$frontStr} ~Exposed Symbols List Specification~ with /${$classesLength}/ in Classes List"))))

    (defun outCommentPostContent ()
      (defun exposedSymbolsEach (<each)
        (let* (
               ($moduleAsStrList (s-split "\\." <each))
               ($last (first (last $moduleAsStrList)))
               ($butlast (butlast $moduleAsStrList))
               ($joinedButlast (s-join "." $butlast))
               )
          (insert (s-lex-format "${$last} = ${<each} # exec/eval-ed as __main__.ClassName\n"))))

      (when <classes
        (insert "\n\n")
        (loop-for-each $each <classes
          (exposedSymbolsEach $each))
        ;; (insert "\n"))
      ))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:framework/imports" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:framework/imports>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:framework/imports :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:framework/imports (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
pyLibPure
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<basedOn (or (plist-get <params :basedOn) nil))
         ($classification)
         )
    (bxPanel:params$effective)

    (when (not (bound-and-true-p b:dblockControls))
      (blee:ppmm:mode-push major-mode)
      (bap:org/switch-to-org-mode)
      (blee:org:code-block/bufferParams)
      (blee:ppmm:mode-pop))

    (setq $classification (get 'b:dblockControls 'py3:cs:Classification))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format
          "** Imports Based On Classification=${$classification}"))))

    (defun outCommentPostContent ()
      (when (string= <basedOn "classification")
        (cond
         ((string= $classification "cs-mu")   ;; CS-Multi-Unit (main)
          (insert "\nfrom bisos import b\n")
          (insert "from bisos.b import cs\n")
          (insert "from bisos.b import b_io\n")
          (insert "\nimport collections")
          )
         ((string= $classification "cs-u")    ;; CS-Unit (Cmnds, Examples and Params)
          (insert "\nfrom bisos import b\n")
          (insert "from bisos.b import cs\n")
          (insert "from bisos.b import b_io\n")
          (insert "\nimport collections")
          )
         ((string= $classification "cs-lib")    ;; CS-Lib (Cmnds or no Cmnds)
          (insert "\nfrom bisos import b\n")
          (insert "from bisos.b import cs\n")
          (insert "from bisos.b import b_io\n")
          )
         ((string= $classification "bpf-lib")    ;; No Cmnds, but with CS imports
          (insert "\nfrom bisos import b\n")
          (insert "from bisos.b import cs\n")
          (insert "from bisos.b import b_io\n")
          )
         ((string= $classification "pyLibPure")
          (insert (s-lex-format "\n# No CS imports for ${$classification}"))
          )
         (t
          (message (s-lex-format "Unknown basedOn=${<basedOn}"))
          (insert (s-lex-format "\n# Problem: Unknown basedOn=${<basedOn}"))
          )
         )))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:file/dblockControls" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:file/dblockControls>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:file/dblockControls :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:file/dblockControls (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
pyLibPure
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<classification (or (plist-get <params :classification) nil))
         )
    (bxPanel:params$effective)

    (setq $classification (get 'b:dblockControls 'py3:cs:Classification))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (s-lex-format
"* [[elisp:(org-cycle)][| /Control Parameters Of This File/ |]] :: dblk ctrls classifications=${<classification}"))

      (insert (s-lex-format "
#+BEGIN_SRC emacs-lisp
(setq-local b:dblockControls t) ; (setq-local b:dblockControls nil)
(put 'b:dblockControls 'py3:cs:Classification \"${<classification}\") ; one of cs-mu, cs-u, cs-lib, bpf-lib, pyLibPure
#+END_SRC
#+RESULTS:
: cs-mu"))
      )

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent))))


(defalias 'org-dblock-write:b:python:cs:framework/importCmndsModules 'org-dblock-write:b:py3:cs:framework/importCmndsModules)

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:framework/importCmndsModules" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:framework/importCmndsModules>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:framework/importCmndsModules :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:framework/importCmndsModules (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<cmndsModules (or (plist-get <params :cmndsModules) ()))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "CsFrmWrk"))
             )
      (insert
         (s-lex-format "${$frontStr} ~g_importedCmndsModules~ ${<cmndsModules}"))))

    (defun outCommentPostContent ()
        (insert (s-lex-format "

g_importedCmndsModules = [       # Enumerate modules from which CMNDs become invokable\n"))
        (loop-for-each $each <cmndsModules
          (insert (s-lex-format "    '${$each}',\n")))
        (insert (s-lex-format "]\n")))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))



(defalias 'org-dblock-write:b:python:cs:module/cur_paramsAssign  'org-dblock-write:b:py3:cs:module/cur_paramsAssign)

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:module/cur_paramsAssign" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:module/cur_paramsAssign>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:module/cur_paramsAssign :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:module/cur_paramsAssign (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<curParsList (or (plist-get <params :curParsList) ()))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement "Currents"))
             )
      (insert
         (s-lex-format "${$frontStr} ~cur_examples~ ${<curParsList}"))))

    (defun outCommentPostContent ()
      (insert (s-lex-format "
_parNamesList = ["))

      (loop-for-each $each <curParsList
          (insert (s-lex-format " '${$each}',")))
      (insert (s-lex-format "]\n"))

      (insert (s-lex-format "\
if not (curParsDictValue := currentsConfig.curParsGetAsDictValue_wOp(_parNamesList, outcome=g_outcome).results): g_opSysExit(g_outcome)\n"))

      (loop-for-each $each <curParsList
          (insert (s-lex-format "cur_${$each} = curParsDictValue['${$each}']\n")))

      (insert (s-lex-format "\
def cur_examples():
    icm.ex_gExecMenuItem(execLine='bx-currents.cs')
    icm.ex_gExecMenuItem(execLine='bx-currents.cs -i usgCursParsGet')
    for each in _parNamesList:
        icm.ex_gExecMenuItem(execLine=f'bx-currents.cs -v 20 -i usgCursParsSet {each}={curParsDictValue[each]}')"))
        )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun  :defName "org-dblock-write:b:py3:cs:cmnd/classHead" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:cmnd/classHead>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:cmnd/classHead :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:cmnd/classHead (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Insert a CS Cmnd Class Header
Based on outCommentPreContent, bodyContent and outCommentPostContent.

When <extent==default no code is provided for args verification
When <extent==verify code is provided verify cmndArgs

When <ro==cli (default), ro Cmnd invocation is permitted and no code is added
When <ro==noCli there will be a class variable    rtInvConstraints = cs.rtInvoker.RtInvoker.new_noRo()
When <ro==cli+py An extra roSapPath=None is added as a pyInv and code is provided to process it
When <ro==py  is same as cli+py plus <ro=noCli
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<cmndName (or (plist-get <params :cmndName) ""))
         (<cmndType (or (plist-get <params :cmndType) ""))
         (<extent (or (plist-get <params :extent) "verify")) ;; or noVerify
         (<ro (or (plist-get <params :ro) "cli"))         ;; or none or cli+py or py
         (<comment (or (plist-get <params :comment) ""))
         (<parsMandListStr (or (plist-get <params :parsMand) ""))
         (<parsOptListStr (or (plist-get <params :parsOpt) ""))
         (<argsMin (or (plist-get <params :argsMin) 0))
         (<argsMax (or (plist-get <params :argsMax) 0))
         (<pyInvListStr (or (plist-get <params :pyInv) ""))
         ;;
         ($parsMandList (split-string <parsMandListStr))
         ($parsOptList (split-string <parsOptListStr))
         ($parsList (append $parsMandList $parsOptList))
         ($asFuncList (split-string <pyInvListStr))
         )

    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement (s-lex-format "CmndSvc-${<cmndType}")))
             ($backStr (b:dblock:comeega|eolControls))
             )
             (insert (s-lex-format "${$frontStr} <<${<cmndName}>> "))

             (unless (string= <comment "")
               (insert (s-lex-format " *${<comment}* ")))
             (unless (string= <extent "default")
               (insert (s-lex-format " =${<extent}= ")))
             (unless (string= <parsMandListStr "")
               (insert (s-lex-format "parsMand=${<parsMandListStr} ")))
             (unless (string= <parsOptListStr "")
               (insert (s-lex-format "parsOpt=${<parsOptListStr} ")))
             (unless (eq <argsMin 0)
               (insert (s-lex-format "argsMin=${<argsMin} ")))
             (unless (eq <argsMax 0)
               (insert (s-lex-format "argsMax=${<argsMax} ")))
             (unless (string= <ro "")
               (insert (s-lex-format "ro=${<ro} ")))
             (unless (string= <pyInvListStr "")
               (insert (s-lex-format "pyInv=${<pyInvListStr} ")))
             (insert (s-lex-format " ${$backStr}"))
             ))

    (defun outCommentPostContent ()
      (insert (s-lex-format "\nclass ${<cmndName}(cs.Cmnd):\n"))

      (insert (format "    cmndParamsMandatory = [ "))
      (mapcar (lambda (x)
                (insert (format "'%s', "
                                x )))
              $parsMandList)
      (insert (format "]\n"))

      (insert (format "    cmndParamsOptional = [ "))
      (mapcar (lambda (x)
                (insert (format "'%s', "
                         x )))
              $parsOptList)
      (insert (format "]\n"))

      (insert (s-lex-format "    cmndArgsLen = {'Min': ${<argsMin}, 'Max': ${<argsMax},}"))

      (when (or (string= <ro "noCli") (string= <ro "py"))
        (insert (s-lex-format "\n    rtInvConstraints = cs.rtInvoker.RtInvoker.new_noRo() # NO RO From CLI")))

      (insert (s-lex-format "

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,"))

      (mapcar (lambda (x) (insert (s-lex-format "
             ${x}: typing.Optional[str]=None,  # Cs Mandatory Param")))
              $parsMandList
              )

      (mapcar (lambda (x) (insert (s-lex-format "
             ${x}: typing.Optional[str]=None,  # Cs Optional Param")))
              $parsOptList
              )

      (if (not (equal <argsMax 0))
          (insert (format "
             argsList: typing.Optional[list[str]]=None,  # CsArgs")))

      (when (or (string= <ro "cli+py") (string= <ro "py"))
          (insert (format "
             roSapPath: typing.Optional[str]=None,  # RO pyInv Sap Path")))

      (mapcar (lambda (x)
                (insert (s-lex-format "
             ${x}: typing.Any=None,   # pyInv Argument")))
              $asFuncList)

      (insert (format "
    ) -> b.op.Outcome:\n"))

     (if (not (string= <comment ""))
          (insert (s-lex-format "\
        \"\"\"${<comment}\"\"\"")))

     (when (string= <extent "verify")
       (insert "
        callParamsDict = {")
       (mapcar (lambda (x)
                 (insert (s-lex-format "'${x}': ${x}, ")))
               $parsList)
       (insert (format "}\n"))

       (let (($argsListOrNone "argsList"))
         (when (equal <argsMax 0)
           (setq $argsListOrNone "None"))
         (insert (s-lex-format "\
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, ${$argsListOrNone}).isProblematic():
            return b_io.eh.badOutcome(cmndOutcome)")))
       (unless (equal <argsMax 0)
         (insert (s-lex-format "\
        cmndArgsSpecDict = self.cmndArgsSpec()"))))


     (when (or (string= <ro "cli+py") (string= <ro "py"))
       (insert (format "
        # Remotely invoke this same command and return cmndOutcome")))
     )

   (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:method/typing" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:method/typing>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:method/typing :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:method/typing (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 2)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<methodName (or (plist-get <params :methodName) ""))
         (<methodType (or (plist-get <params :methodType) ""))
         (<decorate (or (plist-get <params :deco) ""))
         (<comment (or (plist-get <params :comment) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement
                         (s-lex-format "Mtd-T-${<methodType}") :orgDepth <outLevel))
             ($eolStr (b:dblock:comeega|eolControls))
             )
      (insert
         (s-lex-format "${$frontStr} /${<methodName}/ deco=${<decorate} "))

      (if (not (string= <comment ""))
          (insert (s-lex-format " =${<comment}=")))

      (if (not (string= <decorate ""))
          (insert (s-lex-format " deco=${<decorate}")))

      (insert (s-lex-format " ${$eolStr}"))
      ))

    (defun outCommentPostContent ()
      (if (string= <decorate "default")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))

      (if (not (string= <decorate ""))
          (insert (format "\n    @%s\n" <decorate))
       (insert "\n"))

      (insert
       (format "    def %s(" <methodName))
      )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:method/args" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:method/args>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:method/args :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:method/args (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 2)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<methodName (or (plist-get <params :methodName) ""))
         (<methodType (or (plist-get <params :methodType) ""))
         (<decorate (or (plist-get <params :deco) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<retType (or (plist-get <params :retType) ""))
         (<argsListStr (or (plist-get <params :argsList) ""))
         ($argsList)
         )
    (bxPanel:params$effective)

    (setq $argsList (split-string <argsListStr))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement
                         (s-lex-format "Mtd-T-${<methodType}") :orgDepth <outLevel))
             ($eolStr (b:dblock:comeega|eolControls))
             )
      (insert
         (s-lex-format "${$frontStr} /${<methodName}/ deco=${<decorate} "))

      (if (not (string= <comment ""))
          (insert (s-lex-format " =${<comment}=")))

      (if (not (string= <decorate ""))
          (insert (s-lex-format " deco=${<decorate}")))

      (insert (s-lex-format " ${$eolStr}"))
      ))

    (defun outCommentPostContent ()
      (if (string= <decorate "default")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))

      (if (not (string= <decorate ""))
          (insert (format "\n    @%s\n" <decorate))
       (insert "\n"))

      (insert (format "    def %s(" <methodName))
      (when (not (string= <argsListStr ""))
        ;(insert "\n")
        (mapcar (lambda (x)
                  (insert
                   (format "%s, "
                           x
                           )))
                $argsList
              )
        )
      (insert (format "):"))
      )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:func/typing" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:func/typing>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:func/typing :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:func/typing (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<funcName (or (plist-get <params :funcName) ""))
         (<funcType (or (plist-get <params :funcType) ""))
         (<decorate (or (plist-get <params :deco) ""))
         (<comment (or (plist-get <params :comment) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement
                         (s-lex-format "F-T-${<funcType}") :orgDepth <outLevel))
             ($eolStr (b:dblock:comeega|eolControls))
             )
      (insert
         (s-lex-format "${$frontStr} /${<funcName}/ "))

      (if (not (string= <comment ""))
          (insert (s-lex-format " ${<comment}")))

      (if (not (string= <decorate ""))
          (insert (s-lex-format " deco=${<decorate}")))

      (insert (s-lex-format " ${$eolStr}"))
      ))

    (defun outCommentPostContent ()
      ""
      (if (string= <decorate "default")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))
      (if (string= <decorate "track")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))

      (if (not (string= <decorate ""))
          (insert (format "\n@%s\n" <decorate))
        (insert "\n")
        )

      (insert
       (format "def %s(" <funcName))
      )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:cs:func/args" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:cs:func/args>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:cs:func/args :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:cs:func/args (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<funcName (or (plist-get <params :funcName) ""))
         (<funcType (or (plist-get <params :funcType) ""))
         (<decorate (or (plist-get <params :deco) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<retType (or (plist-get <params :retType) ""))
         (<argsListStr (or (plist-get <params :argsList) ""))
         ($argsList)
         )
    (bxPanel:params$effective)

    (setq $argsList (split-string <argsListStr))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement
                         (s-lex-format "F-A-${<funcType}") :orgDepth <outLevel))
             ($eolStr (b:dblock:comeega|eolControls))
             )
      (insert
         (s-lex-format "${$frontStr} /${<funcName}/ deco=${<decorate} ${$eolStr}"))

      (if (not (string= <comment ""))
          (insert (s-lex-format " =${<comment}=")))

      (if (not (string= <decorate ""))
          (insert (s-lex-format " deco=${<decorate}")))

      (insert (s-lex-format " ${$eolStr}"))
      ))

    (defun outCommentPostContent ()
      ""
      (if (string= <decorate "default")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))
      (if (string= <decorate "track")
        (setq <decorate "cs.track(fnLoc=True, fnEntry=True, fnExit=True)"))

      (if (not (string= <decorate ""))
          (insert (format "\n@%s\n" <decorate))
        (insert "\n"))

      (insert (format "def %s(" <funcName))
      (when (not (string= <argsListStr ""))
        (insert "\n")
        (mapcar (lambda (x)
                  (insert
                   (format "    %s,\n"
                           x
                           )))
                $argsList
              )
        )
      (insert (format "):"))
      )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py3:class/decl" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py3:class/decl>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py3:class/decl :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py3:class/decl (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<className (or (plist-get <params :className) ""))
         (<classType (or (plist-get <params :classType) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<superClass (or (plist-get <params :superClass) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement
                         (s-lex-format "Cls-${<classType}") :orgDepth <outLevel))
             ($eolStr (b:dblock:comeega|eolControls))
             )
      (insert
         (s-lex-format "${$frontStr} /${<className}/ "))

      (if (string= <superClass "")
          (setq <superClass "object"))

      (insert (s-lex-format " superClass=${<superClass}"))

      (if (not (string= <comment ""))
          (insert (s-lex-format " =${<comment}=")))

      (insert (s-lex-format " ${$eolStr}"))
      ))

    (defun outCommentPostContent ()
      ""
      (insert
       (format "\nclass %s(%s):" <className <superClass))
      )

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-comeega-python)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
