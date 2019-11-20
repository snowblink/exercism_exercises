module Pangram (isPangram) where

import Data.Char
import Data.List

isPangram :: String -> Bool
isPangram text = length(cleanText) == 26
  where
    cleanText = nub [c | c <- map toLower text, c `elem` ['a'..'z'] ]
