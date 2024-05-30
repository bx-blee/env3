;;; libs-init.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:libs|init"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:libs|init>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:libs|init (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

   (require 'blee-lib-general)   ;; Transitional
   
   (require 'bnpa:pkgs-profile)
   (b:npa:pkgs-profile|fullUpdate)

   (require 'bnpa:blee3-pkgs-profile)

   (bnpa:blee3-pkgs-profile|fullUpdate)

   (progn  ;;; All of this should move to bnpa:blee3-pkgs-profile.el
     (require 'blee3-pkgs-profile)

     (setq b:pkgsProfile:collection:default b:pkgsProfile:collection:blee3)
     (setq b:pkgsProfile:orphan 'b:pkgsProfile:blee3:orphan)
     (setq b:pkgsProfile:native 'b:pkgsProfile:blee3:native)
     (b:pkgsProfile:collection|prepare)
     (b:pkgsProfile:collection:straight--lockfile-read-all|advice-add)
     )

   ;; (b:pkg:straight|install 'tide)
   ;; (b:pkg:straight|install 's)

   (require 'blee-libs)
   (b:npa:blee-libs|fullUpdate)

   (require 'bcpa:polymode)
   (b:cpa:polymode|fullUpdate)

   (require 'bnpa:comeega)
   (bnpa:comeega|fullUpdate)

   (require 'bnpa:bidi-menu)
   (b:npa:bidi-menu|fullUpdate)

   (require 'bnpa:bisos)
   (bnpa:bisos|fullUpdate)

   (require 'bcpg:commonLibs)
   (bcpg:commonLibs|fullUpdate)

   ;; (require 'bcpg:chatGptPlus)
   ;; (bcpg:chatGptPlus|fullUpdate)

   ;; (require 'bcpg:codeGptPlus)
   ;; (bcpg:codeGptPlus|fullUpdate)


   ;; (require 'bnpa:chatGptInv)
   ;; (b:npa:chatGptInv|fullUpdate)
   (when b:g:dev:mode?
     (load-file "/bisos/git/bxRepos/blee/chatGptInv/chatgpt.el")
     (load-file "/bisos/git/bxRepos/blee/chatGptInv/chatGptInv-menu.el")
     )

   ;; (require 'bnpa:mtdt)
   ;; (b:npa:mtdt|fullUpdate)

   (when b:g:dev:mode?
     ;; (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:eval-file.el")
     ;;(load-file "/bisos/git/bxRepos/blee/mtdt/mtdt-if.el")
     ;; (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/old-b:mtdt:mailings.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:mailings.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:extComposition.el")
     ;; (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/old-b:mtdt:derive.el")
     ;; (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:derive.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:email.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:gnus.el")     
     ;; (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:send-fwrk.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/b:mtdt:menu:mailing.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-mailing/dblock-mtdt.el")
     ;;;
     ;;;
     (load-file "/bisos/git/bxRepos/blee/mtdt-distribution/b:mtdt:distr.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-distribution/b:mtdt:recipients.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-distribution/b:mtdt:send.el")
     ;;(load-file "/bisos/git/bxRepos/blee/mtdt/mtdt-menu.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-distribution/b:mtdt:menu:dist.el")
     ;;;
     (load-file "/bisos/git/bxRepos/blee/mtdt-names/b:mtdt:names.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-names/b:mtdt:bbdb2.el")
     (load-file "/bisos/git/bxRepos/blee/mtdt-names/b:mtdt:menu:bbdb2.el")
     ;;;
     (load-file "/bisos/git/bxRepos/blee/mtdt-share/b:mtdt:menu:share.el")
     )

   ;; (require 'bcpg:orgPlus)
   ;; (bcpg:orgPlus|fullUpdate)

   (require 'eoeLsip)               ;; Transitional, to be eliminated   
   )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:libs|init)
#+END_SRC

#+RESULTS:
| bnpa:comeega:config | main | /bisos/git/auth/bxRepos/blee/env3/libs/libs-init.el | 72 |

" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'libs-init)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
