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

(orgCmntBegin "
** TODO NOTYET, absorb orgCmntBegin in the right place.
   SCHEDULED: <2021-02-17 Wed>
" orgCmntEnd)

(require 'easymenu)

(require 'compile-time-function-name)

;; (require 'apps-gptel-menu)
(require 'b:aiplus::aidermacs:menu)
(require 'b:aiplus::gptel:menu)
;; (require 'b:aiplus::claude-ide:menu)
(require 'b:aiplus::claude-code:menu)
(require 'b:aiplus::monet:menu)
(require 'b:vterm::launch:menu)
(require 'b:eat::launch:menu)

(require 'b:open-in::menu)

(require 'apps-calc-menu)
(require 'apps-epa-menu)
(require 'apps-calendar-menu)
(require 'apps-bbdb-menu)
(require 'apps-org-menu)
;; (require 'apps-outmail-menu)
(require 'apps-inmail-menu)
(require 'apps-magit-menu)

;; (apps:menu-bar|install)
(defun apps:menu-bar|install ()
  "Primary interface: build the Apps menu now, and once more when Emacs is first idle."
  ;; Not on menu-bar-update-hook: that hook runs on nearly every redisplay of the menu bar, and
  ;; rebuilding the whole Apps menu there took over a second each time (Emacs 31.1, 2026-10-31):
  ;; Blee became slow, with frequent GCs. apps:menu-bar|refresh rebuilds it on demand.
  (remove-hook 'menu-bar-update-hook 'apps:menu-bar|update-hook)
  (apps:menu-bar|refresh t)
  (run-with-idle-timer 3 nil #'apps:menu-bar|refresh t)
  )

(defun apps:menu-bar|refresh (&optional <quiet)
  "Rebuild the Apps menu, e.g. after loading a package that adds to it.
An error is reported, not left as a silently half-built menu. <quiet: no message on success."
  (interactive)
  (condition-case $err
      (progn
        (apps:menu:global|define)
        (unless <quiet (message "Apps menu rebuilt")))
    (error (message "Apps menu: rebuild failed, the menu may be incomplete: %s"
                    (error-message-string $err)))))


(defun apps:menu-bar|update-hook ()
  "Rebuilds the whole Apps menu: too slow for menu-bar-update-hook, so not added to it.
Kept for compatibility; use apps:menu-bar|refresh."

  (apps:menu:global|define)
  )

(defun apps:menu:global|define () "
** Top level menu for all things global minor mode related.
*** Testing
**** (apps:menu:global|define)
**** (popup-menu (symbol-value (apps:menu:global|define)))
"
  (let (($thisFuncName (compile-time-function-name)))
    (easy-menu-define
      apps:menu:global
      global-map
      "Global Apps Menu"
      `("Apps"
	:help "Global Apps Menu"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	))


    (b:aiplus:gptel:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:aiplus:gptel:canned:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:aiplus:gptel:translate:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:aiplus:aidermacs:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:aiplus:claude-code:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:aiplus:monet:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:ghostel:launch:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:eat:launch:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:vterm:launch:menu:plugin|install
     apps:menu:global (s-- 3))

    (b:open-in:menu:plugin|install
     apps:menu:global (s-- 3))

    (apps:calc:menu:plugin|install
     apps:menu:global (s-- 3))

    (apps:epa:menu:plugin|install
     apps:menu:global (s-- 3))

    (apps:calendar:menu:plugin|install
     apps:menu:global (s-- 4))

    (apps:bbdb:menu:plugin|install
     apps:menu:global (s-- 5))

    (apps:org:menu:plugin|install
     apps:menu:global (s-- 6))

    ;; (apps:outmail:menu:plugin|install
    ;;  apps:menu:global (s-- 7))

    (apps:inmail:menu:plugin|install
     apps:menu:global (s-- 7))

    ;; (apps:magit:menu:plugin|install apps:menu:global (s-- 8))

    (apps:magit:generalMenu:plugin|install
     apps:menu:global (s-- 8))

    (apps:magit:bposMenu:plugin|install
     apps:menu:global (s-- 8))

    (apps:magit:githubMenu:plugin|install
     apps:menu:global (s-- 8))


    ;;; Other Apps That Need Starters
    ;;;
    ;;; Gnus Email Reading
    ;;; Gnus Email Sending
    ;;; Magit -- Start Status, bap:magit:bpo-repos/visit; Functions that make sense in repos buffer
  ))

(provide 'apps-menu)
