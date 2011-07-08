
permutations = [(a, b, c, d, e, f, g, h, i, j) |
                a <- [0..9],
                b <- [0..9],
                c <- [0..9],
                d <- [0..9],
                e <- [0..9],
                f <- [0..9],
                g <- [0..9],
                h <- [0..9],
                i <- [0..9],
                j <- [0..9],
                a /= b, a /= c, a /= d, a /= e, a /= f, a /= g, a /= h, a /= i, a /= j,
                b /= c, b /= d, b /= e, b /= f, b /= g, b /= h, b /= i, b /= j,
                c /= d, c /= e, c /= f, c /= g, c /= h, c /= i, c /= j,
                d /= e, d /= f, d /= g, d /= h, d /= i, d /= j,
                e /= f, e /= g, e /= h, e /= i, e /= j,
                f /= g, f /= h, f /= i, f /= j,
                g /= h, g /= i, g /= j,
                h /= i, h /= j,
                i /= j]
        
millionth_permutation = permutations !! 999999
