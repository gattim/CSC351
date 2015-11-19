%This is a quick sort implementation.

sort_list([], Val, Val).
sort_list([Head|Tail], Val, Sorted) :-
	pivoting(Head, Tail, Leg1, Leg2),
	sort_list(List1, Val, Sorted2), sort_list(Leg2, [Head|Sorted2], Sorted).
sort_list2(List, Sorted) :- sort_list(List, [], Sorted)