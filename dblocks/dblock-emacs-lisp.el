;;; dblock-emacs-lisp.el --- b:pkg supports native and component adotion  -*- lexical-binding: t; -*-

;; (setq debug-on-error t)

;;;#+BEGIN: bx:dblock:global:org-controls :disabledP "false" :mode "auto"
(lambda () "
*  /Controls/ ::  [[elisp:(org-cycle)][| ]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
*  /Maintain/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]] 
*      ================
")
;;;#+END:


;;;#+BEGIN: bx:dblock:global:org-contents-list :disabledP "false" :mode "auto"
(lambda () "
*      ################ CONTENTS-LIST ###############
*  [[elisp:(org-cycle)][| ]]  *Document Status, TODOs and Notes*          ::  [[elisp:(org-cycle)][| ]]
")
;;;#+END:

(lambda () "
**  [[elisp:(org-cycle)][| ]]  Idea      ::  Description   [[elisp:(org-cycle)][| ]]
")


(lambda () "
* TODO [[elisp:(org-cycle)][| ]]  Description   :: *Info and Xrefs* UNDEVELOPED just a starting point <<Xref-Here->> [[elisp:(org-cycle)][| ]]
")


(lambda () "
*  [[elisp:(org-cycle)][| ]]  "Loading..."  :: Loading Announcement Message [[elisp:(org-cycle)][| ]]
")

(message "ByStar Library LOADING")


(lambda () "
*  [[elisp:(org-cycle)][| ]]  Requires      :: Requires [[elisp:(org-cycle)][| ]]
")

(require 'blee-libs)
(require 'b-pkg)

(lambda () "
*  [[elisp:(org-cycle)][| ]]  Top Entry     :: none [[elisp:(org-cycle)][| ]]
")

(lambda () "
*  [[elisp:(org-cycle)][| ]]  defun         :: (org-dblock-write:bx:dblock:lisp:requires) [[elisp:(org-cycle)][| ]]
")


(advice-add 'org-dblock-write:b:elisp:file/provide :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/provide (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel -1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<modName (or (plist-get <params :modName) nil))
         )

    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())

    (defun bodyContent ()
      "Insert the provide line"
      (let* (
             ($modName (file-name-sans-extension (file-name-nondirectory buffer-file-name)))
             )
        (when <modName
          (setq $modName <modName))
        (insert (s-lex-format
                "(provide '${$modName})"))))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


(advice-add 'org-dblock-write:b:elisp:file/requires :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/requires (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         )

    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())

    (defun bodyContent ()
      "Insert the provide line"
      (insert (s-lex-format
               "  ~REQUIRES~  ")))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


(advice-add 'org-dblock-write:b:elisp:file/copyLeftPlus :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/copyLeftPlus (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         )

    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())

    (defun bodyContent ()
      "Insert the provide line"
      (b:dblock:inserts|fromFile "./inserts/copyLeftPlus.org"))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))

(advice-add 'org-dblock-write:b:elisp:file/authors :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/authors (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<authors (or (plist-get <params :authors) nil))
         )

    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())

    (defun bodyContent ()
      "Insert the provide line"
      (loop-for-each $each <authors
        (b:dblock:inserts|fromFile $each)))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))

(advice-add 'org-dblock-write:b:elisp:file/orgTopControls :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/orgTopControls (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         )

    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())

    (defun bodyContent ()
      "Insert the provide line"
      (insert "*  [[elisp:(org-cycle)][|/Controls/| ]] :: [[elisp:(org-show-subtree)][|=]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]")

      (insert "\n")

      (insert "** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]")
      )


    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


(advice-add 'org-dblock-write:b:elisp:file/endOf :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:file/endOf (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))         
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      "Insert the provide line"
      (insert " ~END-OF-FILE~ "))
    
    (bx:invoke:withStdArgs$bx:dblock:governor:process)

    (insert "\n")
    (b:dblock:inserts|fromFile "./inserts/endOfFile.el")
    ))

;;; Blee defxxx dblocks

(advice-add 'org-dblock-write:b:elisp:defs/cl-defun :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:defs/cl-defun (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<defName (or (plist-get <params :defName) nil))
         (<advice (or (plist-get <params :advice) ()))                  
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (b:dblock:cl-defun|prep <defName <advice)))      

    (defun outCommentPostContent ()
      (b:func:advice|insert <defName <advice)
      (insert (s-lex-format "\n(cl-defun ${<defName} (")))
    
    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentPostContent)     
    ))

