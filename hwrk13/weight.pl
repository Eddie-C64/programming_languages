/*Weight rule for Red, Orange, Yellow, Green, Blue.*/
weight(R, O, Y, G, B) :- 
	member(R,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]),
	member(O,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]),
	member(Y,[0,1,2,3,4,5,6,7,8,9,10]),
	member(G,[0,1,2,3,4,5,6,7]),
	member(B,[0,1,2,3,4,5,6]),
	W is R + 2*O + 3*Y + 4*G + 5*B, %Weight is defined as each marble with its multiple.
	W = 30. %Need to set the value of W, which is weight to 30.
	
/* Question 2.2
|?- weight(5,O,Y,G,3).

G = 1
O = 0
Y = 2 ? ;

G = 2
O = 1
Y = 0 ? ;

G = 0
O = 2
Y = 2 ? ;

G = 1
O = 3
Y = 0 ? ;

G = 0
O = 5
Y = 0 ? ;
*/

/*Question 2.3
| ?- weight(10,O,1,G,2).

no
| ?- 
*/