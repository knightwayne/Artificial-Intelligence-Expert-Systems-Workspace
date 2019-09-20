inroom(banana).
inroom(chair).
inroom(monkey).
dexterous(monkey).
tall(chair).
can_move(monkey,chair,banana).
can_climb(monkey,chair).
under(X,Y,Z) :-
	inroom(X),
	inroom(Y),
	inroom(Z),
	can_move(X,Y,Z),
	write(Y), write(" is under "),write(Z),nl.

get_on(X,Y) :-can_climb(X,Y),
	write(X), write(" can climb "),write(Y),nl.

close_to(X,Z) :-get_on(X,Y), under(X,Y,Z), tall(Y),
	write(X), write(" is close to "), write(Z),nl.

can_reach(X,Y) :-dexterous(X),close_to(X,Y),
	write(X),write(" can reach "),write(Y),nl.
