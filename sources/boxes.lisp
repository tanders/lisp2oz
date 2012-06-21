;;; -*- Mode:Lisp; Syntax:ANSI-Common-Lisp; -*-

(in-package :ompw)

(define-menu lisp2oz)
(in-menu lisp2oz)

;; NOTE: oz-server and file would ideally set globally by the user, but a bug in define-box does not evaluate variables given to keyword arguments, so these settings must be given literally her.
(define-box run-oz (&key (oz-server "~/.oz/1.4.0/bin/OzServer")
			 (port 5000)
			 (file "~/.ozrc")
			 (result-format "lisp"))
  "Easy to use top-level command to start the OzServer and connect Lisp to it. oz-server is the OzServer application to call (a string). See the OzServer documentation for the meaning of the other arguments. Meaningful values for result-format are \"lisp\" and \"lispWithStrings\". The port argument defaults to a fresh port number (i.e. a port number not used by previous calls of run-oz)."
  (oz:run-oz :oz-server oz-server :port port :file file :result-format result-format))


(define-box quit-oz ()
  "Quits the OzServer (and implicitly closes the connections)."
  (oz:quit-oz))



(define-box feed-oz-expr (code-string)
  "Feeds the expression code-string (a string) to the OzServer and returns the result of the expression as Lisp value (the suitable result-format must be set when starting the OzServer)."
  (oz:feed-oz-expr code-string))


(define-box feed-oz-file (path)
  "Feeds the file at path (a string) to the OzServer."
  (oz:feed-oz-file path))

(install-menu lisp2oz)

