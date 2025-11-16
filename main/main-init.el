;;; main-init.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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

(load (expand-file-name "main-bases.el" (file-name-directory load-file-name)))
(b:base:load-path|add b:base:env:basesList)

;;; Now the load path includes all blee functional areas and now we can require them


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:main|init" :advice ()
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:main|init>>  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:main|init (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

   (if b:doom:enabled?
       (b:base:main|doomBlee-init)
     (b:base:main|pureBlee-init)
     )

   (b:base:main|miscTemp)
   )


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:main|init)
#+END_SRC

#+RESULTS:
| bnpa:comeega:config | main | /bisos/git/auth/bxRepos/blee/env3/libs/libs-init.el | 72 |

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:main|miscTemp" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:base:main|miscTemp>>  --  -- Actions based on =parameters= and *returnValues*  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:base:main|miscTemp (
;;;#+END:
                             )
   " #+begin_org
** DocStr: This is a place holder for what needs to be absorbed.
#+end_org "

   ;; (setq safe-local-variable-values nil)
   ;; (setq enable-local-variables t)

   (add-to-list 'safe-local-variable-values '(eval setq-local toc-org-max-depth 4))
   (add-to-list 'safe-local-variable-values '(major-mode . sh-mode))
   (add-to-list 'safe-local-variable-values '(eval bx:load-file:ifOneExists "./panelActions.el"))
   (add-to-list 'safe-local-variable-values '(eval blee:fill-column-indicator/enable))
   (add-to-list 'safe-local-variable-values '(eval set-fill-column 115))
   (add-to-list 'safe-local-variable-values '(eval img-link-overlays))
   (add-to-list 'safe-local-variable-values '(eval setq-local ~blee:dblockController "interactive"))
   (add-to-list 'safe-local-variable-values '(eval setq-local ~blee:dblockEnabler nil))
   (add-to-list 'safe-local-variable-values '(eval setq-local ~primaryMajorMode 'org-mode))
   (add-to-list 'safe-local-variable-values '(eval setq-local ~selectedSubject "noSubject"))

   ;; NOTYET, where is the right place to put this?
   (setq find-file-visit-truename nil)
   )


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:main|miscTemp)
#+END_SRC

#+RESULTS:
: (eval setq-local ~primaryMajorMode 'org-mode) (eval setq-local ~selectedSubject noSubject))

" orgCmntEnd)




;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:main|pureBlee-init"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:main|pureBlee-init>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:main|pureBlee-init (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
   (require 'libs-init)
   (b:base:libs|init)

   (require 'plus-init)
   (b:base:plus|init)

   (require 'inputs-init)
   (b:base:inputs|init)

   (require 'completion-init)
   (b:base:completion|init)
   
   (require 'syntax-init)
   (b:base:syntax|init)

   (require 'auto-complete-init)
   (b:base:auto-complete|init)

   (require 'm17n-init)
   (b:base:m17n|init)

   (require 'ui-init)
   (b:base:ui|init)

   (require 'display-init)
   (b:base:display|init)

   (require 'legacy-init)
   (b:base:legacy|init)

        ;;;
        ;;; Blee's default Browser is chrome
        ;;;
   (setq browse-url-browser-function 'browse-url-chrome)

   (require 'realms-user-init)
   (b:base:realms-user|init)

   (when nil ;; b:doom:enabled?
     (load-file "/bisos/blee/env3/themes/blee-dark-1-theme.el")
     (enable-theme 'blee-dark-1))

   (unless (display-graphic-p)
      (xterm-mouse-mode 1))
   )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:main|init)
#+END_SRC

#+RESULTS:
| bnpa:comeega:config | main | /bisos/git/auth/bxRepos/blee/env3/libs/libs-init.el | 72 |

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:main|doomBlee-init"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:main|doomBlee-init>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:main|doomBlee-init (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
   (require 'libs-init)
   (b:base:libs|init)

   (require 'plus-init)
   (b:base:plus|init)

   (require 'inputs-init)
   (b:base:inputs|init)

   (require 'completion-init)
   (b:base:completion|init)
   
   (require 'syntax-init)
   (b:base:syntax|init)

   (require 'auto-complete-init)
   (b:base:auto-complete|init)

   (require 'm17n-init)
   (b:base:m17n|init)

   (require 'ui-init)
   (b:base:ui|init)

   (require 'display-init)
   (b:base:display|init)

   (require 'legacy-init)
   (b:base:legacy|init)

`       ;;;
        ;;; Blee's default Browser is chrome
        ;;;
   (setq browse-url-browser-function 'browse-url-chrome)

   (require 'realms-user-init)
   (b:base:realms-user|init)

        ;;;
        ;;; Blee's default Browser is chrome
        ;;; NOTYET, this should have happened before b:base:realms-user|init
        ;;;
   (setq browse-url-browser-function 'browse-url-chrome)

   (when nil ;; b:doom:enabled?
     (load-file "/bisos/blee/env3/themes/blee-dark-1-theme.el")
     (enable-theme 'blee-dark-1))

   (unless (display-graphic-p)
      (xterm-mouse-mode 1))
   )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:main|init)
#+END_SRC

#+RESULTS:
| bnpa:comeega:config | main | /bisos/git/auth/bxRepos/blee/env3/libs/libs-init.el | 72 |

" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'main-init)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
