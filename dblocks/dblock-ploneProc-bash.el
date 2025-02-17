
;;;(require 'bx-ploneProc-lib)

(defun org-dblock-write:bx:dblock:ploneProc:bash:siteFolders (params)
  (let ((bx:types (or (plist-get params :types) ""))
        (files-list)
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    (insert "# {{{ DBLOCK-siteFolders\n")
    (insert "siteFolders=\"\n")
    (insert
     ;; (shell-command-to-string 
     ;;  "find .  -maxdepth 1 -type d -print  | sed -e s:^./:: | egrep -v '^\.$' | egrep -v '^CVS$' | grep -v 'index_html'" )
     (shell-command-to-string 
      "/opt/public/osmt/bin/seedPlone3Proc.sh -v -n showRun -i listFoldersHere . 2> /dev/null")
      )
    (insert "\"\n")
    (insert "# }}} DBLOCK-siteFolders")
    ))


(defun org-dblock-write:bx:dblock:ploneProc:bash:sitePages (params)
  (let ((bx:types (or (plist-get params :types) ""))
        (files-list)
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    (insert "# {{{ DBLOCK-sitePages\n")
    (insert "sitePages=\"\n")
    (insert
     ;; (shell-command-to-string 
     ;;  "find .  -maxdepth 1 -type d -print  | sed -e s:^./:: | egrep -v '^\.$' | egrep -v '^CVS$' | grep 'index_html'" )
     (shell-command-to-string 
      "/opt/public/osmt/bin/seedPlone3Proc.sh -v -n showRun -i listPagesHere . 2> /dev/null")
      )
    (insert "\"\n")
    (insert "# }}} DBLOCK-sitePages")
    ))

(defun org-dblock-write:bx:dblock:ploneProc:bash:nodesList (params)
  (let ((bx:types (or (plist-get params :types) ""))
        (files-list)
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    ;;; (insert "# {{{ DBLOCK-nodesList\n")
    (insert "nodesList=\"\n")
    (insert
     ;; (shell-command-to-string 
     ;;  "find .  -maxdepth 1 -type d -print  | sed -e s:^./:: | egrep -v '^\.$' | egrep -v '^CVS$' | grep -v 'index_html'" )
     (shell-command-to-string 
      "seedPlone3NewProc.sh -v -n showRun -i nodesListThere . 2> /dev/null")
      )
    (insert "\"")
    ;;; (insert "# }}} DBLOCK-nodesList")
    ))

(defun org-dblock-write:bx:dblock:pypi:bash:nodesList (params)
  (let ((bx:types (or (plist-get params :types) ""))
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    (insert "nodesList=\"\n")
    (insert
     ;; (shell-command-to-string
     ;;  "find .  -maxdepth 1 -type d -print  | sed -e s:^./:: | egrep -v '^\.$' | egrep -v '^CVS$' | grep -v 'index_html'" )
     (shell-command-to-string
"seedPlone3NewProc.sh -v -n showRun -i nodesListThere . 2> /dev/null | grep -v egg-info | grep -v panels | grep -v bisos | grep -v dist | grep -v _cache | grep -v bin")
      )
    (insert "\"")
    ))

(defun org-dblock-write:bx:dblock:pypi:bash:leavesList (params)
  (let ((bx:types (or (plist-get params :types) ""))
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    (insert "leavesList=\"\n")
    (insert
     (shell-command-to-string
"seedPlone3NewProc.sh -v -n showRun -i leavesListThere . 2> /dev/null")
      )
    (insert "\"")
    ))

(defun org-dblock-write:bx:dblock:ploneProc:bash:leavesList (params)
  (let ((bx:types (or (plist-get params :types) ""))
        (files-list)
        )
    ;;; bx:types Ignored all together -- (equal bx:types "xxx")
    ;; (insert "# {{{ DBLOCK-leavesList\n")
    (insert "leavesList=\"\n")
    (insert
     ;; (shell-command-to-string 
     ;;  "find .  -maxdepth 1 -type d -print  | sed -e s:^./:: | egrep -v '^\.$' | egrep -v '^CVS$' | grep 'index_html'" )
     (shell-command-to-string 
      "seedPlone3NewProc.sh -v -n showRun -i leavesListThere . 2> /dev/null")
      )
    (insert "\"")
    ;; (insert "# }}} DBLOCK-leavesList")
    ))

;;;#+BEGIN: bx:dblock:lisp:provide :disabledP "false" :lib-name "dblock-ploneProc-bash"
(lambda () "
*  [[elisp:(org-cycle)][| ]]  Provide                     :: Provide [[elisp:(org-cycle)][| ]]
")

(provide 'dblock-ploneProc-bash)
;;;#+END:
