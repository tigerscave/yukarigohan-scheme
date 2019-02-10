(define sub1
 (lambda (n)
  (- n 1)))


(define power
 (lambda (n m)
  (cond
   ((zero? m) 1)
   (else (* n (power (n (sub1 m))))))))

(print (power '3 '4))
(print (power '5 '6))
