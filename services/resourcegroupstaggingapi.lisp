;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/resourcegroupstaggingapi
  (:use)
  (:nicknames #:aws/resourcegroupstaggingapi)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api))
(common-lisp:in-package #:aws-sdk/services/resourcegroupstaggingapi)

(common-lisp:deftype amazon-resource-type () 'common-lisp:string)
(common-lisp:deftype error-code () 'common-lisp:string)
(common-lisp:deftype error-message () 'common-lisp:string)
(common-lisp:deftype exception-message () 'common-lisp:string)
(common-lisp:defstruct
    (failed-resources-map
     (:constructor |make-failed-resources-map|
      (aws-sdk/generator/shape::key aws-sdk/generator/shape::value)))
  aws-sdk/generator/shape::key
  aws-sdk/generator/shape::value)
(common-lisp:progn
 (common-lisp:defstruct (failure-info (:copier common-lisp:nil))
   (status-code common-lisp:nil :type
    (common-lisp:or status-code common-lisp:null))
   (error-code common-lisp:nil :type
    (common-lisp:or error-code common-lisp:null))
   (error-message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export (common-lisp:list 'failure-info 'make-failure-info))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape failure-info))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "StatusCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'status-code)))
    (aws-sdk/generator/shape::to-query-params "ErrorCode"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'error-code)))
    (aws-sdk/generator/shape::to-query-params "ErrorMessage"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'error-message))))))
(common-lisp:progn
 (common-lisp:defstruct (get-resources-input (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null))
   (tag-filters common-lisp:nil :type
    (common-lisp:or tag-filter-list common-lisp:null))
   (resources-per-page common-lisp:nil :type
    (common-lisp:or resources-per-page common-lisp:null))
   (tags-per-page common-lisp:nil :type
    (common-lisp:or tags-per-page common-lisp:null))
   (resource-type-filters common-lisp:nil :type
    (common-lisp:or resource-type-filter-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-resources-input 'make-get-resources-input))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape get-resources-input))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token)))
    (aws-sdk/generator/shape::to-query-params "TagFilters"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tag-filters)))
    (aws-sdk/generator/shape::to-query-params "ResourcesPerPage"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resources-per-page)))
    (aws-sdk/generator/shape::to-query-params "TagsPerPage"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tags-per-page)))
    (aws-sdk/generator/shape::to-query-params "ResourceTypeFilters"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resource-type-filters))))))
(common-lisp:progn
 (common-lisp:defstruct (get-resources-output (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null))
   (resource-tag-mapping-list common-lisp:nil :type
    (common-lisp:or resource-tag-mapping-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-resources-output 'make-get-resources-output))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape get-resources-output))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token)))
    (aws-sdk/generator/shape::to-query-params "ResourceTagMappingList"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resource-tag-mapping-list))))))
(common-lisp:progn
 (common-lisp:defstruct (get-tag-keys-input (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-tag-keys-input 'make-get-tag-keys-input))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape get-tag-keys-input))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token))))))
(common-lisp:progn
 (common-lisp:defstruct (get-tag-keys-output (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null))
   (tag-keys common-lisp:nil :type
    (common-lisp:or tag-key-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-tag-keys-output 'make-get-tag-keys-output))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape get-tag-keys-output))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token)))
    (aws-sdk/generator/shape::to-query-params "TagKeys"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tag-keys))))))
(common-lisp:progn
 (common-lisp:defstruct (get-tag-values-input (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null))
   (key (common-lisp:error #A((16) common-lisp:base-char . ":key is required"))
    :type (common-lisp:or tag-key common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-tag-values-input 'make-get-tag-values-input))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape get-tag-values-input))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token)))
    (aws-sdk/generator/shape::to-query-params "Key"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'key))))))
(common-lisp:progn
 (common-lisp:defstruct (get-tag-values-output (:copier common-lisp:nil))
   (pagination-token common-lisp:nil :type
    (common-lisp:or pagination-token common-lisp:null))
   (tag-values common-lisp:nil :type
    (common-lisp:or tag-values-output-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-tag-values-output 'make-get-tag-values-output))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          get-tag-values-output))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "PaginationToken"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'pagination-token)))
    (aws-sdk/generator/shape::to-query-params "TagValues"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tag-values))))))
(common-lisp:progn
 (common-lisp:defstruct (internal-service-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or exception-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'internal-service-exception
                    'make-internal-service-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          internal-service-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (invalid-parameter-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or exception-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invalid-parameter-exception
                    'make-invalid-parameter-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          invalid-parameter-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype pagination-token () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (pagination-token-expired-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or exception-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'pagination-token-expired-exception
                    'make-pagination-token-expired-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          pagination-token-expired-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype resource-arn () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype resource-arnlist ()
   '(trivial-types:proper-list resource-arn))
 (common-lisp:defun |make-resource-arnlist|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list resource-arn))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defstruct (resource-tag-mapping (:copier common-lisp:nil))
   (resource-arn common-lisp:nil :type
    (common-lisp:or resource-arn common-lisp:null))
   (tags common-lisp:nil :type (common-lisp:or tag-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'resource-tag-mapping 'make-resource-tag-mapping))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape resource-tag-mapping))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ResourceARN"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resource-arn)))
    (aws-sdk/generator/shape::to-query-params "Tags"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tags))))))
