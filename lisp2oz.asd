;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(asdf:defsystem lisp2oz
  :long-description "A lisp-side client for the OzServer, which is part of Strasheela. lisp2oz allows a Lisp program to execute arbitrary Oz code by calling on the OzServer." 
  :author "Torsten Anders"
  :serial t ;; the dependencies are linear.
  :components ((:file "sources/package")
	       (:file "sources/utilities")
	       (:file "sources/lisp-client")
	       (:file "sources/lisp-to-oz")
	       (:file "sources/export")
	       (:file "sources/boxes"))
  ;; oz-server-lisp-client depends on port from CLOCC
  ;; (http://clocc.sourceforge.net/). A version of port with an ASDF
  ;; system file is available, e.g., for Debian/Ubuntu as cl-port (see
  ;; http://packages.debian.org/unstable/devel/cl-port). For a
  ;; non-debian system, just get the sources
  ;; (e.g. cl-port_20060408.orig.tar.gz and
  ;; cl-port_20060408-1.diff.gz) and do
  ;; 
  ;; > cd cl-port-20060408.orig
  ;; > patch -p1 < pathTo/cl-port_20060408-1.diff
  :depends-on ("port" "ompw"))

