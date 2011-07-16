
number_to_digits n base
    | n < base = [n]
    | otherwise = (number_to_digits r base) ++ [d]
        where d = n `rem` base
              r = n `div` base

is_palindrone lst = lst == (reverse lst)

is_pal_base_2 n = is_palindrone $ number_to_digits n 2
is_pal_base_10 n = is_palindrone $ number_to_digits n 10


palindrone_10_2 max = [n | n <- [1..max], is_pal_base_2 n, is_pal_base_10 n]
