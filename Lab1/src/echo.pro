%
%  Echo Program
%  by Stuart C. Shapiro
%  edited by Debra T. Burhans to accomodate gprolog and lack of
%  I/O utilities
%
%  To demonstrate the writing and running of a recursive Prolog program.
%
%  Store this program in a file named echo.pro
%
%
%  To run this program from inside the prolog interpreter:
%    1. Type: gprolog
%	you will be inside the prolog interpreter
%       see if you can compile and run this from the command prompt
%	otherwise just follow these directions
%
%    2.  Type:  ['echo.pro'].
%
%    3.  Type: echo.
%    Repeats the following:
%      print a numbered prompt;
%      read something;
%      echo 'I read --><whatever was read><--'
%    until the thing read is the symbol bye.
%
%    Type whatever you want at the numbered prompt 
%      and bye to quit
%
%
%  To create an executable file you can run from the command line:
%	1.  Type:  gplc echo.pro
%
%	2.  Type:  ./echo
%
%	3.  Type: echo.

%	NOTE: when you run the executable it puts you into the prolog
%	interpreter, so to get the ball rolling you need to start the 
%	ball rolling by invoking the echo function as in the other
%	directions.  In other prologs you might not end up in the 
%	prolog interpreter.
%
%      Repeats the following:
%      print a numbered prompt;
%      read something;
%      echo 'I read --><whatever was read><--'
%    
%	until the thing read is the symbol bye.
%
%      Type whatever you want at the numbered prompt 
%      and bye to quit
%

echo :- format("Prolog Echo~n",[]),
	format("Type something to each prompt.~nType bye to quit.~2n", []),
	prompt_and_read(1).

prompt_and_read(N) :- 
	format("~d: ", [N]),
	read_line(X),
	echo_and_loop(N, X).


read_line(Answer) :-
    read_one_line(Codes),
    Answer = Codes.

read_one_line(Codes) :-
    get0(Code),
    (   Code < 0 /* end of file */ ->
        Codes = []
    ;   Code =:= 10 /* end of line */ ->
        Codes = []
    ;   Codes = [Code|Codes1],
        read_one_line(Codes1)
    ).

echo_and_loop(_, "bye"):- format("Good bye.~n", []), halt.
echo_and_loop(N, X) :- 
	format("I read -->~s<--~n", [X]),
	N1 is N + 1,
	prompt_and_read(N1).

:- echo.
