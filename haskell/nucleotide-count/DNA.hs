module DNA (count, nucleotideCounts) where

import Data.Map.Strict

type Nucleotide = Char

validNucleotides :: [Nucleotide]
validNucleotides = "ACGT"

count :: Nucleotide -> [Nucleotide] -> Integer
count a xs = sum [1 | x <- xs, isValidNucleotide a, isValidNucleotide x, x == a]
  where isValidNucleotide b
          | b `elem` validNucleotides = True
          | otherwise                 = error $ "invalid nucleotide " ++ show b

nucleotideCounts :: [Nucleotide] -> Map Nucleotide Integer
nucleotideCounts xs = fromList [(y, count y xs) | y <- validNucleotides]
{--
The following fail to validate strand
-- nucleotideCounts xs = fromList [(y, count y xs) | y <- validNucleotides]
-- nucleotideCounts xs = fromList [(y, i) | y <- validNucleotides, let i = count y xs]
-- nucleotideCounts xs = fromList [(y, total y) | y <- validNucleotides]
--  where total y = count y xs
--}
