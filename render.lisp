(in-package #:srw)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; default-render
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass srw-render () ())

(defparameter *default-render-method* (make-instance 'srw-render))


;; (defmethod restas:render-object ((designer srw-render) (data list))
;;   (destructuring-bind (headtitle navpoints content) data
;;     (tpl:root (list :headtitle headtitle
;;                     :content (tpl:base (list :navpoints navpoints
;;                                              :content content
;;                                              :stat (tpl:stat)))))))




