data MetricUnit = Meter | Liter | Kilogram deriving (Show, Eq)

symbol :: MetricUnit -> String
symbol Meter = "m"
symbol Liter = "L"
symbol Kilogram = "kg"

symbol2 :: MetricUnit -> String
symbol2 x
	| x == Meter	= "m"
	| x == Liter	= "L"
	| x == Kilogram	= "kg"
