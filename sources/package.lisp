;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

;; (defvar oz)   

(unless (find-package :oz-server-interface)
  (make-package :oz-server-interface
                :nicknames '(:oz)
                :use '(:common-lisp)))

;; (in-package :oz)
