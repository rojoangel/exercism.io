module DNA where

hammingDistance :: String -> String -> Int
hammingDistance xs ys = sum . map fromEnum $ zipWith (/=) xs ys
-- hammingDistance xs ys = length $ filter id $ zipWith (/=) xs ys
-- hammingDistance xs ys = sum [ 1 | (x,y) <- zip xs ys, x /= y ]
