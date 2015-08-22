module DNA (toRNA) where

import Data.Maybe

toRNA :: [Char] -> [Char]
toRNA = mapMaybe $ flip lookup transcriptions
    where transcriptions = [('C', 'G'),
                            ('G', 'C'),
                            ('A', 'U'),
                            ('T', 'A')]