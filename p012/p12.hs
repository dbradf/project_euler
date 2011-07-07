import Data.List

findDivisors' n k = if (k >= n)
                    then []
                    else if (rem n k) == 0
                         then k:(findDivisors' n (k + 1))
                         else findDivisors' n (k + 1)

findDivisors n = nub (1 : ((findDivisors' n 2) ++ [n]))

countDivisors n = length (findDivisors n)


next_triangle_list last i = last + i

tri_lst_div n max last = if (countDivisors tri) >= max
                         then tri
                         else (tri_lst_div (n+1) max tri)
                where tri = (next_triangle_list last n)

{-triangle_list last i max = if i == max-}
                           {-then [last + i]-}
                           {-else (last + i):(triangle_list (last + i) (i+1) max)-}

{-triangle_lst n = triangle_list 0 1 n-}


{-tri_lst_div n max last = if (countDivisors tri) >= max-}
                         {-then tri-}
                         {-else (tri_lst_div (n + 1) max tri)-}
                    {-where tri = (last (triangle_list last n n))-}

find_max_div n = tri_lst_div 1 n 0

