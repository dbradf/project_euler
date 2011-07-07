


sumDigits n = if n == 0
              then 0
              else (rem n 10) + (sumDigits (div n 10))

fact n = if n == 1
         then 1
         else n * (fact (n - 1))
