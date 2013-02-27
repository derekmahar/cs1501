import Data.Char
import Data.List

strong :: String -> Bool
strong password = length password >= 15
	&& foldl (\acc c -> acc || isUpper c) False password
	&& foldl (\acc c -> acc || isLower c) False password
	&& foldl (\acc c -> acc || isNumber c) False password

strong2 :: String -> Bool
strong2 password = length password >= 15
	&& any isUpper password
	&& any isLower password
	&& any isNumber password
