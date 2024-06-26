;;; bcpg:magitPlus.el --- Blee Component Pkg Grouping (magitPlus)  -*- lexical-binding: t; -*-

;;;#+BEGIN: b:elisp:pkg/summaryText :outLevel 1 :pkgAdoptionType "bcpg" :pkgName "magitPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]] Summary:  bcpg Adoption of :magitPlus
Machine Generated By org-dblock-write:b:elisp:pkg/summaryText
Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

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


(require 'blee-libs)
(require 'straight)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/usgEnabled?defvar :outLevel 2 :pkgAdoptionType "bcpg" :pkgName "magitPlus"
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =defvar= <<bcpg:magitPlus:usgEnabled?>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defvar bcpg:magitPlus:usgEnabled? t "magitPlus package adoption control.")
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:pkg/fullUpdate :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "magitPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:magitPlus|fullUpdate>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:magitPlus|fullUpdate ()
 "magitPlus package adoption control."
 (b:log|entry (b:func$entry))
  (when bcpg:magitPlus:usgEnabled?
    (bcpg:magitPlus:install|update)
    (bcpg:magitPlus:config|main)
    )
  )
;;;#+END:

;;;#+BEGIN: b:elisp:pkg:install/update :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "magitPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:magitPlus:install|update>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:magitPlus:install|update ()
 "magitPlus package adoption install or update template."
 (b:log|entry (b:func$entry))
;;;#+END:

