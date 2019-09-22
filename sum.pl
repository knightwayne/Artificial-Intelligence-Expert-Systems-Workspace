findSum(L):-
	sum(L,Sum),
	write("Sum of given list: "),
	write(Sum).
sum([],0).
sum([X|T],Sum):-
	sum(T,Tmp),
	Sum is Tmp+X.
