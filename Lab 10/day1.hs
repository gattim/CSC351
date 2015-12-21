-- Marc Gatti
module Main where
		-- Do 1
		allEven1 :: [Integer] -> [Integer]
		allEven1 [] = []
		allEven1 (h:t) = if  even h then h:allEven1 t else allEven1 t

		allEven2 :: [Integer] -> [Integer]
		allEven2 [] = []
		allEven2 (h:t) = if  odd h then allEven2 t else h:allEven2 t		

		allEven3 :: [Integer] -> [Integer]
		allEven3 [] = []
		allEven3 l = [x | x <- l, even x]

		-- Do 2
		listReverse :: [Integer] -> [Integer]
		listReverse [] = []
		listReverse [x] = [x]
		listReverse (l) = last l : listReverse (init l)

		-- Do 3
		twoColors :: [[Char]] -> [([Char], [Char])]
		twoColors [x, y] = [(x, y)]
		twoColors (h:t) = [(h,x) | x <-t] ++ twoColors t

		-- Do 4
		timesTable :: Integer -> [(Integer, Integer, Integer)]
		timesTable x = timesTable2 [(n1, n2) | n1 <- [1 .. x], n2 <- [1 .. x]]

		timesTable2 :: [(Integer, Integer)] -> [(Integer, Integer, Integer)]
		timesTable2 (h:t) = if length t == 0 then [(fst h, snd h, fst h * snd h)] else [(fst h, snd h, fst h * snd h)] ++ timesTable2(t)

		-- Do 5
		mapColor :: [[Char]] -> [([Char], [Char], [Char], [Char], [Char])]
		mapColor colors = [(alabama, mississippi, georgia, tennessee, florida) |
			alabama <- colors, mississippi <- colors, georgia <- colors, tennessee <- colors, florida <- colors,
			mississippi /= tennessee, mississippi /= alabama, alabama /= tennessee, alabama /= mississippi,
			alabama /= georgia, alabama /= florida, georgia /= florida, georgia /= tennessee]