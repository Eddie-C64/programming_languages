;Question 1
(define (Ackemann m n) ; size of problem is n>=m
    (cond
        ((= m 0) (+ n 1)) ; Stopping condition
        ((= n 0) (Ackemann (- m 1) 1)) ;size m problems
        (else (Ackemann (- m 1) (Ackemann m (- n 1)))))) ; Size-n solution from the size-m problem
(Ackemann 0 0)
(Ackemann 1 1)
(Ackemann 2 3)
(Ackemann 3 7)
(newline)
;Question 2
(define (combine-four lst1 lst2 lst3 lst4)
  (cond  ;Need to check to see if any of the list are empty.
  ((null? lst1) '()) ;Check if the first list is empty, return
  ((null? lst2) '()) ;Check if the second list is empty.
  ((null? lst3) '()) ;Check if 3rd list is empty.
  ((null? lst4) '()) ;Check if the 4th list is empty.
  (else (append (append lst1 lst2)(append lst3 lst4))) ;If none are empty append them all together.
  )
  )
(combine-four '(1 2 3 4) '(5 6 7 8) '(9 10 11 12) '(13 14 15 16))
(newline)
;Question 3.1
(define (last-n lst n)
  (cond  ;N size problem
    ((null? lst) (write "The list is empty")) ;If list is empty return error message.
    ((< (length lst) n) (write "n is out of index for list.")) ;Return error if n is bigger then the length of list.
    (else (list-tail lst (+ n 1)))  ; Using list-tail function to return (n+1) indecies.
    ))
(newline)
;Question 3.2
;   Same implications as before but now I use lambda calculus.
(define last-n
  (lambda (lst n)
    (cond
     ((null? lst) (write "The list is empty"))
     ((< (length lst) n) (write "Error n is out of index"))
    (else (list-tail lst (- n 1))) ; Need to return (n-1) indecies with lambda calculus.
    )
  ))
(newline)
;Question 4
(define n (read))
(define (helper-n ls n)    ;using lambda calculus we can make this procedure efficently.
    (if (<= n 0) ;Base Case
        '()     ;Return empty list
        (cons (car ls) (helper-n (cdr ls) (- n 1))) ;Else (n-1) case, recurssion step.
        ))
(define (first-n alist)
  (helper-n alist n)
  )
(first-n '(1 2 3))
(newline)
;Question 5
(define (shuffle lst1 lst2)
  (cond ((null? lst1) lst2)    ; if the first list is empty, return the second
        ((null? lst2) lst1)    ; if the second list is empty, return the first
        (else (append (cons (car lst1) ; otherwise `cons` the first element of the first list
                    (shuffle lst2 (cdr lst1)))
              )))) ;end of shuffle procedure
(shuffle '(1 2 3) '(a b c))
(newline)
;Question 6
(define (shuffle lst1 lst2)
  (cond ((null? lst1) '())    ; if the first list is empty, return the second
        (else (cons (cons (car lst1) (car lst2)) (shuffle (cdr lst1) (cdr lst2)))
              ))) ;end of shuffle procedure
(shuffle '(1 2 3) '(a b c))
(newline)
;Question 7
(define (square n) ;impliment a square procedure to make things easier to calculate
  (* n n)
  )
(define addNonEmptyList (lambda (L) ;This procedure returns a sum of all the elements of the procedure
	(if	(null? L)
                	0
		(+ (square (car L)) (addNonEmptyList (cdr L))))
))
(define addSquare (lambda (L)  ;Returns the squared sum value of the list. 
	(if	(null? L)
                	(write "empty list")
		(addNonEmptyList L))))

(addSquare '())
(addNonEmptyList '())
(addNonEmptyList '(1 2 3))
(addNonEmptyList '(1 4 3 2))