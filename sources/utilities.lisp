(defun mappend (func &rest inlists)
  "Apply func to each element of inlist and append the result."
  (apply #'append (apply #'mapcar func inlists)))

; (mappend #'list '(1 2 3) '(a b c))

