;;; dblock-bisos-site.el --- DBlocks for BISOS systems and networks  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: DBlocks for BISOS systems and networks.
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
** This File: /bisos/blee/env3/dblocks/dblock-bisos.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| <<Description>> |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/platform/_nodeBase_/fullUsagePanel-en.org][BISOS Systems]]

The scope of this file is  BISOS systems and networks.

Dblocks for the following types of systems is supported:
|--------------------+--------------------------------------|
| sys:platform:host  | BISOS Platform as Host VM            |
| sys:platform:guest | BISOS Platform as Guest VM           |
| sys:platfrom:pure  | BISOS Platform with no Virtualiztion |
| sys:chromeBook     | Google ChromeBook                    |
| sys:android        | Android Phone                        |
| sys:alien:host     | Windows                              |
| sys:alien:guest    | Windows                              |
| sys:unix:guest     | Redhat, etc                          |
| sys:dedicted       | Printers, scanners, PDUs             |
| sys:vmImage        | Not running. Disk file               |
| sys:disnet         | Device with no IP capabilities, UPS  |
|--------------------+--------------------------------------|

For systems, Parameters Default and  Description:
(default is the value when not specified which can be different for each  sys:)

|----------+---------+---------------------------------------------|
| field    | default | description                                 |
|----------+---------+---------------------------------------------|
| bpo      | nil     | System bpo that may also point to device    |
| sysName  | nil     | As it appears in hostname and dns           |
| ipAddr   | nil     | Address                                     |
| user     | bystar  | Username for ssh                            |
| passwd   | nil     | When nil, sshkeys are used                  |
| host     | nil     | Points to host. Only valid in guest         |
| abode    | I-Rim   | One of inner-rim, outer-rim,  exp-rim, ring |
| sysStage | BSP     | One of SYS, BP, BSP                         |
| status   | dev     | One of dev, sealed,                         |
| phoneNu  | nil     | Only applies to Android                     |
| osVer    | Deb11   | Debian 11/12, Android xx                    |
| bisosVer | 3.0     | Release Nu                                  |
| results  | all     | As per blee:bxPanel:runResult               |
|----------+---------+---------------------------------------------|

For networks, b:bisos:net/reports Parameters Default and  Description:

|---------------+---------+---------------------------------------------|
| field         | default | description                                 |
|---------------+---------+---------------------------------------------|
| bpo           | nil     | System bpo that may also point to device    |
| netName       | nil     | privA                                       |
| cidrAddr      | nil     | Eg, 192.168.0.0/24                          |
| defaultRouter | nil     | ipAddr of default router                    |
| dhcpServer    | nil     | ipAddr of dhcpServer                        |
|---------------+---------+---------------------------------------------|


