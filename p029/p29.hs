import Data.List

int_combs a b = [ a^b | a <- [2..a], b <- [2..b]]

get_list a b = nub (int_combs a b)
