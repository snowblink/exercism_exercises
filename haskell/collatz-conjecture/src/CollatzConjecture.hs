module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz m
  | m <= 0 = Nothing
  | otherwise = Just (tailCollatz m 0)
  where
    tailCollatz n acc
      | n == 1 = acc
      | even n = tailCollatz (n `div` 2) (1 + acc)
      | otherwise = tailCollatz (n * 3 + 1) (1 + acc)
