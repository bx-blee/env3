;;; -*- Mode: Emacs-Lisp; -*-
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
*  [[elisp:(org-cycle)][| ]]  Description   :: *Info and Xrefs*  <<Xref-Here->> [[elisp:(org-cycle)][| ]]
")


(lambda () "
*  [[elisp:(org-cycle)][| ]]  "Loading..."  :: Loading Announcement Message [[elisp:(org-cycle)][| ]]
")

(message "ByStar Library LOADING")


(lambda () "
*  [[elisp:(org-cycle)][| ]]  Requires      :: Requires [[elisp:(org-cycle)][| ]]
")

;;(require 'load-dir)

(lambda () "
*  [[elisp:(org-cycle)][| ]]  Top Entry     :: (bx:dblock:all-defaults-set) [[elisp:(org-cycle)][| ]]
")


;;
;;  TOP LEVEL Entry Point: (bx:dblock:all-defaults-set)
;;
;; bx:dblock 

;;;------------------------------------------------
;;;  Dblock 
;;;------------------------------------------------

;; (bx:dblock:all-defaults-set)
(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (bx:dblock:all-defaults-set) [[elisp:(org-cycle)][| ]]
")

(defun bx:dblock:all-defaults-set ()
  ""
  (interactive)

  (org-dblock-mode-comment-mode-hook-bx)
  ;;;(load-file "~/lisp/dblock/dblock-elisp-misc.el")
  (require 'dblock-lcnt-latex-front)
  (require 'dblock-lcnt-latex-body)
  (require 'dblock-lcnt-latex)
  (require 'dblock-lcnt-latex-pres)
  (require 'dblock-lcnt-latex-panel)
  (require 'dblock-lcnt-pres-panel)    
  (require 'dblock-lcnt-bash)
  (require 'dblock-iim-bash)
  (require 'dblock-iim-python)
  (require 'iim-python)    
  (require 'dblock-ploneProc-bash)
  (require 'dblock-org-general)
  (require 'dblock-org-bnsm)
  (require 'dblock-global)
  (require 'dblock-global-run-results)
  (require 'dblock-emacs-lisp)
  (require 'dblock-org-iims)
  (require 'dblock-iims-panel)
  (require 'dblock-org-realms)
  (require 'dblock-org-mailings)
  (require 'dblock-org-common)
  (require 'dblock-comeega-prog)
  (require 'dblock-comeega-elisp)
  (require 'dblock-comeega-python)
  (require 'dblock-comeega-latex)
  (require 'dblock-comeega-latex-pres)
  (require 'dblock-comeega-latex-image)
  (require 'dblock-bisos-site)
  (message "bx:dblock:defaults-set -- Done." )
  )



(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (bx:dblock:load-dblocksControl) [[elisp:(org-cycle)][| ]]
")

;; (bx:dblock:load-dblocksControl)
(defun bx:dblock:load-dblocksControl ()
  ""
  (let (
	($dirName "./Control/dblocks.el")
	)
    (if (file-directory-p (expand-file-name $dirName))
	(load-dir-one $dirName)
      (message "Missing  ./Control/dblocks.el")
      )
    ))

;;
;; (b:dblock|baseDir)
(defun b:dblock|baseDir ()
  "/bisos/blee/env3/dblocks"
  )

;;
;; (b:dblock:inserts|fromFile "./inserts/endOfFile.el")
(defun b:dblock:inserts|fromFile (<fileName)
  (b:insert-file-contents|noExtraLine (expand-file-name <fileName (b:dblock|baseDir) ))
  ;;(insert-file-contents (expand-file-name <fileName (b:dblock|baseDir) ))
  )



(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (blee:dblock:mode:disabledP modeStr) [[elisp:(org-cycle)][| ]]
  ")

;;;
;;; (blee:dblock:mode:disabledP "auto")
;;; (blee:dblock:mode:disabledP "disabled")
;;; (when (not (blee:dblock:mode:disabledP "disabledx")) (message "Running"))
;;;

(defun blee:dblock:mode:disabledP (modeStr)
  (if (or (equal "disabled" modeStr)
	   (equal "DISABLED" modeStr)
	   )
      t
    nil))



(defun bx:dblock:org-mode:func-open (@outLevel @funcName &rest @args)
  "Inserts open string based on :style argument. As one of:
openTerse -- No function name in opening
openCloseBlank --
openBlank --

openFull
openCloseFull
default
.*
"
  ;;(message (s-lex-format "ZZZ ${@outLevel}"))
  (let (
	(@style (or (plist-get @args :style) nil))
	  ;;;
	($atLeastOnceWhen nil)
	($styleOpen)
	($styleClose)
	)

    (when (stringp @style)
      (setq $styleOpen @style)
      (setq $styleClose nil)
      )

    (when (or
	   (consp @style)
	   (listp @style)
	   )
      (setq $styleOpen (pop @style))
      (setq $styleClose (pop @style))
      )

    (when (not (or
		(string= $styleOpen "openTerseNoNl")
		(string= $styleOpen "openTerse")
		(string= $styleOpen "openContinue")		
		(string= $styleOpen "openLine")		
		(string= $styleOpen "openBlank")
		(string= $styleOpen "openCloseBlank")		
	   ))
      (setq $styleOpen nil)
      )

    (unless $styleOpen
      (insert (format "\
%s [[elisp:(show-all)][(>]] [[elisp:(describe-function '%s)][dbf]]
"
		  (blee:panel:outLevelStr @outLevel)
		  @funcName
		  )))
    
    (when (string= $styleOpen "openTerseNoNl")
      (insert (format "\
%s [[elisp:(show-all)][(>]]"
		      (blee:panel:outLevelStr @outLevel)		      
		      )))

    (when (string= $styleOpen "openTerse")
      (insert (format "\
%s [[elisp:(show-all)][(>]]
"
		      (blee:panel:outLevelStr @outLevel)		      
		      )))
    
    (when (string= $styleOpen "openContinue")
      (insert (format "\
%s [[elisp:(show-all)][(>]] \
"
		      (blee:panel:outLevelStr @outLevel)		      
		      )))

    
    (when (string= $styleOpen "openLine")
      (insert (format "\
%s [[elisp:(show-all)][(>]] %s \
"
		      (blee:panel:outLevelStr @outLevel)
		      ;;(make-string 98 ?-)
		      (make-string 97 cfw:fchar-horizontal-line)		      
		      )))

    
    (when (or
	   (string= $styleOpen "openCloseBlank")
	   (string= $styleOpen "openBlank")
	   )
      (insert (format "")))
    ))



(defun bx:dblock:org-mode:func-close (@outLevel @funcName &rest @args)
  "Inserts closing string based on :style argument. As one of:
closeTerse -- No  function name in closing
closeContinue -- No outline *, no funcName
closeBlank -- Nothing at all
"
  (let (
	(@style (or (plist-get @args :style) nil))
	  ;;;
	($atLeastOnceWhen nil)
	($styleOpen)
	($styleClose)
	)

    (when (stringp @style)
      (setq $styleOpen nil)
      (setq $styleClose @style)
      )

    (when (or
	   (consp @style)
	   (listp @style)
	   )
      (setq $styleOpen (pop @style))
      (setq $styleClose (pop @style))
      )

    (when (not (or
		(string= $styleClose "closeTerse")
		(string= $styleClose "closeContinue")
		(string= $styleClose "closeBlank")
		(string= $styleClose "openCloseBlank")				
	   ))
      (setq $styleClose nil)
      )

    (unless $styleClose
      (insert (format "
%s [[elisp:(org-shifttab)][<)]] [[elisp:(describe-function '%s)][dbFunc)]]  E|
"
		      (blee:panel:outLevelStr @outLevel)		      
		      @funcName
		      )))
    (when (string= $styleClose "closeTerse")
      (insert (format "
%s [[elisp:(org-shifttab)][<)]] E|\
"
		      (blee:panel:outLevelStr @outLevel)
		      )))

    (when (string= $styleClose "closeContinue")
      (insert (format "\
 [[elisp:(org-shifttab)][<)]] E|\
"
		      )))

    (when (or
	   (string= $styleClose "closeBlank")
	   (string= $styleClose "openCloseBlank")
	   )
      (insert (format "")))
    ))
   

;;; 
(defun blee:dblock:find-function ()
  "Looks at point"
  (interactive)
  (let (
	($dblkRelFuncName (thing-at-point 'filename))
	)
    (find-function (intern (concat "org-dblock-write:" $dblkRelFuncName)))
    ;; (message (concat "org-dblock-write:" $dblkRelFuncName))
    ;; (message $dblkRelFuncName)
    )
  )
    
(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (blee:dblock:mode:disabledIndicate) [[elisp:(org-cycle)][| ]]
")

(defun blee:dblock:mode:disabledIndicate ()
  "Perhaps check the buffer's current mode and say that this dblock has been disabled"
  (message "Disabled Dblock")
  )	  

(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-update-file-bx  filename ) [[elisp:(org-cycle)][| ]]
  ")

(defun org-dblock-update-file-bx ( filename )
  "Update the dblocks of FILENAME by its major mode (org, or COMEEGA in another language), and save.
A buffer already visiting FILENAME is updated in place and left open; one with unsaved edits,
or out of date with its file, is refused. Used by bx-dblock through emacsclient: called so,
an error is returned, not taken to the debugger (whose recursive edit would hold the client).
Returns a string: \"updated: <file>\", \"refused: ...\" or \"error: ...\"; a dblock that failed
(org logs it and goes on) makes it \"updated, N dblock errors (see *Messages*): <file>\"."
  (interactive (list (read-file-name "File to dblock update: ")
		     ))
  (let* (($interactive (called-interactively-p 'interactive))
         ($file (expand-file-name filename))
         ($existing (find-buffer-visiting $file))
         ($messagesStart (with-current-buffer (messages-buffer) (point-max)))
         ($result
          (cond
           ((not (file-regular-p $file))
            (format "refused: not a file: %s" $file))
           ((and $existing (buffer-modified-p $existing))
            (format "refused: buffer %s has unsaved edits" (buffer-name $existing)))
           ((and $existing (not (verify-visited-file-modtime $existing)))
            (format "refused: buffer %s is out of date with its file" (buffer-name $existing)))
           (t
            (let (($buf (or $existing (find-file-noselect $file))))
              (condition-case $err
                  (let ((debug-on-error (and $interactive debug-on-error))
                        (debug-on-signal (and $interactive debug-on-signal)))
                   (save-window-excursion
                    (switch-to-buffer $buf)
                    (org-show-all)
                    (org-dblock-update-buffer-bx)
                    (save-buffer)
                    (unless $existing (kill-buffer $buf))
                    (let (($failed (with-current-buffer (messages-buffer)
                                     (how-many "Error during update of dynamic block"
                                               (min $messagesStart (point-max)) (point-max)))))
                      (if (> $failed 0)
                          (format "updated, %d dblock errors (see *Messages*): %s" $failed $file)
                        (format "updated: %s" $file)))))
                (error
                 ;; Unsaved: a buffer we opened is dropped, one that was open is restored from its file.
                 (when (buffer-live-p $buf)
                   (if $existing
                       (with-current-buffer $buf (revert-buffer :ignore-auto :noconfirm))
                     (with-current-buffer $buf (set-buffer-modified-p nil))
                     (kill-buffer $buf)))
                 (format "error: %s: %s" $file (error-message-string $err)))))))))
    (when $interactive
      (message "%s" $result))
    $result))

(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-bx-blank-file  filename ) [[elisp:(org-cycle)][| ]]
  ")

(defun org-dblock-bx-blank-file ( filename )
  "For use by emacs client in batch mode"
  (interactive (list (read-file-name "File to dblock blank: ") 
		     ))
  (global-auto-revert-mode t)  
  (save-window-excursion
    (find-file filename)
    (org-show-all)    ;;; Very Necessary
    (ignore-errors
      (org-dblock-bx-blank-buffer)
      )
    (save-buffer)
    (kill-buffer)
    )
  (global-auto-revert-mode nil)  
  )

(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-bx-blank-then-update-file  filename ) [[elisp:(org-cycle)][| ]]
  ")

(defun org-dblock-bx-blank-then-update-file ( filename )
  "For use by emacs client in batch mode"
  (interactive (list (read-file-name "File to dblock blank: ") 
		     ))
  (org-dblock-bx-blank-file filename)
  (org-dblock-update-file-bx filename)
  )


;;;  ["Block Update Buffer" (org-dblock-update-buffer-bx) t]
;;;  (org-dblock-update-buffer-bx)
(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-update-buffer-bx-old) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-update-buffer-bx-old ()
  "push currentMode; set mode to org; run (org-dblock-update 1); pop currentMode"
  (interactive)
  (let ((currentMode major-mode)
	(mode-dblock-start-re org-dblock-start-re)
	(mode-dblock-end-re org-dblock-end-re)
	)
    (org-mode)  ;; org-mode resets org-dblock-start-re for org-mode, so:
    (setq org-dblock-start-re mode-dblock-start-re)
    (setq org-dblock-end-re mode-dblock-end-re)
    (org-dblock-update 1)
    (funcall currentMode))
  )

(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-update-buffer-bx) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-update-buffer-bx ()
  "Previously was done with switching to org-mode"
  (interactive)
    (let (
          ($enable-local-variables enable-local-variables)
          ($enable-local-eval enable-local-eval)
          )
      (setq enable-local-variables :safe)
      (setq enable-local-eval t)
      (message (s-lex-format "DEBUG ZZZ enable-local-variables=${enable-local-variables} enable-local-eval=${enable-local-eval}"))
      (when (equal major-mode 'org-mode)
        (org-dblock-update 1)
        (show-all)
        )
      (unless (equal major-mode 'org-mode)
        ;; (lsp-mode -1)  ;; 2025 Needs Testing
        ;; (call-interactively 'blee:buf:re-major-mode)
        (blee:buf:re-major-mode)
        (org-update-all-dblocks-bx)
        (show-all)
        )
      (setq enable-local-variables $enable-local-variables)
      (setq enable-local-eval $enable-local-eval)
      )
  )

(defun org-dblock-update-re-major-mode ()
  ""
  (interactive)
  (org-dblock-mode-comment-regexp-bx)
  (org-dblock-update)
  (show-all)
  )


(defun blee:buf:re-major-mode ()
  "Re-run the buffer's major mode, so its hooks set the dblock regexps.
A major-mode that is not a command (shellscript-mode, set by the old file-local
\"major-mode: shellscript-mode\" of bash files) falls back to the mode auto-mode-alist
gives the file name (sh-mode)."
  (interactive)
  (save-excursion
    (let (($mode (if (commandp major-mode)
                     major-mode
                   (or (and buffer-file-name
                            (assoc-default buffer-file-name auto-mode-alist #'string-match))
                       major-mode))))
      (blee:eval-string (format "(call-interactively '%s)" $mode)))
    )
  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-update-all-dblocks-bx) [[elisp:(org-cycle)][| ]]
")

(defun org-update-all-dblocks-bx-with-cur-controller ()
  "Check for org mode was removed in -bx.
Update all dynamic blocks in the buffer.
This function can be used in a hook."
  (interactive)
  (org-map-dblocks 'org-update-dblock))


(defun bx:panel:dblock/ensureBufLocalVars ()
  "Ensure that relevant Buffer-Local varialbles.
Relevant defvar-local definitions are made in blee-org-panel.el
"
  (if (not (boundp '~blee:dblockController))
      (setq-local ~blee:dblockController "interactive"))

  (if (not (boundp '~blee:dblockEnabler))
      (setq-local ~blee:dblockEnabler nil))
  )


(defun bx:panel:dblock|basedOnSpecifiedControllerUpdateAll (<specifiedController)
  "Based on <specifiedController, run org-update-dblock on all dblocks.
"
  (interactive)
  (let (
	($dblockController)
	)
    (bx:panel:dblock/ensureBufLocalVars)
    (setq $dblockController ~blee:dblockController)
    (setq ~blee:dblockController <specifiedController)
    (message (format "about to org-update-dblock with %s" <specifiedController))
    (org-show-all) 
    (org-map-dblocks 'org-update-dblock)
    (setq ~blee:dblockController $dblockController)
    ))


(defun org-update-all-dblocks-bx ()
  "With ~blee:dblockController as update, run org-update-dblock on all dblocks.
"
  (interactive)
  (bx:panel:dblock|basedOnSpecifiedControllerUpdateAll "update"))



(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-bx-blank-buffer) [[elisp:(org-cycle)][| ]]
")


(defun org-dblock-bx-blank-buffer ()
  "With ~blee:dblockController as blank, run org-update-dblock on all dblocks.
"
  (interactive)
  (bx:panel:dblock|basedOnSpecifiedControllerUpdateAll "blank"))


(defun org-dblock-bx-blank-buffer-unconditionally ()
  (interactive)
  (org-map-dblocks 'org-dblock-bx-blank-this)
  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-bx-blank-this) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-bx-blank-this ()
  (interactive)
  (save-excursion
    (org-beginning-of-dblock)
    (org-prepare-dblock)
    (kill-line)
    )
  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-bx-strip-begin-end) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-bx-strip-begin-end ()
  (interactive)
  (goto-char (point-min))
  (flush-lines org-dblock-start-re)
  (goto-char (point-min))
  (flush-lines org-dblock-end-re)
  ;;(save-buffer)
  )


;;;  ["Set Start/End Mode RegExp" (org-dblock-mode-comment-regexp-bx) t]
;;;  (org-dblock-mode-comment-regexp-bx)
(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-mode-comment-regexp-bx) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-mode-comment-regexp-bx ()
  "based on major-mode set regexp for org-dblock-update"
  (interactive)
  (cond ((string-equal "emacs-lisp-mode" major-mode)
	 (setq org-dblock-start-re "^[ 	]*\;\;\;#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^[ 	]*\;\;\;#\\+END\\([: 	
\n]\\|$\\)")
	 (message "Set to: ;;;#+BEGIN...")
	 )
	((string-equal "latex-mode" major-mode)
	 (setq org-dblock-start-re "^[ 	]*%%%#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^[ 	]*%%%#\\+END\\([: 	
\n]\\|$\\)")
	 ;;;(message "Set to: \%\%\%#+BEGIN...")
	 (message "Set to: 3percents#+BEGIN...")
	 )
	((string-equal "shell-script-mode" major-mode)
	 (setq org-dblock-start-re "^[ 	]*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^[ 	]*####\\+END\\([: 	
\n]\\|$\\)")
	 (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	 )
	((string-equal "html-mode" major-mode)
	 (setq org-dblock-start-re "^.*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^.*####\\+END\\([: 	
\n]\\|$\\)")
	 (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	 )
	((string-equal "mhtml-mode" major-mode)
	 (setq org-dblock-start-re "^.*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^.*####\\+END\\([: 	
\n]\\|$\\)")
	 (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	 )
	((string-equal "org-msg-edit-mode" major-mode)
	 (setq org-dblock-start-re "^#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^#\\+END\\([: 	
\n]\\|$\\)")
	 (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	 )
	(t
	 (setq org-dblock-start-re "^.*#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	 (setq org-dblock-end-re "^.*#\\+END\\([:
\n]\\|$\\)")
	 (message (format "major-mode: %s - dblock re unchanged" major-mode))
	 ))
  )


;;;  ["Set Start/End Mode RegExp" (org-dblock-mode-comment-regexp-bx) t]
;;;  adding as mode hook
;;;   (org-dblock-mode-comment-mode-hook-bx)
(lambda () "
*  [[elisp:(org-cycle)][| ]]  [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] [[elisp:(beginning-of-buffer)][Top]] [[elisp:(delete-other-windows)][(1)]] || defun        :: (org-dblock-mode-comment-mode-hook-bx) [[elisp:(org-cycle)][| ]]
")

(defun org-dblock-mode-comment-mode-hook-bx ()
  "based on major-mode set regexp for org-dblock-update"
  (interactive)
  (add-hook 'emacs-lisp-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re "^[ 	]*\;\;\;#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re "^[ 	]*\;\;\;#\\+END\\([: 	
\n]\\|$\\)")
  	       (message "Set to: ;;;#+BEGIN...")
	       ;;;(message "Set to: 3semicolon#+BEGIN...")	 
	       ))
  (add-hook 'latex-mode-hook 
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^[ 	]*%%%#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^[ 	]*%%%#\\+END\\([: 	
\n]\\|$\\)")
	       ;;;(message "Set to: %%%#+BEGIN...")
	       (message "Set to: 3percents#+BEGIN...")
	       ))
  (add-hook 'LaTeX-mode-hook 
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^[ 	]*%%%#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^[ 	]*%%%#\\+END\\([: 	
\n]\\|$\\)")
	       (message "Set to: 3percets#+BEGIN for LaTeX mode")
	       ))
  (add-hook 'shellscript-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^[ 	]*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^[ 	]*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))
  (add-hook 'sh-script-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^[ 	]*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^[ 	]*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))
  (add-hook 'sh-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^[ 	]*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^[ 	]*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))
  (add-hook 'html-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^.*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^.*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))
  (add-hook 'mhtml-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^.*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^.*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))  
  (add-hook 'message-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^.*####\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^.*####\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  ####+BEGIN..." major-mode))
	       ))
  (add-hook 'org-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^.*#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^.*#\\+END\\([:
\n]\\|$\\)")
	       (message (format "Set to: %s - NOT4  ####+BEGIN -- %s" major-mode org-dblock-start-re))
	       ))
  (add-hook 'org-msg-edit-mode-hook
	    '(lambda ()
	       (setq org-dblock-start-re 
		     "^#\\+BEGIN:[ 	]+\\(\\S-+\\)\\([ 	]+\\(.*\\)\\)?")
	       (setq org-dblock-end-re 
		     "^.*#\\+END\\([: 	
\n]\\|$\\)")
	       (message (format "Set to: %s -  #+BEGIN..." major-mode))
	       ))
  )


(lambda () "
*  [[elisp:(org-cycle)][| ]]  Provide       :: Provide [[elisp:(org-cycle)][| ]]
")


(provide 'bx-dblock-lib)


(lambda () "
*  [[elisp:(org-cycle)][| ]]  Common        :: /[dblock] -- End-Of-File Controls/ [[elisp:(org-cycle)][| ]]
#+STARTUP: showall
")

;;; local variables:
;;; no-byte-compile: t
;;; bx:iimp:iimName: "hereHere"
;;; end:
