(require 'swank)

(asdf:defsystem #:hn
  :version      "0.0.2"
  :author       "helaveesa&rigidus <helaveesa.nolder@gmail.com><i.am.rigidus@gmail.com>"
  :licence      "GPLv3"
  :description  "site http://hn.ru"
  :depends-on   (#:closer-mop
                 #:cl-ppcre
                 #:restas-directory-publisher
                 #:closure-template
                 #:cl-json
                 #:postmodern)
  :serial       t
  :components   ((:static-file "templates.htm")
                 (:file "defmodule")
                 (:file "render")
                 (:file "routes")
                 (:file "init")))
