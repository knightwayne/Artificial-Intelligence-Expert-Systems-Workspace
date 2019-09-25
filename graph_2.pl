edg(1,2).
edg(1,3).
edg(1,4).
edg(1,5).
edg(2,3).
edg(2,4).
edg(3,4).
edg(4,5).

adjacent(X,Y):-edg(X,Y).
adjacent(X,Y):-edg(Y,X).

color(1,red,a).
color(2,blue,a).
color(3,green,a).
color(4,yellow,a).
color(5,blue,a).

color(1,red,b).
color(2,blue,b).
color(3,green,b).
color(4,red,b).
color(5,blue,b).

conflict(Z) :-
	color(X,C,Z),
	color(Y,C,Z),
	adjacent(X,Y).
