;;; dblock-comeega-prog.el --- Dblocks for Programming File-Elements  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Dblocks for common programming comeega files --- proclamations, particulars, orgTopControls and endOfFile.
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
** This File: /bisos/git/auth/bxRepos/blee/env3/dblocks/dblock-comeega-prog.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
A library of dblock for b:prog:file/xxx comeega-file-elements.
** Relevant Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO complete fileName in particulars.
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

(require 'dblock-comeega-elisp)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Dblock Functions" :extraInfo "org-dblock-write:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Dblock Functions_: |]]  org-dblock-write:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:prog:file/proclamations" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:prog:file/proclamations>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:prog:file/proclamations :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:prog:file/proclamations (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<copyLeft (or (plist-get <params :copyLeft) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () ":copyLeft" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($result "")
             ($mode major-mode)
             )
        (cond
         ((string-equal "emacs-lisp-mode" $mode)
          (b:dblock:inserts|fromFile "./inserts/copyLeftPlus-blee.org"))
         ((string-equal "python-mode" $mode)
          (b:dblock:inserts|fromFile "./inserts/copyLeftPlus-bisos.org"))
         ((string-equal "latex-mode" $mode)
          (b:dblock:inserts|fromFile "./inserts/copyLeftPlus-bystar.org"))
         ((string-equal "sh-mode" $mode)
          (b:dblock:inserts|fromFile "./inserts/copyLeftPlus-bisos.org"))
         ((string-equal "org-mode" $mode)
          (b:dblock:inserts|fromFile "./inserts/copyLeftPlus-bystar.org"))
         (t
          (message (s-lex-format "Unknown major-mode: ${$mode}")))
         )))

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:prog:file/particulars" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:prog:file/particulars>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:prog:file/particulars :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:prog:file/particulars (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<authors (or (plist-get <params :authors) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () ":authors (\"pathToAuthorFile\")" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (s-lex-format "* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version\n"))
      (insert (s-lex-format "** This File: ${buffer-file-name}\n"))
      (loop-for-each $each <authors
        (b:dblock:inserts|fromFile $each)))

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:prog:file/orgTopControls" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:prog:file/orgTopControls>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:prog:file/orgTopControls :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:prog:file/orgTopControls (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
*** TODO Revisit each feature.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<extraParams (or (plist-get <params :extraParams) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () ":extraParams" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert "* [[elisp:(org-cycle)][| Controls |]] ::\
 [[elisp:(delete-other-windows)][(1)]] |\
 [[elisp:(show-all)][Show-All]] \
 [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] |\
 [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] |\
 [[elisp:(bx:org:run-me-eml)][RunEml]] |\
 [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]] \
 [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]")
      (insert "\n")
      (insert "** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]")
      )

    (defun outCommentPostContent ())

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))



;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:prog:file/endOfFile" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:prog:file/endOfFile>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:prog:file/endOfFile :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:prog:file/endOfFile (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<extraParams (or (plist-get <params :extraParams) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () ":extraParams" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert
       (s-lex-format
        "* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters")))

    (defun outCommentPostContent ()
      (let* (($cmntStr (b:major-mode:comment|lineStr)))
        (insert (s-lex-format "\n${$cmntStr} local variables:"))
        (insert (s-lex-format "\n${$cmntStr} no-byte-compile: t"))
        (insert (s-lex-format "\n${$cmntStr} end:"))))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Supporting Facilities" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Supporting Facilities_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:major-mode:comment|lineStr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:major-mode:comment|lineStr>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:major-mode:comment|lineStr (
;;;#+END:
                                     )
   " #+begin_org
** DocStr: Returns a line commentString based on major-mode (with no spaces).
#+end_org "
   (let* (
          ($result "")
          ($mode major-mode)
         )
     (cond ((string-equal "emacs-lisp-mode" $mode)
            (setq $result ";;;"))
           ((string-equal "python-mode" $mode)
            (setq $result "###"))
           ((string-equal "latex-mode" $mode)
            (setq $result "%%%"))
           ((string-equal "sh-mode" $mode)
            (setq $result "###"))
           ((string-equal "org-mode" $mode)
            (setq $result "###"))
           (t
            (message (s-lex-format "Unknown major-mode: ${$mode}")))
           )))

(orgCmntBegin "
** Basic Usage: Based on mode
#+BEGIN_SRC emacs-lisp
(b:major-mode:comment|lineStr)
#+END_SRC

#+RESULTS:
: ###

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:dblock:comeega|frontElement" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:dblock:comeega|frontElement>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:dblock:comeega|frontElement (
;;;#+END:
                                         <elementType
                                         &key (orgDepth 1)
                                         )
   " #+begin_org
** DocStr: Returns a string with comeega front controls
#+end_org "
  (let (($orgDepthStr (make-string orgDepth ?*)))
   (format
    "%s  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ \
_[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ \
[[elisp:(outline-show-branches+toggle)][|=]] \
[[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  %-10s \
[[elisp:(outline-show-subtree+toggle)][||]]"
         $orgDepthStr <elementType)))

(orgCmntBegin "
** Basic Usage: Based on mode
#+BEGIN_SRC emacs-lisp
(b:dblock:comeega|frontElement (symbol-name 'some) :orgDepth 2)
;; (b:dblock:comeega|frontElement (symbol-name 'some))
#+END_SRC

#+RESULTS:
: *  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  some       [[elisp:(outline-show-subtree+toggle)][||]]

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:dblock:comeega|eolControls" :comment "End-Of-Line String" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:dblock:comeega|eolControls>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:dblock:comeega|eolControls (
;;;#+END:
                                       )
   " #+begin_org
** DocStr: Returns a string with comeega end-of-line controls
#+end_org "
   (s-lex-format " [[elisp:(org-cycle)][| ]]"))

(orgCmntBegin "
** Basic Usage: Based on mode
#+BEGIN_SRC emacs-lisp
(b:dblock:comeega|eolControls)
#+END_SRC

#+RESULTS:
:   [[elisp:(org-cycle)][| ]]

" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-comeega-prog)
;;;#+END:


;;;#+BEGINNOT: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
