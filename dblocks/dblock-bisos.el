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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bisos:sys|prepHeading" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bisos:sys|prepHeading>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bisos:sys|prepHeading (
;;;#+END:
                                <outLevel
                                )
   " #+begin_org
** DocStr: Insert  <outLevel + 1 number of * s at the begining of the line.
#+end_org "
  (insert "\n")
  (insert (s-repeat (+ <outLevel 1) "*"))
  (insert " "))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:bisos:sys|prepHeading 2)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bisos:sys|cmndsDivider" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bisos:sys|cmndsDivider>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bisos:sys|cmndsDivider (
;;;#+END:
                                )
   " #+begin_org
** DocStr: Insert a divider.
#+end_org "
     (insert " || "))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:bisos:sys|cmndsDivider)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/guestPlatform" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/guestPlatform>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/guestPlatform :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/guestPlatform (<params)
;;;#+END:
   " #+begin_org
** DocStr: Provide access and information to a guest platfrom.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         ;;
         (<sep (or (plist-get <params :sep) nil))    ;; seperator line
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         ;;
         (<bpo (or (plist-get <params :bpo) nil))
         (<sysName (or (plist-get <params :sysName) nil))
         (<ipAddr (or (plist-get <params :ipAddr) nil))
         (<user (or (plist-get <params :user) "bystar"))
         (<curHost (or (plist-get <params :curHost) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<extrasSection (or (plist-get <params :extrasSection) nil))
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- Guest-${<sysStage}/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ in [[host:${<curHost}]]")
                       :inDblock t
                       :rawTitle t
                       :sep <sep
                       :dense t
                       ))

        (insert (s-lex-format "${$sectionStr}"))
        (insert (s-lex-format "|| ~${<extraInfo}~"))
      ))

    (defun outCommentPostContent ()
      (let (
            ($sectionStr)
            )
        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ping -c 3 ${<ipAddr}\")][ping3]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -font 10x20\")][ssh+xterm]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e bleeclient -i emacsLocalAttachFrame\")][EmacsAttach]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e emacs\")][ssh+xterm+emacs]]"))
        ;;(b:bisos:sys|prepHeading <outLevel)
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=bystar -p remoteUser=bystar -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (when <extrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "") ;; anchor
                       (s-lex-format "")
                       :inDblock t
                       :rawTitle nil
                       :sep nil
                       :dense t
                       ))
          (insert "\n")
          (insert (s-lex-format "${$sectionStr}")))
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
** DocStr: Provide access and information to a guest platfrom.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         ;;
         (<sep (or (plist-get <params :sep) nil))    ;; seperator line
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         ;;
         (<bpo (or (plist-get <params :bpo) nil))
         (<sysName (or (plist-get <params :sysName) nil))
         (<ipAddr (or (plist-get <params :ipAddr) nil))
         (<label (or (plist-get <params :label) nil))
         (<user (or (plist-get <params :user) "bystar"))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<extrasSection (or (plist-get <params :extrasSection) nil))
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- HOST-${<sysStage}/ -- ${<label}") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ loc:${<loc}")
                       :inDblock t
                       :rawTitle t
                       :sep <sep
                       :dense t
                       ))

        (insert (s-lex-format "${$sectionStr}"))
        (insert (s-lex-format "|| ~${<extraInfo}~"))
      ))

    (defun outCommentPostContent ()
      (let (
            ($sectionStr)
            )
        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ping -c 3 ${<ipAddr}\")][ping3]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -font 10x20\")][ssh+xterm]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e bleeclient -i emacsLocalAttachFrame\")][EmacsAttach]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e emacs\")][ssh+xterm+emacs]]"))
        ;;(b:bisos:sys|prepHeading <outLevel)
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=bystar -p remoteUser=bystar -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (when <extrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "") ;; anchor
                       (s-lex-format "")
                       :inDblock t
                       :rawTitle nil
                       :sep nil
                       :dense t
                       ))
          (insert "\n")
          (insert (s-lex-format "${$sectionStr}")))
        ))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/purePlatform" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/purePlatform>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/purePlatform :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/purePlatform (<params)
;;;#+END:
   " #+begin_org
** DocStr: Provide access and information to a pure platfrom. No virtualization.
TODO: has not been tested.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         ;;
         (<sep (or (plist-get <params :sep) nil))    ;; seperator line
         (<extraInfo (or (plist-get <params :extraInfo) nil))
         ;;
         (<bpo (or (plist-get <params :bpo) nil))
         (<sysName (or (plist-get <params :sysName) nil))
         (<ipAddr (or (plist-get <params :ipAddr) nil))
         (<label (or (plist-get <params :label) nil))
         (<user (or (plist-get <params :user) "bystar"))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<extrasSection (or (plist-get <params :extrasSection) nil))
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- HOST-${<sysStage}/ -- ${<label}") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ loc:${<loc}")
                       :inDblock t
                       :rawTitle t
                       :sep <sep
                       :dense t
                       ))

        (insert (s-lex-format "${$sectionStr}"))
        (insert (s-lex-format "|| ~${<extraInfo}~"))
      ))

    (defun outCommentPostContent ()
      (let (
            ($sectionStr)
            )
        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ping -c 3 ${<ipAddr}\")][ping3]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -font 10x20\")][ssh+xterm]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e bleeclient -i emacsLocalAttachFrame\")][EmacsAttach]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr} -f xterm -hold -e emacs\")][ssh+xterm+emacs]]"))
        ;;(b:bisos:sys|prepHeading <outLevel)
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=bystar -p remoteUser=bystar -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (when <extrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "") ;; anchor
                       (s-lex-format "")
                       :inDblock t
                       :rawTitle nil
                       :sep nil
                       :dense t
                       ))
          (insert "\n")
          (insert (s-lex-format "${$sectionStr}")))
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
