module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | null trimmed = "Fine. Be that way!"
  | not(onlyNumbersOrPunctuation xs == xs) && last xs == '?' && map toUpper xs == xs = "Calm down, I know what I'm doing!"
  | last trimmed == '?' = "Sure."
  | not(onlyNumbers xs == xs) && map toUpper xs == xs = "Whoa, chill out!"
  | otherwise = "Whatever."
  where onlyNumbers ys = [ y | y <- ys, y `elem` "?, " ++ ['0'..'9'] ]
        onlyNumbersOrPunctuation ys = [ y | y <- ys, y `elem` "?,:) " ++ ['0'..'9']]
        removeWhitespace ys = [ y | y <- ys, not(y `elem` " \t\n\r")]
        trimmed = removeWhitespace xs
