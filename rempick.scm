(define rempick
 (lambda (n lat)
  (cond
   ((zero? (- n 1))(cdr lat))
   (else (cons (car lat)(rempick (- n 1)(cdr lat)))))))

(print (rempick '3 '(a b c d e)))
(print (rempick '2 '(apple banana orange lemon)))
