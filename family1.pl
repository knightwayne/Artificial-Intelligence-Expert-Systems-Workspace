parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(pam,bob).
parent(tom,bob).
father(tom,bob).
father(tom,liz).
father(bob,ann).
father(bob,pat).
father(pat,jim).
mother(pam,bob).
male(tom).
male(bob).
male(pat).
male(jim).
female(pam).
female(ann).
grandparent(X,Y) :-parent(X,Z),parent(Z,Y).
grandfather(X,Y) :- male(X),grandparent(X,Y).
grandmother(X,Y) :- female(X),grandparent(X,Y).






