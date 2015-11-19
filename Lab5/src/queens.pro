queens(N,Queen_places) :- range(1,N,N_list),
			my_permutation(N_list,Queen_places),
			safe(Queen_places),
			print_board(Queen_places,N).

print_board(_,_).

my_permutation(Xs,[Z|Zs]) :- myselect(Z,Xs,Ys), my_permutation(Ys,Zs).
my_permutation([],[]).

myselect(X,[X|Xs],Xs).
myselect(X,[Y|Ys],[Y|Zs]) :- myselect(X,Ys,Zs).

range(M,N,[M|Ns]) :- M < N, M1 is M + 1, range(M1,N,Ns).
range(N,N,[N]).

safe([]).
safe([Head|Tail]) :-
	\+ member(Head, Tail),
	safe(Head, Tail),
	safe(Tail).

safe(Main, List) :-
	safe(Main, List, 0). 

safe(_, [], _).	
safe(Main, [Head|Tail], C) :-
	C2 is C + 1,
	MainPlus is Main + C2,
	MainMinus is Main - C2,
	\+ Head = MainPlus,
	\+ Head = MainMinus,
	safe(Main, Tail, C2).