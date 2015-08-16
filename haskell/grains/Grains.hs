module Grains (square, total) where

square :: Integer -> Integer
square i = 2 ^ (i - 1)

-- geommetric series sum = a*(r^n -1)/(r -1)
total :: Integer
total = 2 ^ (64 :: Int) - 1
