;;; boot-blee.el --- Loaded from init.el  -*- lexical-binding: t; -*-


(lambda () "
* ~boot-blee.el Top-Level Booting Of Blee~ Loaded from init.el
* See Bleow link as this module's documentation:
* [[/bisos/git/auth/bxRepos/blee-binders/blee-core/blee-boot/_nodeBase_/fullUsagePanel-en.org::boot-blee]]
")

;; For speedups and optimization
;; https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
(defvar b:stash:gc-cons-threshold--orig gc-cons-threshold) ; we'll restore back to original
(setq gc-cons-threshold (* 100 1024 1024)) ;100 MB before garbage collection


;;; ($:b|hereDirectory)
(defun $:b|hereDirectory ()
  "Either of buffer-file-name or load-file-name.
buffer-file-name is useful for dev and testing."
  (file-name-directory (directory-file-name
     (if buffer-file-name
	 buffer-file-name
       load-file-name))))

(load-file (expand-file-name "blee-version.el" ($:b|hereDirectory)))

(defun $:b:boot|loadControlCentral ()
  "For example. b:g:dev:mode? can become true in control/central."
  (let* (
         ($targetFile (expand-file-name "../control/central.el" ($:b|hereDirectory)))
         )
    (when (file-exists-p $targetFile)
      (load $targetFile)
      (b:g|setup)
      )))
($:b:boot|loadControlCentral)

(defun $:b:boot|prepForComeega ()
  "Require needed libraries to allow for furture loads and requires to be in COMEEGA.
s.el and loop.el are used in blee-libs. We consider those external local libraries."

  (add-to-list 'load-path "/bisos/git/anon/ext/blee3/s.el")
  (require 's)

  (add-to-list 'load-path "/bisos/git/anon/ext/blee3/loop.el")
  (require 'loop)

  (add-to-list 'load-path (expand-file-name "../libs" ($:b|hereDirectory)))

  (require 'bnpa-comment-block)
  (bnpa:comment-block:full|update)

  (require 'comment-block)

  (require 'bnpa:blee-libs)
  (b:npa:blee-libs|fullUpdate)
  )
($:b:boot|prepForComeega)

(defun $:b:boot|loadMainInit ()
  "main-init.el and all descendants can be in COMEEGA."
  (let* (
         ($targetFile (expand-file-name "../main/main-init.el" ($:b|hereDirectory)))
         )
    (when (file-exists-p $targetFile)
      (load $targetFile)
      (b:base:main|init)
      )))
($:b:boot|loadMainInit)

(when b:stash:gc-cons-threshold--orig
  (run-with-idle-timer 5 nil (lambda () (setq gc-cons-threshold b:stash:gc-cons-threshold--orig))))
