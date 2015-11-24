;Eduardo Carrasco Jr
;Question 1
(+ 3 5 7)
(+ 3 3 5 7)
(+ (* 3 2) (* 3 8 8))
(+ (* 3 2) (* 9 9) (/ 18 3))
(/ (+ 2 3 6 8 10 12 14) (+ 2 3 6))
(newline)
; Question 2
(define three 3)     ;Replaces the 3 with the english value of three.
(+ three 5 7)
(+ three 3 5 7)
(+ (* three 2) (* three 8 8))
(+ (* three 2) (* 9 9) (/ 18 three))
(/ (+ 2 three 6 8 10 12 14) (+ 2 three 6))     ;The output for each of these arthemic should be the same as the one above.
(newline)
;Question 3
(define (main)   ;This is the main function used to display the information.
  (RectArea (read) (read))    ;Calls RectArea function and read two inputs.
  )
;define the area procedure
(define (RectArea base height)
  (* base height)   ;compute area of rectangle
  )
(main)        ; Call the main function declared to run and accept inputs to give outputs.
(newline)
;Question 4
(define (RectVol base height depth)    ; define RectVol subroutine that take base, height, and depth
  (*(RectArea base height) depth)      ;Calls RectAre subroutine and multiples it be the depth
  )
(define (main)
  (RectVol (read) (read) (read));reads the 3 inputs for volume
)
(main)     ;Calls the main function this time with 3 inputs and returns the output.
(newline)
;Question 5
(define (DiffVolume base1 height1 depth1 base2 height2 depth2);define the difference of volume procedure
  (- (RectVol base1 height1 depth1) (RectVol base2 height2 depth2));takes the inputs for the second rectangle minus the first rectangle
  )
(define (main)
  (DiffVolume (read) (read) (read) (read)(read) (read));reads the inputs for both rectangles
)
(main)     ;Displays the difference of volume
(newline)
; Question 6
(define (RectAreaLet)     ; Let format of the RectArea procedure.
  (let ((base (read)) (height (read)))   ; Reads the inputs
    (* base height)))                  ; Output
(RectAreaLet)
(newline)
;Question 7
(define (RectVolLet)      ; This is the let format of the RectVol procedure.
  (let ((base (read)) (height (read)) (depth (read)))
    (* base height depth)))
(RectVolLet)