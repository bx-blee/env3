;;; boot-blee.el --- Loaded from init.el  -*- lexical-binding: t; -*-


(lambda () "
* ~boot-blee.el Top-Level Booting Of Blee~ Loaded from init.el
* See Bleow link as this module's documentation:
* [[/bisos/git/auth/bxRepos/blee-binders/blee-core/blee-boot/_nodeBase_/fullUsagePanel-en.org::boot-blee]]
")

;; For speedups and optimization
;; https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
;; <2026-09-07> BUG FIX --- do NOT blindly restore whatever was stashed here.
;;
;; This used to be:  (defvar b:stash:gc-cons-threshold--orig gc-cons-threshold)
;; and at the bottom of this file that stashed value was re-imposed on an idle timer.
;;
;; Under Doom that is pathological. Doom's early-init.el sets gc-cons-threshold to
;; most-positive-fixnum for the duration of startup, and restores it to 16MB at the end.
;; Doom's own comment there reads:
;;    "DON'T COPY THIS BLINDLY! If it's not reset later there will be stuttering,
;;     freezes, and crashes."
;; boot-blee.el loads WHILE Doom still has it at most-positive-fixnum, so the stash
;; captured most-positive-fixnum. Five seconds after the user went idle, blee then
;; overwrote Doom's carefully-restored 16MB with it --- disabling garbage collection for
;; the rest of the session.
;;
;; Symptom: blee grows steadily slower and heavier the longer it runs, WITHOUT usage,
;; because nothing is ever collected. Confirmed <2026-09-07> on blee-31:
;;   M-: gc-cons-threshold  =>  2305843009213693951   (most-positive-fixnum)
;;
;; Whether this bit depended on load ordering relative to Doom's restore, which is why
;; it varied by doom version and why blee-28 felt fine while blee-31 did not.
;;
;; Fix: boot with a high threshold as before, but hand back a SANE value, never a
;; captured one. 16MB matches Doom's own post-startup choice.

(defconst b:gc:sane-threshold (* 16 1024 1024)
  "Post-boot `gc-cons-threshold'. Matches Doom's own post-startup value.")

(defvar b:stash:gc-cons-threshold--orig
  (if (>= gc-cons-threshold (/ most-positive-fixnum 2))
      ;; GC was effectively disabled by whoever booted us (Doom does this). Do not
      ;; propagate that past boot.
      b:gc:sane-threshold
    gc-cons-threshold)
  "Value to hand `gc-cons-threshold' back to once booting is done.
Never most-positive-fixnum --- see the commentary above.")

(setq gc-cons-threshold (* 100 1024 1024)) ;100 MB while booting


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

  (message "NOTYET workaround to be sorted out - advice-remove because of autoload-compute-prefixes")
  (advice-remove #'doom-straight--no-compute-prefixes-a #'straight--build-autoloads)

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

;; Restore a sane threshold after booting. b:stash:gc-cons-threshold--orig is guaranteed
;; sane by its defvar above --- it is never most-positive-fixnum. Under Doom this lands on
;; the same 16MB Doom itself chose, so we no longer fight gcmh.
(when b:stash:gc-cons-threshold--orig
  (run-with-idle-timer
   5 nil
   (lambda ()
     (setq gc-cons-threshold b:stash:gc-cons-threshold--orig)
     (message "blee: gc-cons-threshold restored to %s" gc-cons-threshold))))
