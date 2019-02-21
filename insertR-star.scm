(print "hello world")


(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(print (atom? 'a))

(define insertR*
 (lambda (new old l)
  (cond
   ((null? l)(quote ()))
   ((atom? (car l))
    (cond
     ((eq? (car l) old)(cons old (cons new (insertR* new old (cdr l)))))
     (else (cons (car l)(insertR* new old (cdr l))))))
      (else (cons (insertR* new old (car l))(insertR* new old (cdr l)))))))

(print (insertR* 'x 'a '((a) b a (a h f) a k (g (a) d))))
