(define atom?
 (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(define ^
 (lambda (n m)
  (cond
   ((zero? m) 1)
   (else (* n (^ n (- m 1)))))))

(print (^ '2 '4))
(print (^ '3 '4))

(define numbered?
 (lambda (aexp)
  (cond
   ((atom? aexp) (number? aexp))
   ((eq? (car (cdr aexp)) (quote +))
    (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp))))))
   ((eq? (car (cdr aexp)) (quote *))
    (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp))))))
   ((eq? (car (cdr aexp)) (quote ^))
    (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp)))))))))


(print (numbered? '(3 + (4 * 5))))
(print (numbered? '(3 * 4 *(2 + 6))))
(print (numbered? '((2 ^ 4) + 5)))
(print (numbered? '((9 + 2) * (6 ^ 4))))
(print (numbered? 'coockie))
