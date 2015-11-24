;Question 5
(define (shuffle lst1 lst2)
  (cond ((null? lst1) lst2)    ; if the first list is empty, return the second
        ((null? lst2) lst1)    ; if the second list is empty, return the first
        (else (append (cons (car lst1) ; otherwise `cons` the first element of the first list
                    (shuffle lst2 (cdr lst1)))
              )))) ;end of shuffle procedure
(shuffle '(1 2 3) '(a b c))