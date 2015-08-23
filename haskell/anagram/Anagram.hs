module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor s xs = [x | x <- xs, map toLower s /= map toLower x && sort (map toLower s) == sort (map toLower x)]
