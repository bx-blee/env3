;;; gptelDefine.el --- Description -*- lexical-binding: t; -*-

;;; Was taken from
;;; https://github.com/benjisimon/elisp/blob/main/bs-fns.el
;;; and adapted for Blee.

(require 'gptel)

(defvar bs-gptel-define-word-prompt
  "Please give a short definition of this word or phrase. Then, provide 3 usage examples, synonyms and antyonyms"
  "The ChatGPT style prompt used define a word.")

(setq  bs-gptel-define-word-prompt
  "Please give a short definition of this word or phrase. Then, provide 3 usage examples, synonyms and antyonyms also translate to farsi and french"
  )


(defun bs-gptel-stash-response (buffer prompt response)
  "Store a response in a well known buffer we can look at if we want"
  (let ((buffer (get-buffer-create buffer)))
    (with-current-buffer buffer
      (erase-buffer)
      (insert prompt)
      (insert "\n\n-->\n\n")
      (insert response))))

(defun bs-gptel-define-word (start end)
  "Use ChatGPT to define the current word of the region."
  (interactive "r")
  (unless (region-active-p)
    (error "you must have a region set"))
  (let ((input (buffer-substring-no-propertiesq (region-beginning) (region-end))))
    (gptel-request nil
      :callback (lambda (response info)
                  (bs-gptel-stash-response "*Last Definition*" (plist-get info :context) response)
                  (message response))
      :system bs-gptel-define-word-prompt
      :context input)))

(provide 'gptelDefine)
;;; gptelDefine.el ends here
