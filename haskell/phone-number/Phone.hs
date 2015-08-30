module Phone (areaCode, number, prettyPrint) where

import Data.Char (isDigit)

number :: String -> String
number xs
  | cleanedUpNumLength == 10      = cleanedUpNum
  | cleanedUpNumLength == 11
    &&  head cleanedUpNum == '1'  = tail cleanedUpNum
  | otherwise                     = invalidNumber
    where cleanedUpNum = [x | x <- xs, isDigit x]
          cleanedUpNumLength = length cleanedUpNum
          invalidNumber = "0000000000"

areaCode :: String -> String
areaCode xs= fst . splitAt 3 $ number xs

prettyPrint :: String -> String
prettyPrint xs = "(" ++ areaCode xs ++ ") " ++ prefix ++ "-" ++ lineNumber
  where prefix      = fst . splitAt 3 $ sevenDigits
        lineNumber  = snd . splitAt 3 $ sevenDigits
        sevenDigits = snd . splitAt 3 $ number xs
