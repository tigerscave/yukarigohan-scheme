(define count
 (lambda (a lat)
  (cond
   ((null? lat) 0)
   ((eq? a (car lat))(+ 1 (count a (cdr lat))))
    (else (count a (cdr lat))))))

(print (count 'a '(a b a v d a)))
(print (count 'apple '(apple banana orange apple)))
