module DNA (toRNA) where

toRNA :: String -> String
toRNA [] = []
toRNA (x:xs) = case x of 'C' -> 'G'
			 'G' -> 'C'
			 'A' -> 'U'
			 'T' -> 'A'
			 _   -> error "invalid nucleotide"
	      : toRNA xs 
