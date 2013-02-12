convert :: (Double, [Char]) -> (Double, [Char])
convert (n, "m") = (n*1.09361, "yd")
convert (n, "yd") = (n/1.09361, "m")
convert (n, "L") = (n/3.78541, "gal")
convert (n, "gal") = (n*3.78541, "L")
convert (n, "kg") = (n*2.20462, "lb")
convert (n, "lb") = (n/2.20462, "kg")
