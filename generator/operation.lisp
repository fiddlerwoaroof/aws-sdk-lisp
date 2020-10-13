(defpackage #:aws-sdk/generator/operation
  (:use #:cl
        #:aws-sdk/utils)
  (:import-from #:aws-sdk/generator/shape
                #:shape-to-params)
  (:import-from #:aws-sdk/api
                #:aws-request)
  (:import-from #:assoc-utils
                #:aget)
  (:import-from #:xmls)
  (:import-from #:serapeum)
  (:export #:compile-operation))
(in-package #:aws-sdk/generator/operation)

(defun handle-path (path)
  (when (find #\{ path)
    (let* ((start 0)
           (parts '())
           (names (mapcar 'string-upcase
                          (serapeum:with-collector (c)
                            (cl-ppcre:do-scans (a b c d
                                                "[{]([^}]+)[}]" path)
                              (push (subseq path start a)
                                    parts)
                              (setf start b)
                              (map 'vector (lambda (a b)
                                             (c (subseq path a b)))
                                   c d))))))
      (if (< start (length path))
          (push (subseq path start) parts)
          (push "" parts))
      (let ((syms (mapcar 'intern names)))
        (list syms
              `(format nil
                       ,(serapeum:string-join (nreverse parts)
                                              "~a")
                       ,@syms))))))

(defun %xmls-to-alist (xmls)
  (unless (consp xmls)
    (return-from %xmls-to-alist xmls))

  (destructuring-bind ((name &rest ignore) attrs &rest contents) xmls
    (declare (ignore ignore attrs))
    (cons name
          (mapcar #'%xmls-to-alist contents))))
(defun xmls-to-alist (xmls)
  (list (%xmls-to-alist xmls)))

(defun parse-response (response response-name wrapper-name)
  (when response-name
    (let* ((output (xmls-to-alist (xmls:parse-to-list response)))
           (output ;; Unwrap the root element
             (cdr (first output))))
      (if wrapper-name
          (values (aget output wrapper-name)
                  (aget output "ResponseMetadata"))
          output))))

(defun compile-operation (service name version options params)
  (let ((output (gethash "output" options)))
    (if params
        (let ((input-shape-name (lispify (gethash "shape" (gethash "input" options))))
              (path-formatter (handle-path (gethash "requestUri" (gethash "http" options)))))
          `(progn
             (defun ,(lispify name) (&rest args &key ,@params)
               (declare (ignorable ,@params))
               (let ((input (apply ',(intern (format nil "~:@(~A-~A~)" :make input-shape-name))
                                   args)))
                 (parse-response
                  (aws-request :service ,service
                               :method ,(intern (gethash "method" (gethash "http" options)) :keyword)
                               ,@(when path-formatter
                                   `(:path ,(cadr path-formatter)))
                               :params (append `(("Action" . ,,name) ("Version" . ,,version))
                                               (shape-to-params input)))
                  ,(and output
                        (gethash "shape" output))
                  ,(and output
                        (gethash "resultWrapper" output)))))
             (export ',(lispify name))))
        `(progn
           (defun ,(lispify name) ()
             (parse-response
              (aws-request :service ,service
                           :method ,(intern (gethash "method" (gethash "http" options)) :keyword)
                           :params (cons "Action" ,name))
              ,(and output
                    (gethash "shape" output))
              ,(and output
                    (gethash "resultWrapper" output))))
           (export ',(lispify name))))))
