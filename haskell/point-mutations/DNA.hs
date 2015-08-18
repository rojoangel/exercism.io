module DNA where

hammingDistance :: [Char] -> [Char] -> Int
hammingDistance xs ys = sum [ 1 | (x,y) <- zip xs ys, x /= y ]

