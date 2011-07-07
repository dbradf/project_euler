
jan = 0
feb = jan + 31
mar = feb + 28
apr = mar + 31
may = apr + 30
jun = may + 31
jul = jun + 30
aug = jul + 31
sep = aug + 31
oct = sep + 30
nov = oct + 31
dec = nov + 30

days = 365

months = [jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec]

jan' = 0
feb' = jan' + 31
mar' = feb' + 29
apr' = mar' + 31
may' = apr' + 30
jun' = may' + 31
jul' = jun' + 30
aug' = jul' + 31
sep' = aug' + 31
oct' = sep' + 30
nov' = oct' + 31
dec' = nov' + 30

days' = 366

months' = [jan', feb', mar', apr', may', jun', jul', aug', sep', oct', nov', dec']
isMonth month start = ((start + month) `rem` 7) == 0


countRegYear start []     = 0
countRegYear start (m:ms) = if isMonth m start
                            then 1 + rest
                            else rest
                        where rest = countRegYear start ms


is_leap_year year = if (year `rem` 400) == 0
                    then True
                    else if (year `rem` 4) == 0
                         then if (year `rem` 100) == 0
                              then False
                              else True
                         else False

nextYear cur_year cur_day = if (is_leap_year cur_year)
                            then (cur_day + days') `rem` 7
                            else (cur_day + days) `rem` 7


calcYears [] start_day     = 0
calcYears (y:ys) start_day = (countRegYear start_day ms) + calcYears ys (nextYear y start_day)
        where ms = if is_leap_year y
                   then months'
                   else months

