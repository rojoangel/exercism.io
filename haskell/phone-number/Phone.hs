module Phone (areaCode, number, prettyPrint) where

import Data.Char (isDigit)

type PhoneNumber = String
type AreaCode    = String

number :: String -> PhoneNumber
number xs
  | isAValid10DigitPhoneNum = cleanedUpNum
  | isAValid11DigitPhoneNum = tail cleanedUpNum
  | otherwise               = invalidNumber
    where isAValid10DigitPhoneNum = cleanedUpNumLength == 10
          isAValid11DigitPhoneNum = cleanedUpNumLength == 11 &&  head cleanedUpNum == '1'
          cleanedUpNum            = filter isDigit xs
          cleanedUpNumLength      = length cleanedUpNum
          invalidNumber           = "0000000000"

areaCode :: PhoneNumber -> AreaCode
areaCode xs = take 3 $ number xs

prettyPrint :: PhoneNumber -> String
prettyPrint xs = "(" ++ areaCode xs ++ ") " ++ prefix ++ "-" ++ lineNumber
  where prefix              = take 3 prefixedLineNumber
        lineNumber          = drop 3 prefixedLineNumber
        prefixedLineNumber  = drop 3 $ number xs
