(define pick
 (lambda (n lat)
  (cond
   ((zero? (- n 1))(car lat))
    (else (pick (- n 1)(cdr lat))))))

(print (pick '3 '(a b c d e)))
(print (pick '4 '(apple banana orange lemon)))
