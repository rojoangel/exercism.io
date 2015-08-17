module Gigasecond where

import Data.Time.Clock (UTCTime, addUTCTime)

fromDay :: UTCTime -> UTCTime
fromDay = addUTCTime gigaSecond
    where gigaSecond = 1.0e9
