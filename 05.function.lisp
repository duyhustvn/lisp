(defun get-avg(num-1 num-2)
  (/ (+ num-1 num-2) 2)
)

(format t "Avg 10 & 50 = ~a ~%" (get-avg 10 50))


(defun print-list(w x &optional y z)
  (format t "list = ~a ~%" (list w x y z))
)
(print-list 1 2 )
(format t "call print-list(1) will throw an error because there are 2 required arguments and 2 optional arguments ~%~%")

(defvar *total* 0)
;; rest turn all arguments after a and b into a list
(defun sum(a b &rest nums)
  (dolist (num nums)
    (setf *total* (+ *total*  num))
  )
  (format t "sum: ~a ~%" *total*)
)
(sum 1 2 3 4 5) ;; a = 1 b =2 nums = (3 4 5)

(defun print-list(&optional &key x y z)
  (format t "List: ~a ~%" (list x y z))
)
(print-list :x 1 :z 2);; Output: (1 NIL 2)

(defparameter *heroes*
  '((superman (6 ft 3 in)(230 lbs))
    (flash (6 ft 0 in)(190 lbs))
    (batman (6 ft 2 in)(210 lbs)))
)

(defun get-hero-data(heroes)
  (format t "~a ~%" `(,(caar heroes) is ,(cadar heroes) and ,(cddar heroes)))
)

(get-hero-data *heroes*)

(format t "~%mapcar function loop through all member of list and run function numberp ~%")
(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g)))

(defun times-3(x) (* 3 x))
(defun times-4(x) (* 4 x))

(format t "~%~%Pass function to function as a argument~%")
(defun multiples(mult-func count)
  (dotimes (x count)
    (format t "~d: ~d ~%" x (funcall mult-func x))
  )
)

(format t "~%Times 3 ~%")
(multiples #'times-3 10)

(format t "~%Times 4 ~%")
(multiples #'times-4 20)
