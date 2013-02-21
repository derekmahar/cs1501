import Data.Char

cipher :: [Char] -> Int -> [Char]
cipher [] _	= []
cipher (x:xs) n	= rotate x n : cipher xs n 

rotate :: Char -> Int -> Char
rotate c 0	= c
rotate c n	= rotate (next c) (n-1)

next :: Char -> Char
next c
	| c == 'z'	= 'a'
	| c == 'Z'	= 'A'
	| otherwise	= succ c


-- Variation of cipher which implements rotate using functions mod, ord, and chr.

cipher2 :: [Char] -> Int -> [Char]
cipher2 [] _		= []
cipher2 (x:xs) n	= rotate2 x n : cipher xs n 

rotate2 :: Char -> Int -> Char
rotate2 c n
	| c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z'	= chr ( mod ( ord c - base c + n ) 26 + base c )
	| otherwise = c

base :: Char -> Int
base c
	| c >= 'A' && c <= 'Z'	= ord 'A'
	| c >= 'a' && c <= 'z'	= ord 'a'
	| otherwise = 0

