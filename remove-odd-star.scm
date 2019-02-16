(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define remove-odd*
 (lambda (l)
  (cond
   ((null? l)(quote ()))
   ((atom? (car l))
    (cond
     ((odd? (car l))(remove-odd* (cdr l)))
     (else (cons (car l)(remove-odd* (cdr l))))))
    (else (cons (remove-odd* (car l))(remove-odd* (cdr l)))))))


 (print (remove-odd* '((1)(2 3)((4) 5) 6 (7) 8)))
 (print (remove-odd* '(((100) 200) (29) (300 45 (80)))))
 (print (remove-odd* '(((123) 234 345) (456) ((567) 678) 789)))
