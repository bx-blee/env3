;;; straight-setup.el --- Initial Straight.el Bootstrap  -*- lexical-binding: t; -*-

(message (format "Loaded: %s" load-file-name))

(defun b:straight:setup|preBootstrapInit ()
  "Sets up straight environment and controlling params.
These must be set before straight.el is bootstrapped.
These are similar but different from how does the same."

  (setq straight-base-dir (file-truename b:straight:baseDir))

  ;; straight-repository-branch is used in the default recipe for
  ;; straight.el which is registered during bootstrap.
  (setq straight-repository-branch "develop")

  ;; Since b:straight:baseDir is emacs version specific, each build
  ;; dir's elc-s are specific.
  (setq straight-build-dir "build")

  ;; We handle package.el ourselves (and a little more comprehensively)
  (setq straight-enable-package-integration nil)

  ;; To consume less space and be faster.  Some packages break when shallow cloned
  ;; (like magit and org), but we'll deal with that elsewhere.
  ;; (setq straight-vc-git-default-clone-depth '(1 single-branch))
  (setq straight-vc-git-default-clone-depth 'full))
(b:straight:setup|preBootstrapInit)


;;; '(:host "github" :repo "raxod502/straight.el" :branch "develop" :local-repo "straight.el" :files ("straight*.el"))
;;;  "b45dd00408ff8e922f2d7f75441fd5603e5222fa")
;;;


(defvar bootstrap-version)
(defun b:straight:doom3|bootstrap ()
  "Bootstrap from /bisos/git/anon/ext/blee3/straight.el/bootstrap.el
bootstrap.el with commitHash of b45dd00408ff8e922f2d7f75441fd5603e5222fa
which matches doom3, has been installed with  doomPkgsProfile.sh.
 "
  (let ((bootstrap-file "/bisos/git/anon/ext/blee3/straight.el/bootstrap.el")
        (bootstrap-version 5))
    (if (file-exists-p bootstrap-file)
        (progn
          (message (format "Loading %s" bootstrap-file))
          (load bootstrap-file nil 'nomessage)
          )
      (error "Missing bootstrap-file"))))
(b:straight:doom3|bootstrap)


(defun b:straight|setRecipies ()
  "This comes after straight bootstrap."
    (message "b:straight|setRecipies :: Initializing recipes")
    (mapc #'straight-use-recipes
          '((org-elpa :local-repo nil)
            (melpa              :type git :host github
                                :repo "melpa/melpa"
                                :build nil)
            (gnu-elpa-mirror    :type git :host github
                                :repo "emacs-straight/gnu-elpa-mirror"
                                :build nil)
            (el-get             :type git :host github
                                :repo "dimitri/el-get"
                                :build nil)
            (emacsmirror-mirror :type git :host github
                                :repo "emacs-straight/emacsmirror-mirror"
                                :build nil))))
(b:straight|setRecipies)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'straight-setup)
;;;#+END:
