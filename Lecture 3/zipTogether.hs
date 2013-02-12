zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether [] _ 		= []
zipTogether _ []		= []
zipTogether (x:xs) (y:ys)	= (x,y) : zipTogether xs ys
