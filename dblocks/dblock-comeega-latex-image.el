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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "dblock Frame Head Functions - Begin" :extraInfo "b:lcnt:"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _dblock Frame Head Functions - Begin_: |]]  b:lcnt:  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:frame:content:image/filePath" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:frame:content:image/filePath>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:frame:content:image/filePath :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:frame:content:image/filePath (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Content of a frame based

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<imageFile (or (plist-get <params :imageFile) ""))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent () (b:lcnt:frame:content:image:inComment/common <params))
     (defun outCommentPostContent () (b:lcnt:frame:content:image/filePath <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:frame:content:image:inComment/common" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:frame:content:image:inComment/common>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:frame:content:image:inComment/common (
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
         (<imageFile (or (plist-get <params :imageFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         ($frontStr (b:dblock:comeega|frontElement (s-lex-format "IMAGE") :orgDepth <outLevel))
         ($backStr (b:dblock:comeega|eolControls))
         )

    (insert (s-lex-format "${$frontStr} ${<imageFile} --- ${<comment}\n"))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:frame:content:image/filePath" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:frame:content:image/filePath>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:frame:content:image/filePath (
;;;#+END:
                                            <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<imageFile (or (plist-get <params :imageFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<fileNameEncoded (or (plist-get <params :fileNameEncoded) ""))
         ($resolutionImageFile nil)
         )

    (defun resolutionImageFile (<imageFile)
      (let* (
             ($result <imageFile)
             ($mediumImageFile (s-concat (f-no-ext <imageFile) "-medium." (f-ext <imageFile)))
             ; ($mediumImageFile (s-concat (f-no-ext <imageFile) "-small." (f-ext <imageFile)))
             )
        (when (file-exists-p $mediumImageFile)
          (setq $result $mediumImageFile))
        $result))

    ;; (resolutionImageFile "/lcnt/lgcc/mohsen/permanent/photos/shabeYaldaPhotos/image/2023/20231221-191811.jpg")

    (setq $resolutionImageFile (resolutionImageFile <imageFile))

    (insert (s-lex-format "\n
\\begin{presentationMode}

\\begin{latexonly}
  \\begin{figure}
    \\begin{center}"))

    (insert (s-lex-format "
       \\includegraphics[width=108mm,height=76mm,keepaspectratio]{${$resolutionImageFile}}"))

    (insert "
    \\end{center}
  \\end{figure}
\\end{latexonly}

\\begin{htmlonly}
  \\begin{rawhtml}")

    (insert (s-lex-format "
${<comment}
<div class=\"center\">
<img src=\"${<imageFile}\" height=\"450\">
</div>"))

    (insert "
  \\end{rawhtml}
\\end{htmlonly}

\\end{presentationMode}


\\begin{articleMode}

\\begin{latexonly}
  \\begin{figure}[H]
    \\begin{center}")

    (insert (s-lex-format "
      \\includegraphics[width=\\textwidth]{${<imageFile}}"))

    ;;; BUG: insert-file-contents did not work

    (insert (format "
      \\caption{%s}"
                      "fig-title"))

    (insert (format "
      \\label{fig:%s}"
                      (fig-base-name <imageFile)))

    (insert "
    \\end{center}
  \\end{figure}
\\end{latexonly}

\\begin{htmlonly}
%BEGIN IMAGE
  \\begin{center}")

    (insert (s-lex-format "
      \\includegraphics[width=\\textwidth]{${<imageFile}}"))

    (insert "
  \\end{center}
%END IMAGE
%HEVEA\\imageflush

  \\begin{figure}")

         ;;; BUG: insert-file-contents did not work

    (insert (format "
      \\caption{%s}"
                      "fig-title"))

    (insert (format "
      \\label{fig:%s}"
                      (fig-base-name <imageFile)))

    (insert "
  \\end{figure}
\\end{htmlonly}

\\end{articleMode}\n")
      ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:lcnt:pres:commonDblock/ derived )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:image:full/filePath" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:image:full/filePath>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:image:full/filePath :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:image:full/filePath (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Content of a frame based

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<imageFile (or (plist-get <params :imageFile) ""))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ())
     (defun outCommentPostContent () (b:lcnt:image:full/filePath <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:image:full/filePath" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:image:full/filePath>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:image:full/filePath (
;;;#+END:
                                            <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<imageFile (or (plist-get <params :imageFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         ($fileName "")
         ($fileNameEncoded "")
         )

    (setq $fileName (f-no-ext (f-filename <imageFile)))
    (setq $fileNameEncoded (shell-command-to-string (concat "uri@Encode.sh " $fileName)))

    (setq <params (plist-put <params ':seg-title (s-lex-format "${$fileNameEncoded}")))
    (setq <params (plist-put <params ':label (s-lex-format "")))

    (org-dblock-write:bx:dblock:lcnt:latex-subsection <params)  ;; A macro, that uses :seg-title etc

    (setq <params (plist-put <params ':type "Frame:begin-plain"))
    (setq <params (plist-put <params ':options "plain"))
    (setq <params (plist-put <params ':audio "labeled"))
    (setq <params (plist-put <params ':fragile "true"))
    (setq <params (plist-put <params ':fileNameEncoded (s-lex-format "${$fileNameEncoded}")))
    (setq <params (plist-put <params ':label (s-lex-format "${$fileNameEncoded}")))
    ;;(setq <params (plist-put <params ':title (s-lex-format "${$fileNameEncoded}")))

     (b:lcnt:pres:commonDblock:outComment/begin <params)

     (b:lcnt:frame:content:image/filePath <params)

    (insert "
\\end{frame}")
     ))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:photo:full/filePath" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:photo:full/filePath>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:photo:full/filePath :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:photo:full/filePath (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Content of a frame based

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<imageFile (or (plist-get <params :imageFile) ""))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     ;;(defun bodyContent () (b:lcnt:frame:content:image:inComment/common <params))
     (defun bodyContent ())
     (defun outCommentPostContent () (b:lcnt:photo:full/filePath <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:photo:full/filePath" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:photo:full/filePath>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:photo:full/filePath (
;;;#+END:
                                            <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<imageFile (or (plist-get <params :imageFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         ($fileName "")
         ($fileNameEncoded "")
         ($fileNameParts '())
         ($dateDay "")
         ($dateTime "")
         )

    (setq $fileName (f-no-ext (f-filename <imageFile)))
    ;;(setq $fileNameEncoded (shell-command-to-string (s-lex-format "echo ${$fileName} | latexencode")))
    ;;(setq $fileNameEncoded (shell-command-to-string (s-lex-format "echo -n ${$fileName} | /bisos/venv/py3/adopted/bin/latexencode")))
    (setq $fileNameEncoded (shell-command-to-string (s-lex-format "echo -n ${$fileName} | latexencode")))
    (setq $fileNameParts (s-split "-" $fileName))
    (setq $dateday (nth 0 $fileNameParts))
    (setq $dateTime (s-left 4 (nth 1 $fileNameParts)))

    ;;(insert (s-lex-format "time = ${$dateTime}"))

    (setq <params (plist-put <params ':seg-title (s-lex-format "${$fileNameEncoded}")))
    (setq <params (plist-put <params ':label (s-lex-format "")))

    (org-dblock-write:bx:dblock:lcnt:latex-subsection <params)  ;; A macro, that uses :seg-title etc

    (setq <params (plist-put <params ':type "Frame:begin-plain"))
    (setq <params (plist-put <params ':options "plain"))
    (setq <params (plist-put <params ':audio "labeled"))
    (setq <params (plist-put <params ':fragile "true"))
    (setq <params (plist-put <params ':label (s-lex-format "${$fileNameEncoded}")))
    ;; (setq <params (plist-put <params ':title (s-lex-format "${$fileNameEncoded}")))


    (b:lcnt:pres:commonDblock:outComment/begin <params)

    (b:lcnt:frame:content:image/filePath <params)

    (insert "
\\end{frame}")
    ))


;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:album:photo:list/fromFile.camera" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:album:photo:list/fromFile.camera>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:album:photo:list/fromFile.camera :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:album:photo:list/fromFile.camera (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Content of a frame based

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<albumFile (or (plist-get <params :albumFile) ""))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
       (let* (
              ($frontStr (b:dblock:comeega|frontElement (s-lex-format "ALBUM") :orgDepth <outLevel))
              ($backStr (b:dblock:comeega|eolControls))
              )
         (insert (s-lex-format
                "${$frontStr} ~${<comment}~ _Processing Dblock b:lcnt:album:photo:list/fromFile.camera for ${<albumFile}_\n"))))
     (defun outCommentPostContent () (b:lcnt:album:photo:list/fromFile.camera <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:album:photo:list/fromFile.camera" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:album:photo:list/fromFile.camera>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:album:photo:list/fromFile.camera (
;;;#+END:
                                            <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<albumFile (or (plist-get <params :albumFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         ($fileName "")
         ($fileNameParts '())
         ($fileText "")
         ($fileLines '())
         )
    (setq $fileText (f-read <albumFile 'utf-8))
    (setq $fileLines (s-lines $fileText))
    (loop-for-each $eachLine $fileLines
      (when (not (string= $eachLine ""))
        (insert (s-lex-format "\n%%% Processing:  ${$eachLine}"))
        (b:lcnt:photo:full/filePath `(:imageFile ,$eachLine :comment "Photo From Camera List"))))))

;;;#+BEGIN:  b:elisp:defs/dblockDefun :defName "org-dblock-write:b:lcnt:album:any:list/fromFile.el" :advice ("bx:dblock:control|wrapper")
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  dblockDfn  [[elisp:(outline-show-subtree+toggle)][||]]  <<org-dblock-write:b:lcnt:album:any:list/fromFile.el>> ~advice=(bx:dblock:control|wrapper)~  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(advice-add 'org-dblock-write:b:lcnt:album:any:list/fromFile.el :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:lcnt:album:any:list/fromFile.el (<params)
;;;#+END:
   " #+begin_org
** [[elisp:(org-cycle)][| DocStr |]]
Content of a frame based

#+end_org "
   (let* (
          (<governor (letGet$governor)) (<extGov (letGet$extGov))
          (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
          (<style (letGet$style "openBlank" "closeBlank"))
          (<albumFile (or (plist-get <params :albumFile) ""))
          ;; (<resolution (or (plist-get <params :resolution) "default"))
          (<comment (or (plist-get <params :comment) ""))
          )
     (bxPanel:params$effective)

     (defun helpLine () "default controls" )
     (defun outCommentPreContent ())
     (defun bodyContentPlus ())
     (defun bodyContent ()
       (let* (
              ($frontStr (b:dblock:comeega|frontElement (s-lex-format "ALBUM") :orgDepth <outLevel))
              ($backStr (b:dblock:comeega|eolControls))
              )
         (insert (s-lex-format
                "${$frontStr} ~${<comment}~ _Processing Dblock b:lcnt:album:any:list/fromFile.el ${<albumFile}_\n"))))
     (defun outCommentPostContent () (b:lcnt:album:any:list/fromFile.el <params))

     (progn  ;; Actual Invocations
       (outCommentPreContent)
       (bx:invoke:withStdArgs$bx:dblock:governor:process)
       (outCommentPostContent)
       )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:lcnt:album:any:list/fromFile.el" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:lcnt:album:any:list/fromFile.el>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:lcnt:album:any:list/fromFile.el (
;;;#+END:
                                       <params)
  " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

  (let* (
         (<albumFile (or (plist-get <params :albumFile) ""))
         (<comment (or (plist-get <params :comment) ""))
         (<resolution (plistGetOrDef <params :resolution "default"))
         ($sexps)
         )
    (setq b:lcnt:photo:resolution <resolution)
    (setq $sexps (b:file:read/asSexp <albumFile))
    (loop-for-each $eachSexp $sexps
      (insert (s-lex-format "\n%%% Processing:  ${$eachSexp}"))
      (eval $eachSexp)
                  )))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:file:read/asSexp" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:file:read/asSexp>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:file:read/asSexp (
;;;#+END:
                           <fileName)
  " #+begin_org
** DocStr:
https://emacs.stackexchange.com/questions/33586/how-to-read-elisp-file-into-s-expression
#+end_org "
 (let
     ((sexps '())
      (sexp)
      (buf (find-file-noselect <fileName)))
   (with-current-buffer buf
     (goto-char (point-min))
     (ignore-errors
       (while (setq sexp (read buf))
         (message "%s" sexp)
         (push sexp sexps))))
   (kill-buffer buf)
   (reverse sexps)))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:file:read/asSexp \"someFile\")
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'dblock-comeega-latex-image)
;;;#+END:


;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
