
reverseIfOdd :: String -> Integer -> String
reverseIfOdd text num = if ((num `rem` 2) == 0) then text else reverse text

boustrophedon :: [String] -> [String]
boustrophedon [] = []
boustrophedon (x:xs) = x : (reverse (head xs)) : boustrophedon (tail xs)