
;;; Code:



(require 'printing)

(progn
  (setq bx:printing:default-printer "UNSPECIFIED")
  (when (getenv "LPDEST")
    (setq bx:printing:default-printer (intern (getenv "LPDEST")))))


;; (bystar:printing:all-defaults-set)
(defun bystar:printing:all-defaults-set ()
  ""
  (interactive)

  (setq pr-txt-name     bx:printing:default-printer)

  (setq pr-ps-name      bx:printing:default-printer)

  (setq pr-temp-dir      "/tmp/")
  (setq pr-gv-command    "gv")
  (setq pr-gs-command    "gs")
  (setq pr-gs-switches '("-q -dNOPAUSE -I/usr/share/ghostscript/5.10"))
  (setq pr-gs-device     "uniprint")
  (setq pr-gs-resolution 300)
  (setq pr-ps-utility    'mpage)

  (setq pr-ps-utility-alist
	'((mpage "mpage" nil    "-b%s" "-%d" "-l" "-t" "-T" ">" nil)
	  (psnup "psnup" ("-q") "-P%s" "-%d" "-l" nil  nil  " " nil
		 (inherits-from: . no-duplex))
	  ))

  (setq pr-setting-database
	'((no-duplex
	   nil nil nil
	   (pr-file-duplex . nil)
	   (pr-file-tumble . nil))
	  ))

  (setq pr-file-duplex t)

  (pr-update-menus t)		; update now printer and utility menus

  (message "bystar:printing:ua:defaults-set -- Done." )
  )

