module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n =
  tailCollatz n 0
  where tailCollatz n acc
          | n <= 0 = Nothing
          | n == 1 = Just acc
          | even n = tailCollatz (n `div` 2) (1 + acc)
          | odd n = tailCollatz (n * 3 + 1) (1 + acc)
