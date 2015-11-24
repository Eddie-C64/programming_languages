;Question 6
(define (shuffle lst1 lst2)
  (cond ((null? lst1) '())    ; if the first list is empty, return the second
        (else (cons (cons (car lst1) (car lst2)) (shuffle (cdr lst1) (cdr lst2)))
              ))) ;end of shuffle procedure
(shuffle '(1 2 3) '(a b c))