;;; bnpa-comment-block.el --- Blee Native Package: comment-block  -*- lexical-binding: t; -*-
;;
;;; Commentary:
;; This file mimics the bnpa: automation process but since it needs to be
;; loaded prior to COMEEGA availability and blee-libs availability, it is
;; done manually -- not automated.
;;
;;; Code:

(require 'straight)

(defvar bnpa:comment-block:usage:enabled-p t "Comment-block package adoption control.")

;;; (bnpa:comment-block:full|update)
(defun bnpa:comment-block:full|update ()
  "Comment-block package adoption full/update template."
  (when bnpa:comment-block:usage:enabled-p
    (bnpa:comment-block:install|update)
    (bnpa:comment-block:config|main)))


(defun bnpa:comment-block:install|update ()
  "Comment-block package adoption install/update template."
 (if b:g:dev:mode?
     (progn
       (message "straight-use-package development-mode /bisos/git/bxRepos/blee/comment-block")
       (straight-use-package
        '(comment-block :local-repo "/bisos/git/bxRepos/blee/comment-block")))
   (progn
     (message "straight-use-package authorship-mode github bx-blee/comment-block")
     (straight-use-package
      '(comment-block :type git :host github :repo "bx-blee/comment-block")))))

(defun bnpa:comment-block:config|main ()
  "Comment-block package adoption config/mail template."
  ;;; Nothing to configure
  )

(provide 'bnpa-comment-block)
;;; bnp-comment-block.el ends here