(advice-add 'org-dblock-write:b:elisp:defs/defun :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:defs/defun (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<defName (or (plist-get <params :defName) nil))
         (<advice (or (plist-get <params :advice) ()))
         ($docStr)
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (setq $docStr (b:el:docStr/obtain))
      (insert (b:dblock:defun|prep <defName <advice $docStr))
      )

    (defun outCommentPostContent ()

      (b:func:advice|insert <defName <advice)
      (insert (s-lex-format "\n(defun ${<defName} (")))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentPostContent)    
    ))

(defun b:el:docStr/obtain ()
  ""
  (interactive)
  (let* (
        ($inHere (b:log|entry (b:func$entry)))
        ($result)
	)
    (save-excursion
      (move-beginning-of-line 1)
      (search-forward "** DocStr: " nil t)
      (save-excursion
        (buffer-substring-no-properties (point) (point-at-eol))
        ))))


(advice-add 'org-dblock-write:b:elisp:defs/advice-add :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:defs/advice-add (<params)
  "
** Function: advice-add symbol where function &optional props
Add the advice function to the named function symbol.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         (<symbol (or (plist-get <params :symbol) nil))
         (<where (or (plist-get <params :where) nil))
         (<function (or (plist-get <params :function) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      "Insert the provide line"
      (insert
       (s-lex-format
        "  =advice-add=  symbol=${<symbol} where=${<where} function=[[${<function}]]")))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (insert
       (s-lex-format
        "\n(advice-add '${<symbol} :${<where} #'${<function})"))
    ))



(advice-add 'org-dblock-write:b:elisp:defs/defmacro :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:defs/defmacro (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<defName (or (plist-get <params :defName) nil))
         (<advice (or (plist-get <params :advice) ()))
         ($docStr)
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (setq $docStr (b:el:docStr/obtain))
      (insert (b:dblock:defmacro|prep <defName <advice $docStr)))

    (defun outCommentPostContent ()
      (b:func:advice|insert <defName <advice)
      (insert (s-lex-format "\n(defmacro ${<defName} (")))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentPostContent)
    ))

(advice-add 'org-dblock-write:b:elisp:defs/defmacro%% :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:defs/defmacro%% (<params)
  "
** When ~:modName~ is nil determine modName based on filName. Otherwise  use ~:modName~.
Combination of ~<outLevl~ = -1 and openBlank closeBlank results in pure code.
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         (<defName (or (plist-get <params :defName) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      "Insert the provide line"
      (insert
       (s-lex-format
        "  =defmacro= <<${<defName}>>")))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (insert
       (s-lex-format
        "\n(defmacro ${<defName} ("))
    ))


(advice-add 'org-dblock-write:b:elisp:pkg/usgEnabled?defvar :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg/usgEnabled?defvar (<params)
  "
** Produce something like defvar bnp:mua-abstract:usage:enabled?
"
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) nil))
         (<pkgName (or (plist-get <params :pkgName) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      "Insert the defvar."
      (insert
       (s-lex-format
        "  =defvar= <<${<pkgAdoptionType}:${<pkgName}:usgEnabled?>>")))
    
    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (insert
       (s-lex-format
        "\n(defvar ${<pkgAdoptionType}:${<pkgName}:usgEnabled? t \"${<pkgName} package adoption control.\")"))
    ))

