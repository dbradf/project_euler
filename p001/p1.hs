
isMultOf n m = if (rem n m) == 0
               then True
               else False
                    
isMultOf3or5 n = (isMultOf n 3) || (isMultOf n 5)

sumList (x:xs) = x+(sumList xs)
sumList [] = 0

createList n = if n == 1
               then [n]
               else (n:(createList (n - 1)))


sumMultiplesBelow n = sumList (filter isMultOf3or5 (createList n))
