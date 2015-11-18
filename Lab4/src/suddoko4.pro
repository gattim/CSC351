sudoku(Puzzle, Solution) :-
	Solution = Puzzle,
	Puzzle = [S11, S12, S13,
			S21, S22, S23,
			S31, S32, S33,
			S41, S42, S43,
			S14,S24,S34,S44],
	fd_domain(Puzzle, 1, 4).

	