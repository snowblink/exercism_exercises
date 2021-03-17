module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz m =
  tailCollatz m 0
  where tailCollatz n acc
          | n <= 0 = Nothing
          | n == 1 = Just acc
          | even n = tailCollatz (n `div` 2) (1 + acc)
          | otherwise = tailCollatz (n * 3 + 1) (1 + acc)
