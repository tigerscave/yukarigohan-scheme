;(define eqlist?
 ;(lambda (l1 l2)
  ;(cond
   ;((and (null? l1)(null? l2)) #t)
     ;これが否定されるということは、(null? l1, null? l2)=(t,f),(f,t),(f,f)のどれか
   ;((and (null? l1)(atom? (car l2))) #f)
   　;(null? l1)がtの時、l2は(t,f)でfだから(atom? (car l2))と質問できる
   　;l1が空リストでcar l2がatomだったらeqlist同じリストではないのでf
   ;((null? l1) #f)
   　;(null? l1)がtだったら、必然的に(null? l2)はfになるから、eqlist?の返り値もfになる
  　　;実質的には(and (null? l1)(not (null? l2)))をチェックしているが、分かっていることなので省略している
   ;((and (atom? (car l1))(null? l2)) #f)
   　;car l1がatomでl2が空リストだったらこの２つは同じリストではないのでf
   　;(atom? car l1, null? l2)=(t,f),(f,t),(f,f)
   ;((and (atom? (car l1))(atom? (car l2)))
     ;ここで否定されるなら(atom? car l1, atom? car l2)=(t,f),(f,t),(f,f)
   ;(and (eqan? (car l1)(car l2))(eqlist? (cdr l1)(cdr l2))))
   　;car l1,l2がどちらもatomなら、それらが同じかを調べ、同じであるならeqlist?をcdrl1,l2で再帰する
   ;((atom? (car l1)) #f)
   　;これがtの時は、16行目よりfになる
   ;((null? l2) #f)
   　;ここに来るということは19行目が否定されたということ
     ;(null? l2)がtだったら、必然的に(atom? (car l1))はfになる
     ;実質的に(and (not (atom? (car l1)))(null? l2))をチェックしているが、分かっている事なので省略している
   ;((atom? (car l2)) #f)
   ;(else
    ;(and (eqlist? (car l1)(car l2))(eqlist? (cdr l1)(cdr l2)))))))

(define atom?
 (lambda (x)
  (and (not (pair? x))(not (null? x)))))

(define eqan?
 (lambda (a1 a2)
  (cond
   ((and (number? a1)(number? a2))
    (= a1 a2))
   ((or (number? a1)(number? a2)) #f)
   (else (eq? a1 a2)))))

(print (eqan? 'apple 'apple))
(print (eqan? 'apple 'banana))
(print (eqan? '2 '2))
(print (eqan? '1 '2))

(define origin-eqlist?
 (lambda (l1 l2)
  (cond
   ((and (null? l1)(null? l2)) #t)
   ((and (null? l1)(atom? (car l2))) #f)
   ((null? l1) #f)
   ((and (atom? (car l1))(null? l2)) #f)
   ((and (atom? (car l1))(atom? (car l2)))
   (and (eqan? (car l1)(car l2))(origin-eqlist? (cdr l1)(cdr l2))))
   ((atom? (car l1)) #f)
   ((null? l2) #f)
   ((atom? (car l2)) #f)
   (else
    (and (origin-eqlist? (car l1)(car l2))(origin-eqlist? (cdr l1)(cdr l2)))))))


(print (origin-eqlist? '((apple) banana (orange (lemon))) '((apple) banana (orange (lemon)))))
(print (origin-eqlist? '(apple banana (orange (lemon))) '((apple) banana (orange (lemon)))))
(print (origin-eqlist? '(((a b) c) d) '(((a b) c) d)))
(print (origin-eqlist? '((a b c) d) '(((a b) c) d)))
