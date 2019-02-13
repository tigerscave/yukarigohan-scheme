(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define occur*
 (lambda (a l)
  (cond
   ((null? l) 0)
   ((atom? (car l))
   ))))

(print (occur* 'a '(a b c)))
