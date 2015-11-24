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