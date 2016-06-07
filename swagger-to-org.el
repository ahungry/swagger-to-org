;;; swagger-to-org --- Convert a swagger.json file into an org-mode file

;;; Commentary:

;;; Code:

(require 'cl-lib)
(require 'json)

(defun swagger-to-org-definitions-to-org (fn)
  "Read out the definitions block from FN and print to an org buffer."
  (with-output-to-temp-buffer
      "*swagger-to-org*"
    (cl-map
     'nil
     (lambda (def)
       (princ (format "\n* %s\nObject structure:\n" (car def)))
       (princ (format "
#+BEGIN_SRC javascript
%s
#+END_SRC\n\n" (json-encode-list (list (cdr def)))))
       )
     (cdr (assoc 'definitions
                 (json-read-file fn))))))

(swagger-to-org-definitions-to-org
 "/home/mcarter/software/swagger-php/swagger.json")

(provide 'swagger-to-org)
;;; swagger-to-org.el ends here