;;;#+BEGIN:  b:elisp:pkg/install :outLevel 2 :pkgsType "component" :pkgName "magit" :pkgDesc ""
(orgCmntBegin "
** [[elisp:(show-all)][(>]]  =component= ~magit~ ** [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
 (b:pkg:straight|install 'magit)
;;;#+END:
   )

;;;#+BEGIN: b:elisp:pkg:config/main :outLevel 1 :pkgsStage "ready" :pkgAdoptionType "bcpg" :pkgName "magitPlus"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<bcpg:magitPlus:config|main>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun bcpg:magitPlus:config|main ()
 "magitPlus package adoption config template."
 (b:log|entry (b:func$entry))
;;;#+END:

 (require 'magit)
 
 ;;(setq magit-git-standard-options
 ;; (append magit-git-standard-options '("-c") '("http.sslVerify=false")))

 (setq vc-follow-symlinks nil)   ;;; Following symlinks messes up /lcnt assumptions for example

 (setq magit-repolist-columns
	'(("Name"    25 magit-repolist-column-ident ())
          ("Version" 25 magit-repolist-column-version ())
          ("D"        1 magit-repolist-column-dirty ())
          ("B<U"      3 magit-repolist-column-unpulled-from-upstream
           ((:right-align t)
            (:help-echo "Upstream changes not in branch")))
          ("B>U"      3 magit-repolist-column-unpushed-to-upstream
           ((:right-align t)
            (:help-echo "Local changes not in upstream")))
          ("Path"    99 magit-repolist-column-path ()))
	)
 )


(defun bap:magit:magit-repository-directories/set-with-list (<list)  "
*** Sets the magit-repository-directories based on input <list
"
  (interactive)
  (b:log|entry (b:func$entry))
 (b:log|entry (b:func$entry))
  (setq magit-repository-directories nil)
  (dolist (<each <list)
    (let (
	  ($assocList)
	  )
      (unless (string-equal <each "")
	(setq $assocList (acons <each 0 $assocList))
	(setq magit-repository-directories
              (append magit-repository-directories $assocList)))
      )
    )
  )


(defun bap:magit:bisos:current-bpo-repos/list () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (setq $shellCommand
	  (format
	   "bpoReposManage.sh -i basedOnPath_reposPathList %s" buffer-file-name))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )


(defun bap:magit:bisos:current-bpo-repos/visit () "
*** Main panel usage interface.
"
  (interactive)
  (bap:magit:magit-repository-directories/set-with-list
   (bap:magit:bisos:current-bpo-repos/list))
  (magit-list-repositories)
  )


(defun bap:magit:bisos:all-bpo-repos/list () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (setq $shellCommand
	  (format
	   "bpoAcctManage.sh -i bpoIdsList | bpoReposManage.sh -v -i bxoReposPathList"))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )


(defun bap:magit:bisos:all-bpo-repos/visit () "
*** Main panel usage interface.
**** Usage Examples:
(bap:magit:bisos:all-bpo-repos/visit)
"
  (interactive)
  (bap:magit:magit-repository-directories/set-with-list
   (bap:magit:bisos:all-bpo-repos/list))
  (magit-list-repositories)
  )



(defun bap:magit:bisos:current-baseDir-repos/list () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (setq $shellCommand
	  (format
	   "bpoReposManage.sh -i basedOnPath_reposPathList %s" buffer-file-name))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )


(defun bap:magit:bisos:current-baseDir-repos/visit () "
*** Main panel usage interface.
"
  (interactive)
  (bap:magit:magit-repository-directories/set-with-list
   (bap:magit:bisos:current-bpo-repos/list))
  (magit-list-repositories)
  )


(defun bap:magit:bisos:all-baseDir-repos/list%% () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (message "Running An External Shell Command -- Be Patient ...")
    (setq $shellCommand
	  (format
	   "bx-gitRepos -i cachedLs"))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )

(defun bap:magit:bisos:all-baseDir-repos/list () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (message "Running An External Shell Command -- Be Patient ...")
    (setq $shellCommand
	  (format
	   "bx-gitReposBases -v 30 --baseDir=\"/bisos/git/bxRepos\" --pbdName=\"bxReposRoot\" --vcMode=\"auth\"  -i pbdVerify all"))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )



(defun bap:magit:bisos:all-baseDir-repos/visit () "
*** Main panel usage interface.
**** Usage Examples:
(bap:magit:bisos:all-baseDir-repos/visit)
"
  (interactive)
  (bap:magit:magit-repository-directories/set-with-list
   (bap:magit:bisos:all-baseDir-repos/list))
  (magit-list-repositories)
  )


(defun bap:magit:bisos:all-baseDir-atoms-repos/list () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (message "Running An External Shell Command -- Be Patient ...")
    (setq $shellCommand
	  (format
	   "bx-gitRepos -i cachedLsAtoms"))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )


(defun bap:magit:bisos:all-baseDir-atoms-repos/list%% () "
*** Based on current buffer, determine cur-dir and bpo. List bpos repos.
"
  (interactive)
  ;; (blee:ann|this-func (compile-time-function-name))
  (let (
	($shellCommand)
	($reposListAsString)
	($reposList)
	)
    (message "Running An External Shell Command -- Be Patient ...")
    (setq $shellCommand
	  (format
	   "bx-gitReposBases -v 30 --baseDir=\"/bisos/git/bxRepos\" --pbdName=\"bxReposRoot\" --vcMode=\"auth\"  -i pbdVerify all"))
    (setq $reposListAsString (shell-command-to-string $shellCommand))
    (setq $reposList (s-split "\n" $reposListAsString))
    )
  )



(defun bap:magit:bisos:all-baseDir-atoms-repos/visit () "
*** Main panel usage interface.
**** Usage Examples:
(bap:magit:bisos:all-baseDir-repos/visit)
"
  (interactive)
  (bap:magit:magit-repository-directories/set-with-list
   (bap:magit:bisos:all-baseDir-atoms-repos/list))
  (magit-list-repositories)
  )

;;; This function is needed as of blee 202406
(unless (fboundp 'magit-repolist-column-dirty)
  (defun magit-repolist-column-dirty (_id)
  "Insert a letter if there are uncommitted changes.
Show N if there is at least one untracked file.
Show U if there is at least one unstaged file.
Show S if there is at least one staged file.
Only one letter is shown, the first that applies."
  (cond ((magit-untracked-files) "N")
        ((magit-unstaged-files)  "U")
        ((magit-staged-files     "S")))))




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bcpg:magitPlus)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
