(define rember
 (lambda (a lat)
  (cond
   ((null? lat)(quote ()))
   ((eq? a (car lat))(cdr lat))
    (else (rember a (cdr lat))))))


(print (rember 'a '(a b c)))    
