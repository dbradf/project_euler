import Data.List.Split
import Data.List
import System.IO



alphas = zip ['A'..'Z'] [1..26]

get_value :: Char -> [(Char,Int)] -> Int
get_value ch [] = 0
get_value ch (a:as) = if ch == (fst a)
                      then (snd a)
                      else (get_value ch as)

name_value :: [Char] -> Int
name_value [] = 0
name_value (n:ns) = (get_value n alphas) + (name_value ns)

name_score :: [Char] -> Int -> Int
name_score name line_num = (name_value name) * line_num

calc_lines :: [[Char]] -> Int -> Int
calc_lines [] idx = 0
calc_lines (l:ls) idx = (name_score l idx) + (calc_lines ls (idx + 1))

calc_score :: [Char] -> Int
calc_score str = (calc_lines (sort (splitOn "," str)) 1)

main = do
    withFile "names.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        print (calc_score contents))
