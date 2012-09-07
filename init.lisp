(in-package #:srw)

(defun menu ()
  (list (list :link "/" :title "Главная")
        (list :link "/history" :title "История")
        (list :link "/staff" :title "Сотрудники")
        (list :link "/foto/" :title "Фотографии")
        (list :link "/contacts" :title "Контакты"))))

;; start
(restas:start '#:srw #|:hostname "rigidus.ru"|# :port 9333)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
