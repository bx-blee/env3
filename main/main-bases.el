
;;; main-bases.el --- Define Bases and add them to load-path  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  ~ORG-TOP-CONTROLS-COME-HERE~
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Commentary, Model and Terminology:
* Relevant Panels:
** [[file:/bisos/panels/blee-core/mail/model/_nodeBase_/fullUsagePanel-en.org]]
** [[file:/bisos/panels/blee-core/mail/Gnus/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:env|obtain"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:env|obtain>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:env|obtain (
;;;#+END:
                          )
   " #+begin_org
** DocStr: Based on either of buffer-file-name or load-file-name, obtain env base dir.
buffer-file-name is useful for dev and testing.
#+end_org "
   (file-name-directory
    (directory-file-name
     (file-name-directory
      (directory-file-name
       (if buffer-file-name
	   buffer-file-name
         load-file-name))))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:env|obtain)
#+END_SRC

#+RESULTS:
: /bisos/git/auth/bxRepos/blee/env3/

" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defconst b:base:env:main (expand-file-name "main" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:main= main directory from which all functional areas are absorbed.
#+end_org "
  )

(defconst b:base:env:libs (expand-file-name "libs" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:libs= libs directory containing adoption files for native and adopted packages.
#+end_org "
  )

(defconst b:base:env:display (expand-file-name "display" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:display= display directory containing adoption files for featurePlus.
#+end_org "
  )

(defconst b:base:env:plus (expand-file-name "plus" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:plus= plus directory containing adoption files for featurePlus.
#+end_org "
  )

(defconst b:base:env:inputs (expand-file-name "inputs" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:inputs= plus directory containing adoption files for featurePlus.
#+end_org "
  )


(defconst b:base:env:ipcs (expand-file-name "ipcs" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:ipcs= (inter-personal communication services) dir for adoption and customization of mail, news, irc.
#+end_org "
  )

(defconst b:base:env:completion (expand-file-name "completion" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:completion= .
#+end_org "
  )

(defconst b:base:env:syntax (expand-file-name "syntax" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:syntax= .
#+end_org "
  )

(defconst b:base:env:auto-complete (expand-file-name "auto-complete" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:auto-complete= .
#+end_org "
  )

(defconst b:base:env:legacy (expand-file-name "legacy" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:legacy= .
#+end_org "
  )



(defconst b:base:env:ui (expand-file-name "ui" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:ui= .
#+end_org "
  )

(defconst b:base:env:m17n (expand-file-name "m17n" (b:base:env|obtain))
   " #+begin_org
** =b:base:env:m17n= .
#+end_org "
  )

(defvar b:base:env:basesList
  `(,b:base:env:main
    ,b:base:env:libs
    ,b:base:env:display
    ,b:base:env:plus
    ,b:base:env:ipcs
    ,b:base:env:completion
    ,b:base:env:syntax
    ,b:base:env:auto-complete
    ,b:base:env:m17n
    ,b:base:env:ui
    ,b:base:env:inputs
    ,b:base:env:legacy
    )
   " #+begin_org
** =b:base:env:basesList= list of blee/env bases.
#+end_org "
  )

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defun b:load-path|add (<dirPath)
  "<dirPath is added to load-path after verification."
  ;;(blee:ann|this-func (compile-time-function-name))
  (when <dirPath
    (let (
	  ($dirPath (expand-file-name <dirPath))
	  )
      (if (file-directory-p $dirPath)
	  (add-to-list 'load-path $dirPath)
	)
      )))

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Provided Functions" :extraInfo "Provided Functiona"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:load-path|add"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:load-path|add>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:load-path|add (
;;;#+END:
                             <basesList
                             )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
   (dolist ($each <basesList)
     (b:load-path|add $each)))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:load-path|add b:base:env:basesList)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'main-bases)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
