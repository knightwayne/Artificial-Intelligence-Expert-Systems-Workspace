male(anthony).
male(harry).
male(tom).
female(mary).
female(hazel).
married(anthony,mary).
married(mary,anthony).
married(tom,hazel).
married(hazel,tom).
child(harry,anthony).
child(hazel,mary).
brother(X,Y) :-
	male(X),
	child(X,W),
	child(Y,Z),
	married(W,Z).
sister(X,Y) :-
	female(X),
	child(X,W),
	child(Y,Z),
	married(W,Z).
parent(X,Y) :-
	child(Y,X).
parent(X,Y) :-
	child(W,X),
	brother(W,Y).
parent(X,Y) :-
	child(W,X),
	sister(W,Y).
