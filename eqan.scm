(define eqan?
 (lambda (a1 a2)
  (cond
   ((and (number? a1)(number? a2))(= a1 a2))
   ((or (number? a1)(number? a2)) #f)
    (else (eq? a1 a2)))))

(print (eqan? 'a 'a))
(print (eqan? 'a 'b))
(print (eqan? '1 '1))
(print (eqan? '1 '2))
