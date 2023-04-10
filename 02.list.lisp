(defvar heros (list 'superman 'batman 'flash 'spiderman 'ironman 'captain))

(print "CREATE LIST")
(terpri)
(write "cons is function that takes 2 arguments, an element and a list and returns a list with the element inserted at the first place")
(print (cons 'batman 'superman))
(print (cons 'batman (cons 'superman (cons 'sipderman nil))))
(print (cons 'batman (cons 'superman (cons 'sipderman nil))))
(print "(cons 'batman) is invalid. Making it valid: (cons 'batman nil)")
(print "(cons 'batman 'superman 'spiderman) is invalid. cons only takes 2 arguments")

(terpri)
(terpri)
(write "list is a function that takes any number of arguments and returns a list with the arguments as member elements of the list")
(print (list 'batman 'superman 'spiderman))
(terpri)

(terpri)
(write "mix cons and list")
(print (cons 'batman (list 'superman (cons 'sipderman nil))))
(print (list 'batman (list 'superman (cons 'spiderman nil))))

(print "FUNCTION IN LIST")
(terpri)

(setq *print-case* :downcase)
(format t "heros = ~a ~%" heros)
(format t "1st item = ~a ~%" (car heros))
(format t "Everything else item = ~a ~%" (cdr heros))
(format t "2nd item = ~a ~%" (cadr heros))
(format t "Everything else item = ~a ~%" (cddr heros))
(format t "3rd item = ~a ~%" (caddr heros))
(format t "Everything else item = ~a ~%" (cdddr heros))
(format t "4th item = ~a ~%" (cadddr heros))
(format t "Everything else item = ~a ~%" (cddddr heros))
;; invalid only allows 4 characters between c and r
;; (format t "5th item = ~a ~%" (caddddr heros))
(format t "1st item = ~a ~%" (nth 0 heros))
(format t "2nd item = ~a ~%" (nth 1 heros))



(terpri)
(print "Check if is a list")
(terpri)
(format t "Is ~a a list = ~a ~%" heros (listp heros))
(format t "Is ~a it a list = ~a ~%" 1 (listp 1))
(format t "Is ~a it a list = ~a ~%" '(batman superman) (listp '(batman superman)))
(format t "Is ~a it a list = ~a ~%" (list 'batman 'superman) (listp (list 'batman 'superman)))
(format t "Is ~a it a list = ~a ~%" (cons 'batman 'superman) (listp (cons 'batman 'superman)))
(terpri)

(print "Check if it is a member of list")
(terpri)
(format t "Is deadpool member of heros = ~a ~%" (if (member 'deadpool heros) 'yes 'no))
(format t "Is spiderman member of heros = ~a ~%~%" (if (member 'spiderman heros) 'yes 'no))

(print "Append 2 or more list into one")
(format t "Append is a function that merges 2 or more list into one ~%")
(format t "~a" (append heros '(antman loki) (list 'deadpool 'onepunch (cons 'thor nil))))

(terpri)
(format t "~%Push to front of the list ~%")
(defparameter *nums* '(2 3 '(4 5)))
(format t "Before push: ~a ~%"  *nums*)
(push 1 *nums*)
(format t "After push:  ~a ~%"  *nums*)

(format t "~%~%Association list ~%")
(defparameter *heroes*
  '((Superman (Clark Kent)(Tom Cruise))
    (Flash (Barry Allen))
    (Batman (Bruce Wayne))
    ))
(format t "Superman Data ~a ~%" (assoc 'superman *heroes*))
(format t "Superman Actors ~a ~%" (cdr (assoc 'superman *heroes*)))
(format t "Superman First Actor ~a ~%" (cadr (assoc 'superman *heroes*)))
(format t "Superman First Actor Lastname ~a ~%" (nth 1 (cadr (assoc 'superman *heroes*))))
(format t "Superman First Actor Firstname ~a ~%" (car(cadr (assoc 'superman *heroes*))))
(format t "Flash Data ~a ~%" (assoc 'flash *heroes*))