** Relevant Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** +
*** DONE [#A]  Add a general purpose default parameter value instead of (or nil) model
SCHEDULED: <2023-11-29 Wed>
*** DONE [#B] Add results as param. Apply it to run results.
*** DONE Add facter to all.
*** -
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bisos|sshpassStr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bisos|sshpassStr>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bisos|sshpassStr (
;;;#+END:
                           <passwd
                           )
   " #+begin_org
** DocStr: Return a string that can be used in front of ssh using sshpass.
#+end_org "
   (let* (($result "")
          )
     (when <passwd
       (setq $result (s-lex-format "sshpass -p ${<passwd} ")))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(progn
   (b:bisos|sshpassStr nil)
   (b:bisos|sshpassStr (symbol-name 'somePasswd))
   )
#+END_SRC

#+RESULTS:
: sshpass -p somePasswd

" orgCmntEnd)


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
because of inserts, you can not eval this in org-mode
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
because of inserts, you can not eval this in org-mode
(b:bisos:sys|cmndsDivider)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "BISOS Site Systems (Pure, Host and Guest  Platforms - Alien, Unix)" :extraInfo "b:lcnt:matex:felem:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _BISOS Site Systems (Pure, Host and Guest  Platforms - Alien, Unix)_: |]]  b:lcnt:matex:felem:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/platformGuest" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/platformGuest>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/platformGuest :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/platformGuest (<params)
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
         (<user (plistGetOrDef <params :user "bystar"))
         (<passwd (plistGetOrDef <params :passwd nil))
         (<host (or (plist-get <params :host) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         (<results (plistGetOrDef <params :results "all"))
         (<osVer (plistGetOrDef <params :osVer "Deb11"))
         (<bisosVer (plistGetOrDef <params :bisosVer "3.0"))
         ;;
         ($sshDest <ipAddr)
         ($outLevelStars (s-repeat (1+ <outLevel) "*"))
         ($sshpassStr (b:bisos|sshpassStr <passwd))
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
                       (s-lex-format "=Guest-${<sysStage} -- ${<abode}= *(${<ipAddr})*") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ in host:[[${<host}]]")
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

        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "Assumed: osVer=${<osVer}  bisosVer=${<bisosVer}"))

        (insert "\n")

        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "${$sshpassStr}ssh ${$sshDest} facter -y | yaml-to-org | sed -e 's/^/${$outLevelStars}/'")
          :results <results
          :comment ""
          :afterComment ""))

        (unless <noExtrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "C@${<sysName}") ;; anchor
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/platformHost" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/platformHost>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/platformHost :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/platformHost (<params)
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
         (<user (plistGetOrDef <params :user "bystar"))
         (<passwd (plistGetOrDef <params :passwd nil))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         (<results (plistGetOrDef <params :results "all"))
         (<osVer (plistGetOrDef <params :osVer "Deb11"))
         (<bisosVer (plistGetOrDef <params :bisosVer "3.0"))
         ;;
         ($sshDest <ipAddr)
         ($outLevelStars (s-repeat (1+ <outLevel) "*"))
         ($sshpassStr (b:bisos|sshpassStr <passwd))
         )

    (bxPanel:params$effective)
    (when <user
      (setq $sshDest (s-lex-format "${<user}@${<ipAddr}")))

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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- HOST-${<sysStage}/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[${<label}]] [[elisp:(lsip-local-run-command \"ssh -X ${$sshDest}\")][ssh]] - ~${<status}~ loc:${<loc}")
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
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${$sshDest} -f xterm -font 10x20\")][ssh+xterm]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${$sshDest} -f xterm -hold -e bleeclient -i emacsLocalAttachFrame\")][EmacsAttach]]"))
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ssh -X ${$sshDest} -f xterm -hold -e emacs\")][ssh+xterm+emacs]]"))
        ;;(b:bisos:sys|prepHeading <outLevel)
        (b:bisos:sys|cmndsDivider)
        (insert (s-lex-format
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=bystar -p remoteUser=${<user} -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "Assumed: osVer=${<osVer}  bisosVer=${<bisosVer}"))

        (insert "\n")

        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "${$sshpassStr}ssh ${$sshDest} facter -y | yaml-to-org | sed -e 's/^/${$outLevelStars}/'")
          :results <results
          :comment ""
          :afterComment ""))

        (insert "\n")

        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "nmap ${<ipAddr}")
          :results <results
          :comment ""
          :afterComment ""))

        (insert "\n")

        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "${$sshpassStr}ssh ${$sshDest} virsh --connect qemu:///system list --all")
          :results "all"
          :comment ""
          :afterComment ""))

        (unless <noExtrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "C@${<sysName}") ;; anchor
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/platformPure" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/platformPure>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/platformPure :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/platformPure (<params)
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
         (<user (plistGetOrDef <params :user "bystar"))
         (<passwd (plistGetOrDef <params :passwd nil))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         (<results (plistGetOrDef <params :results "all"))
         (<osVer (plistGetOrDef <params :osVer "Deb11"))
         (<bisosVer (plistGetOrDef <params :bisosVer "3.0"))
         ;;
         ($sshDest <ipAddr)
         ($outLevelStars (s-repeat (1+ <outLevel) "*"))
         ($sshpassStr (b:bisos|sshpassStr <passwd))
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
                       (s-lex-format " ~PURE-${<sysStage} ${<abode}~ *(${<ipAddr})*") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[${<label}]] [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ loc:${<loc}")
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
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=${<user} -p remoteUser=${<user} -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "Assumed: osVer=${<osVer}  bisosVer=${<bisosVer}"))

        (insert "\n")

        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "${$sshpassStr}ssh ${$sshDest} facter -y | yaml-to-org | sed -e 's/^/${$outLevelStars}/'")
          :results <results
          :comment ""
          :afterComment ""))
        
        (unless <noExtrasSection
          (setq $sectionStr (blee:panel:foldingSection
                       (+ <outLevel 1)
                       (s-lex-format "Extra Information") ;;  title
                       (s-lex-format "C@${<sysName}") ;; anchor
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/chromebook" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/chromebook>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/chromebook :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/chromebook (<params)
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
         (<user (plistGetOrDef <params :user "bystar"))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         (<results (plistGetOrDef <params :results "all"))
         (<osVer (plistGetOrDef <params :osVer "Deb11"))
         (<bisosVer (plistGetOrDef <params :bisosVer "3.0"))
         ;;
         ($sshDest <ipAddr)
         ($outLevelStars (s-repeat (1+ <outLevel) "*"))
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
                       (s-lex-format "*(${<ipAddr})* /ChromeBook-${<sysStage}/ -- ${<label}") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " ~${<status}~")
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
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=${<user} -p remoteUser=${<user} -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "Assumed: osVer=${<osVer}  bisosVer=${<bisosVer}"))

        (unless <noExtrasSection
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

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/android" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/android>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/android :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/android (<params)
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
         (<phoneNu (or (plist-get <params :phoneNu) nil))
         (<label (or (plist-get <params :label) nil))
         (<user (plistGetOrDef <params :user "bystar"))
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         (<results (plistGetOrDef <params :results "all"))
         (<osVer (plistGetOrDef <params :osVer "Deb11"))
         (<bisosVer (plistGetOrDef <params :bisosVer "3.0"))
         ;;
         ($sshDest <ipAddr)
         ($outLevelStars (s-repeat (1+ <outLevel) "*"))
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
                       (s-lex-format "*(${<ipAddr})* /${<phoneNu} -- Android/ -- ${<label}") ;;  title
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
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=${<user} -p remoteUser=${<user} -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (b:bisos:sys|prepHeading <outLevel)
        (insert (s-lex-format "Assumed: osVer=${<osVer}  bisosVer=${<bisosVer}"))

        (unless <noExtrasSection
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/alienHost" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/alienHost>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/alienHost :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/alienHost (<params)
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
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<sysStage (or (plist-get <params :sysStage) nil))  ;; One of SYS, BP, BSP
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
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
                 "[[elisp:(lsip-local-run-command \"lcaSshAdmin.sh  -v -n showRun -p localUser=${<user} -p remoteUser=${<user} -p remoteHost=${<ipAddr}  -i authorizedKeysUpdate\")][authorizedKeysUpdate]]"))

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (unless <noExtrasSection
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



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/alienGuest" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/alienGuest>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/alienGuest :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/alienGuest (<params)
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
         (<host (or (plist-get <params :host) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- Alien-Guest/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format "  ~${<status}~ in host:[[${<host}]]")
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

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (unless <noExtrasSection
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/unixGuest" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/unixGuest>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/unixGuest :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/unixGuest (<params)
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
         (<host (or (plist-get <params :host) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         ($sshDest <ipAddr)
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- Unix-Guest/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " [[elisp:(lsip-local-run-command \"ssh -X ${<ipAddr}\")][ssh]] - ~${<status}~ in host:[[${<host}]]")
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

        (unless <noExtrasSection
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

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/dedicated" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/dedicated>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/dedicated :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/dedicated (<params)
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
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         ($sshDest <ipAddr)
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- Dedicated/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " ~${<status}~ in loc:${<loc}")
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

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (unless <noExtrasSection
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/vmImage" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/vmImage>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/vmImage :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/vmImage (<params)
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
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         ($sshDest <ipAddr)
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- VM-Image/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " ~${<status}~ in loc:${<loc}")
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

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (unless <noExtrasSection
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


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:sys/disnet" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:sys/disnet>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:sys/disnet :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:sys/disnet (<params)
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
         (<loc (or (plist-get <params :loc) nil))
         (<abode (or (plist-get <params :abode) nil))
         (<status (or (plist-get <params :status) nil)) ;; dev, sealed, etc
         (<noExtrasSection (or (plist-get <params :noExtrasSection) nil))
         ($sshDest <ipAddr)
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
                       (s-lex-format "*(${<ipAddr})* /${<abode} -- DisNetworked/") ;;  title
                       (s-lex-format "${<sysName}") ;; anchor
                       (s-lex-format " ~${<status}~ in loc:${<loc}")
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

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (unless <noExtrasSection
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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "BISOS Site Network" :extraInfo "b:lcnt:matex:felem:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _BISOS Site Network_: |]]  b:lcnt:matex:felem:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:bisos:net/reports" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:bisos:net/reports>> ~advice=(bx:dblock:control|wrapper)~ --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:bisos:net/reports :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:bisos:net/reports (<params)
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
         (<bpo (plistGetOrDef <params :bpo nil))
         (<netName (plistGetOrDef <params :netName nil))
         (<cidrBlock (plistGetOrDef <params :cidrBlock nil))
         (<defaultRouter (plistGetOrDef <params :defaultRouter nil))
         (<dhcpServer (plistGetOrDef <params :dhcpServer nil))
         (<abode (plistGetOrDef <params :abode nil))
         (<results (plistGetOrDef <params :results "all"))
         (<extrasSection (plistGetOrDef <params :extrasSection t))
         ;;
         ($subnet <cidrBlock)
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
                       (s-lex-format "*(${<cidrBlock})* /${<abode} -- / -- ${<netName}") ;;  title
                       (s-lex-format "results=${<results}") ;; anchor
                       (s-lex-format " Net Details")
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
        (insert (s-lex-format "[[elisp:(lsip-local-run-command \"ping -c 3 ${<defaultRouter}\")][ping3 Router]]"))
        (b:bisos:sys|cmndsDivider)

        (when <bpo
          (b:bisos:sys|prepHeading <outLevel)
          (insert (s-lex-format "BPO: ${<bpo}")))

        (insert "\n")
        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "sudo arp-scan  ${<cidrBlock}")
          :results <results
          :comment ""
          :afterComment ""))

        (insert "\n")
        (org-dblock-write:blee:bxPanel:runResult
         (list
          :outLevel (+ <outLevel 1)
          :command (s-lex-format "arp -a")
          :results "all"
          :comment ""
          :afterComment ""))

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
(provide 'dblock-bisos-site)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
