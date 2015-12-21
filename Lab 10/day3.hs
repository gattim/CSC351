module Main where

	data Maybe a = Nothing | Just a

	-- Doesn't make sense to me...
	instance Monad Maybe where
		return = Just
		Nothing >>= f = Nothing
		(Just x) >>= f = f x
