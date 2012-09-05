(in-package #:srw)


;; 404

(defun page-404 (&optional (title "404 Not Found") (content "Страница не найдена"))
  "404")

(restas:define-route not-found-route ("*any")
  (restas:abort-route-handler
   (page-404)
   :return-code hunchentoot:+http-not-found+
   :content-type "text/html"))

(defun old-page (filename)
  (tpl:root (list :content (alexandria:read-file-into-string filename))))

;; main

(restas:define-route main ("/")
  (old-page "content/index.htm"))


;; plan file pages

(defmacro def/route (name param &body body)
  `(progn
     (restas:define-route ,name ,param
       ,@body)
     (restas:define-route
         ,(intern (concatenate 'string (symbol-name name) "/"))
         ,(cons (concatenate 'string (car param) "/") (cdr param))
       ,@body)))


(def/route contacts ("contacts")
  (old-page "content/contacts.htm"))

(def/route foto ("foto")
  (old-page "content/foto.htm"))

(def/route history ("history")
  (old-page "content/history.htm"))

(def/route index ("index")
  (old-page "content/index.htm"))

(def/route staff ("staff")
  (old-page "content/staff.htm"))



;; submodules

(restas:mount-submodule -css- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("css"))
  (restas.directory-publisher:*directory* (path "css/")))

(restas:mount-submodule -js- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("js"))
  (restas.directory-publisher:*directory* (path "js/")))

(restas:mount-submodule -img- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("img"))
  (restas.directory-publisher:*directory* (path "img/")))

(restas:mount-submodule -resources- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("resources"))
  (restas.directory-publisher:*directory* (path "resources/")))
