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