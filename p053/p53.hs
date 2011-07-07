
fact n = if n == 0
         then 1
         else n * (fact (n - 1))

comb n r = (fact n) `div` ((fact r)*(fact (n-r)))

all_combs n = [(comb n r) | r <- [1..n]]

all_combs_rec n r = if r == 0
                    then []
                    else (comb n r):(all_combs_rec n (r - 1))


everything n = if n == 0
               then []
               else (all_combs n) ++ (everything (n-1))
