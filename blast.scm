(define blast
 (lambda (a n)
  (cond
   ((zero? n)(quote ()))
   (else (cons a (blast a (- n 1)))))))

(print (blast 'apple '10))
(print (blast 'dog '5))
