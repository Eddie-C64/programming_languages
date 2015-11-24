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