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