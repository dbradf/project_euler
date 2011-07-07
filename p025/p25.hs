
countDigits n = if n < 10
                then 1
                else 1 + (countDigits (div n 10))


fib n = if n <= 2
        then 1
        else (fib (n - 1)) + (fib (n - 2))

countFibDigits n = countDigits (fib n)

findFibDigits n d = if digits == d
                    then n
                    else if digits < d
                         then (findFibDigits (n * 2) d)
                         else (findFibDigits (n - 1) d)
                    where digits = countFibDigits n


findSmallest n d = if digits < d
                   then n
                   else (findSmallest (n - 1) d)
                   where digits = countFibDigits (n - 1)


prob25 d = findSmallest (findFibDigits 2 d) d

addToFibList [] = [1,1]
addToFibList l  = ((head l)+(head (tail l))) : l

findMaxDigit d l = if (countDigits (head l)) < d
                   then findMaxDigit d (addToFibList l)
                   else (length l)
