doubleNum num = num + num

doubleNums x y = (x*2) + (y*2)

doubleSmallNum x = if x > 50
                    then x
                    else (x*2)


boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
