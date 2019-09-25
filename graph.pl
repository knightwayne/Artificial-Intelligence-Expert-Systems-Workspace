edge(d,a).
edge(a,b).
edge(b,c).
edge(c,a).

edge(f,g).
edge(g,e).
edge(e,f).

path(X,Y):-edge(X,Y).
path(X,Y):-edge(Y,X).

