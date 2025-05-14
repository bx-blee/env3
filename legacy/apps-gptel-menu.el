;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)

;; (apps:gptel:menu:plugin|install modes:menu:global (s-- 6))
(defun apps:gptel:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimited <menuDelimiter."

  (easy-menu-add-item
   <menuLabel
   nil
   (apps:gptel:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'apps:gptel:menu|update-hook)
  )

(defun apps:gptel:menu|update-hook ()
  "This is to be added to menu-bar-update-hook.
It runs everytime any menu is invoked.
As such what happens below should be exactly what is necessary and no more."
  ;;(modes:menu:global|define)
  )

;;
;; (apps:gptel:menu|define :active nil)
;; (popup-menu (symbol-value (apps:gptel:menu|define)))
;;
(defun apps:gptel:menu|define (&rest <namedArgs)
  "Returns apps:gptel:menu.
:active can be specified as <namedArgs.
"
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      apps:gptel:menu
      nil
      (format "Gptel Menu")
      `(
	,(format "Gptel Menu")
	:help "gptel menu"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))

    (dolist (item '(apps:gptel:menuItem:gptel|define
                    apps:gptel:menuItem:gptel-send|define
                    apps:gptel:menuItem:gptel-rewrite|define))
      (easy-menu-add-item
       apps:gptel:menu nil
       (funcall item)
       (s-- 3)))

   (dolist (item '(apps:gptel:menuItem:gptel-menu|define))
      (easy-menu-add-item
       apps:gptel:menu nil
       (funcall item)
       (s-- 4)))

   (dolist (item '(apps:gptel:menuItem:gptel-add|define
                    apps:gptel:menuItem:gptel-add-file|define))
      (easy-menu-add-item
       apps:gptel:menu nil
       (funcall item)
       (s-- 5)))


   (dolist (item '(apps:gptel:menuItem:gptel-org-set-topic|define
                    apps:gptel:menuItem:gptel-org-set-properties|define))
      (easy-menu-add-item
       apps:gptel:menu nil
       (funcall item)
       (s-- 6)))

   (easy-menu-add-item
    apps:gptel:menu nil
    (apps:gptel:menuItem:gptel-quick|define)
    (s-- 7))



   (easy-menu-add-item
    apps:gptel:menu nil
    (b:menu:panelAndHelp|define
      :panelName "/bisos/panels/blee-core/AI/gptel/_nodeBase_"
      :funcName $thisFuncName
      :pkgRepoUrl "https://github.com/karthink/gptel"
      )
     (s-- 8))

    'apps:gptel:menu
    ))

(defun apps:gptel:menuItem:gptel|define ()
  "Returns a menuItem vector for gptel."
  (car
   `(
     [,(format "gptel  -- Create Dedicate Chat Buffer Send Query (with C-c En)")
      (gptel)
      :help "Create a new dedicated chat buffer. Not required to use gptel."
      ]
     )))


(defun apps:gptel:menuItem:gptel-send|define ()
  "Returns a menuItem vector for gptel-send."
  (car
   `(
     [,(format "gptel-send  -- Send Query")
      (gptel-send)
      :help "Send all text up to point, or the selection if region is active. Works anywhere in Emacs."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-rewrite|define ()
  "Returns a menuItem vector for gptel-rewrite."
  (car
   `(
     [,(format "gptel-rewrite  -- Rewrite Region")
      (gptel-rewrite)
      :help "Rewrite, refactor or change the selected region. Can diff/ediff changes before merging/applying."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-menu|define ()
  "Returns a menuItem vector for gptel-menu."
  (car
   `(
     [,(format "gptel-menu  -- Preferences Menu")
      (gptel-menu)
      :help "Transient menu for preferences, input/output redirection etc."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-add|define ()
  "Returns a menuItem vector for gptel-add."
  (car
   `(
     [,(format "gptel-add  -- Add Context")
      (gptel-add)
      :help "Add/remove a region or buffer to gptel's context. In Dired, add/remove marked files."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-add-file|define ()
  "Returns a menuItem vector for gptel-add-file."
  (car
   `(
     [,(format "gptel-add-file  -- Add File to Context")
      (gptel-add-file)
      :help "Add a file (text or supported media type) to gptel's context. Also available from the transient menu."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-org-set-topic|define ()
  "Returns a menuItem vector for gptel-org-set-topic."
  (car
   `(
     [,(format "gptel-org-set-topic  -- Set Org Topic")
      (gptel-org-set-topic)
      :help "Limit conversation context to an Org heading."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-org-set-properties|define ()
  "Returns a menuItem vector for gptel-org-set-properties."
  (car
   `(
     [,(format "gptel-org-set-properties  -- Set Org Properties")
      (gptel-org-set-properties)
      :help "Write gptel configuration as Org properties, for per-heading chat configuration."
      :active t
      :visible t
      ]
     )))

(defun apps:gptel:menuItem:gptel-quick|define ()
 (car `(
        [,(format "gptel-quick  -- Lookup point or region")
         (gptel-quick)
         :help "gptel-quick: Quick LLM lookups in Emacs."
         ]
        )))


(provide 'apps-gptel-menu)
