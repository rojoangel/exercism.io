module SumOfMultiples where

sumOfMultiplesDefault :: Integer -> Integer
sumOfMultiplesDefault = sumOfMultiples [3,5]

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples x n = sum [i | i <- [1..n-1],  any ((== 0) . rem i) x]

{-
sumOfMultiples x n = sum [i | i <- [1..n-1], i `isMultipleOfAnyIn` x]
    where isMultipleOfAnyIn _ []= False
          isMultipleOfAnyIn m (y:ys) = (mod m y == 0) || m `isMultipleOfAnyIn` ys
-}