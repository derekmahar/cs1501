isPal :: Eq a => [a] -> Bool
isPal [] = True
isPal [x] = True
isPal [x,y] = x == y
isPal (x:xs) = x == (last xs) && isPal (init xs)
