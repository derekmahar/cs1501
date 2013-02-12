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
