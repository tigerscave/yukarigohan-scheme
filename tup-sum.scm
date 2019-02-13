(define tup-sum
 (lambda (tup)
  (cond
   ((null? tup) 0)
  (else (+ (car tup)(tup-sum (cdr tup)))))))

(print (tup-sum '(1 2 3)))
(print (tup-sum '(1 1 1 1 1 1 1 1)))
(print (tup-sum '(1)))
(print (tup-sum '()))
;
