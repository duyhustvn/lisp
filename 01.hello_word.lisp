;; Print
(format t "Hello, world! ~%")

;; Print double quote and insert new line before print
;; ~% does not work with print
(print "Hello, world with double quote ~%")
;; Start a new line
(terpri)

(format t "Number with commas ~:d ~%" 10000000)
(format t "PI to 5 characters ~5f ~%" 3.141593)
(format t "PI to 4 decimals ~,4f ~%" 3.141593)

(format t "What's your name: ")
(finish-output)

;; Reading input from user to variable name
(defvar *name* (read))

(defun hello(name)
  (format t "Hello, ~a!" name)
)

;; ~a shows the value
;; ~s shows quote around the value
;; ~10a adds 10 spaces for the value with extra space to the right
;; ~10@a adds 10 spaces for the value with extra space to the left

(setq *print-case* :capitalize)
(hello *name*)

(format t "Default value: ")
(defvar *number* 0)
(format t "~a ~%" *number*)
(format t "Updated value: ")
(setf *number* 6)
(format t "~a" *number*)