(advice-add 'org-dblock-write:b:elisp:pkg/fullUpdate :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg/fullUpdate (<params)
  "
** Produce something like defvar bnp:mua-abstract:usage:enabled?
"
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<pkgsStage (or (plist-get <params :pkgsStage) "ready"))
         (<advice (or (plist-get <params :advice) ()))	 
         (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) nil))
         (<pkgName (or (plist-get <params :pkgName) nil))
	 ($funcName  (s-lex-format "${<pkgAdoptionType}:${<pkgName}|fullUpdate"))	 
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (b:dblock:defun|prep $funcName <advice)))      

    (defun outCommentContent ()
      (let* (
             ($inHere (b:log|entry (b:func$entry)))
             )
	(b:func:advice|insert $funcName <advice)
	(insert (s-lex-format "\n(defun ${$funcName} ()"))
	(b:dblock:docStr|insert (s-lex-format
       "*${<pkgName}* package adoption full update template."))
	(b:dblock:funcEntry|record <pkgsStage)	
	(insert (s-lex-format "\
 (when ${<pkgAdoptionType}:${<pkgName}:usgEnabled?
    (${<pkgAdoptionType}:${<pkgName}:install|update)
    (${<pkgAdoptionType}:${<pkgName}:config|main)
    )
  )"
			      ))))
    
    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentContent)
    ))


(defun b:func:advice|nameToFunc (<adviceName)
  "Given *<adviceName* obtain corresponding adviceFunction."
  (let* (
	 ($result nil)
	 )
    (cond
     ((string= <adviceName "doomOnly")
      (setq $result "b:advice:common|doomOnly"))
     ((string= <adviceName "pureOnly")
      (setq $result "b:advice:common|pureOnly"))
     ((string= <adviceName "nullify")
      (setq $result "b:advice:common|nullify"))
     ((string= <adviceName "trace")
      (setq $result "trace"))
     (t
      ;;(message "Unknown")
      (setq $result <adviceName)))
    $result))

(defun b:func:advice|insert (<funcName <adviceList)
  "Insert advice name."
  (let* (
	 ($adviceFunc)
	 )
    (loop-for-each $each <adviceList
      (setq $adviceFunc (b:func:advice|nameToFunc $each))
      (insert
       (s-lex-format
	"\n(advice-add '${<funcName} :around #'${$adviceFunc})"
	)))))


(defun b:dblock:sectionTitleOpenInsert(<sectionType)
  (insert
   (format
    "*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  %-10s ::"
<sectionType
)))


(defun b:dblock:sectionTitleCloseInsert(@sectionType)
  (insert
   (format "  [[elisp:(org-cycle)][| ]]\n#+end_org \"\"\"\n")))


(defun b:dblock:body:elisp|prep (<sectionType <funcName <advice &optional <docStr <comment)
  (or <docStr (setq <docStr ""))
  (or <comment (setq <comment ""))
  (let* (
	 ($adviceStr "")
         ($openStr "")
         ($closeStr "")
         ($middleStr "")
         ($result "")
	 )
    (setq
     $openStr
     (format
      "*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ \
_[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ \
[[elisp:(outline-show-branches+toggle)][|=]] \
[[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  %-10s \
[[elisp:(outline-show-subtree+toggle)][||]]"
         <sectionType))

    (setq
     $closeStr
     (format
      "  [[elisp:(org-cycle)][| ]]"))

    (when <advice
      (setq $adviceStr (s-lex-format "~advice=${<advice}~")))
    (setq
     $middleStr
     (s-lex-format
      "  <<${<funcName}>> ${$adviceStr} -- ${<comment}"))

    (setq $result (concat $openStr $middleStr $closeStr))))


(defun b:dblock:defmacro|prep (<funcName <advice &optional <docStr)
  (or <docStr (setq <docStr ""))
  (b:dblock:body:elisp|prep "defmacro" <funcName <advice <docStr))

(defun b:dblock:defun|prep (<funcName <advice &optional <docStr)
  (or <docStr (setq <docStr ""))
  (b:dblock:body:elisp|prep "defun" <funcName <advice <docStr))


(defun b:dblock:cl-defun|prep (<funcName <advice)
    (b:dblock:body:elisp|prep "cl-defun" <funcName <advice))


