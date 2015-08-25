module DNA (count, nucleotideCounts) where

import Data.Map.Strict

type Nucleotide = Char

nucleotides :: [Nucleotide]
nucleotides = "ACGT"

count :: Nucleotide -> [Nucleotide] -> Integer
count a xs = sum [1 | x <- xs, validateNucleotide a == validateNucleotide x]
  where validateNucleotide b
          | b `elem` nucleotides  = b
          | otherwise             = error $ "invalid nucleotide " ++ show b

nucleotideCounts :: [Nucleotide] -> Map Nucleotide Integer
nucleotideCounts xs = fromList [(y, count y xs) | y <- nucleotides]
{--
Other possible solutions
-- nucleotideCounts xs = fromList [(y, i) | y <- validNucleotides, let i = count y xs]
-- nucleotideCounts xs = fromList [(y, total y) | y <- validNucleotides]
--  where total y = count y xs
--}
