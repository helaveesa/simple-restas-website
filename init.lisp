(in-package #:hn)

(defun menu ()
  (list (list :link "/" :title "Главная")
        (list :link "/about" :title "Елена-Елецкая")
        (list :link "/specialty" :title "Специализация")
        (list :link "/articles" :title "Статьи")
        (list :link "/lisp" :title "Создание-сайтов")
        (list :link "/news" :title "Новости")
        (list :link "/userful_links" :title "Полезные-ссылки")
        (list :link "/comments" :title "Отзывы-клиентов")
        (list :link "/contacts" :title "Контакты")))

;; start
(restas:start '#:hn #|:hostname "rigidus.ru"|# :port 2002)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
