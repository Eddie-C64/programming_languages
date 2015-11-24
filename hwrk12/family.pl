/* Database for family. It consists of facts and rules. */
male(mark). /*Males of the family tree.*/
male(tom).
male(eric).
male(josh).
male(austin).

female(lisa).   /*females of the family tree.*/
female(alice).
female(alex).
female(jen).
female(beth).

father_of(mark, beth).	/*Mark is the father of beth.*/
father_of(josh, eric). 
father_of(eric, jen). 
father_of(eric, mark).

mother_of(jen, tom).    /*jen is the mother of tom*/
mother_of(lisa, eric).
mother_of(alex, alice).
mother_of(alice, jen).
mother_of(alice, mark).

/*1.2) This is the rule to check if X is a male.*/
is_male(X) :-
 	male(X);
	father_of(X, _).
	
/*1.2) This is rule for when someone is a female.*/
is_female(X) :-
    (female(X); mother_of(X, _)).

/*1.3) X is the motheer of Y, and Y is either the mother or the father of Z*/
grandmother_of(X,Z) :-
    mother_of(X,Y), 
	(mother_of(Y,Z); father_of(Y,Z)). 

/*1.3) X  is the father of Y, and Y is either the father or the mother of Z*/		
grandfather_of(X,Z) :-
    father_of(X,Y),
	(father_of(Y,Z); mother_of(Y,Z)).
	
/*1.4) X is a sibling of Y if there Z is father of Y and X, and W is the mother of X and Y.*/
sibling_of(X,Y) :-
   father_of(Z,X),father_of(Z,Y),mother_of(W,X), mother_of(W,Y), X\=Y.

/*1.5) X is the parent of Y if, X is mother of Y or X is father of Y*/
parent_of(X,Y) :-
    mother_of(X,Y);
	father_of(X,Y).
/*This rule needs a recusive step.*/
descendant_of(X,Y):-
	parent_of(X,Y).

descendant_of(X,Y):-
 	parent_of(X,Z), descendant_of(Z,Y). /*This is the recusive call.*/