module Gigasecond where

import Data.Time.Clock (NominalDiffTime, UTCTime, addUTCTime)

gigaSecond :: NominalDiffTime
gigaSecond = (10 ^ 9)

fromDay :: UTCTime -> UTCTime
fromDay day = addUTCTime gigaSecond day
