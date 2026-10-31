;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-


(lambda () "
* Description And Design
**
** This Information should be moved to a BleePanel and blee manual etc.
**
** Global Minor Modes Plus modes:
**
**
")

(require 'easymenu)

(require 'browsers-menu)

;;(require 'mcdt-menu)
;; (require 'b:mtdt:menu)
(require 'b:mtdt:menu:mailing)
(require 'b:mtdt:menu:dist)
(require 'b:mtdt:menu:bbdb2)
(require 'b:mtdt:menu:share)

(require 'b:tlm:menu)

(require 'nafm-menu)

(require 'org-roam-menu)
(require 'org-roam-server-menu)

(require 'modes-menu-fill-column)
(require 'linum)
(require 'modes-menu-linum)
(require 'modes-menu-whitespace)

(require 'modes-menu-outline-minor)
(require 'modes-menu-flyspell)
(require 'modes-menu-flyspell-prog)

(require 'bidi-menu)
;; (require 'chatGptInv-menu)

;; (modes:menu-bar|install)
(defun modes:menu-bar|install ()
  "Primary interface: build the Acts menu now, and once more when Emacs is first idle."
  ;; Not on menu-bar-update-hook: that hook runs on nearly every redisplay of the menu bar, and
  ;; rebuilding the whole Acts menu there took over a second each time (Emacs 31.1, 2026-10-31):
  ;; Blee became slow, with frequent GCs. modes:menu-bar|refresh rebuilds it on demand.
  (remove-hook 'menu-bar-update-hook 'modes:menu-bar|update-hook)
  (modes:menu-bar|refresh t)
  (run-with-idle-timer 3 nil #'modes:menu-bar|refresh t)
  )

(defun modes:menu-bar|refresh (&optional <quiet)
  "Rebuild the Acts menu, e.g. after loading a package that adds to it.
An error is reported, not left as a silently half-built menu. <quiet: no message on success."
  (interactive)
  (condition-case $err
      (progn
        (modes:menu:global|define)
        (unless <quiet (message "Acts menu rebuilt")))
    (error (message "Acts menu: rebuild failed, the menu may be incomplete: %s"
                    (error-message-string $err)))))

;;(setq browse-url-default-browser 'browse-url-chrom)


(defun modes:menu-bar|update-hook ()
  "Rebuilds the whole Acts menu: too slow for menu-bar-update-hook, so not added to it.
Kept for compatibility; use modes:menu-bar|refresh."

  (modes:menu:global|define)
  )

;;
;; http://www.neda.com
;;

(defun s-- (<repeat)
  "Example: (s-- 3). Visually shorter than (s-repeat 3 \"-\"
For use in delimiters in easy-menu-define"
  (s-repeat <repeat "-"))

;;
;; http://www.neda.com
;; http://mohsen.1.banan.byname.net
;;

;; (modes:menu:global|define)
(defun modes:menu:global|define ()
  "Top level menu for all things global minor mode related."
  (let (($thisFuncName (compile-time-function-name)))
    (easy-menu-define
      modes:menu:global
      global-map
      "Global Minor Mode Plus Menu"
      `("Acts"
	:help "Global Minor Mode Plus Menu (Modes)"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)	
	))

    (browsers:modes:menu:plugin/install
     modes:menu:global (s-- 3))

    (b:bidi:menu:plugin|install
     modes:menu:global (s-- 3))

    ;; (b:chatGpt:menu:plugin|install modes:menu:global (s-- 3))

    ;; (b:mtdt:menu:plugin|install
    ;;  modes:menu:global (s-- 4))

    (b:tlm:menu:plugin|install
     modes:menu:global (s-- 4))

   ;; (b:mtdt:assemble:menu:plugin|install
   ;;   modes:menu:global (s-- 4))


    (b:mtdt:menu:mailing:plugin|install
     modes:menu:global (s-- 4))

    (b:mtdt:menu:dist:plugin|install
     modes:menu:global (s-- 4))

    (b:mtdt:menu:bbdb2:plugin|install
     modes:menu:global (s-- 4))

    (b:mtdt:menu:share:plugin|install
     modes:menu:global (s-- 4))

    (web:search:modes:menu:plugin/install
     modes:menu:global (s-- 4))

    (nafm:modes:menu:plugin/install
     modes:menu:global (s-- 5))

    (easy-menu-add-item
     modes:menu:global
     nil
     (modes:menu:global-minor|define)
     (s-- 6))

    (progn
      (org-roam:modes:global-minor:menu:plugin|install
       modes:menu:global-minor (s-- 3))
      )

    (easy-menu-add-item
     modes:menu:global nil
     (modes:menu:local-minor|define)
     (s-- 7))

    (progn
      (modes:fill-column:menu:plugin|install
       modes:menu:local-minor (s-- 3))

      (modes:linum:menu:plugin|install
       modes:menu:local-minor (s-- 4))

      (modes:whitespace:menu:plugin|install
       modes:menu:local-minor (s-- 5))

      (modes:outline-minor:menu:plugin|install
       modes:menu:local-minor (s-- 6))

      (modes:flyspell:menu:plugin|install
       modes:menu:local-minor (s-- 7))

      (modes:flyspell-prog:menu:plugin|install
       modes:menu:local-minor (s-- 8))
      )

    (easy-menu-add-item
     modes:menu:global nil
     (modes:menu:help|define)
     (s-- 8))
  ))


;;
;; (popup-menu (symbol-value (modes:menu:global-minor|define)))
;;
(defun modes:menu:global-minor|define (&rest <namedArgs)
  "Global Minor Mode Menu."
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      modes:menu:global-minor
      nil
      "Global Minor Mode Menu"
      `("Global Minor Mode Menu"
	:help "Global Minor Mode Menu --"
	:active ,<active
	:visible t
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))
    'modes:menu:global-minor
    ))

;;
;; (popup-menu (symbol-value (modes:menu:local-minor|define)))
;;
(defun modes:menu:local-minor|define (&rest <namedArgs)
  "Local Minor Mode Menu."
  (let (
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      modes:menu:local-minor
      nil
      "Local Minor Mode Menu"
      `("Local Minor Mode Menu"
	:help "Local Minor Mode Menu --"
	:active ,<active
	:visible t
	"---"
	))
    'modes:menu:local-minor
    ))



;;
;; (org-roam-server:menu:stub|define)
;; (org-roam-server:menu:stub|define :active nil)
;;
(defun org-roam-server:menu:stub|define (&rest <namedArgs)
  "org-roam-server menu."
  (let (
	(<active (get-arg <namedArgs :active t))
	(<visible (get-arg <namedArgs :visible t))
	($thisFuncName (compile-time-function-name))
	)

    (setq $:org-roam-server:menu:active <active)
    (setq $:org-roam-server:menu:visible <visible)

    (easy-menu-define
      org-roam-server:menu
      nil
      "org-roam-server menu"
      `("org-roam Server"
	:help "Show And Set Relevant Parameters"
	:active $:org-roam-server:menu:active
	:visible $:org-roam-server:menu:visible
	"---"
	))
    'org-roam-server:menu
    ))

;;
;; (modes:menuItem:selected-if:browse-at-point|define)
(defun modes:menuItem:selected-if:browse-at-point|define ()
  "Returns a menuItem vector. Requires dynamic update."
  (car
   `(
     [,(format "Browse At-Point With Selected-IF:\n  %s"
	       browse-url-browser-function)
      (find-file-at-point (ffap-url-at-point))
      :help "Selected-IF -- Browse at-point with current value of browse-url-browser-function"
      :active t
      :visible t
      ]
     )))


;;
;; [[elisp:(popup-menu (symbol-value (modes:menu:help|define)))][Help Me]]
;; (popup-menu (symbol-value (modes:menu:help|define)))
;;
(defun modes:menu:help|define ()
  "Generic Modes Help Menu"
  (let (
	($thisFuncName (compile-time-function-name))
	)
    (easy-menu-define
      modes:menu:help
      nil
      "Help Menu For xia"
      `("xia Help"
	:help "Help For This Menu"
	["Visit xia Help Panel"
	 modes:modes:menu:overview-help
	 t
	 ]	 ;;; Notyet, should point to panel instead
	"---"
	[(format "Visit %s" ,$thisFuncName)
	 (find-function (intern ,$thisFuncName))
	 t
	 ]
	)
      )
    'modes:menu:help
    ))


(when (equal blee:emacs:id '26f)
  (defvar browse-url-secondary-browser-function nil
    "Fake temporary 26f variable for same as introduced in 27f"))

;;
;; [[elisp:(popup-menu (symbol-value (modes:menu:help|define)))][This Menu]]
;; (popup-menu (symbol-value (modes:menu:browse-url:at-point|define)))
;;
(defun modes:menu:browse-url:at-point|define (&rest <namedArgs)
  "Returns org-roam-server:menu.
:active and :visible can be specified as <namedArgs.
"
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    ;; (setq $:modes:menu:browse-url:at-point:active <active)
    (setq $:modes:menu:browse-url:at-point:visible <visible)

    (easy-menu-define
      modes:menu:browse-url:at-point
      nil
      "Menu For Configuration Of browse-url-browser-function"
      `("Select At-Point Url Browser"
	:help "Show And Set Relevant Parameters"
	:visible $:modes:menu:browse-url:at-point:visible
	:active ,<active
	"---"
	[
	,(format "**browse-url-browser-function =\n %s**" browse-url-browser-function)
	  (describe-variable 'browse-url-browser-function)
	  :help "Describe current value of browse-url-browser-function"
	  :active t
	  :visible t
	  ]
	[
	 ,(format "**browse-url-secondary-browser-function =\n %s**" browse-url-secondary-browser-function)
	  (describe-variable 'browse-url-secondary-browser-function)
	  :help "Describe current value of browse-url-secondary-browser-function"
	  :active t
	  :visible t
	  ]
	"---"
	"---"
	 [
	  "XIA Browser Frame"
	  (setq browse-url-browser-function 'modes:xinf:selected:browse-url/at-point)
	  :help "modes:xinf:selected:browse-url/at-point is based on NOTYET"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq browse-url-browser-function 'modes:xinf:selected:browse-url/at-point)
	  ]
	 [
	  "Firefox"
	  (setq browse-url-browser-function 'browse-url-firefox)
	  :help "Send Url to Firefox tab with: browse-url-firefox"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq browse-url-browser-function 'browse-url-firefox)
	  ]
	 [
	  "Chrome"
	  (setq browse-url-browser-function 'browse-url-chrome)
	  :help "Send Url to Chrom new tab with: browse-url-chrome"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq browse-url-browser-function 'browse-url-chrome)
	  ]
	 [
	  "Chromium"
	  (setq browse-url-browser-function 'browse-url-chromium)
	  :help "Send Url to Chrom new tab with: browse-url-chromium"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq browse-url-browser-function 'browse-url-chromium)
	  ]
	 [
	  "EWW"
	  (setq browse-url-browser-function 'eww-browse-url)
	  :help "Send Url to eww with eww-browse-url"
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq browse-url-browser-function 'eww-browse-url)
	  ]
	))
    'modes:menu:browse-url:at-point
    ))

(setq modes:search-engine:selected "NOTYET")


(defun modes:menu:search-engines|define ()
  "Top Level Menu For eXternal Integrated emacs-Apps and Frames"
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $selected-set (@searchEngineUrl)
      (setq modes:search-engine:selected @searchEngineUrl)
      (modes:menu:top:xia|define)
      )

    (easy-menu-define
      modes:menu:search-engines
      nil
      "Menu Search Engine Selections"
      `("Search Engine Selections"
	:help "Show And Set Selection Of Search Engine by modes:search-engine:selected"
	"---"
	,(format "**modes:search-engine:selected = %s**" modes:search-engine:selected)
	"---"
	("Show Search Engine Current Settings"
	 [
	  "modes:search-engine:selected"
	  (describe-variable 'modes:search-engine:selected)
	  :help "Describe current value of modes:search-engine:selected"
	  :active t
	  :visible t
	  ]
	 )
	"---"
	("Select Search Engine"
	 [
	  "duckduckgo"
	  ($selected-set "https://duckduckgo.com")
	  :help "Set modes:search-engine:selected to https://duckduckgo.com"
	  :active t
	  :visible t
	  ]
	 [
	  "google"
	  ($selected-set "https://google.com")
	  :help "Set modes:search-engine:selected to https://google.com"
	  :active t
	  :visible t
	  ]
	 [
	  "bing"
	  ($selected-set "https://bing.com")
	  :help "Set modes:search-engine:selected to https://bing.com "
	  :active t
	  :visible t
	  ]
	 )
	"---"
	[(format "Visit %s" ,$thisFuncName) (describe-function (intern ,$thisFuncName)) t]
	))
    'modes:menu:search-engines
    ))


(provide 'modes-menu)
