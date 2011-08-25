
module Main(main) where

import Data.List (sort)

is_palin :: Integer -> Bool
is_palin s = str == (reverse str)
    where str = show s

list1 = [100..999]
list2 = [100..999]

palin_filter :: [Integer] -> [Integer]
palin_filter xs = filter is_palin xs

times_n xs n = map ((*) n) xs

mults_list = concat (map (times_n list1) list2)


palin_list = sort (palin_filter mults_list)


main = putStrLn (show (head (reverse (palin_list))))