(defun b:dblock:funcEntry|record (<pkgsStage)
  (when (string= <pkgsStage "ready")
          (insert
           (s-lex-format
            "\
 (b:log|entry (b:func$entry))"))))


(defun b:dblock:docStr|insert (<docStr)
  (let* (($docStr (s-lex-format "${<docStr}")))
  (insert (s-lex-format
           "\n   \" #+begin_org\n** DocStr: ${$docStr}\n#+end_org \"\n"))))


(advice-add 'org-dblock-write:b:elisp:pkg:install/update :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg:install/update (<params)
  "
** Produce something like defvar bnp:mua-abstract:usage:enabled?
"
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<pkgsStage (or (plist-get <params :pkgsStage) "ready"))
         (<advice (or (plist-get <params :advice) ()))
         (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) nil))
         (<pkgName (or (plist-get <params :pkgName) nil))
	 ($funcName  (s-lex-format "${<pkgAdoptionType}:${<pkgName}:install|update"))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (b:dblock:defun|prep $funcName <advice)))

    (defun outCommentPostContent ()
      (if (member <pkgAdoptionType b:pkg:adoption::types)
          (funcall (intern (s-lex-format "outCommentPostContent_${<pkgAdoptionType}")))
        (b::error $inHere (s-lex-format "Unknown ${<pkgAdoptionType}"))))

    (defun outCommentPostContent_b:npa ()  ;; Blee Native Package Adoption
      (let* (($straightInstaller))
	(b:func:advice|insert $funcName <advice)
        (insert (s-lex-format "\n(defun ${$funcName} ()"))
	(b:dblock:docStr|insert (s-lex-format
	 "{$<pkgName} Native package adoption install or update template."))
	(b:dblock:funcEntry|record <pkgsStage)	
        (if (string= <pkgsStage "ready")
            (setq $straightInstaller "b:pkg:straight|profiledInstall\n       b:pkgsProfile:native")
          (setq $straightInstaller "straight-use-package"))
        (insert (s-lex-format "
 (if b:g:dev:mode?
      (${$straightInstaller}
       '(${<pkgName} :local-repo \"/bisos/git/bxRepos/blee/${<pkgName}\"))
    (${$straightInstaller}
     '(${<pkgName} :type git :host github :repo \"bx-blee/${<pkgName}\"))))"
          ))))

    (defun outCommentPostContent_b:cpa ()  ;; Blee Component Package Adoption
      (let* (($straightInstaller))
	(b:func:advice|insert $funcName <advice)
        (insert (s-lex-format "\n(defun ${$funcName} ()"))
	(b:dblock:docStr|insert (s-lex-format 
	 "*${<pkgName}* Component Package Adoption install or update template."))
	(b:dblock:funcEntry|record <pkgsStage)	
        (if (string= <pkgsStage "ready")
            (setq $straightInstaller "b:pkg:straight|install")
          (setq $straightInstaller "straight-use-package"))
        (insert (s-lex-format "\n (${$straightInstaller} '${<pkgName}))"))))

    (defun outCommentPostContent_bcpg ()  (outCommentPostContent_b:cpg))  ;; MB-2022 --- Naming convention changes to be sorted out.

    (defun outCommentPostContent_b:cpg ()  ;; Blee Component Package Grouping
      (b:func:advice|insert $funcName <advice)
      (insert (s-lex-format "\n(defun ${$funcName} ()"))
      (b:dblock:docStr|insert (s-lex-format
       "${<pkgName} Component Package Adoption install or update template."))
      (b:dblock:funcEntry|record <pkgsStage))	

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentPostContent)
    ))

 ;;;

(advice-add 'org-dblock-write:b:elisp:pkg:config/main :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg:config/main (<params)
  "
** Produce something like defvar bnp:mua-abstract:usage:enabled?
"
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<pkgsStage (or (plist-get <params :pkgsStage) "ready"))
         (<advice (or (plist-get <params :advice) ()))
	 (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) nil))
         (<pkgName (or (plist-get <params :pkgName) nil))
	 ($funcName  (s-lex-format "${<pkgAdoptionType}:${<pkgName}:config|main"))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (b:dblock:defun|prep $funcName <advice)))

    (defun outCommentPostContent ()
      (b:func:advice|insert $funcName <advice)
      (insert (s-lex-format "\n(defun ${$funcName} ()"))
      (b:dblock:docStr|insert (s-lex-format
       "*${<pkgName}* package adoption config template."))
      (b:dblock:funcEntry|record <pkgsStage))	

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    (outCommentPostContent)
    ))

