;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)

;; (apps:epa:menu:plugin|install modes:menu:global (s-- 6))
(defun apps:epa:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimited <menuDelimiter."

  (easy-menu-add-item
   <menuLabel
   nil
   (apps:epa:menu|define :active t)
   <menuDelimiter
   )

  (add-hook 'menu-bar-update-hook 'apps:epa:menu|update-hook)
  )

(defun apps:epa:menu|update-hook ()
  "This is to be added to menu-bar-update-hook.
It runs everytime any menu is invoked.
As such what happens below should be exactly what is necessary and no more."
  ;;(modes:menu:global|define)
  )

;;
;; (apps:epa:menu|define :active nil)
;; (popup-menu (symbol-value (apps:epa:menu|define)))
;;
(defun apps:epa:menu|define (&rest <namedArgs)
  "Returns apps:epa:menu.
:active can be specified as <namedArgs.
"
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      apps:epa:menu
      nil
      (format "EasyPG Assistant")
      `(
	,(format "EasyPG Assistant")
	:help "EasyPG Assistant"
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
     apps:epa:menu nil
     (apps:epa:menuItem:list-keys|define)
     (s-- 3))

    (easy-menu-add-item
     apps:epa:menu nil
     (apps:epa:menuItem:search-keys|define)
     (s-- 3))

    (easy-menu-add-item
     apps:epa:menu nil
     (apps:epa:menuItem:sign-region|define)
     (s-- 4))


    (easy-menu-add-item
     apps:epa:menu nil
     (apps:epa:menuItem:encrypt-file|define)
     (s-- 5))

    (easy-menu-add-item
     apps:epa:menu nil
     (apps:epa:menuItem:decrypt-file|define)
     (s-- 5))


    (easy-menu-add-item
     apps:epa:menu nil
     (apps:epa:menuItem:describe|define)
     (s-- 6))

    'apps:epa:menu
    ))



(defun apps:epa:menuItem:list-keys|define ()
  "Returns a menuItem vector."
  (car
   `(
     [,(format "List Keys")
      (call-interactively 'epa-list-keys)
      :help "browse your keyring -- (epa-list-keys)"
      :active t
      :visible t
      ]
     )))

(defun apps:epa:menuItem:search-keys|define ()
  "Returns a menuItem vector."
  (car
   `(
     [,(format "Search Keys")
      (call-interactively 'epa-search-keys)
      :help "query a key server for keys -- (epa-search-keys)"
      :active t
      :visible t
      ]
     )))

(defun apps:epa:menuItem:sign-region|define ()
  "Returns a menuItem vector."
  (car
   `(
     [,(format "Sign Region")
      (call-interactively 'epa-sign-region)
      :help "create a cleartext signature of the region -- (epa-sign-region)"
      :active t
      :visible t
      ]
     )))

(defun apps:epa:menuItem:encrypt-file|define ()
  "Returns a menuItem vector."
  (car
   `(
     [,(format "Encrypt File")
      (call-interactively 'epa-encrypt-file)
      :help "encrypt a file -- (epa-encrypt-file)"
      :active t
      :visible t
      ]
     )))

(defun apps:epa:menuItem:decrypt-file|define ()
  "Returns a menuItem vector."
  (car
   `(
     [,(format "Decrypt File")
      (call-interactively 'epa-decrypt-file)
      :help "decrypt a file -- (epa-decrypt-file)"
      :active t
      :visible t
      ]
     )))


(defun apps:epa:menuItem:describe|define ()
  "Returns a menuItem vector."
  (car
   `(
     [
      "On-Line Help"
      (find-file-at-point "https://www.gnu.org/software/emacs/manual/html_mono/epa.html")
      :help "On-Line Help -- (visit web info)"
      :active t
      :visible t
      ]
     )))


(provide 'apps-epa-menu)
