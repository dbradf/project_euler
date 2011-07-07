

sumDigits n = if n == 0
              then 0
              else (rem n 10) + (sumDigits (div n 10))
