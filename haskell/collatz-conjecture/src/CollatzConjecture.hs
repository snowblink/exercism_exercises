module CollatzConjecture (collatz) where

import Data.Maybe (fromJust, isJust)

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | n == 1 = Just 0
  | even n && isJust (collatz (n `div` 2)) = Just (1 + fromJust (collatz (n `div` 2)))
  | odd n && isJust (collatz (n * 3 + 1)) = Just (1 + fromJust (collatz (n * 3 + 1)))
  | otherwise = Nothing
