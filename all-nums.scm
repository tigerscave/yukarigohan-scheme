(define all-nums
 (lambda (lat)
  (cond
   ((null? lat)(quote ()))
   (else (cond
           ((number? (car lat))(cons (car lat)(all-nums (cdr lat))))
           (else (all-nums (cdr lat))))))))

(print (all-nums '(1 apple 2 banana 3 orange)))