;;; Commentary:


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Introduction
;; ------------
;;
;; With `printing' you can preview or print a PostScript file.  You can also
;; print a text file using PostScript, and preview or print buffers that use
;; certain special modes like mh-folder-mode, rmail-summary-mode,
;; gnus-summary-mode, etc.  This package also includes a PostScript/text
;; printer database.
;;
;; There are two user interfaces:
;;
;;    * Menu interface:
;;      The `printing' menu replaces the usual print options in the menu bar.
;;      This is the default user interface.
;;
;;    * Buffer interface:
;;      You can use a buffer interface instead of menus.  It looks like a
;;      customization buffer.  Basically, it has the same options found in the
;;      menu and some extra options, all this on a buffer.
;;
;; `printing' is prepared to run on GNU, Unix and NT systems.
;; On GNU or Unix system, `printing' depends on gs and gv utilities.
;; On NT system, `printing' depends on gstools (gswin32.exe and gsview32.exe).
;; To obtain ghostscript, ghostview and GSview see the URL
;; `http://www.gnu.org/software/ghostscript/ghostscript.html'.
;;
;; `printing' depends on ps-print package to generate PostScript files, to
;; spool and to despool PostScript buffer.  So, `printing' provides an
;; interface to ps-print package and it also provides some extra stuff.
;;
;; To download the latest ps-print package see
;; `http://www.emacswiki.org/cgi-bin/wiki/PsPrintPackage'.
;; Please, see README file for ps-print installation instructions.
;;
;; `printing' was inspired by:
;;
;;    print-nt.el	      Frederic Corne <frederic.corne@erli.fr>
;;	 Special printing functions for Windows NT
;;
;;    mh-e-init.el	      Tom Vogels <tov@ece.cmu.edu>
;;	 PS-print for mail messages
;;
;;    win32-ps-print.el	      Matthew O. Persico <mpersico@erols.com>
;;	 PostScript printing with ghostscript
;;
;;    ps-print-interface.el   Volker Franz <volker.franz@tuebingen.mpg.de>
;;	 Graphical front end for ps-print and previewing
;;
;;
;; Log Messages
;; ------------
;;
;; The buffer *Printing Command Output* is where the `printing' log messages
;; are inserted.  All program called by `printing' has a log entry in the
;; buffer *Printing Command Output*.  A log entry has the following form:
;;
;;    PROGRAM (ARG...)
;;    MESSAGE
;;    Exit status: CODE
;;
;; Where
;; PROGRAM is the program activated by `printing',
;; ARG is an argument passed to PROGRAM (it can have more than one argument),
;; MESSAGE is an error message returned by PROGRAM (it can have no message, if
;; PROGRAM is successful),
;; and CODE is a numeric exit status or a signal description string.
;;
;; For example, after previewing a PostScript file, *Printing Command Output*
;; will have the following entry:
;;
;;    /usr/X11R6/bin/gv ("/home/user/example/file.ps")
;;    Exit status: 0
;;
;; In the example above, the previewing was successful.  If during previewing,
;; you quit gv execution (by typing C-g during Emacs session), the log entry
;; would be:
;;
;;    /usr/X11R6/bin/gv ("/home/user/example/file.ps")
;;    Exit status: Quit
;;
;; So, if something goes wrong, a good place to take a look is the buffer
;; *Printing Command Output*.  Don't forget to see also the buffer *Messages*,
;; it can help.
;;
;;
;; Novices (First Users)
;; ---------------------
;;
;; First of all, see printing documentation only to get an idea of what
;; `printing' is capable.
;;
;; Then try to set the variables: `pr-ps-name', `pr-ps-printer-alist',
;; `pr-txt-name', `pr-txt-printer-alist' and `pr-path-alist'.  These variables
;; are the main variables for printing processing.
;;
;; Now, please, see these variables documentation deeper.  You can do this by
;; typing C-h v pr-ps-name RET (for example) if you already loaded printing
;; package, or by browsing printing.el source file.
;;
;; If the documentation isn't clear or if you find a way to improve the
;; documentation, please, send an email to maintainer.  All printing users
;; will thank you.
;;
;; One way to set variables is by calling `pr-customize', customize all
;; variables and save the customization by future sessions (see Options
;; section).  Other way is by coding your settings on Emacs init file (that is,
;; ~/.emacs file), see below for a first setting template that it should be
;; inserted on your ~/.emacs file (or c:/_emacs, if you're using Windows 9x/NT
;; or MS-DOS):
;;
;; * Example of setting for Windows system:
;;
;;    (require 'printing)		; load printing package
;;    (setq pr-path-alist
;;	    '((windows   "c:/applications/executables" PATH ghostview mpage)
;;	      (ghostview "c:/gs/gsview-dir")
;;	      (mpage     "c:/mpage-dir")
;;	      ))
;;    (setq pr-txt-name      'prt_06a)
;;    (setq pr-txt-printer-alist
;;          '((prt_06a  "print"     nil "/D:\\\\printers\\prt_06a")
;;            (prt_07c  nil         nil "/D:\\\\printers\\prt_07c")
;;            (PRN      ""          nil "PRN")
;;            (standard "redpr.exe" nil "")
;;            ))
;;    (setq pr-ps-name       'lps_06b)
;;    (setq pr-ps-printer-alist
;;          '((lps_06a  "print"     nil "/D:" "\\\\printers\\lps_06a")
;;            (lps_06b  "print"     nil nil   "\\\\printers\\lps_06b")
;;            (lps_07c  "print"     nil ""    "/D:\\\\printers\\lps_07c")
;;            (lps_08c  nil         nil nil   "\\\\printers\\lps_08c")
;;            (LPT1     ""          nil ""    "LPT1:")
;;            (PRN      ""          nil ""    "PRN")
;;            (standard "redpr.exe" nil ""    "")
;;            ))
;;    (pr-update-menus t)		; update now printer and utility menus
;;
;; * Example of setting for GNU or Unix system:
;;
;;    (require 'printing)		; load printing package
;;    (setq pr-path-alist
;;	    '((unix      "." "~/bin" ghostview mpage PATH)
;;	      (ghostview "$HOME/bin/gsview-dir")
;;	      (mpage     "$HOME/bin/mpage-dir")
;;	      ))
;;    (setq pr-txt-name      'prt_06a)
;;    (setq pr-txt-printer-alist
;;          '((prt_06a "lpr" nil "prt_06a")
;;            (prt_07c nil   nil "prt_07c")
;;            ))
;;    (setq pr-ps-name       'lps_06b)
;;    (setq pr-ps-printer-alist
;;          '((lps_06b "lpr" nil "-P" "lps_06b")
;;            (lps_07c "lpr" nil nil  "lps_07c")
;;            (lps_08c nil   nil nil  "lps_08c")
;;            ))
;;    (pr-update-menus t)		; update now printer and utility menus
;;
;;
;; NOTE 1: Don't forget to download and install ghostscript utilities (see
;;         Utilities section).
;;
;; NOTE 2: The `printer-name' and `ps-printer-name' variables don't need to be
;;         set, as they are implicit set by `pr-ps-printer-alist' and
;;         `pr-txt-printer-alist'.
;;
;; NOTE 3: The duplex feature will only work on PostScript printers that
;;         support this feature.
;;         You can check if your PostScript printer supports duplex feature
;;         by checking the printer manual.  Or you can try these steps:
;;         1. Open a buffer (or use the *scratch* buffer).
;;         2. Type:
;;            First line (on first page)
;;            ^L
;;            Second line (on second page)
;;         3. Print this buffer with duplex turned on.
;;         If it's printed 2 (two) sheets of paper, then your PostScript
;;         printer doesn't have duplex feature; otherwise, it's ok, your
;;         printer does have duplex feature.
;;
;; NOTE 4: See Tips section.
;;
;;
;; Tips
;; ----
;;
;; 1. If you have a local printer, that is, a printer which is connected
;;    directly to your computer, don't forget to connect the printer to your
;;    computer before printing.
;;
;; 2. If you try to print a file and it seems that the file was printed, but
;;    there is no paper in the printer, then try to set `pr-delete-temp-file'
;;    to nil.  Probably `printing' is deleting the temporary file before your
;;    local system can get it to send to the printer.
;;
;; 3. Don't try to print a dynamic buffer, that is, a buffer which is
;;    modifying while `printing' tries to print.  Eventually you got an error
;;    message.  Instead, save the dynamic buffer to a file or copy it in
;;    another buffer and, then, print the file or the new static buffer.
;;    An example of dynamic buffer is the *Messages* buffer.
;;
;; 4. When running Emacs on Windows (with or without cygwin), check if your
;;    printer is a text printer or not by typing in a DOS window:
;;
;;       print /D:\\host\printer somefile.txt
;;
;;    Where, `host' is the machine where the printer is directly connected,
;;    `printer' is the printer name and `somefile.txt' is a text file.
;;
;;    If the printer `\\host\printer' doesn't print the content of
;;    `somefile.txt' or, instead, it returns the following message:
;;
;;       PostScript Error Handler
;;       Offending Command = CCC
;;       Stack =
;;
;;    Where `CCC' is whatever is at the beginning of the text to be printed.
;;
;;    Therefore, the printer `\\host\printer' is not a text printer, but a
;;    PostScript printer.  So, please, don't include this printer in
;;    `pr-txt-printer-alist' (which see).
;;
;; 5. You can use gsprint instead of ghostscript to print monochrome PostScript
;;    files in Windows.  The gsprint utility documentation says that it is more
;;    efficient than ghostscript to print monochrome PostScript.
;;
;;    To print non-monochrome PostScript file, the efficiency of ghostscript
;;    is similar to gsprint.
;;
;;    Also the gsprint utility comes together with gsview distribution.
;;
;;    For more information about gsprint see
;;    `http://www.cs.wisc.edu/~ghost/gsview/gsprint.htm'.
;;
;;    As an example of gsprint declaration:
;;
;;    (setq pr-ps-printer-alist
;;          '((A "gsprint" ("-all" "-twoup") "-printer " "my-b/w-printer-name")
;;            (B "gsprint" ("-all" "-twoup") nil "-printer my-b/w-printer-name")
;;            ;; some other printer declaration
;;            ))
;;
;;    The example above declares that printer A prints all pages (-all) and two
;;    pages per sheet (-twoup).  The printer B declaration does the same as the
;;    printer A declaration, the only difference is the printer name selection.
;;
;;    There are other command line options like:
;;
;;    -mono	Render in monochrome as 1bit/pixel (only black and white).
;;    -grey	Render in greyscale as 8bits/pixel.
;;    -color	Render in color as 24bits/pixel.
;;
;;    The default is `-mono'.  So, printer A and B in the example above are
;;    using implicitly the `-mono' option.  Note that in `-mono' no gray tone
;;    or color is printed, this includes the zebra stripes, that is, in `-mono'
;;    the zebra stripes are not printed.
;;
;;    See also documentation for `pr-ps-printer-alist'.
;;
;;
;; Using `printing'
;; ----------------
;;
;; To use `printing' insert in your ~/.emacs file (or c:/_emacs, if you're
;; using Windows 9x/NT or MS-DOS):
;;
;;    (require 'printing)
;;    ;; ...some user settings...
;;    (pr-update-menus t)
;;
;; During `pr-update-menus' evaluation:
;;   * On Emacs 20:
;;      it replaces the Tools/Print menu by Tools/Printing menu.
;;   * On Emacs 21:
;;      it replaces the File/Print* menu entries by File/Print menu.
;; Please, see section Menu Layout below for menu explanation.
;;
;; To use `printing' utilities you can use the Printing menu options, type M-x
;; followed by one of the commands below, or type a key associated with the
;; command you want (if there is a key binding).
;;
;; `printing' has the following commands:
;;
;;    pr-interface
;;    pr-ps-directory-preview
;;    pr-ps-directory-using-ghostscript
;;    pr-ps-directory-print
;;    pr-ps-directory-ps-print
;;    pr-ps-buffer-preview
;;    pr-ps-buffer-using-ghostscript
;;    pr-ps-buffer-print
;;    pr-ps-buffer-ps-print
;;    pr-ps-region-preview
;;    pr-ps-region-using-ghostscript
;;    pr-ps-region-print
;;    pr-ps-region-ps-print
;;    pr-ps-mode-preview
;;    pr-ps-mode-using-ghostscript
;;    pr-ps-mode-print
;;    pr-ps-mode-ps-print
;;    pr-ps-file-preview
;;    pr-ps-file-up-preview
;;    pr-ps-file-using-ghostscript
;;    pr-ps-file-print
;;    pr-ps-file-ps-print
;;    pr-ps-file-up-ps-print
;;    pr-ps-fast-fire
;;    pr-despool-preview
;;    pr-despool-using-ghostscript
;;    pr-despool-print
;;    pr-despool-ps-print
;;    pr-printify-directory
;;    pr-printify-buffer
;;    pr-printify-region
;;    pr-txt-directory
;;    pr-txt-buffer
;;    pr-txt-region
;;    pr-txt-mode
;;    pr-txt-fast-fire
;;    pr-toggle-file-duplex
;;    pr-toggle-file-tumble
;;    pr-toggle-file-landscape
;;    pr-toggle-ghostscript
;;    pr-toggle-faces
;;    pr-toggle-spool
;;    pr-toggle-duplex
;;    pr-toggle-tumble
;;    pr-toggle-landscape
;;    pr-toggle-upside-down
;;    pr-toggle-line
;;    pr-toggle-zebra
;;    pr-toggle-header
;;    pr-toggle-lock
;;    pr-toggle-region
;;    pr-toggle-mode
;;    pr-customize
;;    lpr-customize
;;    pr-help
;;    pr-ps-name
;;    pr-txt-name
;;    pr-ps-utility
;;    pr-show-ps-setup
;;    pr-show-pr-setup
;;    pr-show-lpr-setup
;;
;; The general meanings of above commands are:
;;
;;    PREFIX:
;;    `pr-interface'	buffer interface for printing package.
;;    `pr-help'		help for printing package.
;;    `pr-ps-name'	interactively select a PostScript printer.
;;    `pr-txt-name'	interactively select a text printer.
;;    `pr-ps-utility'	interactively select a PostScript utility.
;;    `pr-show-*-setup'	show current settings.
;;    `pr-ps-*'		deal with PostScript code generation.
;;    `pr-txt-*'	deal with text generation.
;;    `pr-toggle-*'	toggle on/off some boolean variable.
;;    `pr-despool-*'	despool the PostScript spooling buffer.
;;    `pr-printify-*'	replace nonprintable ASCII by printable ASCII
;;			representation.
;;
;;    SUFFIX:
;;    `*-customize'		customization.
;;    `*-preview'		preview a PostScript file.
;;    `*-using-ghostscript'	use ghostscript to print.
;;    `*-fast-fire'		fast fire command (see it for documentation).
;;    `*-print'			send PostScript directly to printer.
;;    `*-ps-print'		send PostScript directly to printer or use
;;				ghostscript to print.  It depends on
;;				`pr-print-using-ghostscript' option.
;;
;;    INFIX/SUFFIX:
;;    `*-directory*'	process a directory.
;;    `*-buffer*'	process a buffer.
;;    `*-region*'	process a region.
;;    `*-mode*'		process a major mode (see explanation below).
;;    `*-file-*'	process a PostScript file.
;;    `*-file-up-*'	process a PostScript file using a filter utility.
;;
;; Here are some examples:
;;
;;    `pr-ps-buffer-using-ghostscript'
;;	 Use ghostscript to print a buffer.
;;
;;    `pr-ps-file-print'
;;	 Print a PostScript file.
;;
;;    `pr-toggle-spool'
;;	 Toggle spooling buffer.
;;
;; So you can preview through ghostview, use ghostscript to print (if you don't
;; have a PostScript printer) or send directly to printer a PostScript code
;; generated by `ps-print' package.
;;
;; Besides operating one buffer or region each time, you also can postpone
;; previewing or printing by saving the PostScript code generated in a
;; temporary Emacs buffer.  This way you can save banner pages between
;; successive printing.  You can toggle on/off spooling by invoking
;; `pr-toggle-spool' interactively or through menu bar.
;;
;; If you type, for example:
;;
;;    C-u M-x pr-ps-buffer-print RET
;;
;; The `pr-ps-buffer-print' command prompts you for a n-up printing number and
;; a file name, and save the PostScript code generated to the file name instead
;; of sending to printer.
;;
;; This behavior is similar with the commands that deal with PostScript code
;; generation, that is, with `pr-ps-*' and `pr-despool-*' commands.  If
;; spooling is on, only `pr-despool-*' commands prompt for a file name and save
;; the PostScript code spooled in this file.
;;
;; Besides the behavior described above, the `*-directory*' commands also
;; prompt for a directory and a file name regexp.  So, it's possible to process
;; all or certain files on a directory at once (see also documentation for
;; `pr-list-directory').
;;
;; `printing' has also a special way to handle some major mode through
;; `*-mode*' commands.  So it's possible to customize a major mode printing,
;; it's only needed to declare the customization in `pr-mode-alist' (see
;; section Options) and invoke some of `*-mode*' commands.  An example for
;; major mode usage is when you're using gnus (or mh, or rmail, etc.) and
;; you're in the *Summary* buffer, if you forget to switch to the *Article*
;; buffer before printing, you'll get a nicely formatted list of article
;; subjects shows up at the printer.  With major mode printing you don't need
;; to switch from gnus *Summary* buffer first.
;;
;; Current global keyboard mapping for GNU Emacs is:
;;
;;    (global-set-key [print]     'pr-ps-fast-fire)
;;    (global-set-key [M-print]   'pr-ps-mode-using-ghostscript)
;;    (global-set-key [S-print]   'pr-ps-mode-using-ghostscript)
;;    (global-set-key [C-print]   'pr-txt-fast-fire)
;;    (global-set-key [C-M-print] 'pr-txt-fast-fire)
;;
;; And for XEmacs is:
;;
;;    (global-set-key 'f22                'pr-ps-fast-fire)
;;    (global-set-key '(meta f22)         'pr-ps-mode-using-ghostscript)
;;    (global-set-key '(shift f22)        'pr-ps-mode-using-ghostscript)
;;    (global-set-key '(control f22)      'pr-txt-fast-fire)
;;    (global-set-key '(control meta f22) 'pr-txt-fast-fire)
;;
;; As a suggestion of global keyboard mapping for some `printing' commands:
;;
;;    (global-set-key "\C-ci"  'pr-interface)
;;    (global-set-key "\C-cbp" 'pr-ps-buffer-print)
;;    (global-set-key "\C-cbx" 'pr-ps-buffer-preview)
;;    (global-set-key "\C-cbb" 'pr-ps-buffer-using-ghostscript)
;;    (global-set-key "\C-crp" 'pr-ps-region-print)
;;    (global-set-key "\C-crx" 'pr-ps-region-preview)
;;    (global-set-key "\C-crr" 'pr-ps-region-using-ghostscript)
;;
;;
;; Options
;; -------
;;
;; Below it's shown a brief description of `printing' options, please, see the
;; options declaration in the code for a long documentation.
;;
;; `pr-path-style'		Specify which path style to use for external
;;				commands.
;;
;; `pr-path-alist'		Specify an alist for command paths.
;;
;; `pr-txt-naqme'		Specify a printer for printing a text file.
;;
;; `pr-txt-printer-alist'	Specify an alist of all text printers.
;;
;; `pr-ps-name'			Specify a printer for printing a PostScript
;;				file.
;;
;; `pr-ps-printer-alist'	Specify an alist for all PostScript printers.
;;
;; `pr-temp-dir'		Specify a directory for temporary files during
;;				printing.
;;
;; `pr-ps-temp-file'		Specify PostScript temporary file name prefix.
;;
;; `pr-file-modes'		Specify the file permission bits for newly
;;				created files.
;;
;; `pr-gv-command'		Specify path and name of the gsview/gv
;;				utility.
;;
;; `pr-gs-command'		Specify path and name of the ghostscript
;;				utility.
;;
;; `pr-gs-switches'		Specify ghostscript switches.
;;
;; `pr-gs-device'		Specify ghostscript device switch value.
;;
;; `pr-gs-resolution'		Specify ghostscript resolution switch value.
;;
;; `pr-print-using-ghostscript'	Non-nil means print using ghostscript.
;;
;; `pr-faces-p'			Non-nil means print with face attributes.
;;
;; `pr-spool-p'			Non-nil means spool printing in a buffer.
;;
;; `pr-file-landscape'		Non-nil means print PostScript file in
;;				landscape orientation.
;;
;; `pr-file-duplex'		Non-nil means print PostScript file in duplex
;;				mode.
;;
;; `pr-file-tumble'		Non-nil means print PostScript file in tumble
;;				mode.
;;
;; `pr-auto-region'		Non-nil means region is automagically detected.
;;
;; `pr-auto-mode'		Non-nil means major-mode specific printing is
;;				prefered over normal printing.
;;
;; `pr-mode-alist'		Specify an alist for a major-mode and printing
;;				function.
;;
;; `pr-ps-utility'		Specify PostScript utility processing.
;;
;; `pr-ps-utility-alist'	Specify an alist for PostScript utility
;;				processing.
;;
;; `pr-menu-lock'		Non-nil means menu is locked while selecting
;;				toggle options.
;;
;; `pr-menu-char-height'	Specify menu char height in pixels.
;;
;; `pr-menu-char-width'		Specify menu char width in pixels.
;;
;; `pr-setting-database'	Specify an alist for settings in general.
;;
;; `pr-visible-entry-list'	Specify a list of Printing menu visible
;;				entries.
;;
;; `pr-delete-temp-file'	Non-nil means delete temporary files.
;;
;; `pr-list-directory'		Non-nil means list directory when processing a
;;				directory.
;;
;; `pr-buffer-name'		Specify the name of the buffer interface for
;;				printing package.
;;
;; `pr-buffer-name-ignore'	Specify a regexp list for buffer names to be
;;				ignored in interface buffer.
;;
;; `pr-buffer-verbose'		Non-nil means to be verbose when editing a
;;				field in interface buffer.
;;
;; To set the above options you may:
;;
;; a) insert the code in your ~/.emacs, like:
;;
;;	 (setq pr-faces-p t)
;;
;;    This way always keep your default settings when you enter a new Emacs
;;    session.
;;
;; b) or use `set-variable' in your Emacs session, like:
;;
;;	 M-x set-variable RET pr-faces-p RET t RET
;;
;;    This way keep your settings only during the current Emacs session.
;;
;; c) or use customization, for example:
;;	 click on menu-bar *Help* option,
;;	 then click on *Customize*,
;;	 then click on *Browse Customization Groups*,
;;	 expand *PostScript* group,
;;	 expand *Printing* group
;;	 and then customize `printing' options.
;;    Through this way, you may choose if the settings are kept or not when
;;    you leave out the current Emacs session.
;;
;; d) or see the option value:
;;
;;	 C-h v pr-faces-p RET
;;
;;    and click the *customize* hypertext button.
;;    Through this way, you may choose if the settings are kept or not when
;;    you leave out the current Emacs session.
;;
;; e) or invoke:
;;
;;	 M-x pr-customize RET
;;
;;    and then customize `printing' options.
;;    Through this way, you may choose if the settings are kept or not when
;;    you leave out the current Emacs session.
;;
;; f) or use menu bar, for example:
;;	 click on menu-bar *File* option,
;;	 then click on *Printing*,
;;	 then click on *Customize*,
;;	 then click on *printing*
;;	 and then customize `printing' options.
;;    Through this way, you may choose if the settings are kept or not when
;;    you leave out the current Emacs session.
;;
;;
;; Menu Layout
;; -----------
;;
;; The `printing' menu (Tools/Printing or File/Print) has the following layout:
;;
;;        +-----------------------------+
;; A   0  |   Printing Interface        |
;;        +-----------------------------+       +-A---------+     +-B------+
;; I   1  |   PostScript Preview       >|-------|Directory >|-----|1-up    |
;;     2  |   PostScript Print         >|---- A |Buffer    >|-- B |2-up    |
;;     3  |   PostScript Printer: name >|---- C |Region    >|-- B |4-up    |
;;        +-----------------------------+       |Mode      >|-- B |Other...|
;; II  4  |   Printify                 >|-----\ |File      >|--\  +--------+
;;     5  |   Print                    >|---\ | |Despool... |  |
;;     6  |   Text Printer: name       >|-\ | | +-----------+  |
;;        +-----------------------------+ | | | +---------+   +------------+
;; III 7  |[ ]Landscape                 | | | \-|Directory|   | No Prep... | Ia
;;     8  |[ ]Print Header              | | |   |Buffer   |   +------------+ Ib
;;     9  |[ ]Print Header Frame        | | |   |Region   |   |   name    >|- C
;;     10 |[ ]Line Number               | | |   +---------+   +------------+
;;     11 |[ ]Zebra Stripes             | | |   +---------+   |   1-up...  | Ic
;;     12 |[ ]Duplex                    | | \---|Directory|   |   2-up...  |
;;     13 |[ ]Tumble                    | \--\  |Buffer   |   |   4-up...  |
;;     14 |[ ]Upside-Down               |    |  |Region   |   |   Other... |
;;     15 |   Print All Pages          >|--\ |  |Mode     |   +------------+
;;        +-----------------------------+  | |  +---------+   |[ ]Landscape| Id
;; IV  16 |[ ]Spool Buffer              |  | |  +-C-------+   |[ ]Duplex   | Ie
;;     17 |[ ]Print with faces          |  | \--|( )name A|   |[ ]Tumble   | If
;;     18 |[ ]Print via Ghostscript     |  |    |( )name B|   +------------+
;;        +-----------------------------+  |    |...      |
;; V   19 |[ ]Auto Region               |  |    |(*)name  |
;;     20 |[ ]Auto Mode                 |  |    |...      |
;;     21 |[ ]Menu Lock                 |  |    +---------+   +--------------+
;;        +-----------------------------+  \------------------|(*)All Pages  |
;; VI  22 |   Customize                >|--- D  +-D------+    |( )Even Pages |
;;     23 |   Show Settings            >|-------|printing|    |( )Odd Pages  |
;;     24 |   Help                      |       |ps-print|    |( )Even Sheets|
;;        +-----------------------------+       |lpr     |    |( )Odd Sheets |
;;                                              +--------+    +--------------+
;;
;; See `pr-visible-entry-list' for hiding some parts of the menu.
;;
;; The menu has the following sections:
;;
;; A. Interface:
;;
;;    0. You can use a buffer interface instead of menus.  It looks like the
;;	 customization buffer.  Basically, it has the same options found in the
;;	 menu and some extra options, all this on a buffer.
;;
;; I. PostScript printing:
;;
;;    1. You can generate a PostScript file (if you type C-u before activating
;;	 menu) or PostScript temporary file for a directory, a buffer, a region
;;	 or a major mode, choosing 1-up, 2-up, 4-up or any other n-up printing;
;;	 after file generation, ghostview is activated using the file generated
;;	 as argument.  This option is disabled if spooling is on (option 16).
;;	 Also, if you already have a PostScript file you can preview it.
;;	 Instead of previewing each buffer, region or major mode at once, you
;;	 can save temporarily the PostScript code generated in a buffer and
;;	 preview it later.  The option `Despool...' despools the PostScript
;;	 spooling buffer in a temporary file and uses ghostview to preview it.
;;	 If you type C-u before choosing this option, the PostScript code
;;	 generated is saved in a file instead of saving in a temporary file.
;;	 To spool the PostScript code generated you need to turn on the option
;;	 16.  The option `Despool...' is enabled if spooling is on (option
;;	 16).
;;
;;	 NOTE 1: It's possible to customize a major mode printing, just declare
;;		 the customization in `pr-mode-alist' and invoke some of
;;		 `*-mode*' commands or select Mode option in Printing menu.  An
;;		 example for major mode usage is when you're using gnus (or mh,
;;		 or rmail, etc.) and you're in the *Summary* buffer, if you
;;		 forget to switch to the *Article* buffer before printing,
;;		 you'll get a nicely formatted list of article subjects shows
;;		 up at the printer.  With major mode printing you don't need to
;;		 switch from gnus *Summary* buffer first.
;;
;;	 NOTE 2: There are the following options for PostScript file
;;		 processing:
;;		 Ia. Print the file *No Preprocessing*, that is, send it
;;		     directly to PostScript printer.
;;		 Ib. PostScript utility processing selection.
;;		     See `pr-ps-utility-alist' and `pr-setting-database' for
;;		     documentation.
;;		 Ic. Do n-up processing before printing.
;;		 Id. Toggle on/off landscape for PostScript file processing.
;;		 Ie. Toggle on/off duplex for PostScript file processing.
;;		 If. Toggle on/off tumble for PostScript file processing.
;;
;;	 NOTE 3: Don't forget to download and install the utilities declared on
;;		 `pr-ps-utility-alist'.
;;
;;    2. Operate the same way as option 1, but it sends directly the PostScript
;;	 code (or put in a file, if you've typed C-u) or it uses ghostscript to
;;	 print the PostScript file generated.  It depends on option 18, if it's
;;	 turned on, it uses ghostscript; otherwise, it sends directly to
;;	 printer.  If spooling is on (option 16), the PostScript code is saved
;;	 temporarily in a buffer instead of printing it or saving it in a file.
;;	 Also, if you already have a PostScript file you can print it.  Instead
;;	 of printing each buffer, region or major mode at once, you can save
;;	 temporarily the PostScript code generated in a buffer and print it
;;	 later.  The option `Despool...' despools the PostScript spooling
;;	 buffer directly on a printer.  If you type C-u before choosing this
;;	 option, the PostScript code generated is saved in a file instead of
;;	 sending to printer.  To spool the PostScript code generated you need
;;	 to turn on the option 16.  This option is enabled if spooling is on
;;	 (option 16).  See also the NOTE 1, NOTE 2 and NOTE 3 on option 1.
;;
;;    3. You can select a new PostScript printer to send PostScript code
;;	 generated.  For selection it's used all PostScript printers defined
;;	 in `pr-ps-printer-alist' variable (see it for documentation).
;;	 See also `pr-setting-database'.
;;
;; II. Text printing:
;;
;;    4. If you have control characters (character code from \000 to \037) in a
;;	 buffer and you want to print them in a text printer, select this
;;	 option.  All control characters in your buffer or region will be
;;	 replaced by a printable representation.  The printable representations
;;	 use ^ (for ASCII control characters) or hex.  The characters tab,
;;	 linefeed, space, return and formfeed are not affected.  You don't need
;;	 to select this option if you use any option of section I, the
;;	 PostScript engine treats control characters properly.
;;
;;    5. If you want to print a directory, buffer, region or major mode in a
;;	 text printer, select this option.  See also the NOTE 1 on option 1.
;;
;;    6. You can select a new text printer to send text generated.  For
;;	 selection it's used all text printers defined in
;;	 `pr-txt-printer-alist' variable (see it for documentation).
;;	 See also `pr-setting-database'.
;;
;; III. PostScript page toggle options:
;;
;;    7. If you want a PostScript landscape printing, turn on this option.
;;
;;    8. If you want to have a header in each page in your PostScript code,
;;	 turn on this option.
;;
;;    9. If you want to draw a gaudy frame around the header, turn on this
;;	 option.  This option is enabled if print header is on (option 8).
;;
;;    10. If you want that the line number is printed in your PostScript code,
;;	  turn on this option.
;;
;;    11. If you want background zebra stripes in your PostScript code, turn on
;;	  this option.
;;
;;    12. If you want a duplex printing and your PostScript printer has this
;;	  feature, turn on this option.
;;
;;    13. If you turned on duplex printing, you can choose if you want to have
;;	  a printing suitable for binding on the left or right (tumble off), or
;;	  to have a printing suitable for binding at top or bottom (tumble on).
;;	  This option is enabled if duplex is on (option 12).
;;
;;    14. If you want a PostScript upside-down printing, turn on this option.
;;
;;    15. With this option, you can choose if you want to print all pages, odd
;;	  pages, even pages, odd sheets or even sheets.
;;	  See also `ps-even-or-odd-pages'.
;;
;; IV. PostScript processing toggle options:
;;
;;    16. If you want to spool the PostScript code generated, turn on this
;;	  option.  To spool the PostScript code generated use option 2.  You
;;	  can despool later by choosing option 1 or 2, sub-option `Despool...'.
;;
;;    17. If you use colors in your buffers and want to see these colors on
;;	  your PostScript code generated, turn on this option.  If you have a
;;	  black/white PostScript printer, these colors are displayed in gray
;;	  scale by PostScript printer interpreter.
;;
;;    18. If you don't have a PostScript printer to send PostScript files, turn
;;	  on this option.  When this option is on, the ghostscript is used to
;;	  print PostScript files.  In GNU or Unix system, if ghostscript is set
;;	  as a PostScript filter, you don't need to turn on this option.
;;
;; V. Printing customization:
;;
;;    19. If you want that region is automagically detected, turn on this
;;	  option.  Note that this will only work if you're using transient mark
;;	  mode.  When this option is on, the `*-buffer*' commands will behave
;;	  like `*-region*' commands, that is, `*-buffer*' commands will print
;;	  only the region marked instead of all buffer.
;;
;;    20. Turn this option on if you want that when current major-mode is
;;	  declared in `pr-mode-alist', the `*-buffer*' and `*-region*' commands
;;	  behave like `*-mode*' commands.
;;
;;    21. If you want that Printing menu stays open while you are setting
;;	  toggle options, turn on this option.  The variables
;;	  `pr-menu-char-height' and `pr-menu-char-width' are used to guess the
;;	  menu position, so don't forget to adjust these variables if menu
;;	  position is not ok.
;;
;; VI. Customization:
;;
;;    22. Besides all options in section III, IV and V, you can customize much
;;	  more PostScript options in `ps-print' option.  Or you can customize
;;	  some `lpr' options for text printing.  Or customize `printing'
;;	  options.
;;
;;    23. Show current settings for `printing', `ps-print' or `lpr'.
;;
;;    24. Quick help for printing menu layout.
;;
;;
;; Option Settings
;; ---------------
;;
;; Below it's shown only the main options that affect all `printing' package.
;; Check all the settings below *BEFORE* running `printing' commands.
;;
;; * Example of setting for GNU or Unix system:
;;
;;    (require 'printing)
;;    (setq pr-path-alist
;;	    '((unix      "." "~/bin" ghostview mpage PATH)
;;	      (ghostview "$HOME/bin/gsview-dir")
;;	      (mpage     "$HOME/bin/mpage-dir")
;;	      ))
;;    (setq pr-txt-name      'prt_06a)
;;    (setq pr-txt-printer-alist
;;          '((prt_06a "lpr" nil "prt_06a")
;;            (prt_07c nil   nil "prt_07c")
;;            ))
;;    (setq pr-ps-name       'lps_06b)
;;    (setq pr-ps-printer-alist
;;          '((lps_06b "lpr" nil "-P" "lps_06b")
;;            (lps_07c "lpr" nil nil  "lps_07c")
;;            (lps_08c nil   nil nil  "lps_08c")
;;            ))
;;    (setq pr-temp-dir      "/tmp/")
;;    (setq pr-gv-command    "gv")
;;    (setq pr-gs-command    "gs")
;;    (setq pr-gs-switches '("-q -dNOPAUSE -I/usr/share/ghostscript/5.10"))
;;    (setq pr-gs-device     "uniprint")
;;    (setq pr-gs-resolution 300)
;;    (setq pr-ps-utility    'mpage)
;;    (setq pr-ps-utility-alist
;;	    '((mpage "mpage" nil    "-b%s" "-%d" "-l" "-t" "-T" ">" nil)
;;	      (psnup "psnup" ("-q") "-P%s" "-%d" "-l" nil  nil  " " nil
;;		     (inherits-from: . no-duplex))
;;	      ))
;;    (setq pr-setting-database
;;	    '((no-duplex
;;	       nil nil nil
;;	       (pr-file-duplex . nil)
;;	       (pr-file-tumble . nil))
;;	      ))
;;    (pr-update-menus t)		; update now printer and utility menus
;;
;; * Example of setting for Windows system:
;;
;;    (require 'printing)
;;    (setq pr-path-alist
;;	    '((windows   "c:/applications/executables" PATH ghostview mpage)
;;	      (ghostview "c:/gs/gsview-dir")
;;	      (mpage     "c:/mpage-dir")
;;	      ))
;;    (setq pr-txt-name      'prt_06a)
;;    (setq pr-txt-printer-alist
;;          '((prt_06a  "print"     nil "/D:\\\\printers\\prt_06a")
;;            (prt_07c  nil         nil "/D:\\\\printers\\prt_07c")
;;            (PRN      ""          nil "PRN")
;;            (standard "redpr.exe" nil "")
;;            ))
;;    (setq pr-ps-name       'lps_06b)
;;    (setq pr-ps-printer-alist
;;          '((lps_06a  "print"     nil "/D:" "\\\\printers\\lps_06a")
;;            (lps_06b  "print"     nil nil   "\\\\printers\\lps_06b")
;;            (lps_07c  "print"     nil ""    "/D:\\\\printers\\lps_07c")
;;            (lps_08c  nil         nil nil   "\\\\printers\\lps_08c")
;;            (b/w      "gsprint" ("-all" "-twoup") "-printer " "b/w-pr-name")
;;            (LPT1     ""          nil ""    "LPT1:")
;;            (PRN      ""          nil ""    "PRN")
;;            (standard "redpr.exe" nil ""    "")
;;            ))
;;    (setq pr-temp-dir      "C:/WINDOWS/TEMP/")
;;    (setq pr-gv-command    "c:/gs/gsview/gsview32.exe")
;;    (setq pr-gs-command    "c:/gs/gswin32.exe")
;;    (setq pr-gs-switches '("-q -dNOPAUSE -Ic:/gs/gs5.50;c:/gs/gs5.50/fonts"))
;;    (setq pr-gs-device     "mswinpr2")
;;    (setq pr-gs-resolution 300)
;;    (setq pr-ps-utility    'psnup)
;;    (setq pr-ps-utility-alist
;;	    '((psnup "c:/psutils/psnup" ("-q") "-P%s" "-%d" "-l" nil nil " "
;;		     nil (inherits-from: . no-duplex))
;;	      ))
;;    (setq pr-setting-database
;;	    '((no-duplex
;;	       nil nil nil
;;	       (pr-file-duplex . nil)
;;	       (pr-file-tumble . nil))
;;	      ))
;;    (pr-update-menus t)		; update now printer and utility menus
;;
;; NOTE: Don't forget to download and install the utilities declared on
;;	 `pr-ps-utility-alist'.
;;
;;
;; Utilities
;; ---------
;;
;; `printing' package has the following utilities:
;;
;;    `pr-setup'	Return the current `printing' setup.
;;
;;    `lpr-setup'	Return the current `lpr' setup.
;;
;;    `pr-update-menus'	Update utility, PostScript and text printer menus.
;;
;;    `pr-menu-bind'	Install `printing' menu in the menubar.
;;
;;
;; Below are some URL where you can find good utilities.
;;
;; * For `printing' package:
;;
;;    printing	`http://www.emacswiki.org/cgi-bin/emacs/download/printing.el'
;;    ps-print	`http://www.emacswiki.org/cgi-bin/wiki/PsPrintPackage'
;;
;; * For GNU or Unix system:
;;
;;    gs, gv         `http://www.gnu.org/software/ghostscript/ghostscript.html'
;;    enscript       `http://people.ssh.fi/mtr/genscript/'
;;    psnup          `http://www.knackered.org/angus/psutils/'
;;    mpage          `http://www.mesa.nl/pub/mpage/'
;;
;; * For Windows system:
;;
;;    gswin32, gsview32
;;                   `http://www.gnu.org/software/ghostscript/ghostscript.html'
;;    gsprint        `http://www.cs.wisc.edu/~ghost/gsview/gsprint.htm'.
;;    enscript       `http://people.ssh.fi/mtr/genscript/'
;;    psnup          `http://gnuwin32.sourceforge.net/packages/psutils.htm'
;;    redmon         `http://www.cs.wisc.edu/~ghost/redmon/'
;;
;;
;; Acknowledgments
;; ---------------
;;
;; Thanks to Stefan Monnier <monnier@iro.umontreal.ca> for GNU Emacs and XEmacs
;; printing menu (in `pr-menu-spec') merging suggestion.
;;
;; Thanks to Lennart Borgman <lennart.borgman.073@student.lu.se> for gsprint
;; suggestion (see tip 5 in section Tips).
;;
;; Thanks to Drew Adams <drew.adams@oracle.com> for suggestions:
;;    - directory processing.
;;    - `pr-path-alist' variable.
;;    - doc fix.
;;    - a lot of tests on Windows.
;;
;; Thanks to Fred Labrosse <f.labrosse@maths.bath.ac.uk> for XEmacs tests.
;;
;; Thanks to Klaus Berndl <klaus.berndl@sdm.de> for invaluable help/debugging
;; and for suggestions:
;;    - even/odd pages printing.
;;    - ghostscript parameters for `pr-ps-printer-alist'.
;;    - default printer name.
;;    - completion functions.
;;    - automagic region detection.
;;    - menu entry hiding.
;;    - fast fire PostScript printing command.
;;    - `pr-path-style' variable.
;;
;; Thanks to Kim F. Storm <storm@filanet.dk> for beta-test and for suggestions:
;;    - PostScript Print and PostScript Print Preview merge.
;;    - Tools/Printing menu.
;;    - replace *-using-preview by *-using-ghostscript.
;;    - printer selection.
;;    - extra parameters for `pr-ps-printer-alist'.
;;
;; Thanks to:
;;    Frederic Corne <frederic.corne@erli.fr>		print-nt.el
;;    Tom Vogels <tov@ece.cmu.edu>			mh-e-init.el
;;    Matthew O. Persico <mpersico@erols.com>		win32-ps-print.el
;;    Volker Franz <volker.franz@tuebingen.mpg.de>	ps-print-interface.el
;; And to all people who contributed with them.
;;
;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'bystar-printing-lib)



