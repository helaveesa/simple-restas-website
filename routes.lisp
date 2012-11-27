(in-package #:hn)


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


(def/route index ("index")
  (old-page "content/index.htm"))

(def/route about ("about")
      (old-page "content/about.htm"))

(def/route specialty ("specialty")
    (old-page "content/specialty.htm"))

(def/route articles ("articles")
    (old-page "content/articles.htm"))

(def/route lisp ("lisp")
      (old-page "content/lisp.htm"))

(def/route news ("news")
      (old-page "content/news.htm"))

(def/route useful-links ("useful_links")
    (old-page "content/useful_links.htm"))

(def/route comments ("comments")
    (old-page "content/comments.htm"))

(def/route contacts ("contacts")
    (old-page "content/contacts.htm"))

(def/route service ("service")
    (old-page "content/service.htm"))

(def/route works ("works")
    (old-page "content/works.htm"))

(def/route prices ("prices")
    (old-page "content/prices.htm"))

(def/route customers ("customers")
    (old-page "content/customers.htm"))

(def/route facts ("facts")
    (old-page "content/facts.htm"))

(def/route faq ("faq")
      (old-page "content/faq.htm"))

(def/route ad ("ad")
      (old-page "content/ad.htm"))

(def/route ad-history ("ad_history")
    (old-page "content/ad_history.htm"))

(def/route ad-terminology ("ad_terminology")
    (old-page "content/ad_terminology.htm"))

(def/route pr ("pr")
      (old-page "content/pr.htm"))

(def/route event-marketing ("event_marketing")
    (old-page "content/event_marketing.htm"))

(def/route what-pr ("what_pr")
    (old-page "content/what_pr.htm"))

(def/route propaganda-pr ("propaganda_pr")
    (old-page "content/propaganda_pr.htm"))

(def/route topic-1 ("topic_1")
    (old-page "content/topic_1.htm"))

(def/route topic-2 ("topic_2")
    (old-page "content/topic_2.htm"))

(def/route ad-outdoor ("ad_outdoor")
    (old-page "content/ad_outdoor.htm"))

(def/route exhibition ("exhibition")
    (old-page "content/exhibition.htm"))

(def/route projects ("projects")
    (old-page "content/projects.htm"))

(def/route e-mail ("e_mail")
    (old-page "content/e_mail.htm"))

(def/route sitemap ("sitemap")
    (old-page "content/sitemap.htm"))




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
