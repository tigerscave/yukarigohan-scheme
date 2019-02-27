(define atom?
 (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(define ^
 (lambda (n m)
  (cond
   ((zero? m) 1)
   (else (* n (^ n (- m 1)))))))

(define value
 (lambda (nexp)
  (cond
   ((atom? nexp) nexp)
   ((eq? (car (cdr nexp)) (quote +))
    (+ (value (car nexp))
       (value (car (cdr (cdr nexp))))))
   ((eq? (car (cdr nexp)) (quote *))
    (* (value (car nexp))
       (value (car (cdr (cdr nexp))))))
   (else
    (^ (value (car nexp))
       (value (car (cdr (cdr nexp)))))))))

(print (value '13))
(print (value '(3 + 4)))
(print (value '(1 + (3 ^ 4))))
