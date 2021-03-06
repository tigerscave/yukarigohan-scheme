(define remove-odd
 (lambda (lat)
  (cond
   ((null? lat)(quote ()))
   ((odd? (car lat))(remove-odd (cdr lat)))
   (else (cons (car lat)(remove-odd (cdr lat)))))))


(print (remove-even '(1 2 3 4 5 6 7 8)))
(print (remove-even '(100 200 29 300 45 80)))
(print (remove-even '(123 234 345 456 567 678 789)))
