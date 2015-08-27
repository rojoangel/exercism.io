module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor s xs = [x | x <- xs, not (isSameWord x) && isAnagram x]
  where toLowerS = map toLower s
        sortedToLowerS = sort toLowerS
        isSameWord x = toLowerS == map toLower x
        isAnagram x = sortedToLowerS == sort (map toLower x)
