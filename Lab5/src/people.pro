father(haakon,olav).
father(olav,harald).
father(olav,ragnhild).
father(olav,astrid).
father(harald,christian).
mother(maud,olav).
mother(martha,harald).
mother(martha,ragnhild).
mother(martha,astrid).
mother(ragnhild,edelhart).
mother(astrid,dagne).
male(haakon).
male(olav).
male(harald).
male(christian).
male(edelhart).
female(maud).
female(martha).
female(ragnhild).
female(astrid).
female(dagne).
citizen_of(olav,norway).
citizen_of(Person, Country) :-
	father(Father, Person),
	citizen_of(Father, Country).
parents(Father, Mother, Child) :-
	father(Father, Child),
	mother(Mother, Child).
same_parents(Person1, Person2) :-
	parents(Father1, Mother1, Person1),
	parents(Father2, Mother2, Person2),
	Father1 = Father2,
	Mother1 = Mother2.
sibling(Child1, Child2) :-
	same_parents(Child1, Child2),
	\+ Child1 = Child2.
sister(Sis, Other) :-
	female(Sis),
	sibling(Sis, Other).
brother(Bro, Other) :-
	male(Bro),
	sibling(Bro, Other).
aunt(Aunt, Other) :-
	father(Father, Other),
	sister(Aunt, Father).
aunt(Aunt, Other) :-
	mother(Mother, Other),
	sister(Aunt, Mother).
uncle(Uncle, Other) :-
	father(Father, Other),
	brother(Uncle, Father).
uncle(Uncle, Other) :-
	mother(Mother, Other),
	brother(Uncle, Mother).


