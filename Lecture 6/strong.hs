import Data.Char

strong :: String -> Bool
strong password = length password >= 15
	&& foldl (\acc c -> acc || isUpper c) False password
	&& foldl (\acc c -> acc || isLower c) False password
	&& foldl (\acc c -> acc || isNumber c) False password
