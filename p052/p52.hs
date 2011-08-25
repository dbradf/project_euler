module Main(main) where

import Data.List

digits n = if n < 10
           then [n]
           else (n `rem` 10):(digits (n `div` 10))

eqList :: [Integer] -> [Integer] -> Bool
eqList [] [] = True
eqList [] _  = False
eqList _  [] = False
eqList as bs = if (head as) /= (head bs)
               then False
               else (eqList (tail as) (tail bs))


isMulEq n m = if ns `eqList` dns
              then True
              else False
        where ns = sort (digits n)
              dns = sort (digits (n * m))


six_muls n = if and (map (isMulEq n) [2..6])
             then True
             else False


smallest_muls lst = if six_muls hd
                    then hd
                    else smallest_muls (tail lst)
        where hd = (head lst)


main = putStrLn (show (smallest_muls [1..]))
