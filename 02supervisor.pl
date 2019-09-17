supervisor(watson,johnson).
supervisor(watson,john).
supervisor(watson,banker).
supervisor(johnson,smita).
supervisor(john,evens).

boss(X,Y) :- supervisor(X,Y).
boss(X,Y) :-supervisor(X,W),supervisor(W,Y).
