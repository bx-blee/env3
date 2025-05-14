;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)

;; (apps:aidermacs:menu:plugin|install modes:menu:global (s-- 6))
(defun apps:aidermacs:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimited <menuDelimiter."

  (easy-menu-add-item
   <menuLabel
   nil
   (apps:aidermacs:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-updae-hook 'apps:aidermacs:menu|update-hook)
  )

(defun apps:aidermacs:menu|update-hook ()
  "This is to be added to menu-bar-update-hook.
It runs everytime any menu is invoked.
As such what happens below should be exactly what is necessary and no more."
  ;;(modes:menu:global|define)
  )

;;
;; (apps:aidermacs:menu|define :active nil)
;; (popup-menu (symbol-value (apps:aidermacs:menu|define)))
;;
(defun apps:aidermacs:menu|define (&rest <namedArgs)
  "Returns apps:aidermacs:menu.
:active can be specified as <namedArgs.
"
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      apps:aidermacs:menu
      nil
      (format "Aidermacs Menu")
      `(
	,(format "Aidermacs Menu")
	:help "aidermacs menu"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))

    (easy-menu-add-item
     apps:aidermacs:menu nil
     (apps:aidermacs:menuItem:transit-menu|define)
     (s-- 3))


   (easy-menu-add-item
    apps:aidermacs:menu nil
    (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/AI/aidermacs/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/MatthewZMD/aidermacs"
      )
     (s-- 8))


    'apps:aidermacs:menu
    ))



(defun apps:aidermacs:menuItem:transit-menu|define ()
  "Returns a menuItem vector for transit-menu."
  (car
   `(
     [,(format "aidermacs-transient-menu")
      (aidermacs-transient-menu)
      :help "aidermacs-transient-menu"
      :active t
      :visible t
      ]
     )))

(defun apps:aidermacs:menuItem:describe|define ()
  "Returns a menuItem vector."
  (car
   `(
     [
      "On-Line Help"
      (find-file-at-point "https://www.gnu.org/software/emacs/manual/html_node/aidermacs/index.html")
      :help "On-Line Help -- (visit web info)"
      :active t
      :visible t
      ]
     )))


(provide 'apps-aidermacs-menu)
