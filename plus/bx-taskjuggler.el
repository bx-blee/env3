;;; bx-taskjuggler.el --- BISOS TaskJuggler Extensions

(defvar b:org-taskjuggler-reports-gantt-only
  '("textreport report \"Gantt\" {
  formats html
  header '== %title - Gantt Chart =='

  center -8<-
    <[report id=\"plan\"]>
  ->8-
}

taskreport plan \"\" {
  headline \"Project Plan\"
  columns bsi, name, start, end, effort, chart
  loadunit shortauto
  hideresource 1
}")
  "Gantt-only report: just the project timeline.")

(defvar b:org-taskjuggler-reports-resources-only
  '("textreport report \"Resources\" {
  formats html
  header '== %title - Resource Allocation =='

  center -8<-
    <[report id=\"resourceGraph\"]>
  ->8-
}

resourcereport resourceGraph \"\" {
  headline \"Resource Allocation Graph\"
  columns no, name, effort, weekly
  loadunit shortauto
  hidetask ~(isleaf() & isleaf_())
  sorttasks plan.start.up
}")
  "Resources-only report: just the resource allocation.")

;;;###############################################################################
;;;
;;; Export Functions - Gantt Only
;;;
;;;###############################################################################

;;;###autoload
(defun b:org-taskjuggler-export-gantt-only (&optional async subtreep visible-only)
  "Export current buffer to a TaskJuggler file with GANTT-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
    (org-taskjuggler-export async subtreep visible-only)))

;;;###autoload
(defun b:org-taskjuggler-export-process-gantt-only (&optional subtreep visible-only)
  "Export and process with GANTT-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
    (org-taskjuggler-export-and-process subtreep visible-only)))

;;;###autoload
(defun b:org-taskjuggler-export-process-open-gantt-only (&optional subtreep visible-only)
  "Export, process, and open with GANTT-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
    (org-taskjuggler-export-process-and-open subtreep visible-only)))

;;;###############################################################################
;;;
;;; Export Functions - Resources Only
;;;
;;;###############################################################################

;;;###autoload
(defun b:org-taskjuggler-export-resources-only (&optional async subtreep visible-only)
  "Export current buffer to a TaskJuggler file with RESOURCES-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
    (org-taskjuggler-export async subtreep visible-only)))

;;;###autoload
(defun b:org-taskjuggler-export-process-resources-only (&optional subtreep visible-only)
  "Export and process with RESOURCES-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
    (org-taskjuggler-export-and-process subtreep visible-only)))

;;;###autoload
(defun b:org-taskjuggler-export-process-open-resources-only (&optional subtreep visible-only)
  "Export, process, and open with RESOURCES-ONLY report."
  (interactive)
  (let ((org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
    (org-taskjuggler-export-process-and-open subtreep visible-only)))

;;;###############################################################################
;;;
;;; Primary Workflow - Export All Three Report Types
;;;
;;; Creates three separate .tjp files:
;;;   1. file.tjp - uses ox-taskjuggler.el DEFAULT (combined Gantt + Resources)
;;;   2. file-gantt.tjp - uses CUSTOM gantt-only report
;;;   3. file-resources.tjp - uses CUSTOM resources-only report
;;;
;;;###############################################################################

;;;###autoload
(defun b:org-taskjuggler-export-all (&optional subtreep visible-only)
  "Export THREE separate .tjp files with sequential async callbacks."
  (interactive)
  (let ((outfile (org-export-output-file-name org-taskjuggler-extension subtreep)))
    ;; First: Export DEFAULT (combined) - no custom binding, uses ox-taskjuggler.el default
    (org-export-to-file 'taskjuggler outfile nil subtreep visible-only nil nil
      (lambda (file)
        (run-hook-with-args 'org-taskjuggler-final-hook file)
        ;; Second: Export GANTT-ONLY
        (let ((gantt-file (concat (file-name-sans-extension outfile) "-gantt.tjp"))
              (org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
          (org-export-to-file 'taskjuggler gantt-file nil subtreep visible-only nil nil
            (lambda (file2)
              (run-hook-with-args 'org-taskjuggler-final-hook file2)
              ;; Third: Export RESOURCES-ONLY
              (let ((resources-file (concat (file-name-sans-extension outfile) "-resources.tjp"))
                    (org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
                (org-export-to-file 'taskjuggler resources-file nil subtreep visible-only nil nil
                  (lambda (file3)
                    (run-hook-with-args 'org-taskjuggler-final-hook file3)
                    (message "✓ Exported THREE .tjp files")))))))))))

;;;###autoload
(defun b:org-taskjuggler-export-process-all (&optional subtreep visible-only)
  "Export and process THREE separate .tjp files with sequential async callbacks."
  (interactive)
  (let ((outfile (org-export-output-file-name org-taskjuggler-extension subtreep)))
    ;; First: Export and process DEFAULT (combined)
    (org-export-to-file 'taskjuggler outfile nil subtreep visible-only nil nil
      (lambda (file)
        (org-taskjuggler-compile file)
        ;; Second: Export and process GANTT-ONLY
        (let ((gantt-file (concat (file-name-sans-extension outfile) "-gantt.tjp"))
              (org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
          (org-export-to-file 'taskjuggler gantt-file nil subtreep visible-only nil nil
            (lambda (file2)
              (org-taskjuggler-compile file2)
              ;; Third: Export and process RESOURCES-ONLY
              (let ((resources-file (concat (file-name-sans-extension outfile) "-resources.tjp"))
                    (org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
                (org-export-to-file 'taskjuggler resources-file nil subtreep visible-only nil nil
                  (lambda (file3)
                    (org-taskjuggler-compile file3)
                    (message "✓ Processed THREE .tjp files")))))))))))

;;;###autoload
(defun b:org-taskjuggler-export-process-open-all (&optional subtreep visible-only)
  "Export, process, and open THREE separate .tjp files in browser."
  (interactive)
  (let ((outfile (org-export-output-file-name org-taskjuggler-extension subtreep)))
    ;; First: Export and process DEFAULT (combined)
    (org-export-to-file 'taskjuggler outfile nil subtreep visible-only nil nil
      (lambda (file)
        (org-taskjuggler-compile file)
        ;; Second: Export and process GANTT-ONLY
        (let ((gantt-file (concat (file-name-sans-extension outfile) "-gantt.tjp"))
              (org-taskjuggler-default-reports b:org-taskjuggler-reports-gantt-only))
          (org-export-to-file 'taskjuggler gantt-file nil subtreep visible-only nil nil
            (lambda (file2)
              (org-taskjuggler-compile file2)
              ;; Third: Export and process RESOURCES-ONLY
              (let ((resources-file (concat (file-name-sans-extension outfile) "-resources.tjp"))
                    (org-taskjuggler-default-reports b:org-taskjuggler-reports-resources-only))
                (org-export-to-file 'taskjuggler resources-file nil subtreep visible-only nil nil
                  (lambda (file3)
                    (org-taskjuggler-compile file3)
                    (let ((dir (file-name-directory outfile)))
                      (let ((base (file-name-sans-extension (file-name-nondirectory outfile))))
                        (browse-url (concat "file://" dir base ".html"))
                        (browse-url (concat "file://" dir base "-gantt.html"))
                        (browse-url (concat "file://" dir base "-resources.html"))
                        (message "✓ Opened THREE HTML files"))))))))))))

)

(provide 'bx-taskjuggler)

;;; bx-taskjuggler.el ends here
