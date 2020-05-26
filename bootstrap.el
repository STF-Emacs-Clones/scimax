;;; bootstrap.el --- install use-package


;;; Commentary:
;;

;;; Code:

(when (memq system-type '(windows-nt ms-dos))
  ;; On windows this solves some issues checking package signatures in the gnu elpa.
  (setq package-check-signature nil))

(require 'gnutls)
;; (when (and (string= "26" (substring emacs-version 0 2))
;; 	   (null gnutls-algorithm-priority)
;;            (not (memq system-type '(windows-nt ms-dos))))
;;   ;; This appears to be a bug in emacs 26 that prevents the gnu archive from being downloaded.
;;   ;; This solution is from https://www.reddit.com/r/emacs/comments/cdf48c/failed_to_download_gnu_archive/
;;   (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

;; (unless (file-exists-p (expand-file-name "archives/gnu/archive-contents" package-user-dir))
;;   (package-refresh-contents))

(provide 'bootstrap)

;;; bootstrap.el ends here
