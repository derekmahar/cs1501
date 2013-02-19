data Tree = Tree Tree Tree Int | Leaf Int deriving (Show)

add :: Tree -> Int
add (Leaf n)		= n
add (Tree t1 t2 n)	= add t1 + add t2 + n
