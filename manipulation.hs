
reverseIfOdd :: String -> Integer -> String
reverseIfOdd text num = if ((num `rem` 2) == 0) then text else reverse text

boustrophedon :: [String] -> [String]
boustrophedon [] = []
boustrophedon (x:xs) = x : (reverse (head xs)) : boustrophedon (tail xs)

trial :: String -> [String]
trial [] = []
trial text = if(length text < 20) then [text] 
             else [take 20 text] ++ trial (drop 20 text)