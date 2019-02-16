(define occur
 (lambda (a lat)
  (cond
   ((null? lat) 0)
   ((eq? a (car lat))(add1 (occur a (cdr lat))))
    (else (occur a (cdr lat))))))

(define add1
 (lambda (n)
  (+ n 1)))

(print (occur 'a '(a b c a d e a f g a)))
