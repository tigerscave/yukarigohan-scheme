(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(print (atom? 'a))
(print (atom? '(a b c)))
