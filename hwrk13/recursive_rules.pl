/*Facts and Rules for Recursive_Rules*/
ackermann(0, T, A) :- A is T+1. /*Stoping condition*/
ackermann(S, 0, A) :- S>0, X is S-1, ackermann(X, 1, A). /*M-1 case*/
ackermann(S, T, A) :- S>0, T>0, X is S-1, Y is T-1, ackermann(S, Y, A2), ackermann(X, A2, A). /*Recursive step for N-1 case*/

%Base case
exp(Y,X,0):-  
   X > 0,
   Y is 1.

/*rule that produces the exponent of Y = X^N*/
exp(Y,X,N):- /* N size problem */
	(X = 0, N = 0) -> write('0 to the 0 power is undefined');
	(X >= 0, N >= 0) -> 
	(N1 is  N-1, exp(Y1, X, N1), Y  is  X*Y1). /*Size n-1 problem */

fact(1,0).
fact(1,1). %Factorial helper rule
fact(Result, N):-
    Next is N - 1,
    fact(Recursion,Next),
    Result is N * Recursion. %Size N-1
	
factorial(1,0,N).%Base Case
factorial(Y,X,N) :-
	exp(Y1,X,N), %Call the helper rule exp to get the Y1 = X^n 
	fact(Y,Y1).	%Call the helper rule fact to get Y = Y1!