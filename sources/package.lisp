;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;; (defvar oz)   

(unless (find-package :lisp2oz)
  (make-package :lisp2oz
                :nicknames '(:oz)
                :use '(:common-lisp)))

;; (in-package :oz)
