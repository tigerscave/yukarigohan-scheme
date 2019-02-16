(define remove-even
 (lambda (lat)
  (cond
   ((null? lat)(quote ()))
   ((even? (car lat))(remove-even (cdr lat)))
    (else (cons (car lat)(remove-even (cdr lat)))))))

(print (remove-even '(1 2 3 4 5 6 7 8)))
