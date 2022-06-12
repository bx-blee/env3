;;; legacy-init.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftLegacys :outLevel 1
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:base:legacy|init"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:base:legacy|init>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:base:legacy|init (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "

   ;; (require 'bcpg:verticoPlus)
   ;; (bcpg:verticoPlus|fullUpdate)

   (require 'compile-time-function-name)  ;;; Provides blee:ann -- used here   

  ;; NOTYET --- Move to solo
  (require 'bap-keycast)
  (bap:keycast:full/update)

  (require 'bap-gif-screencast)  ;;; solo
  (bap:gif-screencast:full/update)

  (require 'bap-doc-view)   ;;; solo
  (bap:doc-view:full/update)

  (require 'bf-font)   ;;; Move to display
  (bf:font:full/update)

  (require 'bf-mode-line)
  (bf:mode-line:full/update)

  (require 'bap-bbdb)
  (bap:bbdb:full/update)

  (require 'bcg-web-search)
  (bcg:web:search:full/update)

  (require 'bap-markdown)
  (bap:markdown:full/update)
  
  (require 'bf-server)
  (bf:server:full/update)

  ;;; Add to blee-libs
  (require 'bcf-general)   ;; General Blee Common Facilities (bcf) outside of bcf: name space

  (require 'bcf-misc)      ;; Misc Blee Common Facilities (bcf) qualifed as bcf:

  (require 'blee-lib-common)
  ;; (require 'blee-lib-general)  ;;; Has been copied to blee-libs

    ;;;(setq blee:dev:mode? t)
  (setq blee:dev:mode? nil)
  
  (require 'blee-dict)   ;;; Python style dict library
  (require 'bx-lib)      ;;; ICM libraries
  (require 'fv-lib)      ;;; Merge in blee-libs
  (require 'fto-lib)
  (require 'fileParam-lib)
  (require 'blee-iims-panel)
  (require 'blee-iim-bash-cmnd)
  (require 'blee-iicm-py-cmnd)

  (require 'bxpanel-fto-lib)

  (require 'blee-global)
  ;;;;(require 'blee-packages-install)

  (require 'bap-org-msg)
  (bap:org-msg:full/update)

  
  (require 'bap-guess-language)
  (bap:guess-language:full/update)

  ;; Already Absorbed?
  ;;(require 'bap-polymode)
  ;;(bap:polymode:full/update)

  ;; Already Absorbed?
  ;; (require 'bnp-comment-block)
  ;; (bnp:comment-block:full/update)

  ;; Already Absorbed?  
  ;; (require 'bnp-comeega)
  ;; (bnp:comeega:full/update)

  ;; Already Absorbed?
  ;; (require 'bnpa:blee-libs)
  ;; (bnpa:blee-libs/fullUpdate)

  ;;; NOTYET, Where is mcdt Adopted?
  ;;;; Mail Composition Distribution And Tracking (mcdt)
  ;;;; Mail Templating Distribution And Tracking (mtdt)  
  ;; (require 'mcdt-if)
  ;; (require 'mcdt-menu)

  ;; IMPORTANT, What is going on here
  (require 'realm-bases)
  (require 'bystar-start)
  
  (require 'eoe-user-params)

  (add-to-list 'auto-mode-alist '("\\.mail\\'" . message-mode))
  (setq bystar:ue:form-factor 'desktop)  ;;; Notyet where should this go?
  

  (funcall  '(lambda () "
**     *Mail -- Gnus And Addons*
"
	       (load "bystar-mail")
               ;;(require 'gnus-profiles)
               ;; (require 'gnus-manifests)
               ;; (require 'mua-abstract)
               (require 'bnp-mua-abstract)
               (bnp:mua-abstract:full/update)
	       ))
  
    (funcall  '(lambda () "
**     *Mail -- offlineimap*
"
	     (require 'bystar-offlineimap)
	     ))


  (funcall  '(lambda () "
**     *Mail -- Search -- notmuch, nnir*
"
	       ;;(require 'bystar-mail-search)
	       ))


  ;; -----------------------------------------------------------------
  ;; Email Citations -- SuperCite
  ;; -----------------------------------------------------------------
  ;; NOTYET, Perhaps requires GNUS conversion
  ;;(eoe-require 'supercite)
  (require 'supercite)
  (load "supercite-user")

;; -----------------------------------------------------------------
  ;; Mozilla Browser integration
  ;; -----------------------------------------------------------------
  ;;
  ;; configure browse-url.el
  ;;
  (require 'browse-url)

  ;;(setq browse-url-browser-function 'browse-url-mozilla)
  (setq browse-url-browser-function 'browse-url-firefox)
  ;;(setq browse-url-firefox-program "/opt/public/osmt/bin/firefox-bx")
  ;;(setq browse-url-browser-function 'browse-url-generic)
  ;;(setq browse-url-generic-program "/opt/public/osmt/bin/firefox-bx")
  
  ;; -----------------------------------------------------------------
  ;; Common Lisp Programming Language -- Software Development 
  ;; -----------------------------------------------------------------

  (require 'bide-cl)
  (bide:cl:full/update)
  
   ;; -----------------------------------------------------------------
  ;; markdown-mode
  ;; -----------------------------------------------------------------
  ;;(require 'blee-markdown) ;;; NOTYET should not be absolute
  ;; (load-file "/bisos/blee/env/main/blee-markdown.el")


  (funcall  '(lambda () "
**     *YASnippet*
*** TODO yasnippit should obsolete template
"
	       (require 'blee-yasnippet)  ;;; NOTYET (error "Package ‘yasnippet-snippets-’ is unavailable")
	       ))

  (funcall  '(lambda () "
**  [[elisp:(org-cycle)][| ]]  Minor-Mode            ::      *LanguageTool -- +diction/style* [[elisp:(org-cycle)][| ]]
"
	       (require 'bystar-langtool)
	       ))
  

  (funcall  '(lambda () "
**  [[elisp:(org-cycle)][| ]]  Menu                  ::      *ProgTools* [[elisp:(org-cycle)][| ]]
"
	       (require 'bystar-progtools-menu)
	       ))

;;;#+BEGINNOT: blee:pkg:adopt :eanble :org-level 2 pkgName
  (funcall  '(lambda () "
**  [[elisp:(org-cycle)][| ]]  Adopted Component   ::      *Dired* [[elisp:(org-cycle)][| ]]
	
"
	       (require 'bac-dired)
	       ))
;;;#+END:

    ;; -----------------------------------------------------------------
  ;; Calc -- Arbitrary precision calculator
  ;; -----------------------------------------------------------------
  (load "bystar-calc")


  ;; -----------------------------------------------------------------
  ;; Info -- more info directories
  ;; -----------------------------------------------------------------
  (load "bystar-info")


  ;; -----------------------------------------------------------------
  ;; CALENDAR MODE -- And Appointment (APPT) -- And Diary
  ;; -----------------------------------------------------------------
  ;;(load "bystar-calendar")


  ;; Writing / Publishing

  ;; -----------------------------------------------------------------
  ;; Dictem -- Dictionary/Thesaurus lookup
  ;; -----------------------------------------------------------------
  (load "bystar-dictem")

  ;; -----------------------------------------------------------------
  ;; LaTeX, TeX, Bib, ttytex, 
  ;; -----------------------------------------------------------------
  ;;(load "bystar-tex")  ;;;For 24.4 and 24.5 NOTYET
  (require 'bcg-tex)
  (bcg:tex:full/update)


  ;;
  ;; visible or audible bell...
  ;;

					; Wheel mouse
  (autoload 'mwheel-install "mwheel" "Enabal mouse wheel support.")
  (mwheel-install)

  
   )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:base:legacys|init)
#+END_SRC

#+RESULTS:
| bnpa:comeega:config | main | /bisos/git/auth/bxRepos/blee/env3/legacys/legacy-init.el | 72 |

" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'legacy-init)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
