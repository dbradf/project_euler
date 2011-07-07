
filterN lst n max = if n == max
                    then lst
                    else filterN [ a | a <- lst, a == n || (a `rem` n /= 0) ] (n+1) max

listPrimesTo max = filterN [2..max] 2 max


primesTo n = 2 : eratos [3,5..n] where
    eratos [] = []
    eratos (p : xs) = p : eratos [x | x <- xs, rem x p /= 0]
