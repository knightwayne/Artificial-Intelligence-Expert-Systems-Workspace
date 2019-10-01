c(a,X):-X=1.
c(b,X):-X=2.
c(c,X):-X=3.
c(d,X):-X=4.
c(e,X):-X=5.
c(f,X):-X=6.
c(g,X):-X=7.
rc(1,X):-X=a.
rc(2,X):-X=b.
rc(3,X):-X=c.
rc(4,X):-X=d.
rc(5,X):-X=e.
rc(6,X):-X=f.
rc(7,X):-X=g.


c(h,X):-X=8.
c(i,X):-X=9.
c(j,X):-X=10.
c(k,X):-X=11.
c(l,X):-X=12.
c(m,X):-X=13.
c(n,X):-X=14.
c(o,X):-X=15.
c(p,X):-X=16.
c(q,X):-X=17.
c(r,X):-X=18.
c(s,X):-X=19.
c(t,X):-X=20.
c(u,X):-X=21.
c(v,X):-X=22.
c(w,X):-X=23.
c(x,X):-X=24.
c(y,X):-X=25.
c(z,X):-X=26.

cipher(A,B,D):-atom(A),
	atom_chars(A,L),
	add(L,B,D).

add([],B,D):-!.
add([H|T],B,D):-
	c(H,Y),
	Z=Y+B,
	rc(Z,Y),
	write(Y),write(" "),
	add(T,B,D).


decipher(A,B,D):-atom(A),
	atom_chars(A,L),
	sub(L,B,D).

sub([],B,D):-!.
sub([H|T],B,D):-char_code(H,Code1),
	%integer(Code1),
	Code=Code1-B,
	write(Code),write(" "),
	sub(T,B,D).
