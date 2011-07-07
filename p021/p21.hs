
import Data.List

proper_divisors n = [d | d <- [1..(n-1)], (n `rem` d) == 0]

is_amicable n = if sum_a /= sum_b
                then if n == sum_b
                     then True
                     else False
                else False
    where sum_a = sum (proper_divisors n)
          sum_b = sum (proper_divisors sum_a)

amicables_lt n = nub [am | am <- [1..n], is_amicable am]

