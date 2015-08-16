module DNA (toRNA) where

toRNA :: String -> String
toRNA xs = map transcribe xs
  where transcribe x = case x of 'C' -> 'G'
                                 'G' -> 'C'
                                 'A' -> 'U'
                                 'T' -> 'A'
                                 _   -> error "invalid nucleotide"
