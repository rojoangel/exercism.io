module Phone (areaCode, number, prettyPrint) where

import Data.Char (isDigit)

number :: String -> String
number xs
  | cleanedUpNumLength == 10      = cleanedUpNum
  | cleanedUpNumLength == 11
    &&  head cleanedUpNum == '1'  = tail cleanedUpNum
  | otherwise                     = invalidNumber
    where cleanedUpNum = filter isDigit xs
          cleanedUpNumLength = length cleanedUpNum
          invalidNumber = "0000000000"

areaCode :: String -> String
areaCode xs= take 3 $ number xs

prettyPrint :: String -> String
prettyPrint xs = "(" ++ areaCode xs ++ ") " ++ prefix ++ "-" ++ lineNumber
  where prefix              = take 3 prefixedLineNumber
        lineNumber          = drop 3 prefixedLineNumber
        prefixedLineNumber  = drop 3 $ number xs