(advice-add 'org-dblock-write:b:elisp:pkg/install :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg/install (<params)
  "
** Produce something like defvar bnp:mua-abstract:usage:enabled?
"
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openBlank" "closeBlank"))
         (<pkgsStage (or (plist-get <params :pkgsStage) "ready"))
         (<pkgName (or (plist-get <params :pkgName) nil))
         (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) "b:cpa"))	 
         (<pkgDesc (or (plist-get <params :pkgDesc) ""))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun outCommentPreContent ())
    (defun bodyContentPlus ())
    (defun bodyContent ()
      (insert (s-lex-format "  =component= ~${<pkgName}~ *${<pkgDesc}*")))

    (defun outCommentPostContent ()
      (if (string= <pkgsStage "ready")
          (setq $straightInstaller "b:pkg:straight|install")
        (setq $straightInstaller "straight-use-package"))
      (cond
       ((string= <pkgAdoptionType "b:cpa")
	(insert (s-lex-format "\n (${$straightInstaller} '${<pkgName})")))
       ((string= <pkgAdoptionType "b:npa")
	(insert (s-lex-format "
 (if b:g:dev:mode?
      (${$straightInstaller}
       '(${<pkgName} :local-repo \"/bisos/git/bxRepos/blee/${<pkgName}\"))
    (${$straightInstaller}
     '(${<pkgName} :type git :host github :repo \"bx-blee/${<pkgName}\"))))"
			      )))
       (t
	(b::error $inHere (s-lex-format "Unknown ${<pkgAdoptionType}")))))

	
    (progn  ;; Actual Invocations
      (outCommentPreContent)
      (bx:invoke:withStdArgs$bx:dblock:governor:process)
      (outCommentPostContent)
      )))

(advice-add 'org-dblock-write:b:elisp:pkg/summaryText :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:b:elisp:pkg/summaryText (<params)
  "
** Insert the package adoption summary text.
*** TODO Revisit openTerseNoNl closeContinue
"
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
         ($myName (first $inHere))
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         (<pkgAdoptionType (or (plist-get <params :pkgAdoptionType) nil))
         (<pkgName (or (plist-get <params :pkgName) nil))
         )
    (bxPanel:params$effective)

    (defun helpLine () "NOTYET" )
    (defun bodyContentPlus ())
    (defun bodyContent ()
      "Insert information"
      (insert
       (s-lex-format
        " Summary:  ${<pkgAdoptionType} Adoption of :${<pkgName}
Machine Generated By ${$myName}
Initiated with yasnippet at: bx-comeega-elisp-mode/begin/packageAdoption"
        )))
    
    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))



;;;
;;; BELOW IS BEING OBSOLETED
;;;


(defun org-dblock-write:bx:dblock:lisp:requires (params)
  (let ((bx:disabledP (or (plist-get params :disabledP) "UnSpecified"))
        )
    (message (format "disabledP = %s" bx:disabledP))
    (if (not
         (or (equal "TRUE" bx:disabledP)
             (equal "true" bx:disabledP)))
        (progn
          ;;; Processing Body
          (message (format "EXECUTING -- disabledP = %s" bx:disabledP))
          (insert (format "\
(lambda () \"\n*  [[elisp:(org-cycle)][| ]]  Requires       :: Requires [[elisp:(org-cycle)][| ]]
\")"
                          )))
      (message (format "DBLOCK NOT EXECUTED -- disabledP = %s" bx:disabledP))
      )))


