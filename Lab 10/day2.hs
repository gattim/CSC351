modeule Main where

	listSort :: (Ord a) => [a] -> [a]
	listSort [] = []
	listSort (x:xs) = listSort [y | y <- xs, y<=x] ++ [x] ++ listSort [y | y <- xs, y > x]