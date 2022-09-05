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

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:python:file/workbench" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:python:file/workbench>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:python:file/workbench :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:python:file/workbench (<params)
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:python:file/particulars-csInfo" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:python:file/particulars-csInfo>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:python:file/particulars-csInfo :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:python:file/particulars-csInfo (<params)
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:python:cs:framework/main" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:python:cs:framework/main>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:python:cs:framework/main :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:python:cs:framework/main (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<csInfo (or (plist-get <params :csInfo) "icmInfo"))
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
         (s-lex-format "${$frontStr} ~g_icmMain~ (${<csInfo}, _${<noCmndEntry}_, ${<extraParamsHook}, ${<importedCmndsModules})"))))

    (defun outCommentPostContent ()
        (insert
         (s-lex-format "

if __name__ == '__main__':
    icm.g_icmMain(
        icmInfo=${<csInfo},
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
         (s-lex-format "${$frontStr} ~g_icmMain~ (${<csInfo}, _${<noCmndEntry}_, ${<extraParamsHook}, ${<importedCmndsModules})"))))

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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:py:cs:framework/csuListProc" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:py:cs:framework/csuListProc>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:py:cs:framework/csuListProc :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:py:cs:framework/csuListProc (<params)
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
          "${$frontStr} ~Process CSU List~ with ${$csuListLength} in csuList pyImports=${<pyImports} csuImports=${<csuImports} csuParams=${<csuParams}"))))

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

;; (s-split "-" "one-two-three")

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:python:cs:framework/importCmndsModules" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:python:cs:framework/importCmndsModules>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:python:cs:framework/importCmndsModules :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:python:cs:framework/importCmndsModules (<params)
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

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:python:cs:module/cur_paramsAssign" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:python:cs:module/cur_paramsAssign>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:python:cs:module/cur_paramsAssign :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:python:cs:module/cur_paramsAssign (<params)
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
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<cmndName (or (plist-get <params :cmndName) ""))
         (<cmndType (or (plist-get <params :cmndType) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<parsMandListStr (or (plist-get <params :parsMand) ""))
         (<parsOptListStr (or (plist-get <params :parsOpt) ""))
         (<argsMin (or (plist-get <params :argsMin) ""))
         (<argsMax (or (plist-get <params :argsMax) ""))
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
             )
             (insert (s-lex-format "${$frontStr} <<${<cmndName}>>"))

             (if (not (string= <comment ""))
                 (insert (format " =%s=" <comment)))

             (insert
              (s-lex-format
               "parsMand=${<parsMandListStr} parsOpt=${<parsOptListStr} argsMin=${<argsMin} argsMax=${<argsMax} pyInv=${<pyInvListStr}"
               ))))
    
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

      (insert (s-lex-format "

    @io.track.subjectToTracking(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: bpf.op.Outcome,"))

      (mapcar (lambda (x)
                (insert (s-lex-format "
             ${x}: typing.Optional[str]=None,  # Cs Mandatory Param")))
              $parsMandList
              )

      (mapcar (lambda (x)
                (insert (s-lex-format "
             ${x}: typing.Optional[str]=None,  # Cs Optional Param")))
              $parsOptList
              )

      (if (not (equal <argsMax 0))
          (insert (format "
             argsList: typing.Optional[list[str]]=None,  # CsArgs")))

      (mapcar (lambda (x)
                (insert (s-lex-format "
             ${x}: typing.Any=None,   # pyInv Argument")))
              $asFuncList)

      (insert (format "
    ) -> bpf.op.Outcome:\n"))

     (if (not (string= <comment ""))
          (insert (s-lex-format "\
        \"\"\"${<comment}\"\"\"")))

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
            return io.eh.badOutcome(cmndOutcome)"))
        ))

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
