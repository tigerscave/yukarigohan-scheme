(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define remove-even*
 (lambda (l)
  (cond
   ((null? l)(quote ()))
   ((atom? (car l))
    (cond
     ((even? (car l))(remove-even* (cdr l)))
     (else (cons (car l)(remove-even* (cdr l))))))
    (else (cons (remove-even* (car l))(remove-even* (cdr l)))))))

(print (remove-even* '((1)(2 3)((4) 5) 6 (7) 8)))
(print (remove-even* '(((100) 200) (29) (300 45 (80)))))
(print (remove-even* '(((123) 234 345) (456) ((567) 678) 789)))
