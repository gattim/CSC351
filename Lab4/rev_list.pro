% Shaun Wickett
% CSC 351 - List Reverse

revlist([], []).
revlist([Head|TailList], Solution) :-
	revlist(TailList, Rev),
	append(Rev, [Head], Solution).
