(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define tup+*
 (lambda (tup)
  (cond
   ((null? tup) 0)
   ((atom? (car tup))(+ (car tup)(tup+* (cdr tup))))
     (else (tup+* (car tup))))))

(print (tup+* '(1 2 3)))
(print (tup+* '(1 (2 (3)))))
(print (tup+* '(1 (2 (3 4) 5))))
(print (tup+* '(1 (2 (3)) 10)))
