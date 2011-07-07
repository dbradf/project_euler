
rev_digits x y = if x < 10
                 then (y * 10) + x
                 else (rev_digits (x `div` 10) (y*10 + (x `rem` 10)))

reverse_digits x = rev_digits x 0

make_number_list x = if x < 10
                     then [x]
                     else (x `rem` 10):(make_number_list (x `div` 10))

is_palindrone lst = if (length lst) <= 1
                    then True
                    else if ((head lst) /= (last lst))
                         then False
                         else (is_palindrone (take ((length lst)-2) (tail lst)))

do_calc x = x + (reverse_digits x)
 
is_palindromic x = (is_palindrone (make_number_list (do_calc x)))


iter50 x c = if c >= 50
             then False
             else if (is_palindromic x)
                  then True
                  else (iter50 (do_calc x) (c+1))

is_lychrel x = not (iter50 x 0)
