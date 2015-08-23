module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor s xs = [x | x <- xs, not $ itsOwnAnagram s x, isAnagram s x]
  where isAnagram x y = sort (map toLower x) == sort (map toLower y)
        itsOwnAnagram x y = map toLower x == map toLower y
