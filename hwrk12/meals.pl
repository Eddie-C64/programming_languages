/*These are the facts of the meals database.*/
occasion(halloween).   /*Thanksgiving and Halloween are the only two occasions.*/
occasion(thanksgiving).
entre(halloween, chocolate). 
entre(thanksgiving, turkey).
side(halloween,candy).
side(halloween, soda).
side(thanksgiving, bread).
side(thanksgiving, pumpkinpie).
ingredient(candy, sugar).
ingredient(candy, foodcoloring).
ingredient(soda, water).
ingredient(soda, syrup).
ingredient(bread, egg).
ingredient(bread, flour).
ingredient(pumpkinpie, pumpkin).
ingredient(pumpkinpie, pie).

/*Where X is the occasion and Y is the food that will be served*/
meal(X, Y) :-
    entre(X, Y); side(X,Y).
	
/*Where X is the occasion and Y is the ingredient needed*/  
shoppinglist(X, Y) :-
    side(X,Z),
	ingredient(Z,Y).