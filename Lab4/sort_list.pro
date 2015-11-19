% Shaun Wickett
% CSC 351 - Sorting a list

% This program does not work.
% It successfully performs the first pass of bubble sort
% although I could not figure out how to perform the other
% nessessary passes of bubble sort without going into 
% infinite recursive calls and overflowing the stack.

sort_list([Only], Only).
sort_list([First, Second|Tail], Solution) :-
	First > Second,
	sort_list([First|Tail], Only),
	append([Second], Only, Solution).
sort_list([First, Second|Tail], Solution) :-
	First =< Second,
	sort_list([Second|Tail], Only),
	append([First], Only, Solution).



