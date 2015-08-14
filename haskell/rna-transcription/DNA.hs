module DNA (toRNA) where

toRNA :: String -> String
toRNA [] = []
toRNA (x:xs) = transcribe x : toRNA xs
  where transcribe y 
	  | y == 'C' = 'G'
	  | y == 'G' = 'C'
	  | y == 'A' = 'U'
	  | y == 'T' = 'A'
	  | otherwise = error "invalid nucleotide" 
