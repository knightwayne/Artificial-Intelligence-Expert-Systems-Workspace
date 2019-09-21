insert(X,[],[X]).
insert(X,[H|T],[X,H|T]):-X=< H,!.
insert(X,[H|T1],[H|T2]):-insert(X,T1,T2).
insort([],[]).
insort([H|T],Sorted):-insort(T,Sorted2),insert(H,Sorted2,Sorted).

