--module Main (main) where


isDivisibleBy :: Integer -> Integer -> Bool
isDivisibleBy n x = (n `rem` x) == 0

is_prime :: Integer -> [Integer] -> Bool
is_prime n []        = True
is_prime n prime_lst = if isDivisibleBy n (head prime_lst)
                       then False
                       else (is_prime n (tail prime_lst))


nth_prime :: Integer -> [Integer] -> [Integer] -> Integer
nth_prime n prms nums = if (n == 0)
                        then (head prms)
                        else if (is_prime (head nums) prms)
                             then (nth_prime (n - 1) ((head nums):prms) (tail nums))
                             else (nth_prime n prms (tail nums))





main = putStrLn (show n)
       where n = nth_prime 10001 [] [2..]
