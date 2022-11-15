;;; dblock-comeega-elisp.el --- DBlocks for Elisp File-Elements  -*- lexical-binding: t; -*-

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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "dblock Frame Head Functions - Begin" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _dblock Frame Head Functions - Begin_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame:begin/blank" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame:begin/blank>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame:begin/blank :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame:begin/blank (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Beamer and reveal slide style plain/regular, can be different. Label is used to
locate the image in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.

Provenance: Taken from full-latex-frame-video-begin

Implementation:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "Frame:begin-blank"))
     (setq <params (plist-put <params ':options "plain"))
     (setq <params (plist-put <params ':audio "UnSpecified"))
     (setq <params (plist-put <params ':fragile "true"))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment/begin <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment/begin <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame:begin/plain" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame:begin/plain>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame:begin/plain :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame:begin/plain (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Beamer and reveal slide style plain/regular, can be different. Label is used to
locate the image in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.

Provenance: Taken from full-latex-frame-video-begin

Implementation:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "Frame:begin-plain"))
     (setq <params (plist-put <params ':options "plain"))
     (setq <params (plist-put <params ':audio "labeled"))
     (setq <params (plist-put <params ':fragile "true"))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment/begin <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment/begin <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame:begin/regular" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame:begin/regular>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame:begin/regular :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame:begin/regular (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Insert the Beamer slide image into corresponding Reveal Slide.
Beamer and reveal slide style plain/basic, can be different. Label is used to
locate the image in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.

Provenance: Taken from full-latex-frame-video-begin

Implementation:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 5)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "Frame:begin-regular"))
     ;; regular has no options
     (setq <params (plist-put <params ':audio "labeled"))
     (setq <params (plist-put <params ':fragile "true"))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment/begin <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment/begin <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:inComment/begin" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:inComment/begin>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:inComment/begin (
;;;#+END:
                                                   <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 5)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<frameType (or (plist-get <params :type) "UnSpecified"))
         (<frameTitle (or (plist-get <params :title) "UnSpecified"))
         (<frameLabel (or (plist-get <params :label) "UnSpecified"))
         (<comment (or (plist-get <params :comment) ""))
         ($frontStr (b:dblock:comeega|frontElement (s-lex-format "/${<frameType}/") :orgDepth <outLevel))
         ($backStr (b:dblock:comeega|eolControls))
         )

    (when (string-equal <frameLabel  "auto")
        (setq <frameLabel (str:spacesElim <frameTitle))
        )
    (insert (s-lex-format "${$frontStr} *Label=${<frameLabel}* ${<frameTitle} -- ${<comment}\n"))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:outComment/begin" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:outComment/begin>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:outComment/begin (
;;;#+END:
                                                  <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<mode (or (plist-get <params :mode) "auto"))
         (<frameType (or (plist-get <params :type) "UnSpecified"))
         (<frameTitle (or (plist-get <params :title) "UnSpecified"))
         (<frameSubtitle (or (plist-get <params :subtitle) "UnSpecified"))
         (<frameLabel (or (plist-get <params :label) "UnSpecified"))
         (<frameFragile (or (plist-get <params :fragile) "UnSpecified"))
         (<frameOptions (or (plist-get <params :options) "UnSpecified"))
         (<frameAudio (or (plist-get <params :audio) "UnSpecified"))
         (<frameTransition (or (plist-get <params :transition) "UnSpecified"))
         (<frameOnLeave (or (plist-get <params :onLeave) "UnSpecified"))
         ($frameOptionsStr "")
         ($frameLabelEncoded "")
         ($frameTitleEncoded "")
         ($frameSubtitleEncoded "")
         )

    (setq $frameTitleEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameTitle)))
    (setq $frameSubtitleEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameSubtitle)))

    ;;
    ;; Combine frame options into frameOptionsStr
    ;;
    (when (equal <frameFragile "true")
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr "fragile")))

    (when (not (equal <frameOptions "UnSpecified"))
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr <frameOptions)))

    (when (string-equal <frameLabel  "auto")
      (setq <frameLabel (str:spacesElim <frameTitle)))

    (setq $frameLabelEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameLabel)))

    (when (not (equal <frameLabel "UnSpecified"))
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr "label=" <frameLabel)))

    (if (not (string= "" $frameOptionsStr))
        (setq $frameOptionsStr (concat "[" $frameOptionsStr "]")))

    (insert (s-lex-format "\n
\\begin{frame}${$frameOptionsStr}\n"))

    (when (not (equal <frameTransition "UnSpecified"))
      (insert (s-lex-format "\
    \\transition{${<frameTransition}}\n")))

    (when (not (equal <frameOnLeave "UnSpecified"))
      (insert (s-lex-format "\
    \\transitionout{${<frameOnLeave}}\n")))

    (when (not (equal <frameAudio "UnSpecified"))
      (when (not (equal <frameAudio "labeled"))
        (insert (s-lex-format "\
    \\frameaudio{\"audio/${<frameAudio}.mp3\"}\n")))
      (when (equal <frameAudio "labeled")
        (insert (s-lex-format "\
    \\frameaudio{\"audio/${$frameLabelEncoded}.mp3\"}\n")))
      )

    ;;
    ;; If Title is not specified, it is passed in as blank
    ;; frametitle initiates the slide creation with HaVeA.
    ;; It needs to come after transition
    ;;
    (when (equal <frameTitle "UnSpecified")
      (setq <frameTitle ""))

    (insert (s-lex-format "\
    \\frametitle{${<frameTitle}}\n"))

    (when (not (equal <frameSubtitle "UnSpecified"))
      (insert (s-lex-format "\
    \\framesubtitle{${<frameSubtitle}}\n")))

    ;;
    ;; These are used for Impressive
    ;;
    (insert (s-lex-format "\
%%BxPy: impressiveFrameParSet('${$frameLabelEncoded}', 'always', 'True')
%%BxPy: impressiveFrameParSet('${$frameLabelEncoded}', 'transition', '${<frameTransition}')"))

    ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "dblock Frame Head Functions - Derived" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _dblock Frame Head Functions - Derived_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame/derivedImage" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame/derivedImage>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame/derivedImage :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame/derivedImage (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Insert the Beamer slide image into corresponding Reveal Slide.
Beamer and reveal slide style plain/basic, can be different. Label is used to
locate the image in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.

Provenance: Taken from full-latex-frame-video-begin

Implementation:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 5)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "derivedImage"))
     (setq <params (plist-put <params ':audio "labeled"))
     (setq <params (plist-put <params ':fragile "true"))
     (setq <params (plist-put <params ':derivedImageOrVideo "derivedImage"))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment/derived <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment/derived <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame/derivedVideo" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame/derivedVideo>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame/derivedVideo :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame/derivedVideo (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Insert the Beamer slide image into corresponding Reveal Slide.
Beamer and reveal slide style plain/basic, can be different. Label is used to
locate the immage in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.
#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 5)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "derivedVideo"))
     (setq <params (plist-put <params ':audio "labeled"))
     (setq <params (plist-put <params ':fragile "true"))
     (setq <params (plist-put <params ':derivedImageOrVideo "derivedVideo"))

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment/derived <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment/derived <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

   
;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:inComment/derived" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:inComment/derived>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:inComment/derived (
;;;#+END:
                                                   <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 5)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<frameType (or (plist-get <params :type) "UnSpecified"))
         (<frameTitle (or (plist-get <params :title) "UnSpecified"))
         (<frameLabel (or (plist-get <params :label) "UnSpecified"))
         (<comment (or (plist-get <params :comment) ""))
         ($frontStr (b:dblock:comeega|frontElement (s-lex-format "${<frameType}") :orgDepth <outLevel))
         ($backStr (b:dblock:comeega|eolControls))
         )

    (insert (s-lex-format "${$frontStr} Label=${<frameLabel} ${<frameTitle} ${<comment}\n"))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:outComment/derived" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:outComment/derived>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:outComment/derived (
;;;#+END:
                                                    <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<mode (or (plist-get <params :mode) "auto"))
         (<frameType (or (plist-get <params :type) "UnSpecified"))
         (<frameTitle (or (plist-get <params :title) "UnSpecified"))
         (<frameSubtitle (or (plist-get <params :subtitle) "UnSpecified"))
         (<frameLabel (or (plist-get <params :label) "UnSpecified"))
         (<frameFragile (or (plist-get <params :fragile) "UnSpecified"))
         (<frameOptions (or (plist-get <params :options) "UnSpecified"))
         (<frameAudio (or (plist-get <params :audio) "UnSpecified"))
         (<frameTransition (or (plist-get <params :transition) "UnSpecified"))
         (<frameOnLeave (or (plist-get <params :onLeave) "UnSpecified"))
         (<beamer (or (plist-get <params :beamer) "regular"))
         (<reveal (or (plist-get <params :reveal) "plain"))
         (<derivedImageOrVideo (or (plist-get <params :derivedImageOrVideo) ""))
         ($frameOptionsStr "")
         ($frameLabelEncoded "")
         ($frameTitleEncoded "")
         ($frameSubtitleEncoded "")
         )


    (setq $frameTitleEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameTitle)))
    (setq $frameSubtitleEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameSubtitle)))

    ;;
    ;; Combine frame options into frameOptionsStr
    ;;
    (when (equal <frameFragile "true")
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr "fragile")))

    (when (equal <reveal "plain")
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr <reveal)))

    (when (string-equal <frameLabel  "auto")
      (setq <frameLabel (str:spacesElim <frameTitle)))

    (setq $frameLabelEncoded (shell-command-to-string (concat "uri@Encode.sh " <frameLabel)))

    (when (not (equal <frameLabel "UnSpecified"))
      (if (not (string= "" $frameOptionsStr))
          (setq $frameOptionsStr (concat $frameOptionsStr ",")))
      (setq $frameOptionsStr (concat $frameOptionsStr "label=" <frameLabel)))

    (if (not (string= "" $frameOptionsStr))
        (setq $frameOptionsStr (concat "[" $frameOptionsStr "]")))

    (insert (s-lex-format "\n
\\begin{htmlonly}"))  ;; NOTYET, comment that it should be at begining of line

    (insert (s-lex-format "\n
\\begin{frame}${$frameOptionsStr}\n"))

    (when (not (equal <frameTransition "UnSpecified"))
      (insert (s-lex-format "\
    \\transition{${<frameTransition}}\n")))

    (when (not (equal <frameOnLeave "UnSpecified"))
      (insert (s-lex-format "\
    \\transitionout{${<frameOnLeave}}\n")))

    (when (equal <derivedImageOrVideo "derivedImage")
      (when (not (equal <frameAudio "UnSpecified"))
        (when (not (equal <frameAudio "labeled"))
          (insert (s-lex-format "\
    \\frameaudio{\"audio/${<frameAudio}.mp3\"}\n")))
        (when (equal <frameAudio "labeled")
          (insert (s-lex-format "\
    \\frameaudio{\"audio/${$frameLabelEncoded}.mp3\"}\n")))
        ))

    ;;
    ;; If Title is not specified, it is passed in as blank
    ;; frametitle initiates the slide creation with HaVeA.
    ;; It needs to come after transition
    ;;

    ;; For drivedImage and drivedVideo, frameTitle and and frameSubtitle are blank

    (insert (s-lex-format "\
    \\frametitle{}\n"))

    (insert (s-lex-format "\
    \\framesubtitle{}\n"))

    (when (equal <derivedImageOrVideo "derivedImage")
      (insert (s-lex-format "\
    \\begin{rawhtml}
<div class=\"center\">
<img src=\"./disposition.gened/${$frameLabelEncoded}/slide-1.png\" height=\"500\">
</div>
    \\end{rawhtml}\n")))

    (when (equal <derivedImageOrVideo "derivedVideo")

      (insert (s-lex-format "\
    \\begin{presentationMode}
    \\begin{rawhtml}
<video preload=\"auto\" data-audio-controls src=\"./video/derived-${$frameLabelEncoded}.mp4\"></video>
    \\end{rawhtml}
    \\end{presentationMode}

    \\begin{articleMode}
    \\begin{rawhtml}
    <!-- data-autoplay  controls -->
    <p>
    <video controls  preload=\"auto\" src=\"./video/derived-${$frameLabelEncoded}.mp4\" height=\"50%%\" width=\"50%%\">
    </video>
    </p>
     \\end{rawhtml}
    \\end{articleMode}\n"
                            )))

    (insert (s-lex-format "\
\\end{frame}
\\end{htmlonly}"))

    (insert (s-lex-format "\n
\\begin{verblatex}"))

    (when (equal <beamer "plain")
      (setq <params (plist-put <params ':options <beamer)))
    (b:lcnt:pres:commonDblock:outComment/begin <params)
    ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Obsoleted Functions" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Obsoleted Functions_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:file:when/essentialOrDerived-OBSOLETED" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:file:when/essentialOrDerived-OBSOLETED>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:file:when/essentialOrDerived-OBSOLETED :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:file:when/essentialOrDerived-OBSOLETED (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Process dblock args
Based on outCommentPreContent, bodyContent and outCommentPostContent.
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<mode (or (plist-get <params :mode) "auto"))
         ($effectiveMode)
         )
    (bxPanel:params$effective)

    (setq $effectiveMode <mode)
    (when (string= <mode "auto")
      (if (s-matches? "-derived" buffer-file-name)
          (setq $effectiveMode "Derived")
        (setq $effectiveMode "Essential")))

    (defun helpLine () "default controls" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (let* (
             ($frontStr (b:dblock:comeega|frontElement (s-lex-format "whenSpec")))
             ($backStr (b:dblock:comeega|eolControls))
             )
      (insert (s-lex-format "${$frontStr} when${$effectiveMode}\n"))
      ))

    (defun outCommentPostContent ()
      (insert (s-lex-format "

\\includecomment{whenDocIsEssential}
\\excludecomment{whenDocIsDerived}
"
                      )))

    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "dblock Frame Body Functions - MultiMedia" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _dblock Frame Body Functions - MultiMedia_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:pres:frame:body:mm/video" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:pres:frame:body:mm/video>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:pres:frame:body:mm/video :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:pres:frame:body:mm/video (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]] Insert the Beamer slide image into corresponding Reveal Slide.
Beamer and reveal slide style plain/basic, can be different. Label is used to
locate the image in the disposition.gened directory.
Reveal frame icludes an end. Beamer frame is open and needs to end outside of the dblock.

Provenance: Taken from full-latex-frame-video-begin

Implementation:

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 0)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          )
     (bxPanel:params$effective)

     (setq <params (plist-put <params ':type "FrmCntnt-Video"))


     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:pres:commonDblock:inComment:mm/body <params))
     (defun outCommentPostContent () (b:lcnt:pres:commonDblock:outComment:mm/body <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:inComment:mm/body" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:inComment:mm/body>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:inComment:mm/body (
;;;#+END:
                                                   <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 6)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<frameType (or (plist-get <params :type) "UnSpecified"))
         (<frameTitle (or (plist-get <params :title) "UnSpecified"))
         (<frameLabel (or (plist-get <params :label) "UnSpecified"))
         ($frontStr (b:dblock:comeega|frontElement (s-lex-format "${<frameType}") :orgDepth <outLevel))
         ($backStr (b:dblock:comeega|eolControls))
         )

    (insert (s-lex-format "${$frontStr} Label=${<frameLabel} ${<frameTitle}\n"))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:pres:commonDblock:outComment:mm/body" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:pres:commonDblock:outComment:mm/body>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:pres:commonDblock:outComment:mm/body (
;;;#+END:
                                                    <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<mode (or (plist-get <params :mode) "auto"))
         (<contentType (or (plist-get <params :type) "UnSpecified"))
         (<videoPath (or (plist-get <params :videoPath) ""))
         )

    (insert (s-lex-format "
\\begin{presentationMode}
\\begin{htmlonly}
  \\begin{rawhtml}
<video preload=\"auto\" data-audio-controls src=\"${<videoPath}\"></video>
  \\end{rawhtml}
\\end{htmlonly}
\\end{presentationMode}"))

    (insert (s-lex-format "\n
\\begin{articleMode}
\\begin{htmlonly}
  \\begin{rawhtml}
      <!-- data-autoplay  controls -->
    <p>
    <video  controls   preload=\"auto\"  src=\"${<videoPath}\"  height=\"50%%\" width=\"50%%\">
    </video>
    </p>
  \\end{rawhtml}
\\end{htmlonly}
\\end{articleMode}"))

    (insert (s-lex-format "\n
\\begin{presentationMode}
\\begin{latexonly}
    \\begin{center}
      Video File: ${<videoPath}
    \\end{center}
\\end{latexonly}
\\end{presentationMode}"))

    (insert (s-lex-format "\n
\\begin{articleMode}
\\begin{latexonly}
    \\begin{center}
      Video File: ${<videoPath}
    \\end{center}
\\end{latexonly}
\\end{articleMode}"))

    ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


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
