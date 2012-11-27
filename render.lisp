(in-package #:hn)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; default-render
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass hn-render () ())

(defparameter *default-render-method* (make-instance 'hn-render))


;; (defmethod restas:render-object ((designer hn-render) (data list))
;;   (destructuring-bind (headtitle navpoints content) data
;;     (tpl:root (list :headtitle headtitle
;;                     :content (tpl:base (list :navpoints navpoints
;;                                              :content content
;;                                              :stat (tpl:stat)))))))




