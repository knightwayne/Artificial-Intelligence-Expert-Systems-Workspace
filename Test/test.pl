
state([H,H1|T],a,2):-!.
state([H,H1|T],b,2):-!.
state([H,H1|T],a,0):-
	write(T),nl,
	state([H1|T],H1,1).
state([H,H1|T],b,0):-
	write(T),nl,
	state([H1|T],H1,0).
state([H,H1|T],a,1):-
	write(T),nl,
	state([H1|T],H1,1).
state([H,H1|T],b,1):-
	write(T),nl,
	state([H1|T],H1,2).