(lambda () "
*  [[elisp:(org-cycle)][| ]]  defun         :: (org-dblock-write:bx:dblock:lisp:provide) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-write:bx:dblock:lisp:provide (params)
  (let ((bx:disabledP (or (plist-get params :disabledP) "UnSpecified"))
        (bx:name (or (plist-get params :lib-name) "missing"))
        )
    (message (format "disabledP = %s" bx:disabledP))
    (if (not
         (or (equal "TRUE" bx:disabledP)
             (equal "true" bx:disabledP)))
        (progn
          ;;; Processing Body
          (message (format "EXECUTING -- disabledP = %s" bx:disabledP))
          (insert (format "\
(lambda () \"\n*  [[elisp:(org-cycle)][| ]]  Provide                     :: Provide [[elisp:(org-cycle)][| ]]
\")

(provide '%s)"
                          bx:name
                          )))
      (message (format "DBLOCK NOT EXECUTED -- disabledP = %s" bx:disabledP))
      )))


(lambda () "
*  [[elisp:(org-cycle)][| ]]  defun         :: (org-dblock-write:bx:dblock:lisp:loading-message) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-write:bx:dblock:lisp:loading-message (params)
  (let ((bx:disabledP (or (plist-get params :disabledP) "UnSpecified"))
        (bx:message (or (plist-get params :message) "missing"))
        )
    (message (format "disabledP = %s" bx:disabledP))
    (if (not
         (or (equal "TRUE" bx:disabledP)
             (equal "true" bx:disabledP)))
        (progn
          ;;; Processing Body
          (message (format "EXECUTING -- disabledP = %s" bx:disabledP))
          (insert (format "\
(lambda () \"\n*\
  [[elisp:(org-cycle)][| ]]  \"Loading...\"                :: Loading Announcement Message %s [[elisp:(org-cycle)][| ]]
\")

(blee:msg \"Loading: %s\")"
         bx:message bx:message)))
           (message (format "DBLOCK NOT EXECUTED -- disabledP = %s" bx:disabledP))
      )))



(lambda () "
*  [[elisp:(org-cycle)][| ]]  Conversion                 ::      /Conversion Facilities/   [[elisp:(org-cycle)][| ]]
")



(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (elisp-defun-to-orgSec) [[elisp:(org-cycle)][| ]]
")

(defun elisp-one-defun-to-orgSec ()
  "Convert All sections to their dblocks" 
  (interactive)
  (if (save-excursion (re-search-forward "^(defun " nil t))
      (move-beginning-of-line 1)
      (when (re-search-forward "^(defun " nil t)
        (let* (
               (defunName (thing-at-point 'symbol))
               )
          ;;;(message (format "Section ==  %s" defunName))
          (save-excursion
            (skip-chars-forward "^(")
            (forward-char)
            (let ((defunArgs
                   (buffer-substring 
                    (point)
                    (progn
                      (skip-chars-forward "^)")
                      (point)))))
              
              (message (format "Section ==  %s-- %s" defunName defunArgs))
              (beginning-of-line 1)
              (open-line 1)
              ;;;(delete-region (point) (progn (forward-line 1) (point)))
              (message "Inserting dblock ...") ;;(sit-for 1)
              (elisp-defun-orgSec-insert defunName defunArgs)
              )))))
  )

(defun elisp-one-cl-defun-to-orgSec ()
  "Convert All sections to their dblocks" 
  (interactive)
  (if (save-excursion (re-search-forward "^(cl-defun " nil t))
      (when (re-search-forward "^(cl-defun " nil t)
        (let* (
               (defunName (thing-at-point 'symbol))
               (keyWordLinePoint (point))
               )
          ;;;(message (format "Section ==  %s" defunName))
          (save-excursion
            (skip-chars-forward "^(")
            (forward-char)
            (let ((defunArgs
                   (buffer-substring 
                    (point)
                    (progn
                      (skip-chars-forward "^)")
                      (point)))))
              
              (message (format "Section ==  %s-- %s" defunName defunArgs))
              (goto-char keyWordLinePoint)
              (beginning-of-line 1)
              (open-line 1)
              ;;;(delete-region (point) (progn (forward-line 1) (point)))
              (message "Inserting dblock ...") ;;(sit-for 1)
              (elisp-labeled-orgSec-insert "cl-defun" defunName defunArgs)
              )))))

  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (elisp-all-defun-to-orgSec) [[elisp:(org-cycle)][| ]]
")

(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (elisp-all-defun-to-orgSec) [[elisp:(org-cycle)][| ]]
")

(defun elisp-all-defun-to-orgSec ()
  "Convert All sections to their dblocks" 
  (interactive)
  (if (save-excursion (re-search-forward "^(defun " nil t))
      (while (re-search-forward "^(defun " nil t)
        (let* (
               (defunName (thing-at-point 'symbol))
               )
          ;;;(message (format "Section ==  %s" defunName))
          (save-excursion
            (skip-chars-forward "^(")
            (forward-char)
            (let ((defunArgs
                   (buffer-substring 
                    (point)
                    (progn
                      (skip-chars-forward "^)")
                      (point)))))
              
              (message (format "Section ==  %s-- %s" defunName defunArgs))
              (beginning-of-line 1)
              (open-line 1)
              ;;;(delete-region (point) (progn (forward-line 1) (point)))
              (message "Inserting dblock ...") ;;(sit-for 1)
              (elisp-defun-orgSec-insert defunName defunArgs)
              )))))

  (if (save-excursion (re-search-forward "^(cl-defun " nil t))
      (while (re-search-forward "^(cl-defun " nil t)
        (let* (
               (defunName (thing-at-point 'symbol))
               (keyWordLinePoint (point))              
               )
          ;;;(message (format "Section ==  %s" defunName))
          (save-excursion
            (skip-chars-forward "^(")
            (forward-char)
            (let ((defunArgs
                   (buffer-substring 
                    (point)
                    (progn
                      (skip-chars-forward "^)")
                      (point)))))
              
              (message (format "Section ==  %s-- %s" defunName defunArgs))
              (goto-char keyWordLinePoint)            
              (beginning-of-line 1)
              (open-line 1)
              ;;;(delete-region (point) (progn (forward-line 1) (point)))
              (blee:msg "Inserting dblock ...") ;;(sit-for 1)
              (elisp-labeled-orgSec-insert "cl-defun" defunName defunArgs)            
              )))))
  
  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (elisp-defun-orgSec-insert defunName defunArgs) [[elisp:(org-cycle)][| ]]
  ")

(defun elisp-labeled-orgSec-insert (label defunName defunArgs)
  ""
  (if (string= "" defunArgs)
      (insert
       (format "\
(lambda () \"\n*\
  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || %s :: (%s) [[elisp:(org-cycle)][| ]]
\")\n"
        (str:leftAdjustToLength 12 " " label) defunName))
    (insert
       (format "\
(lambda () \"\n*\
  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || %s :: (%s %s) [[elisp:(org-cycle)][| ]]
  \")\n"
        (str:leftAdjustToLength 12 " " label) defunName defunArgs))
))

(defun elisp-defun-orgSec-insert (defunName defunArgs)
  ""
  (if (string= "" defunArgs)
      (insert
       (format "\
(lambda () \"\n*\
  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (%s) [[elisp:(org-cycle)][| ]]
\")\n"
        defunName))
    (insert
       (format "\
(lambda () \"\n*\
  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (%s %s) [[elisp:(org-cycle)][| ]]
  \")\n"
        defunName defunArgs))
))




;;;#+BEGIN: bx:dblock:lisp:provide :disabledP "false" :lib-name "dblock-emacs-lisp"
(lambda () "
*  [[elisp:(org-cycle)][| ]]  Provide       :: Provide [[elisp:(org-cycle)][| ]]
")

(provide 'dblock-emacs-lisp)
;;;#+END:

(lambda () "
*  [[elisp:(org-cycle)][| ]]  Common        :: /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
#+STARTUP: showall
")

;;; local variables:
;;; no-byte-compile: t
;;; bx:iimp:iimName: "hereHere"
;;; end:
