;;; dblock-org-realms.el --- realms based inclusion in bxPanels  -*- lexical-binding: t; -*-
;;
;; This file is part of Blee (ByStar Libre-Halaal Emacs Environment).
;; Blee Copyright and License apply.
;;
;;; Commentary:
;;
;;  Here we provide for realms based inclusion in bxPanels.
;;
;;  There is a combination of two concepts at work here.
;;  1) bxPanels    --- General facilities for abstracion of Blee Panles.
;;  2) bx:realm   --- General facilities for abstracion of BISOS Realms
;;  When combined the module prefix is:
;;  bx:realm:bpoId:      --- bpoId of a realm
;;  bx:realm:panels:
;;
;;  NOTYET: IMPORTANT:
;;  - All the letGet and bx:dblock:governor:process facilities should go into their own modyles.
;;  - All the bx:relams: should go into their own modules.
;;
;;; Code:


(require 'bx-lcnt-lib)
(require 'dblock-governor)
(load "time-stamp")

;;
;; (macroexpand '(bx:invoke:withStdArgs$bx:dblock:governor:process))
(defmacro bx:invoke:withStdArgs$bx:dblock:governor:process ()
  "invokes bx:dblock:governor:process with standard args"
  `(progn
     (bx:dblock:governor:process
      <governor
      <extGov
      <style
      <outLevel
      (compile-time-function-name)
      'helpLine
      'bodyContentPlus
      'bodyContent
      )
     )
  )

;;
;; (macroexpand '(letGet$governor))
(defmacro letGet$governor ()
  "Controls general behaviour"
  `(or (plist-get <params :governor) "enabled")
  )

;;
;; (macroexpand '(letGet$extGov))
(defmacro letGet$extGov ()
  "External Governor"
  `(or (plist-get <params :extGov) "na")
  )

;;
;; (macroexpand '(letGet$outLevel 1))
(defmacro letGet$outLevel (outLevel)
  "Outline Level"
  `(or (plist-get <params :outLevel) ,outLevel)
  )

;;
;; (macroexpand '(letGet$model))
(defmacro letGet$model ()
  ""
  `(or (plist-get <params :model) "auto")
  )

;;
;; (macroexpand '(letGet$style "openTerseNoNl" "closeContinue"))
(defmacro letGet$style ($openStyle $closeStyle)
  "open and closing styles"
  `(or (plist-get <params :style) (list ,$openStyle ,$closeStyle))
  )

;;
;; (macroexpand '(bxPanel:params$effective))
(defmacro bxPanel:params$effective ()
  "Combine logical values of input parameters"
  `(setq <governor (bx:dblock:governor:effective <governor <extGov))
  )


(defun $realm:markup|get (<realm)
  "Get org-mode markup specifier for <realm"
  (let* (
        ($markup "")
        )
    (cond
     ((string-equal <realm "collective")
      (setq $markup "_")
      )
     ((string-equal <realm "site")
      (setq $markup "/")
      )
     ((string-equal <realm "usageEnv")
      (setq $markup "*")
      )
     ((string-equal <realm "platform")
      (setq $markup "=")
      )
     (t
      (error (format "unexpected %s" <realm))
      ))
    $markup
    ))


(defun bx:realms|listGet ()
  (list
   "collective"         ;; ByStar Digital Ecosystem
   "nation"
   "district"   ;; eg service provider
   "site"
   "projs"
   "platform"
   "usageEnv"
   ))

;;;
;;; (bx:realm:bpoId|fromHomeGet "usageEnv")
;;; bx:realm:bpoId|fromHomeGet
(defun bx:realm:bpoId|fromHomeGet (<realm)
  "Return realm:bpoId based on <realm."
  (let* (
         ($homeDir (expand-file-name "~"))
         ($bpoId nil)
        )
    (cond
     ((member <realm (bx:realms|listGet))
      (setq $bpoId t)
      )
     (t
      (error (format "unexpected %s" <realm))
      ))
    (when $bpoId
      (let* (
             ($missing t)
             ($realmBaseDir (f-join $homeDir "bpos/realms" <realm))
             ($selectedRealmBaseDir (f-join $realmBaseDir "0"))
             )
      
        (if (file-directory-p $realmBaseDir)
            (if (file-directory-p $selectedRealmBaseDir)
                (progn
                  (setq $missing nil)
                  (setq $bpoId (file-truename $selectedRealmBaseDir))
                  )
              (progn
                (insert (format "** Missing selectedRealmBaseDir %s\n" $selectedRealmBaseDir))
                )
              )
          (progn
            (insert (format "** Missing realmBaseDir %s\n" $realmBaseDir))
            )
          )
        (when $missing
          (setq $bpoId nil)
          )
        )
    $bpoId
    )))

;;; bx:realm:bpoId|panelsBaseGet
(defun  bx:realm:bpoId|panelsBaseGet (<bpoIdBase)
  "Return panelsBasePath or nil."
  (let* (
         ($baseDir (concat <bpoIdBase "/realmPanels"))
         ($realmPanelsBase nil)
         )
    (if (file-directory-p $baseDir)
        (progn
          (setq $realmPanelsBase (file-truename $baseDir))
          )
      (progn
        (insert (format "Missing realmPanelsBaseGet %s\n" $baseDir))
        )
      )
    $realmPanelsBase
    ))

(defun bx:realm:bpoId:panelExtension|insert (<realmPanelsBase <segName)
  "Return realm extensions for the panel as string or nil.
Content of <segName + .org  is the name of file, under <realmPanelsBase, mirroring `current-buffer`
location that will be returned as string."
  (let* (
         ($cwd (expand-file-name "."))
         ($realmExtensionBase)
         ($extensionFileName)
         )
    (when <realmPanelsBase
      (setq $realmExtensionBase
            (replace-regexp-in-string
             "/bisos/git/auth/bxRepos/blee-binders"
             <realmPanelsBase
             $cwd))
      (setq $extensionFileName
            (f-join $realmExtensionBase
                    (concat <segName ".org")))
      ;; If the segment file does not exist, we create an empty one.
      (when (not (file-exists-p $extensionFileName))
        (make-empty-file $extensionFileName t))
      (if (equal
           0
           (file-attribute-size (file-attributes $extensionFileName)))
          (progn
            (insert (concat "** No extention found at: " $extensionFileName "\n"))
            )
        (progn
          (insert (concat "** Extended By: " $extensionFileName " :*\n"))
          (insert (with-temp-buffer
                    (insert-file-contents $extensionFileName)
                    (bxPanel:dblocks/Kill)
                    (buffer-string)))
          )))))

(defun bxPanel:lineDeliminator|top (<realm)
  "Based on <realm, create a topLineDeliminator.
<realm could be one of collective|site|platform|bue"
  (let* (
        ($markup "")
        )
    (setq $markup ($realm:markup|get <realm))
    
    (insert
     (format
      "%s"
      ;;(blee:panel:outLevelStr @outLevel)
      (make-string 32 ? )
      ;;(make-string 30 ?=)
      ))
    
    (insert
     (format
      "[[elisp:(org-cycle)][| %s%s%s |]]"
      $markup
      (make-string 31 cfw:fchar-horizontal-line)
      $markup
      ))

    (insert
     (format
      "%s\n"
      (make-string 25 ? )
      ))
    ))


(defun bxPanel:lineDeliminator|bottom (<realm)
  "Based on <realm, create a topLineDeliminator.
<realm could be one of collective|site|platform|bue"
  (let* (
        ($markup "")
        )
    (setq $markup ($realm:markup|get <realm))
    (insert
     (format
      "%s%s%s%s%s%s"
      (blee:panel:outLevelStr @outLevel)
      (make-string 35 ? )
      ;;(make-string 30 ?=)
      $markup
      (make-string 35 cfw:fchar-horizontal-line)
      $markup
      (make-string 25 ? )      
    ))))

(defun bxPanel:lineDeliminator|one (<realm)
  "Based on <realm, create a topLineDeliminator.
<realm could be one of collective|site|platform|bue"
  (let* (
        ($markup "")
        )
    (setq $markup ($realm:markup|get <realm))
    (insert
     (format
      "%s%s%s%s%s\n"
      (blee:panel:outLevelStr @outLevel)
      (make-string 35 ? )
      ;;(make-string 30 ?=)
      $markup
      (make-string 30 cfw:fchar-horizontal-line)
      $markup
    ))))
  

(advice-add 'org-dblock-write:bxPanel:realms:user|extend :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:bxPanel:realms:user|extend  (<params)
  "Creates terse links for navigation surrounding current panel in treeElem."
  (let* (
        ($realm "usageEnv")
        )
    (bxPanel:realms|extend $realm <params)))


(advice-add 'org-dblock-write:bxPanel:realms:site|extend :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:bxPanel:realms:site|extend  (<params)
  "Creates terse links for navigation surrounding current panel in treeElem."
  (let* (
        ($realm "site")
        )
    (bxPanel:realms|extend $realm <params)))


(advice-add 'org-dblock-write:bxPanel:realms:platform|extend :around #'bx:dblock:control|wrapper)
(defun org-dblock-write:bxPanel:realms:platform|extend  (<params)
  "Creates terse links for navigation surrounding current panel in treeElem."
  (let* (
        ($realm "platform")
        )
    (bxPanel:realms|extend $realm <params)))

(defun bxPanel:dblocks/Kill ()
  "Eliminate dblock BEGIN and END.
Otherwise, these would go inside of a dblock and mess things up."
  (interactive)
  (goto-char (point-min))
  (while (re-search-forward "+BEGIN:" nil t)
    (beginning-of-line)
    (kill-line)
    (kill-line)      
    )
  (goto-char (point-min))
  (while (re-search-forward "+END" nil t)
    (beginning-of-line)
    (kill-line)
    (kill-line)      
    )
  )


(defun bxPanel:realms|extend  (<realm <params)
  "Creates terse links for navigation surrounding current panel in treeElem."
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         ;;
         (<bpoId (or (plist-get <params :bpoId) "auto"))
         (<segName (or (plist-get <params :segName) "general"))  
         ($homeDir (expand-file-name "~"))
         )

    (bxPanel:params$effective)   

    (defun helpLine ()
      ":bpoId \"auto or bpoId\""
      )

    (defun bodyContentPlus ()
      (bxPanel:lineDeliminator|top <realm)      
      )

    (defun bodyContent ()
      "If there is user data, insert it."
      (let* (
             ($bpoIdBase)
             ($cwd (expand-file-name "."))
             ($realmExtensionBase)
             ($realmPanelsBase)
             ($extensionFileName)
             )
        (when (string= <bpoId "auto")
          (setq $bpoIdBase (bx:realm:bpoId|fromHomeGet <realm)))
        (when (not $bpoIdBase)
          (message (s-lex-format "Warning: Missing bpoId=${<bpoId} -- bpoIdBase=${$bpoIdBase}")))
        (when $bpoIdBase
          (cond
           ((string= <realm "usageEnv")
            (setq $realmPanelsBase (bx:realm:bpoId|panelsBaseGet $bpoIdBase))
            (message (s-lex-format "bpoIdBase=${$bpoIdBase} ${$realmPanelsBase}"))
            (bx:realm:bpoId:panelExtension|insert $realmPanelsBase <segName)
            (bxPanel:lineDeliminator|bottom <realm)
            )
           ((string= <realm "site")
            (insert "Unimplemented Site")
            )
           ((string= <realm "platform")
            (insert "Unimplemented Platform")
            )
           (t
            (error (s-lex-format "Unexpected <realm=${<realm}"))
            )
           ))))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


(defun bxPanel:realms|extend%%  (<realm <params)
  "Creates terse links for navigation surrounding current panel in treeElem."
  (let* (
         (<governor (letGet$governor)) (<extGov (letGet$extGov))
         (<outLevel (letGet$outLevel 1)) (<model (letGet$model))
         (<style (letGet$style "openTerseNoNl" "closeContinue"))
         ;;
         (<bpoId (or (plist-get <params :bpoId) "auto"))
         (<segName (or (plist-get <params :segName) "general"))
         ($homeDir (expand-file-name "~"))
         )

    (bxPanel:params$effective)

    (defun helpLine ()
      ":bpoId \"auto or bpoId\""
      )

    (defun bodyContentPlus ()
      (bxPanel:lineDeliminator|top <realm)
      )

    (defun bodyContent ()
      "If there is user data, insert it."
      (let* (
             ($bpoIdBase)
             ($cwd (expand-file-name "."))
             ($realmExtensionBase)
             ($realmPanelsBase)
             ($extensionFileName)
             )
        (when (string= <bpoId "auto")
          (setq $bpoIdBase (bx:realm:bpoId|fromHomeGet <realm))
          )

        (cond
         ((string= <realm "usageEnv")
          (if $bpoIdBase
              (progn
                (setq $realmPanelsBase (bx:realm:bpoId|panelsBaseGet $bpoIdBase))
                (message (s-lex-format "bpoIdBase=${$bpoIdBase} ${$realmPanelsBase}"))
                (when $realmPanelsBase
                  ;; (setq $realmExtensionBase
                  ;;       (replace-regexp-in-string "/bisos/panels"
                  ;;                                 $realmPanelsBase $cwd))
                  (setq $realmExtensionBase
                        (replace-regexp-in-string "/bisos/git/auth/bxRepos/blee-binders"
                                                  $realmPanelsBase $cwd))
                  (setq $extensionFileName (concat $realmExtensionBase "/" <segName ".org"))
                  (when (not (file-exists-p $extensionFileName))
                    (make-empty-file $extensionFileName t))
                  (if (equal
                       0
                       (file-attribute-size (file-attributes $extensionFileName)))
                      (progn
                        (insert (concat "** No user extention found at: " $extensionFileName "\n"))
                        )
                    (progn
                      (insert (concat "** Extended By: " $extensionFileName " :*\n"))
                      (insert (with-temp-buffer
                                (insert-file-contents $extensionFileName)
                                (bxPanel:dblocks/Kill)
                                (buffer-string)))
                      (bxPanel:lineDeliminator|bottom <realm)
                      )
                    )
                  )
                )
            (progn
              (message (format "Missing bpoId=%s -- bpoIdBase=%s" <bpoId $bpoIdBase))
              )
            )
          )
         ((string= <realm "site")
          (insert "Unimplemented Site")
          )
         ((string= <realm "platform")
          (insert "Unimplemented Platform")
          )
         (t
          (error (s-lex-format "Unexpected <realm=${<realm}"))
          )
         )
        ))

    (bx:invoke:withStdArgs$bx:dblock:governor:process)
    ))


(defun org-dblock-write:bx:dblock:bnsm:user-extenstions-insert (params)
  "NOTYET, look for menuFile in subDirs, then make them visitable"
  (let ((bx:types (or (plist-get params :types) ""))
        )
    (let 
        (out-string user-base-dir user-file-name)
      (setq out-string (replace-regexp-in-string "\n" "" (shell-command-to-string "pwd")))
      (setq user-base-dir (expand-file-name (replace-regexp-in-string "/libre/ByStar/InitialTemplates" "~/BUE" out-string)))
      (setq user-file-name (concat user-base-dir "/" "fullUsagePanel-en.org"))
      (if (file-exists-p user-file-name)
          (progn
            (insert (concat "     *Extended By: " user-file-name " :*\n"))
            (insert-file user-file-name)
            )
        (insert (concat "No user extention found at: " user-file-name))
        )
      )
    )
  )


(defun org-dblock-write:bx:dblock:bnsm:user-extenstions-point-to (params)
  ""
  (let ((bx:types (or (plist-get params :types) ""))
        )
    (let 
        (out-string user-base-dir user-file-name)
      (setq out-string (replace-regexp-in-string "\n" "" (shell-command-to-string "pwd")))
      (setq user-base-dir (expand-file-name (string-replace-regexp out-string "/libre/ByStar/InitialTemplates" "~/BUE")))
      (setq user-file-name (concat user-base-dir "/" "fullUsagePanel-en.org"))
      (if (file-exists-p user-file-name)
          (progn
            (insert (concat "     *Extended By: " user-file-name " :* \n"))
            (insert (concat "*           /User:/    [[elisp:(find-file%20\"" user-file-name "\")][Pointer To User Specific Information File]]"))
            )
        (insert (concat "No user extention found at: " user-file-name))
        )
      )
    )
  )


(defun org-dblock-write:bx:dblock:bnsm:site-extenstions-insert (params)
  "NOTYET, look for menuFile in subDirs, then make them visitable"
  (let ((bx:types (or (plist-get params :types) ""))
        )
    (let 
        (out-string site-base-dir site-file-name)
      (setq out-string (replace-regexp-in-string "\n" "" (shell-command-to-string "pwd")))
      (setq site-base-dir (expand-file-name (replace-regexp-in-string "/libre/ByStar/InitialTemplates" "/private/site" out-string)))      
      (setq site-file-name (concat site-base-dir "/" "fullUsagePanel-en.org"))
      (if (file-exists-p site-file-name)
          (progn
            (insert (concat "     *Extended By: " site-file-name " :*\n"))
            (insert-file site-file-name)
            )
        (insert (concat "No site extention found at: " site-file-name))
        )
      )
    )
  )

;;;#+BEGIN: bx:dblock:lisp:provide :disabledP "false" :lib-name "dblock-org-realms"
(lambda () "
*  [[elisp:(org-cycle)][| ]]  Provide                     :: Provide [[elisp:(org-cycle)][| ]]
")

(provide 'dblock-org-realms)
;;;#+END:
