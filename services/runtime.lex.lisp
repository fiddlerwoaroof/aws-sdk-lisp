;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/runtime.lex
  (:use)
  (:nicknames #:aws/runtime.lex)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api))
(common-lisp:in-package #:aws-sdk/services/runtime.lex)

(common-lisp:deftype accept () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (bad-gateway-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'bad-gateway-exception 'make-bad-gateway-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          bad-gateway-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (bad-request-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'bad-request-exception 'make-bad-request-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          bad-request-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype blob-stream ()
  '(common-lisp:simple-array (common-lisp:unsigned-byte 8) (common-lisp:*)))
(common-lisp:deftype bot-alias () 'common-lisp:string)
(common-lisp:deftype bot-name () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (button (:copier common-lisp:nil))
   (text
    (common-lisp:error #A((17) common-lisp:base-char . ":text is required"))
    :type (common-lisp:or button-text-string-with-length common-lisp:null))
   (value
    (common-lisp:error #A((18) common-lisp:base-char . ":value is required"))
    :type (common-lisp:or button-value-string-with-length common-lisp:null)))
 (common-lisp:export (common-lisp:list 'button 'make-button))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape button))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "text"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'text)))
    (aws-sdk/generator/shape::to-query-params "value"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'value))))))
(common-lisp:deftype button-text-string-with-length () 'common-lisp:string)
(common-lisp:deftype button-value-string-with-length () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (conflict-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'conflict-exception 'make-conflict-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape conflict-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype content-type () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (dependency-failed-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'dependency-failed-exception
                    'make-dependency-failed-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          dependency-failed-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype dialog-state () 'common-lisp:string)
(common-lisp:deftype error-message () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (generic-attachment (:copier common-lisp:nil))
   (title common-lisp:nil :type
    (common-lisp:or string-with-length common-lisp:null))
   (sub-title common-lisp:nil :type
    (common-lisp:or string-with-length common-lisp:null))
   (attachment-link-url common-lisp:nil :type
    (common-lisp:or string-url-with-length common-lisp:null))
   (image-url common-lisp:nil :type
    (common-lisp:or string-url-with-length common-lisp:null))
   (buttons common-lisp:nil :type
    (common-lisp:or |listOfButtons| common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'generic-attachment 'make-generic-attachment))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape generic-attachment))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "title"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'title)))
    (aws-sdk/generator/shape::to-query-params "subTitle"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'sub-title)))
    (aws-sdk/generator/shape::to-query-params "attachmentLinkUrl"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'attachment-link-url)))
    (aws-sdk/generator/shape::to-query-params "imageUrl"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'image-url)))
    (aws-sdk/generator/shape::to-query-params "buttons"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'buttons))))))
(common-lisp:deftype http-content-type () 'common-lisp:string)
(common-lisp:deftype intent-name () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (internal-failure-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'internal-failure-exception
                    'make-internal-failure-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          internal-failure-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (limit-exceeded-exception (:copier common-lisp:nil))
   (retry-after-seconds common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'limit-exceeded-exception 'make-limit-exceeded-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          limit-exceeded-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "retryAfterSeconds"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'retry-after-seconds)))
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (loop-detected-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'loop-detected-exception 'make-loop-detected-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          loop-detected-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (not-acceptable-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'not-acceptable-exception 'make-not-acceptable-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          not-acceptable-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (not-found-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'not-found-exception 'make-not-found-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape not-found-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (post-content-request (:copier common-lisp:nil))
   (bot-name
    (common-lisp:error #A((20) common-lisp:base-char . ":botname is required"))
    :type (common-lisp:or bot-name common-lisp:null))
   (bot-alias
    (common-lisp:error
     #A((21) common-lisp:base-char . ":botalias is required"))
    :type (common-lisp:or bot-alias common-lisp:null))
   (user-id
    (common-lisp:error #A((19) common-lisp:base-char . ":userid is required"))
    :type (common-lisp:or user-id common-lisp:null))
   (session-attributes common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (content-type
    (common-lisp:error
     #A((24) common-lisp:base-char . ":contenttype is required"))
    :type (common-lisp:or http-content-type common-lisp:null))
   (accept common-lisp:nil :type (common-lisp:or accept common-lisp:null))
   (input-stream
    (common-lisp:error
     #A((24) common-lisp:base-char . ":inputstream is required"))
    :type (common-lisp:or blob-stream common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'post-content-request 'make-post-content-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape post-content-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "botName"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'bot-name)))
    (aws-sdk/generator/shape::to-query-params "botAlias"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'bot-alias)))
    (aws-sdk/generator/shape::to-query-params "userId"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'user-id)))
    (aws-sdk/generator/shape::to-query-params "sessionAttributes"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'session-attributes)))
    (aws-sdk/generator/shape::to-query-params "contentType"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'content-type)))
    (aws-sdk/generator/shape::to-query-params "accept"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'accept)))
    (aws-sdk/generator/shape::to-query-params "inputStream"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'input-stream))))))
(common-lisp:progn
 (common-lisp:defstruct (post-content-response (:copier common-lisp:nil))
   (content-type common-lisp:nil :type
    (common-lisp:or http-content-type common-lisp:null))
   (intent-name common-lisp:nil :type
    (common-lisp:or intent-name common-lisp:null))
   (slots common-lisp:nil :type (common-lisp:or string common-lisp:null))
   (session-attributes common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (message common-lisp:nil :type (common-lisp:or text common-lisp:null))
   (dialog-state common-lisp:nil :type
    (common-lisp:or dialog-state common-lisp:null))
   (slot-to-elicit common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (input-transcript common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (audio-stream common-lisp:nil :type
    (common-lisp:or blob-stream common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'post-content-response 'make-post-content-response))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          post-content-response))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "contentType"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'content-type)))
    (aws-sdk/generator/shape::to-query-params "intentName"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'intent-name)))
    (aws-sdk/generator/shape::to-query-params "slots"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'slots)))
    (aws-sdk/generator/shape::to-query-params "sessionAttributes"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'session-attributes)))
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message)))
    (aws-sdk/generator/shape::to-query-params "dialogState"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'dialog-state)))
    (aws-sdk/generator/shape::to-query-params "slotToElicit"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'slot-to-elicit)))
    (aws-sdk/generator/shape::to-query-params "inputTranscript"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'input-transcript)))
    (aws-sdk/generator/shape::to-query-params "audioStream"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'audio-stream))))))
(common-lisp:progn
 (common-lisp:defstruct (post-text-request (:copier common-lisp:nil))
   (bot-name
    (common-lisp:error #A((20) common-lisp:base-char . ":botname is required"))
    :type (common-lisp:or bot-name common-lisp:null))
   (bot-alias
    (common-lisp:error
     #A((21) common-lisp:base-char . ":botalias is required"))
    :type (common-lisp:or bot-alias common-lisp:null))
   (user-id
    (common-lisp:error #A((19) common-lisp:base-char . ":userid is required"))
    :type (common-lisp:or user-id common-lisp:null))
   (session-attributes common-lisp:nil :type
    (common-lisp:or string-map common-lisp:null))
   (input-text
    (common-lisp:error
     #A((22) common-lisp:base-char . ":inputtext is required"))
    :type (common-lisp:or text common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'post-text-request 'make-post-text-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape post-text-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "botName"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'bot-name)))
    (aws-sdk/generator/shape::to-query-params "botAlias"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'bot-alias)))
    (aws-sdk/generator/shape::to-query-params "userId"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'user-id)))
    (aws-sdk/generator/shape::to-query-params "sessionAttributes"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'session-attributes)))
    (aws-sdk/generator/shape::to-query-params "inputText"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'input-text))))))
(common-lisp:progn
 (common-lisp:defstruct (post-text-response (:copier common-lisp:nil))
   (intent-name common-lisp:nil :type
    (common-lisp:or intent-name common-lisp:null))
   (slots common-lisp:nil :type (common-lisp:or string-map common-lisp:null))
   (session-attributes common-lisp:nil :type
    (common-lisp:or string-map common-lisp:null))
   (message common-lisp:nil :type (common-lisp:or text common-lisp:null))
   (dialog-state common-lisp:nil :type
    (common-lisp:or dialog-state common-lisp:null))
   (slot-to-elicit common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (response-card common-lisp:nil :type
    (common-lisp:or response-card common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'post-text-response 'make-post-text-response))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape post-text-response))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "intentName"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'intent-name)))
    (aws-sdk/generator/shape::to-query-params "slots"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'slots)))
    (aws-sdk/generator/shape::to-query-params "sessionAttributes"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'session-attributes)))
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message)))
    (aws-sdk/generator/shape::to-query-params "dialogState"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'dialog-state)))
    (aws-sdk/generator/shape::to-query-params "slotToElicit"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'slot-to-elicit)))
    (aws-sdk/generator/shape::to-query-params "responseCard"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'response-card))))))
(common-lisp:progn
 (common-lisp:defstruct (request-timeout-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'request-timeout-exception
                    'make-request-timeout-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          request-timeout-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:progn
 (common-lisp:defstruct (response-card (:copier common-lisp:nil))
   (version common-lisp:nil :type (common-lisp:or string common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or content-type common-lisp:null))
   (generic-attachments common-lisp:nil :type
    (common-lisp:or |genericAttachmentList| common-lisp:null)))
 (common-lisp:export (common-lisp:list 'response-card 'make-response-card))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape response-card))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "version"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'version)))
    (aws-sdk/generator/shape::to-query-params "contentType"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'content-type)))
    (aws-sdk/generator/shape::to-query-params "genericAttachments"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'generic-attachments))))))
(common-lisp:deftype string () 'common-lisp:string)
(common-lisp:defstruct
    (string-map
     (:constructor |make-string-map|
      (aws-sdk/generator/shape::key aws-sdk/generator/shape::value)))
  aws-sdk/generator/shape::key
  aws-sdk/generator/shape::value)
(common-lisp:deftype string-url-with-length () 'common-lisp:string)
(common-lisp:deftype string-with-length () 'common-lisp:string)
(common-lisp:deftype text () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (unsupported-media-type-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'unsupported-media-type-exception
                    'make-unsupported-media-type-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          unsupported-media-type-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "message"
                                              (aws-sdk/generator/shape:shape-to-params
                                               (common-lisp:slot-value
                                                aws-sdk/generator/shape::shape
                                                'message))))))
(common-lisp:deftype user-id () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype |genericAttachmentList| ()
   '(trivial-types:proper-list generic-attachment))
 (common-lisp:defun |make-genericattachmentlist|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list generic-attachment))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:deftype |listOfButtons| () '(trivial-types:proper-list button))
 (common-lisp:defun |make-listofbuttons|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list button))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defun post-content
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key bot-name bot-alias user-id
                     session-attributes content-type accept input-stream)
   (common-lisp:declare
    (common-lisp:ignorable bot-name bot-alias user-id session-attributes
     content-type accept input-stream))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-post-content-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((11) common-lisp:base-char . "runtime.lex")
                               :method :post :path
                               (common-lisp:format common-lisp:nil
                                                   "/bot/~a/alias/~a/user/~a/content"
                                                   botname botalias userid)
                               :params
                               (common-lisp:append
                                `(("Action" ,@"PostContent")
                                  ("Version" ,@"2016-11-28"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "PostContentResponse" common-lisp:nil)))
 (common-lisp:export 'post-content))
(common-lisp:progn
 (common-lisp:defun post-text
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key bot-name bot-alias user-id
                     session-attributes input-text)
   (common-lisp:declare
    (common-lisp:ignorable bot-name bot-alias user-id session-attributes
     input-text))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-post-text-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service
                               #A((11) common-lisp:base-char . "runtime.lex")
                               :method :post :path
                               (common-lisp:format common-lisp:nil
                                                   "/bot/~a/alias/~a/user/~a/text"
                                                   botname botalias userid)
                               :params
                               (common-lisp:append
                                `(("Action" ,@"PostText")
                                  ("Version" ,@"2016-11-28"))
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "PostTextResponse" common-lisp:nil)))
 (common-lisp:export 'post-text))