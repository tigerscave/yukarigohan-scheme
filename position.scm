(define add1
 (lambda (n)
  (+ n 1)))

(define length
 (lambda (lat)
  (cond
   ((null? lat) 0)
    (else (add1 (length (cdr lat)))))))

(print (length '(a b c d e f g)))


(define position
 (lambda (a lat)
  (cond
   ((null? lat)(quoet 0))
   ((eq? a (car lat))(length (car lat)))
    (else (position a (cdr lat))))))

(print (position 'a '(b c a))
