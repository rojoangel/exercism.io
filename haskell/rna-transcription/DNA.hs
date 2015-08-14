module DNA (toRNA) where

toRNA :: String -> String
toRNA [] = []
toRNA (x:xs) = transcribe x : toRNA xs
  where transcribe y = case y of 'C' -> 'G'
                                 'G' -> 'C'
                                 'A' -> 'U'
                                 'T' -> 'A'
                                 _   -> error "invalid nucleotide"
