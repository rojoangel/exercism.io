module DNA (toRNA) where

import Data.Maybe

toRNA :: String -> String
toRNA = mapMaybe $ flip lookup transcriptions
    where transcriptions = [('C', 'G'),
                            ('G', 'C'),
                            ('A', 'U'),
                            ('T', 'A')]
