module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
    | silence   = "Fine. Be that way!"
    | yell      = "Whoa, chill out!"
    | question  = "Sure."
    | otherwise = "Whatever."
    where silence  = all isSpace xs
          yell     = any isAlpha xs && not (any isLower xs)
          question = last xs == '?'
