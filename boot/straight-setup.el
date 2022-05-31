;;; straight-setup.el --- Initial Straight.el Setup  -*- lexical-binding: t; -*-


(defun b:straight:setup|preBootstarpInit ()
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
  (setq straight-vc-git-default-clone-depth 'full)
  )
(b:straight:setup|preBootstarpInit)


;; (with-eval-after-load 'straight
;;   ;; `let-alist' is built into Emacs 26 and onwards
;;   (add-to-list 'straight-built-in-pseudo-packages 'let-alist))

;; (defadvice! doom--read-pinned-packages-a (fn &rest args)
;;   "Read `:pin's in `doom-packages' on top of straight's lockfiles."
;;   :around #'straight--lockfile-read-all
;;   (append (apply fn args) ; lockfiles still take priority
;;           (doom-package-pinned-list)))


 ;; '(:host "github" :repo "raxod502/straight.el" :branch "develop" :local-repo "straight.el" :files ("straight*.el"))
 ;;  "b45dd00408ff8e922f2d7f75441fd5603e5222fa")
;;
;;; Bootstrappers

(defvar bootstrap-version)
(defun b:straight:doom3|bootstrap ()
  "Bootstrap
/bisos/git/anon/ext/blee3/straight.el/bootstrap.el
 "
  (let ((bootstrap-file "/bisos/git/anon/ext/blee3/straight.el/bootstrap.el")
        (bootstrap-version 5))
    (if (file-exists-p bootstrap-file)
        (load bootstrap-file nil 'nomessage)
      (error "Missing bootstrap-file"))))
(b:straight:doom3|bootstrap)


(defun b:straight|setRecipies ()
    (message "Initializing recipes")
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
