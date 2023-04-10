(loop for x from 100 to 110 do
      (print x)
)

(terpri)
(terpri)

(defvar a 1)
(loop
    (format t "~d ~%" a)
    (setq a (+ a 1))
    (when (> a 10) (return a))
)


(terpri)
(loop for x in '(Peter Paul Mary) do
      (format t "~s ~%" x)
)


(terpri)
(dotimes (y 12)
  (print y)
)

(format t "~%~%Loop through list ~%")
(defvar superman (list :name "superman" :secret-id "Clark Kent"))
(defvar *heroes* nil)
(push superman *heroes*)
(dolist (hero *heroes*)
      (format t "~{ ~a : ~a  ~} ~%" hero)
)
