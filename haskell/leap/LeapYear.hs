module LeapYear(isLeapYear) where

isDivisibleBy :: Int -> Int -> Bool
isDivisibleBy num modulus = mod num modulus == 0

isLeapYear :: Int -> Bool
isLeapYear year = (((isDivisibleBy year 4) && not (isDivisibleBy year 100)) || (isDivisibleBy year 400)) 

