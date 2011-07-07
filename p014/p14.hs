
isEven n = (n `rem` 2) == 0

collatz n = if n == 1
            then [n]
            else if (isEven n)
                 then n:(collatz (n `div` 2))
                 else n:(collatz (3 * n + 1))

collatz_sizes max = [(n, length (collatz n)) | n <- [1..max]]
 
find_max_list [] max = max
find_max_list (x:xs) max = if (snd x) > (snd max)
                           then find_max_list xs x
                           else find_max_list xs max


find_max_collatz max = find_max_list (collatz_sizes max) (1, 1)
