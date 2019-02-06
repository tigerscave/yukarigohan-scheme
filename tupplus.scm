(define tup+
 (lambda (tup)
  (cond
   ((null? tup) 0)
   (else (+ (car tup)(tup+ (cdr tup)))))))

(print (tup+ '(1 3 5 7 9)'))