(common-lisp:progn
 (common-lisp:deftype resource-tag-mapping-list ()
   '(trivial-types:proper-list resource-tag-mapping))
 (common-lisp:defun |make-resource-tag-mapping-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list resource-tag-mapping))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:deftype resource-type-filter-list ()
   '(trivial-types:proper-list amazon-resource-type))
 (common-lisp:defun |make-resource-type-filter-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list amazon-resource-type))
   aws-sdk/generator/shape::members))
(common-lisp:deftype resources-per-page () 'common-lisp:integer)
(common-lisp:deftype status-code () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct (tag (:copier common-lisp:nil))
   (key (common-lisp:error #A((16) common-lisp:base-char . ":key is required"))
    :type (common-lisp:or tag-key common-lisp:null))
   (value
    (common-lisp:error #A((18) common-lisp:base-char . ":value is required"))
    :type (common-lisp:or tag-value common-lisp:null)))
 (common-lisp:export (common-lisp:list 'tag 'make-tag))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape tag))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Key"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'key)))
    (aws-sdk/generator/shape::to-query-params "Value"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'value))))))
(common-lisp:progn
 (common-lisp:defstruct (tag-filter (:copier common-lisp:nil))
   (key common-lisp:nil :type (common-lisp:or tag-key common-lisp:null))
   (values common-lisp:nil :type
    (common-lisp:or tag-value-list common-lisp:null)))
 (common-lisp:export (common-lisp:list 'tag-filter 'make-tag-filter))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape tag-filter))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Key"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'key)))
    (aws-sdk/generator/shape::to-query-params "Values"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'values))))))
(common-lisp:progn
 (common-lisp:deftype tag-filter-list ()
   '(trivial-types:proper-list tag-filter))
 (common-lisp:defun |make-tag-filter-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag-filter))
   aws-sdk/generator/shape::members))
(common-lisp:deftype tag-key () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype tag-key-list () '(trivial-types:proper-list tag-key))
 (common-lisp:defun |make-tag-key-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag-key))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:deftype tag-key-list-for-untag ()
   '(trivial-types:proper-list tag-key))
 (common-lisp:defun |make-tag-key-list-for-untag|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag-key))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:deftype tag-list () '(trivial-types:proper-list tag))
 (common-lisp:defun |make-tag-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag))
   aws-sdk/generator/shape::members))
(common-lisp:defstruct
    (tag-map
     (:constructor |make-tag-map|
      (aws-sdk/generator/shape::key aws-sdk/generator/shape::value)))
  aws-sdk/generator/shape::key
  aws-sdk/generator/shape::value)
(common-lisp:progn
 (common-lisp:defstruct (tag-resources-input (:copier common-lisp:nil))
   (resource-arnlist
    (common-lisp:error
     #A((29) common-lisp:base-char . ":resource-arnlist is required"))
    :type (common-lisp:or resource-arnlist common-lisp:null))
   (tags
    (common-lisp:error #A((17) common-lisp:base-char . ":tags is required"))
    :type (common-lisp:or tag-map common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'tag-resources-input 'make-tag-resources-input))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape tag-resources-input))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ResourceARNList"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resource-arnlist)))
    (aws-sdk/generator/shape::to-query-params "Tags"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tags))))))
(common-lisp:progn
 (common-lisp:defstruct (tag-resources-output (:copier common-lisp:nil))
   (failed-resources-map common-lisp:nil :type
    (common-lisp:or failed-resources-map common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'tag-resources-output 'make-tag-resources-output))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape tag-resources-output))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "FailedResourcesMap"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'failed-resources-map))))))
