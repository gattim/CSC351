revlist([], []).
revlist([Head|TailList], Solution) :-
	revlist(TailList, Rev),
	append(Rev, [Head], Solution).
