;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

(in-package :om)

;; dependencies
(require-library "port")
(require-library "ompw")

;; loading files
;; using "make-pathname" plus *load-pathname*, allow us to put our library anywhere
(mapc #'(lambda (file) 
	  (compile&load (make-pathname :directory (append (pathname-directory *load-pathname*)
							  '("sources"))
				       :name file)))
      ;; source files (in required order of loading)
      '("package" 
	;; "general"  ; remove this (from template)
	"utilities"
	"lisp-client"
	"lisp-to-oz"
	"export"
	"boxes"
	))

;; Seting the menu and sub-menu structure, and filling packages
;; The sub-list syntax:
;; ("sub-pack-name" subpacke-lists class-list function-list class-alias-list)
;;
;; Note that ompw can do this for me..

;; remove this (from template)
;; (om::fill-library 
;;  '(("general" nil nil (square cube) nil)
;;    ))


