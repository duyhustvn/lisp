(defvar *score* 2.2)

(if (>= *score* 4)
    (format t "You got A ~%")
    (format t "You don't get A ~%")
)

(cond
  ;; if
  ((>= *score* 4) (format t "You got A ~%"))
  ;; else if
  ((and (>= *score* 2.5) (< *score* 4)) (format t "You got B ~%"))
  ;; else if
  ((and (>= *score* 1) (< *score* 2.5))
    ;; block
      (format t "You got C ~%")
      (format t "You should learn more ~%")
    )
  ;; else
  (t (format t "You got D ~%"))
)

(defun iq-test(score)
  (case score
    ;; only match not range
    (4 (format t "You are smartish"))
    (2 (format t "You are not so stupid"))
    (otherwise (format t "You are fucking stupid"))
    ))

(iq-test *score*)
