smallest([Smallest], Smallest).
smallest([Head, Value|TailList], Smallest) :-
	Head > Value,
	smallest([Value|TailList], Smallest).
smallest([Head, Value|TailList], Smallest) :-
	Head =< Value,
	smallest([Head|TailList], Smallest).
