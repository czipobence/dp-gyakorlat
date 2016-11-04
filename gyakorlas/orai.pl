%1.feladat

p(a).
p(b).
p(a).

q(X) :- p(X), p(X).

csucs([H|T], CS) :- csucs(H,T,CS).

csucs(Pre,[Curr,Next|T], [Curr|TCS]) :-
	Pre < Curr,
	Next < Curr,
	csucs(Next,T,TCS).

csucs(Pre,[Curr,Next|T], CS) :-
	(Pre >= Curr;
	Next >= Curr),
	csucs(Curr, [Next|T],CS).

csucs(_,[],[]).
csucs(_,[_],[]).
