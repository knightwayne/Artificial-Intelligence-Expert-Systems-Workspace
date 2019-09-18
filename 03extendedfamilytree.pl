male(bob).
male(casper).
male(joe).
male(bill).
female(jen).
female(regina).
female(jasper).
female(sue).
parent(bob,casper).
parent(jen,casper).
parent(bob,jasper).
parent(jen,jasper).
parent(bob,joe).
parent(jen,joe).
parent(casper,sue).
parent(casper,bill).
parent(regina,sue).
parent(regina,bill).
married(bob,jen).
married(regina,casper).
marry(X,Y) :-married(X,Y).
marry(X,Y) :-married(Y,X).
father(X,Y) :-parent(X,Y),male(X).
mother(X,Y) :-parent(X,Y),female(X).
%brother(X,Y) :-male(X),parent(W,X),parent(W,Y),not(X=Y).
brother(X,Y) :-male(X),parent(W,X),parent(Z,Y),not(X=Y),not(W=Z),marry(W,Z).

%sister(X,Y) :-female(X),parent(W,X),parent(W,Y),not(X=Y).
sister(X,Y) :-female(X),parent(W,X),parent(Z,Y),not(X=Y),not(W=Z),marry(W,Z).

grandparent(X,Y) :-parent(X,Z),parent(Z,Y).
grandchild(X,Y) :-parent(Y,Z),parent(Z,X).

uncle(X,Y):-brother(X,W),
	parent(W,Y).
