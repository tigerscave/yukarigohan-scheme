(define make-lat
 (lambda (a b c)
  (cons a (cons b (cons c ())))))

(print (make-lat 'apple 'banana 'orange))
(print (make-lat '1 '2 '3))
