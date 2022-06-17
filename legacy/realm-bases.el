;;; -*- Mode: Emacs-Lisp; -*-

(lambda () "
* ByStar User Environment (BUE) Bases
")

(defun b:boot|blee-home-obtain ()
  "If envvar BLEE_HOME is set, return that. Otherwise use usgBpos.sh."
  (let* (($fullUseBxoPath
	  (replace-regexp-in-string "\n$" "" 
				    (shell-command-to-string
	  "usgBpos.sh -i usgBpos_usageEnvs_fullUse_bxoPath")))
	 ($bueElispBase
	  (expand-file-name (format "%s/blee/emacs" $fullUseBxoPath))))
    (if (file-directory-p $bueElispBase)
	(setq $result $bueElispBase)
      (setq $result nil))))


;;; (file-directory-p "/bxo/r3/iso/piu_mbFullUsage/blee/elisp")
;;; (file-directory-p "/bxo/r3/iso/piu_mbFullUsage/blee/emacs")
;;; (blee:bue:base-obtain)
(defun blee:bue:base-obtain ()
  "Using usgBpos we get the usage env base"
  (let*
      (
       ($fullUseBxoPath
	(replace-regexp-in-string "\n$" "" 
	 (shell-command-to-string
	  "usgBpos.sh -i usgBpos_usageEnvs_fullUse_bxoPath")))
       ($bueElispBase
	(expand-file-name
	 (format "%s/blee/elisp" $fullUseBxoPath)))
       ($result)
       )
    ;;(message $bueElispBase)
    (when (file-directory-p $bueElispBase)
      (setq $result $bueElispBase))

    (unless (file-directory-p $bueElispBase)  
      (setq $result nil))
    $result
    )
  )


(defun blee:bue:emacs-default-obtain ()
  "Using usgBpos we get the usage env base"
  (let*
      (
       ($fullUseBxoPath
	(replace-regexp-in-string "\n$" "" 
	 (shell-command-to-string
	  "usgBpos.sh -i usgBpos_usageEnvs_fullUse_bxoPath")))
       ($bueElispBase
	(expand-file-name
	 (format "%s/blee/emacs" $fullUseBxoPath)))
       ($result)
       )
    ;;(message $bueElispBase)
    (when (file-directory-p $bueElispBase)
      (setq $result $bueElispBase))

    (unless (file-directory-p $bueElispBase)  
      (setq $result nil))
    $result
    )
  )


(defun blee:bue:base-obtain%% ()
  "Either ~/BUE/elisp or ~/blee"
  (let* (bueElispBase (expand-file-name "~/BUE/elisp"))
    )
  (when (file-exists-p bueElispBase)
    bueElispBase)

  (unless (file-exists-p bueElispBase)  
    "~/blee"
    )
  )

(lambda () "
* Now setup the load-path -- (describe-variable 'load-path)
")

;;
;; (describe-variable 'load-path)
;;


(defun blee:load-path:add (@dirPath)
  "@dirPath is added to load-path after verification."
  ;;(blee:ann|this-func (compile-time-function-name))
  (when @dirPath
    (let (
	  ($dirPath (expand-file-name @dirPath))
	  )
      (if (file-directory-p $dirPath)
	  (add-to-list 'load-path $dirPath)
	)
      )))


(funcall  (lambda () "
*     load-path setup
**    +env/main +env/lib +env/dblocks
"
	    (message "Setting Up load-path")
	    
	    
	    ;; (blee:load-path:add "~/BUE/elisp")
	    (blee:load-path:add (blee:bue:base-obtain))
	    ))




;;;#+BEGINNOT: bx:dblock:lisp:provide :disabledP "false" :lib-name "blee-bases-setup"
(lambda () "
*  [[elisp:(org-cycle)][| ]]  Provide                     :: Provide [[elisp:(org-cycle)][| ]]
")

(provide 'realm-bases)
;;;#+END:


(lambda () "
*  [[elisp:(org-cycle)][| ]]  Common        :: /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
#+STARTUP: showall
")

;;; local variables:
;;; major-mode: emacs-lisp-mode
;;; end:



