(in-package #:srw)

;; start
(restas:start '#:srw #|:hostname "rigidus.ru"|# :port 9333)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
