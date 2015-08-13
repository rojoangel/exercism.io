module LeapYear(isLeapYear) where

isLeapYear :: Int -> Bool
isLeapYear year = isDivisibleBy 4 && not (isDivisibleBy 100) || isDivisibleBy 400
  where isDivisibleBy n = year `mod` n == 0
