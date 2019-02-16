(define no-nums
 (lambda (lat)
  (cond
   ((null? lat)(quote ()))
   (else (cond
           ((number? (car lat))(no-nums (cdr lat)))
           (else (cons (car lat)(no-nums (cdr lat)))))))))

(print (no-nums '(apple 1 banana 2 orange 3)))
