
;;;
;;; Need to update documentation in:
;;; https://www.gnu.org/software/emacs/manual/html_node/message/Mail-Variables.html
;;;
;;; Code in lisp/gnus/message.el ---
;;; Please add the two lines with qmail to message-multi-smtp-send-mail.
;;;

(defun message-multi-smtp-send-mail ()
  "Send the current buffer to `message-send-mail-function'.
Or, if there's a header that specifies a different method, use
that instead."
  (let ((method (message-field-value "X-Message-SMTP-Method")))
    (if (not method)
	(funcall message-send-mail-function)
      (message-remove-header "X-Message-SMTP-Method")
      (setq method (split-string method))
      (cond
       ((equal (car method) "sendmail")
	(message-send-mail-with-sendmail))
       ((equal (car method) "qmail")
	(message-send-mail-with-qmail))
       ((equal (car method) "smtp")
	(require 'smtpmail)
	(let* ((smtpmail-store-queue-variables t)
               (smtpmail-smtp-server (nth 1 method))
	       (service (nth 2 method))
	       (port (string-to-number service))
	       ;; If we're talking to the TLS SMTP port, then force a
	       ;; TLS connection.
	       (smtpmail-stream-type (if (= port 465)
					 'tls
				       smtpmail-stream-type))
	       (smtpmail-smtp-service (if (> port 0) port service))
	       (smtpmail-smtp-user (or (nth 3 method) smtpmail-smtp-user)))
	  (message-smtpmail-send-it)))
       (t
	(error "Unknown method %s" method))))))