(common-lisp:deftype tag-value () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype tag-value-list () '(trivial-types:proper-list tag-value))
 (common-lisp:defun |make-tag-value-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag-value))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:deftype tag-values-output-list ()
   '(trivial-types:proper-list tag-value))
 (common-lisp:defun |make-tag-values-output-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list tag-value))
   aws-sdk/generator/shape::members))
(common-lisp:deftype tags-per-page () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct (throttled-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or exception-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'throttled-exception 'make-throttled-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape throttled-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (untag-resources-input (:copier common-lisp:nil))
   (resource-arnlist
    (common-lisp:error
     #A((29) common-lisp:base-char . ":resource-arnlist is required"))
    :type (common-lisp:or resource-arnlist common-lisp:null))
   (tag-keys
    (common-lisp:error
     #A((21) common-lisp:base-char . ":tag-keys is required"))
    :type (common-lisp:or tag-key-list-for-untag common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'untag-resources-input 'make-untag-resources-input))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          untag-resources-input))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ResourceARNList"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'resource-arnlist)))
    (aws-sdk/generator/shape::to-query-params "TagKeys"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'tag-keys))))))
(common-lisp:progn
 (common-lisp:defstruct (untag-resources-output (:copier common-lisp:nil))
   (failed-resources-map common-lisp:nil :type
    (common-lisp:or failed-resources-map common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'untag-resources-output 'make-untag-resources-output))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          untag-resources-output))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "FailedResourcesMap"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'failed-resources-map))))))
(common-lisp:progn
 (common-lisp:defun get-resources
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key pagination-token tag-filters
                     resources-per-page tags-per-page resource-type-filters)
   (common-lisp:declare
    (common-lisp:ignorable pagination-token tag-filters resources-per-page
     tags-per-page resource-type-filters))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-get-resources-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((24) common-lisp:base-char
                                  . "resourcegroupstaggingapi")
                               :method :post :params
                               (common-lisp:append
                                `(("Action" ,@"GetResources")
                                  ("Version" ,@"2017-01-26"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "GetResourcesOutput" common-lisp:nil)))
 (common-lisp:export 'get-resources))
(common-lisp:progn
 (common-lisp:defun get-tag-keys
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key pagination-token)
   (common-lisp:declare (common-lisp:ignorable pagination-token))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-get-tag-keys-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((24) common-lisp:base-char
                                  . "resourcegroupstaggingapi")
                               :method :post :params
                               (common-lisp:append
                                `(("Action" ,@"GetTagKeys")
                                  ("Version" ,@"2017-01-26"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "GetTagKeysOutput" common-lisp:nil)))
 (common-lisp:export 'get-tag-keys))
(common-lisp:progn
 (common-lisp:defun get-tag-values
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key pagination-token key)
   (common-lisp:declare (common-lisp:ignorable pagination-token key))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-get-tag-values-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((24) common-lisp:base-char
                                  . "resourcegroupstaggingapi")
                               :method :post :params
                               (common-lisp:append
                                `(("Action" ,@"GetTagValues")
                                  ("Version" ,@"2017-01-26"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "GetTagValuesOutput" common-lisp:nil)))
 (common-lisp:export 'get-tag-values))
(common-lisp:progn
 (common-lisp:defun tag-resources
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key resource-arnlist tags)
   (common-lisp:declare (common-lisp:ignorable resource-arnlist tags))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-tag-resources-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((24) common-lisp:base-char
                                  . "resourcegroupstaggingapi")
                               :method :post :params
                               (common-lisp:append
                                `(("Action" ,@"TagResources")
                                  ("Version" ,@"2017-01-26"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "TagResourcesOutput" common-lisp:nil)))
 (common-lisp:export 'tag-resources))
(common-lisp:progn
 (common-lisp:defun untag-resources
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key resource-arnlist tag-keys)
   (common-lisp:declare (common-lisp:ignorable resource-arnlist tag-keys))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-untag-resources-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((24) common-lisp:base-char
                                  . "resourcegroupstaggingapi")
                               :method :post :params
                               (common-lisp:append
                                `(("Action" ,@"UntagResources")
                                  ("Version" ,@"2017-01-26"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "UntagResourcesOutput" common-lisp:nil)))
 (common-lisp:export 'untag-resources))