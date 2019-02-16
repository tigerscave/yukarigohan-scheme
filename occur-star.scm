(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define add1
 (lambda (n)
  (+ n 1)))

(define occur*
 (lambda (a l)
  (cond
   ((null? l) 0)
   ((atom? (car l))
    (cond
     ((eq? a (car l))(add1 (occur* a (cdr l))))
      (else (occur* a (cdr l)))))
    (else (+ (occur* a (car l))(occur* a (cdr l)))))))

(print (occur* 'banana '((banana)(split ((((banana ice)))(cream (banana)) sherbet))(banana)(bread)(banana brandy))))
