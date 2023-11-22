;;; dblock-bisos.el --- DBlocks for Elisp File-Elements  -*- lexical-binding: t; -*-

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

(require 'bx-lcnt-lib)
(require 'dblock-governor)
(load "time-stamp")
(require 'loop)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Host and Guest Systems and BISOS Platforms" :extraInfo "b:lcnt:matex:felem:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Host and Guest Systems and BISOS Platforms_: |]]  b:lcnt:matex:felem:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/guestPlatform" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/guestPlatform>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/guestPlatform :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/guestPlatform (<params)
;;;#+END:
   " #+begin_org
** DocStr:
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeContinue"))
         ;;
         (<outLevel (or (plist-get <params :outLevel) 2)) ;; Outline Level
         (<sep (or (plist-get <params :sep) nil))    ;; seperator line
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         ;;
         (<sysName (or (plist-get <params :sysName) nil))
         (<ipAddr (or (plist-get <params :ipAddr) nil))
         (<curHost (or (plist-get <params :curHost) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))
         (<status (or (plist-get <params :status) nil))
         )

    (bxPanel:params$effective)

    (defun helpLine ()
      ":sysName \"platformName\""
      )

    (defun outCommentPreContent ())
    (defun bodyContentPlus ())

    (defun bodyContent ()
      ""
      (let* (
             ($sectionStr)
             )
        (setq $sectionStr (blee:panel:foldingSection
                       <outLevel
                       (s-lex-format "${<abode} (${<ipAddr}) -- Guest-${<sysStage}") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -font 10x20\")][ssh+xterm]] - ~${<status}~ in [[${<curHost}]]")
                       :inDblock t
                       :rawTitle nil
                       :sep <sep
                       ))

        (insert (s-lex-format "${$sectionStr}"))
        (insert (s-lex-format "|| ~${<extraInfo}~"))
      ))

    (defun prepHeading ()
        (insert "\n")
        (insert (s-repeat (+ <outLevel 1) "*"))
        (insert " "))

    (defun outCommentPostContent ()
      (let (($moduleName (file-name-sans-extension (bx:buf-fname)))
            ($version (format-time-string "%Y%m%d%M%S"))
            )
        (prepHeading)
        (insert (s-lex-format "emacsAttach"))

        ;; mmaSshAdmin.sh -p localUser=lsipusr -p remoteUser=lsipusr -p remoteHost=192.168.0.199 -i authorizedKeysUpdate

        ))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/hostPlatform" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/hostPlatform>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/hostPlatform :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/hostPlatform (<params)
;;;#+END:
   " #+begin_org
** DocStr:
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeContinue"))
         ;;
         (<outLevel (or (plist-get <params :outLevel) 2)) ;; Outline Level
         (<sep (or (plist-get <params :sep) nil))    ;; seperator line
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         ;;
         (<sysName (or (plist-get <params :sysName) nil))
         (<ipAddr (or (plist-get <params :ipAddr) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; System, BISOS Platform, BISOS Loaded
         (<status (or (plist-get <params :status) nil))
         )

    (bxPanel:params$effective)

    (defun helpLine ()
      ":sysName \"platformName\""
      )

    (defun outCommentPreContent ())
    (defun bodyContentPlus ())

    (defun bodyContent ()
      ""
      (let* (
             ($sectionStr)
             )
        (setq $sectionStr (blee:panel:foldingSection
                       <outLevel
                       (s-lex-format "${<abode} (${<ipAddr}) -- Host-${<sysStage}") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -font 10x20\")][ssh+xterm]] - ~${<status}~")
                       :inDblock t
                       :rawTitle nil
                       :sep <sep
                       ))

        (insert (s-lex-format "${$sectionStr}"))
        (insert (s-lex-format "|| ~${<extraInfo}~"))
      ))

    (defun prepHeading ()
        (insert "\n")
        (insert (s-repeat (+ <outLevel 1) "*"))
        (insert " "))

    (defun outCommentPostContent ()
      (let (($moduleName (file-name-sans-extension (bx:buf-fname)))
            ($version (format-time-string "%Y%m%d%M%S"))
            )
        (prepHeading)
        (insert (s-lex-format "emacsAttach"))

        ;; mmaSshAdmin.sh -p localUser=lsipusr -p remoteUser=lsipusr -p remoteHost=192.168.0.199 -i authorizedKeysUpdate

        ))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-bisos)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
