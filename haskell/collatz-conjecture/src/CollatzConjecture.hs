module CollatzConjecture (collatz) where

import Data.Maybe (fromJust)

collatz :: Integer -> Maybe Integer
collatz n =
  tailCollatz n 0
  where tailCollatz n acc
          | n <= 0 = Nothing
          | n == 1 = Just (0 + acc)
          | even n = tailCollatz (n `div` 2) (1 + acc)
          | odd n = tailCollatz (n * 3 + 1) (1 + acc)
