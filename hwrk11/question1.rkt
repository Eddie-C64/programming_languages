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